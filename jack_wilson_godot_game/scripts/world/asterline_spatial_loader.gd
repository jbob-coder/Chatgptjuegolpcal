class_name AsterlineSpatialLoader
extends RefCounted

const CITY_ID: String = "CITY_ASTERLINE_01"
const CITY_MANIFEST_ID: String = "MANIFEST_ASTERLINE_CITY_SPATIAL_BRIDGE_V1"
const START_MANIFEST_ID: String = "MANIFEST_ASTERLINE_START_RING_BRIDGE_V1"
const COORDINATE_CONTRACT_ID: String = "CONTRACT_ASTERLINE_TO_GODOT_COORDINATES_V1"
const CONSTRUCTION_GUARD_ID: String = "GUARD_ASTERLINE_SPATIAL_CONSTRUCTION_V1"
const CHUNK_INDEX_ID: String = "INDEX_ASTERLINE_RUNTIME_CHUNKS_V1"
const SCHEMA_VERSION: String = "1.0.0"

const SOURCE_PATHS: Dictionary = {
	"city": "res://data/world/asterline/city_spatial_manifest.json",
	"start": "res://data/world/asterline/start_area_manifest.json",
	"coordinate": "res://data/world/asterline/coordinate_transform.json",
	"guard": "res://data/world/asterline/spatial_construction_guard.json",
	"chunks": "res://data/world/asterline/chunk_index.json",
}


static func load_verified_bundle() -> Dictionary:
	var bundle: Dictionary = {}
	for key in SOURCE_PATHS:
		var result := _load_json_object(str(SOURCE_PATHS[key]))
		if not result.get("ok", false):
			return result
		bundle[key] = result["data"]

	var validation := _validate_bundle(bundle)
	if not validation.get("ok", false):
		return validation
	return {
		"ok": true,
		"bundle": bundle,
	}


static func find_chunk_by_id(bundle_result: Dictionary, chunk_id: String) -> Dictionary:
	if not bundle_result.get("ok", false):
		return bundle_result
	var bundle: Variant = bundle_result.get("bundle")
	if typeof(bundle) != TYPE_DICTIONARY:
		return _failure("INVALID_BUNDLE", "", "Verified bundle payload is not a Dictionary.")
	var index: Dictionary = bundle["chunks"]
	for layer in index["layers"]:
		for chunk in layer["chunks"]:
			if chunk.get("chunk_id", "") == chunk_id:
				return {
					"ok": true,
					"chunk": chunk,
					"layer_id": layer["layer_id"],
					"layer_priority": layer["priority"],
				}
	return _failure("UNKNOWN_CHUNK_ID", "", "Chunk ID is not present in the pinned index: %s" % chunk_id)


static func chunks_containing_source_point(bundle_result: Dictionary, source_en_m: Vector2) -> Dictionary:
	if not bundle_result.get("ok", false):
		return bundle_result
	var bundle: Variant = bundle_result.get("bundle")
	if typeof(bundle) != TYPE_DICTIONARY:
		return _failure("INVALID_BUNDLE", "", "Verified bundle payload is not a Dictionary.")
	var index: Dictionary = bundle["chunks"]
	var matches: Array = []
	var layers: Array = index["layers"]
	var layer_index := layers.size() - 1
	while layer_index >= 0:
		var layer: Dictionary = layers[layer_index]
		var layer_matches: Array = []
		for chunk in layer["chunks"]:
			if _aabb_contains(source_en_m, chunk["aabb_source_en_m"]) and _point_in_polygon(source_en_m, chunk["polygon_source_en_m"]):
				_insert_chunk_sorted(layer_matches, chunk)
		for chunk in layer_matches:
			matches.append({
				"chunk_id": chunk["chunk_id"],
				"source_stable_id": chunk["source_stable_id"],
				"source_kind": chunk["source_kind"],
				"layer_id": layer["layer_id"],
				"layer_priority": layer["priority"],
			})
		layer_index -= 1
	return {
		"ok": true,
		"source_en_m": source_en_m,
		"matches": matches,
	}


static func _load_json_object(path: String) -> Dictionary:
	if not FileAccess.file_exists(path):
		return _failure("MISSING_FILE", path, "Required pinned spatial file does not exist.")
	var file := FileAccess.open(path, FileAccess.READ)
	if file == null:
		return _failure("OPEN_FAILED", path, "FileAccess.open failed with error %s." % FileAccess.get_open_error())
	var parser := JSON.new()
	var parse_error := parser.parse(file.get_as_text())
	if parse_error != OK:
		return _failure(
			"JSON_PARSE_FAILED",
			path,
			"%s at line %s." % [parser.get_error_message(), parser.get_error_line()]
		)
	if typeof(parser.data) != TYPE_DICTIONARY:
		return _failure("JSON_ROOT_NOT_OBJECT", path, "Spatial JSON root must be a Dictionary.")
	return {
		"ok": true,
		"data": parser.data,
	}


static func _validate_bundle(bundle: Dictionary) -> Dictionary:
	var expected_keys := ["city", "start", "coordinate", "guard", "chunks"]
	if not bundle.has_all(expected_keys):
		return _failure("BUNDLE_INCOMPLETE", "", "All five pinned spatial files must load before publication.")
	for key in expected_keys:
		if typeof(bundle[key]) != TYPE_DICTIONARY:
			return _failure("INVALID_RECORD", str(SOURCE_PATHS[key]), "Pinned spatial record is not a Dictionary.")

	var city: Dictionary = bundle["city"]
	var start: Dictionary = bundle["start"]
	var coordinate: Dictionary = bundle["coordinate"]
	var guard: Dictionary = bundle["guard"]
	var chunks: Dictionary = bundle["chunks"]
	for record in [city, start, coordinate, guard, chunks]:
		if record.get("city_id", "") != CITY_ID:
			return _failure("CITY_ID_MISMATCH", "", "Pinned records do not resolve to one city ID.")
		if record.get("schema_version", "") != SCHEMA_VERSION:
			return _failure("SCHEMA_VERSION_MISMATCH", "", "Pinned records do not use the supported schema version.")
	if city.get("manifest_id", "") != CITY_MANIFEST_ID:
		return _failure("CITY_MANIFEST_ID_MISMATCH", str(SOURCE_PATHS["city"]), "City manifest ID drifted.")
	if start.get("manifest_id", "") != START_MANIFEST_ID:
		return _failure("START_MANIFEST_ID_MISMATCH", str(SOURCE_PATHS["start"]), "Start manifest ID drifted.")
	if coordinate.get("contract_id", "") != COORDINATE_CONTRACT_ID:
		return _failure("COORDINATE_CONTRACT_ID_MISMATCH", str(SOURCE_PATHS["coordinate"]), "Coordinate contract ID drifted.")
	if guard.get("guard_id", "") != CONSTRUCTION_GUARD_ID:
		return _failure("CONSTRUCTION_GUARD_ID_MISMATCH", str(SOURCE_PATHS["guard"]), "Construction guard ID drifted.")
	if chunks.get("index_id", "") != CHUNK_INDEX_ID:
		return _failure("CHUNK_INDEX_ID_MISMATCH", str(SOURCE_PATHS["chunks"]), "Chunk index ID drifted.")

	var contracts: Variant = chunks.get("source_contracts")
	if typeof(contracts) != TYPE_DICTIONARY:
		return _failure("CHUNK_SOURCE_CONTRACTS_MISSING", str(SOURCE_PATHS["chunks"]), "Chunk source contracts are missing.")
	var contract_keys := ["city_manifest", "start_manifest", "coordinate_transform", "construction_guard"]
	if not contracts.has_all(contract_keys):
		return _failure("CHUNK_SOURCE_CONTRACTS_INCOMPLETE", str(SOURCE_PATHS["chunks"]), "All four source-contract pins are required.")
	for key in contract_keys:
		if typeof(contracts[key]) != TYPE_DICTIONARY:
			return _failure("INVALID_CHUNK_SOURCE_CONTRACT", str(SOURCE_PATHS["chunks"]), "Every source-contract pin must be a Dictionary.")
	if contracts["city_manifest"].get("manifest_id", "") != CITY_MANIFEST_ID:
		return _failure("CHUNK_CITY_PIN_MISMATCH", str(SOURCE_PATHS["chunks"]), "Chunk index city pin drifted.")
	if contracts["start_manifest"].get("manifest_id", "") != START_MANIFEST_ID:
		return _failure("CHUNK_START_PIN_MISMATCH", str(SOURCE_PATHS["chunks"]), "Chunk index start pin drifted.")
	if contracts["coordinate_transform"].get("contract_id", "") != COORDINATE_CONTRACT_ID:
		return _failure("CHUNK_COORDINATE_PIN_MISMATCH", str(SOURCE_PATHS["chunks"]), "Chunk index coordinate pin drifted.")
	if contracts["construction_guard"].get("guard_id", "") != CONSTRUCTION_GUARD_ID:
		return _failure("CHUNK_GUARD_PIN_MISMATCH", str(SOURCE_PATHS["chunks"]), "Chunk index construction-guard pin drifted.")
	var city_snapshot: Variant = city.get("source_snapshot")
	var start_snapshot: Variant = start.get("source_snapshot")
	if typeof(city_snapshot) != TYPE_DICTIONARY or typeof(city_snapshot.get("files")) != TYPE_DICTIONARY:
		return _failure("CITY_SOURCE_SNAPSHOT_MISSING", str(SOURCE_PATHS["city"]), "City source snapshot is missing.")
	if typeof(city_snapshot["files"].get("master_atlas")) != TYPE_DICTIONARY:
		return _failure("CITY_MASTER_ATLAS_PIN_MISSING", str(SOURCE_PATHS["city"]), "City master-atlas pin is missing.")
	if contracts["city_manifest"].get("master_atlas_semantic_sha256", "") != city_snapshot["files"]["master_atlas"].get("semantic_sha256", ""):
		return _failure("CITY_SOURCE_FINGERPRINT_MISMATCH", str(SOURCE_PATHS["city"]), "City master-atlas fingerprint disagrees with the chunk index.")
	if typeof(start_snapshot) != TYPE_DICTIONARY:
		return _failure("START_SOURCE_SNAPSHOT_MISSING", str(SOURCE_PATHS["start"]), "Start source snapshot is missing.")
	if contracts["start_manifest"].get("source_semantic_sha256", "") != start_snapshot.get("semantic_sha256", ""):
		return _failure("START_SOURCE_FINGERPRINT_MISMATCH", str(SOURCE_PATHS["start"]), "Start-source fingerprint disagrees with the chunk index.")

	var layers: Variant = chunks.get("layers")
	if typeof(layers) != TYPE_ARRAY or layers.size() != 2:
		return _failure("INVALID_CHUNK_LAYERS", str(SOURCE_PATHS["chunks"]), "Exactly two source-derived chunk layers are required.")
	var seen_chunk_ids: Dictionary = {}
	var total_chunks := 0
	for layer in layers:
		if typeof(layer) != TYPE_DICTIONARY or not layer.has_all(["layer_id", "priority", "chunks"]) or typeof(layer.get("chunks")) != TYPE_ARRAY:
			return _failure("INVALID_CHUNK_LAYER", str(SOURCE_PATHS["chunks"]), "Every chunk layer must be a Dictionary containing an Array.")
		for chunk in layer["chunks"]:
			if typeof(chunk) != TYPE_DICTIONARY:
				return _failure("INVALID_CHUNK", str(SOURCE_PATHS["chunks"]), "Every chunk must be a Dictionary.")
			if not chunk.has_all(["chunk_id", "source_stable_id", "source_kind", "polygon_source_en_m", "aabb_source_en_m", "geometry_created"]):
				return _failure("INCOMPLETE_CHUNK", str(SOURCE_PATHS["chunks"]), "Every chunk requires identity, source membership, polygon, AABB and geometry guard.")
			var chunk_id := str(chunk.get("chunk_id", ""))
			if chunk_id.is_empty() or seen_chunk_ids.has(chunk_id):
				return _failure("DUPLICATE_OR_EMPTY_CHUNK_ID", str(SOURCE_PATHS["chunks"]), "Chunk IDs must be unique and non-empty.")
			if chunk.get("geometry_created", true):
				return _failure("CHUNK_FABRICATED_GEOMETRY", str(SOURCE_PATHS["chunks"]), "The source index must not claim geometry.")
			if typeof(chunk.get("polygon_source_en_m")) != TYPE_ARRAY or chunk["polygon_source_en_m"].size() < 3:
				return _failure("INVALID_CHUNK_POLYGON", str(SOURCE_PATHS["chunks"]), "Every chunk requires an exact source polygon.")
			for point in chunk["polygon_source_en_m"]:
				if typeof(point) != TYPE_ARRAY or point.size() != 2:
					return _failure("INVALID_CHUNK_POLYGON_POINT", str(SOURCE_PATHS["chunks"]), "Every source polygon point requires east and north values.")
			var bounds: Variant = chunk.get("aabb_source_en_m")
			if typeof(bounds) != TYPE_DICTIONARY or not bounds.has_all(["min_east_m", "min_north_m", "max_east_m", "max_north_m"]):
				return _failure("INVALID_CHUNK_AABB", str(SOURCE_PATHS["chunks"]), "Every chunk requires a complete broad-phase AABB.")
			if float(bounds["min_east_m"]) > float(bounds["max_east_m"]) or float(bounds["min_north_m"]) > float(bounds["max_north_m"]):
				return _failure("INVERTED_CHUNK_AABB", str(SOURCE_PATHS["chunks"]), "Chunk AABB minimums cannot exceed maximums.")
			seen_chunk_ids[chunk_id] = true
			total_chunks += 1
	var counts: Variant = chunks.get("counts")
	var chunk_runtime: Variant = chunks.get("runtime_contract")
	if typeof(counts) != TYPE_DICTIONARY or typeof(chunk_runtime) != TYPE_DICTIONARY:
		return _failure("CHUNK_SUMMARY_OR_RUNTIME_MISSING", str(SOURCE_PATHS["chunks"]), "Chunk count and runtime contracts are required.")
	if total_chunks != 16 or counts.get("total_chunks", -1) != 16:
		return _failure("CHUNK_COUNT_MISMATCH", str(SOURCE_PATHS["chunks"]), "Expected seven ward and nine start-detail chunks.")
	if chunk_runtime.get("geometry_created_by_this_index", true):
		return _failure("INDEX_FABRICATED_GEOMETRY", str(SOURCE_PATHS["chunks"]), "Chunk index must remain metadata-only.")
	var city_runtime: Variant = city.get("runtime_contract")
	var start_runtime: Variant = start.get("runtime_contract")
	if typeof(city_runtime) != TYPE_DICTIONARY or typeof(start_runtime) != TYPE_DICTIONARY:
		return _failure("MANIFEST_RUNTIME_CONTRACT_MISSING", "", "City and start runtime contracts are required.")
	if city_runtime.get("coordinate_transform_contract", "") != "data/world/asterline/coordinate_transform.json":
		return _failure("CITY_COORDINATE_POINTER_MISMATCH", str(SOURCE_PATHS["city"]), "City coordinate pointer drifted.")
	if start_runtime.get("coordinate_transform_contract", "") != "data/world/asterline/coordinate_transform.json":
		return _failure("START_COORDINATE_POINTER_MISMATCH", str(SOURCE_PATHS["start"]), "Start coordinate pointer drifted.")
	return {"ok": true}


static func _aabb_contains(point: Vector2, aabb: Dictionary) -> bool:
	return (
		point.x >= float(aabb["min_east_m"])
		and point.x <= float(aabb["max_east_m"])
		and point.y >= float(aabb["min_north_m"])
		and point.y <= float(aabb["max_north_m"])
	)


static func _point_in_polygon(point: Vector2, polygon: Array) -> bool:
	if polygon.size() < 3:
		return false
	var inside := false
	var previous_index := polygon.size() - 1
	for current_index in range(polygon.size()):
		var current := Vector2(float(polygon[current_index][0]), float(polygon[current_index][1]))
		var previous := Vector2(float(polygon[previous_index][0]), float(polygon[previous_index][1]))
		if _point_on_segment(point, previous, current):
			return true
		if (current.y > point.y) != (previous.y > point.y):
			var crossing_x := (previous.x - current.x) * (point.y - current.y) / (previous.y - current.y) + current.x
			if point.x < crossing_x:
				inside = not inside
		previous_index = current_index
	return inside


static func _point_on_segment(point: Vector2, start: Vector2, end: Vector2) -> bool:
	var edge := end - start
	var relative := point - start
	var cross := edge.x * relative.y - edge.y * relative.x
	if absf(cross) > 0.000001:
		return false
	var dot := relative.dot(edge)
	return dot >= -0.000001 and dot <= edge.length_squared() + 0.000001


static func _insert_chunk_sorted(chunks: Array, chunk: Dictionary) -> void:
	var chunk_id := str(chunk["chunk_id"])
	for index in range(chunks.size()):
		if chunk_id < str(chunks[index]["chunk_id"]):
			chunks.insert(index, chunk)
			return
	chunks.append(chunk)


static func _failure(code: String, path: String, message: String) -> Dictionary:
	return {
		"ok": false,
		"error_code": code,
		"path": path,
		"message": message,
	}
