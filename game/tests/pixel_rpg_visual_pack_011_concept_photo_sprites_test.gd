extends SceneTree

const SPRITE_DATA := preload("res://assets/environment/starting_area/concept_photo_sprite_data_011.gd")
const RECONSTRUCTION := preload("res://scripts/presentation/pixel_rpg/concept_photo_reconstruction_011.gd")
const PROTOTYPE: PackedScene = preload("res://scenes/prototypes/pixel_rpg_prototype_001.tscn")

var failures: Array[String] = []
var checks := 0

func _init() -> void:
	call_deferred("_run")

func _check(label: String, condition: bool, detail: String = "") -> void:
	checks += 1
	print("[%s] %s%s" % ["PASS" if condition else "FAIL", label, " :: " + detail if not detail.is_empty() else ""])
	if not condition:
		failures.append(label)

func _contains_physics(node: Node) -> bool:
	if node is CollisionObject3D or node is CollisionShape3D:
		return true
	for child in node.get_children():
		if _contains_physics(child):
			return true
	return false

func _run() -> void:
	print("Pixel RPG Visual Pack 011 exact concept-photo sprite gate")
	_check("sprite-data schema", SPRITE_DATA.SCHEMA == "pixel_rpg.concept_photo_sprite_data_011.v1")
	_check("exact concept source SHA", SPRITE_DATA.SOURCE_SHA256 == "766e16c7992699553842c7205eeef060a483e7c758f1ed3c3193c63ba0373b2b")
	_check("exact concept dimensions", SPRITE_DATA.SOURCE_DIMENSIONS == Vector2i(1672, 941))
	_check("seven actual photo-derived sprites", SPRITE_DATA.SPRITES.size() == 7)

	for sprite_id in SPRITE_DATA.SPRITES:
		var record: Dictionary = SPRITE_DATA.SPRITES[sprite_id]
		var texture := SPRITE_DATA.make_texture(String(sprite_id))
		var size: Vector2i = record["size"]
		_check("texture creates " + String(sprite_id), texture != null)
		if texture != null:
			_check("texture dimensions " + String(sprite_id), texture.get_width() == size.x and texture.get_height() == size.y, "%dx%d" % [texture.get_width(), texture.get_height()])
		_check("derived-data digest exists " + String(sprite_id), not SPRITE_DATA.sprite_data_sha256(String(sprite_id)).is_empty())

	var overlay := RECONSTRUCTION.new() as Node3D
	root.add_child(overlay)
	await process_frame
	_check("overlay root identity", overlay.name == "ConceptPhotoReconstruction011", overlay.name)
	_check("overlay remains presentation-only", not _contains_physics(overlay))
	var expected := ["GateBannerLeftPhoto", "GateBannerRightPhoto", "SmithBannerPhoto", "SmithForgePhoto", "SignpostPhoto", "WaterTroughPhoto", "FencePhoto"]
	for node_name in expected:
		var sprite := overlay.get_node_or_null(NodePath(node_name)) as Sprite3D
		_check("overlay contains " + node_name, sprite != null)
		if sprite != null:
			_check("overlay sprite has generated photo texture " + node_name, sprite.texture != null)
	overlay.queue_free()

	var prototype := PROTOTYPE.instantiate()
	_check("prototype instantiates with Pack 011", prototype != null)
	if prototype != null:
		root.add_child(prototype)
		await process_frame
		await physics_frame
		var live_overlay := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/WorldGeometry/ConceptPhotoReconstruction011") as Node3D
		var camera := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/Hunter/CameraYaw/CameraPitch/Camera3D") as Camera3D
		var hunter_visual := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/Hunter/Visual") as Node3D
		_check("live game contains photo-derived overlay", live_overlay != null)
		if live_overlay != null:
			_check("live overlay stays presentation-only", not _contains_physics(live_overlay))
			_check("gate photo sprites live", live_overlay.has_node("GateBannerLeftPhoto") and live_overlay.has_node("GateBannerRightPhoto"))
			_check("smith photo sprites live", live_overlay.has_node("SmithBannerPhoto") and live_overlay.has_node("SmithForgePhoto"))
			_check("sign/fence/trough photo sprites live", live_overlay.has_node("SignpostPhoto") and live_overlay.has_node("FencePhoto") and live_overlay.has_node("WaterTroughPhoto"))
		_check("first-person camera remains current", camera != null and camera.current)
		_check("third-person Hunter remains hidden", hunter_visual != null and not hunter_visual.visible)
		prototype.queue_free()
		await process_frame

	print()
	print("Checks: %d | Passed: %d | Failed: %d" % [checks, checks - failures.size(), failures.size()])
	print("Gate: " + ("PIXEL_RPG_VISUAL_PACK_011_CONCEPT_PHOTO_SPRITES_VERIFIED" if failures.is_empty() else "PIXEL_RPG_VISUAL_PACK_011_CONCEPT_PHOTO_SPRITES_FAILED"))
	quit(0 if failures.is_empty() else 1)
