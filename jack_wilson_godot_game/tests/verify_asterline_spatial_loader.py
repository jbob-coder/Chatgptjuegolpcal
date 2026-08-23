#!/usr/bin/env python3
from __future__ import annotations

import json
import math
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
WORLD = ROOT / "data" / "world" / "asterline"
CITY_PATH = WORLD / "city_spatial_manifest.json"
START_PATH = WORLD / "start_area_manifest.json"
COORDINATE_PATH = WORLD / "coordinate_transform.json"
GUARD_PATH = WORLD / "spatial_construction_guard.json"
INDEX_PATH = WORLD / "chunk_index.json"
LOADER_PATH = ROOT / "scripts" / "world" / "asterline_spatial_loader.gd"
DOC_PATH = ROOT / "docs" / "world" / "ASTERLINE_SPATIAL_LOADER_AND_CHUNKS.md"
REFERENCE_LOG = ROOT / "docs" / "godot" / "GODOT_IMPLEMENTATION_REFERENCE_LOG.md"
REGISTRY_PATH = ROOT / "project_control" / "registry" / "ARTIFACT_REGISTRY.json"
MAIN_SCENE = ROOT / "scenes" / "main.tscn"


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def load_json(path: Path) -> dict:
    require(path.is_file(), f"missing JSON: {path.relative_to(ROOT)}")
    value = json.loads(path.read_text(encoding="utf-8"))
    require(isinstance(value, dict), f"JSON root is not an object: {path.relative_to(ROOT)}")
    return value


def aabb(polygon: list[list[float]]) -> dict[str, float]:
    return {
        "min_east_m": min(point[0] for point in polygon),
        "min_north_m": min(point[1] for point in polygon),
        "max_east_m": max(point[0] for point in polygon),
        "max_north_m": max(point[1] for point in polygon),
    }


def close(first: float, second: float, tolerance: float = 1e-6) -> bool:
    return math.isclose(first, second, abs_tol=tolerance)


def point_on_segment(point: list[float], start: list[float], end: list[float]) -> bool:
    edge = (end[0] - start[0], end[1] - start[1])
    relative = (point[0] - start[0], point[1] - start[1])
    cross = edge[0] * relative[1] - edge[1] * relative[0]
    if abs(cross) > 1e-6:
        return False
    dot = relative[0] * edge[0] + relative[1] * edge[1]
    length_squared = edge[0] ** 2 + edge[1] ** 2
    return -1e-6 <= dot <= length_squared + 1e-6


def point_in_polygon(point: list[float], polygon: list[list[float]]) -> bool:
    inside = False
    previous = polygon[-1]
    for current in polygon:
        if point_on_segment(point, previous, current):
            return True
        if (current[1] > point[1]) != (previous[1] > point[1]):
            crossing_x = (previous[0] - current[0]) * (point[1] - current[1]) / (previous[1] - current[1]) + current[0]
            if point[0] < crossing_x:
                inside = not inside
        previous = current
    return inside


def main() -> int:
    city = load_json(CITY_PATH)
    start = load_json(START_PATH)
    coordinate = load_json(COORDINATE_PATH)
    guard = load_json(GUARD_PATH)
    index = load_json(INDEX_PATH)

    require(index["index_id"] == "INDEX_ASTERLINE_RUNTIME_CHUNKS_V1", "chunk index ID drift")
    require(index["city_id"] == city["city_id"] == start["city_id"] == coordinate["city_id"] == guard["city_id"], "bundle city IDs disagree")
    contracts = index["source_contracts"]
    require(contracts["city_manifest"]["manifest_id"] == city["manifest_id"], "chunk city-manifest pin drift")
    require(contracts["start_manifest"]["manifest_id"] == start["manifest_id"], "chunk start-manifest pin drift")
    require(contracts["coordinate_transform"]["contract_id"] == coordinate["contract_id"], "chunk coordinate pin drift")
    require(contracts["construction_guard"]["guard_id"] == guard["guard_id"], "chunk guard pin drift")
    require(contracts["city_manifest"]["master_atlas_semantic_sha256"] == city["source_snapshot"]["files"]["master_atlas"]["semantic_sha256"], "master-atlas fingerprint drift")
    require(contracts["start_manifest"]["source_semantic_sha256"] == start["source_snapshot"]["semantic_sha256"], "start-source fingerprint drift")

    layers = index["layers"]
    require([layer["layer_id"] for layer in layers] == ["LAYER_ASTERLINE_WARD_COARSE_V1", "LAYER_ASTERLINE_START_RING_DETAIL_V1"], "chunk layer order drift")
    require([layer["priority"] for layer in layers] == [100, 200], "chunk priority drift")
    ward_chunks = layers[0]["chunks"]
    start_chunks = layers[1]["chunks"]
    require(len(ward_chunks) == 7 and len(start_chunks) == 9, "expected seven ward and nine start chunks")
    chunk_ids = [chunk["chunk_id"] for layer in layers for chunk in layer["chunks"]]
    require(len(chunk_ids) == len(set(chunk_ids)) == 16, "chunk IDs are not unique")

    neighborhoods_by_ward: dict[str, list[str]] = {ward["ward_id"]: [] for ward in city["wards"]}
    for neighborhood in city["neighborhoods"]:
        neighborhoods_by_ward[neighborhood["ward_id"]].append(neighborhood["stable_id"])
    ward_source = {ward["ward_id"]: ward for ward in city["wards"]}
    for chunk in ward_chunks:
        ward = ward_source[chunk["source_stable_id"]]
        require(chunk["chunk_id"] == f"CHUNK_ASTERLINE_WARD_{ward['code']}", f"ward chunk ID drift: {ward['code']}")
        require(chunk["polygon_source_en_m"] == ward["polygon_m"], f"ward polygon drift: {ward['code']}")
        require(chunk["aabb_source_en_m"] == aabb(ward["polygon_m"]), f"ward AABB drift: {ward['code']}")
        require(chunk["centroid_source_en_m"] == ward["local_centroid_m"], f"ward centroid drift: {ward['code']}")
        require(chunk["vertical_envelope_source_u_m"] == ward["elevation_band_m"], f"ward elevation drift: {ward['code']}")
        require(chunk["neighborhood_ids"] == sorted(neighborhoods_by_ward[ward["ward_id"]]), f"ward neighborhood membership drift: {ward['code']}")
        require(chunk["block_count"] == ward["block_count"] and chunk["building_count"] == ward["building_count"], f"ward counts drift: {ward['code']}")
        require(chunk["geometry_created"] is False, f"ward chunk fabricated geometry: {ward['code']}")
    require(sum(chunk["block_count"] for chunk in ward_chunks) == 7000, "ward chunk block total drift")
    require(sum(chunk["building_count"] for chunk in ward_chunks) == 23480, "ward chunk building total drift")

    block_source = {block["stable_id"]: block for block in start["blocks"]}
    w03_polygon = ward_source["DISTRICT_ASTERLINE_WARD_03_EASTBANK"]["polygon_m"]
    for chunk in start_chunks:
        block = block_source[chunk["source_stable_id"]]
        require(chunk["chunk_id"] == block["stable_id"].replace("BLOCK_", "CHUNK_", 1), f"start chunk ID drift: {block['stable_id']}")
        require(chunk["parent_ward_chunk_id"] == "CHUNK_ASTERLINE_WARD_W03", f"start parent ward drift: {block['stable_id']}")
        require(chunk["polygon_source_en_m"] == block["polygon_m"], f"start polygon drift: {block['stable_id']}")
        require(chunk["aabb_source_en_m"] == aabb(block["polygon_m"]), f"start AABB drift: {block['stable_id']}")
        require(chunk["centroid_source_en_m"] == block["centroid_m"], f"start centroid drift: {block['stable_id']}")
        require(point_in_polygon(block["centroid_m"], block["polygon_m"]), f"start centroid outside polygon: {block['stable_id']}")
        require(all(point_in_polygon(point, w03_polygon) for point in block["polygon_m"]), f"start chunk escaped W03: {block['stable_id']}")
        expected_buildings = [building["stable_id"] for building in block["buildings"]]
        require(chunk["building_ids"] == expected_buildings and chunk["building_count"] == len(expected_buildings), f"start building membership drift: {block['stable_id']}")
        low = min([block["terrain_elevation_m"], *[building["ground_elevation_m"] for building in block["buildings"]]])
        high = max([block["terrain_elevation_m"], *[building["ground_elevation_m"] + building["exterior"]["height_m"] for building in block["buildings"]]])
        require(close(chunk["vertical_envelope_source_u_m"][0], low) and close(chunk["vertical_envelope_source_u_m"][1], high), f"start vertical envelope drift: {block['stable_id']}")
        require(chunk["geometry_created"] is False, f"start chunk fabricated geometry: {block['stable_id']}")
    primary = next(chunk for chunk in start_chunks if chunk["source_stable_id"] == "BLOCK_ASTERLINE_W03_RIVERBEND_START_01")
    require(primary["protected_start_anchors"] == start["protected_start_anchors"], "protected start anchors drift")
    require(sum(chunk["building_count"] for chunk in start_chunks) == 36, "start chunk building total drift")

    group = index["load_groups"][0]
    all_start_points = [point for block in start["blocks"] for point in block["polygon_m"]]
    require(group["group_id"] == "LOAD_GROUP_ASTERLINE_START_RING_V1", "start load-group ID drift")
    require(group["primary_chunk_id"] == primary["chunk_id"], "start load-group primary drift")
    require(group["chunk_ids"] == [chunk["chunk_id"] for chunk in start_chunks], "start load-group membership drift")
    require(group["source_aabb_en_m"] == aabb(all_start_points), "start load-group AABB drift")
    require(group["initial_anchor_source_cell"] == [16, -12], "start load-group anchor drift")
    require(index["counts"] == {"layers": 2, "ward_chunks": 7, "start_detail_chunks": 9, "total_chunks": 16, "start_detail_buildings": 36}, "chunk count summary drift")
    require(index["chunk_model"]["selection_order"] == ["START_BLOCK_DETAIL", "WARD_COARSE"], "detail/coarse selection order drift")
    require(index["chunk_model"]["geometry_created_by_index"] is False and index["runtime_contract"]["geometry_created_by_this_index"] is False, "chunk index fabricated geometry")

    loader = LOADER_PATH.read_text(encoding="utf-8")
    required_loader_tokens = (
        "class_name AsterlineSpatialLoader",
        "FileAccess.file_exists(path)",
        "FileAccess.open(path, FileAccess.READ)",
        "FileAccess.get_open_error()",
        "var parser := JSON.new()",
        "parser.parse(file.get_as_text())",
        "typeof(parser.data) != TYPE_DICTIONARY",
        "bundle.has_all(expected_keys)",
        "contracts.has_all(contract_keys)",
        "CITY_SOURCE_FINGERPRINT_MISMATCH",
        "START_SOURCE_FINGERPRINT_MISMATCH",
        "DUPLICATE_OR_EMPTY_CHUNK_ID",
        "CHUNK_FABRICATED_GEOMETRY",
        "INVALID_CHUNK_AABB",
        "INVALID_CHUNK_POLYGON_POINT",
        "_aabb_contains(source_en_m",
        "_point_in_polygon(source_en_m",
        "static func find_chunk_by_id",
        "static func chunks_containing_source_point",
    )
    for token in required_loader_tokens:
        require(token in loader, f"loader contract missing: {token}")
    for forbidden in ("FileAccess.WRITE", "store_string(", "store_var(", "Node3D", "MeshInstance3D", "add_child(", "instantiate("):
        require(forbidden not in loader, f"read-only loader crossed scope: {forbidden}")
    require("AsterlineSpatialLoader" not in MAIN_SCENE.read_text(encoding="utf-8"), "loader was prematurely integrated into main scene")

    documentation = DOC_PATH.read_text(encoding="utf-8")
    require("ROLE: CONTROL_PLANE_SPATIAL_BRIDGE" in documentation, "loader documentation role missing")
    require("7 ward-coarse chunks" in documentation and "9 start-block detail chunks" in documentation, "chunk layer explanation missing")
    reference = REFERENCE_LOG.read_text(encoding="utf-8")
    require("REF-0011 — Read-only JSON spatial loading" in reference, "FileAccess/JSON reference missing")
    registry = load_json(REGISTRY_PATH)
    artifact_ids = {artifact["artifact_id"] for artifact in registry["artifacts"]}
    require({"ART_WORLD_CHUNK_INDEX", "ART_WORLD_SPATIAL_LOADER", "ART_WORLD_DOC_SPATIAL_LOADER", "ART_TEST_ASTERLINE_SPATIAL_LOADER"} <= artifact_ids, "Piece 015 artifacts are not registered")
    require(index["runtime_contract"]["godot_parser_runtime"] == "RUNTIME_GATE_NOT_EXECUTED", "loader runtime gate was fabricated")

    print("PASS: five-file pinned bundle identity and source fingerprints")
    print("PASS: 7 exact ward-coarse chunks cover 7,000 blocks / 23,480 buildings")
    print("PASS: 9 exact start-detail chunks cover 36 buildings and protected anchors")
    print("PASS: detail-over-coarse query contract with exact polygon narrow phase")
    print("PASS: read-only fail-closed GDScript loader without scene integration")
    print("PASS: loader/chunk documentation, routing, and runtime gate")
    print("ASTERLINE_SPATIAL_LOADER_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
