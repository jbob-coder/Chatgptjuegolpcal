extends SceneTree

const OVERLAY := preload("res://scripts/presentation/pixel_rpg/concept_gate_pillars_012a.gd")
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

func _file_sha256(path: String) -> String:
	var bytes := FileAccess.get_file_as_bytes(path)
	if bytes.is_empty():
		return ""
	var ctx := HashingContext.new()
	if ctx.start(HashingContext.HASH_SHA256) != OK:
		return ""
	if ctx.update(bytes) != OK:
		return ""
	return ctx.finish().hex_encode()

func _run() -> void:
	print("Pixel RPG Visual Pack 012A direct-photo gate pillar gate")
	_check("Pack 012A schema", OVERLAY.SCHEMA == "pixel_rpg.concept_gate_pillars_012a.v1")
	_check("left pillar PNG exists", FileAccess.file_exists(OVERLAY.LEFT_PATH), OVERLAY.LEFT_PATH)
	_check("right pillar PNG exists", FileAccess.file_exists(OVERLAY.RIGHT_PATH), OVERLAY.RIGHT_PATH)
	_check("left pillar exact SHA", _file_sha256(OVERLAY.LEFT_PATH) == OVERLAY.LEFT_SHA256, _file_sha256(OVERLAY.LEFT_PATH))
	_check("right pillar exact SHA", _file_sha256(OVERLAY.RIGHT_PATH) == OVERLAY.RIGHT_SHA256, _file_sha256(OVERLAY.RIGHT_PATH))

	var overlay := OVERLAY.new() as Node3D
	root.add_child(overlay)
	await process_frame
	_check("overlay root identity", overlay.name == "ConceptGatePillars012A", overlay.name)
	_check("overlay is presentation-only", not _contains_physics(overlay))
	var left := overlay.get_node_or_null("GateLeftPillarPhoto") as Sprite3D
	var right := overlay.get_node_or_null("GateRightPillarPhoto") as Sprite3D
	_check("left gate pillar is live", left != null)
	_check("right gate pillar is live", right != null)
	if left != null:
		_check("left pillar loads direct PNG", left.texture != null and left.texture.resource_path == OVERLAY.LEFT_PATH, left.texture.resource_path if left.texture != null else "null")
		_check("left pillar maps to 2.4m width", is_equal_approx(left.texture.get_width() * left.pixel_size, 2.4))
		_check("left pillar maps to 4.8m height", is_equal_approx(left.texture.get_height() * left.pixel_size, 4.8))
	if right != null:
		_check("right pillar loads direct PNG", right.texture != null and right.texture.resource_path == OVERLAY.RIGHT_PATH, right.texture.resource_path if right.texture != null else "null")
		_check("right pillar maps to 4.8m height", is_equal_approx(right.texture.get_height() * right.pixel_size, 4.8))
	overlay.queue_free()

	var prototype := PROTOTYPE.instantiate()
	_check("prototype instantiates with Pack 012A", prototype != null)
	if prototype != null:
		root.add_child(prototype)
		await process_frame
		await physics_frame
		var live_overlay := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/WorldGeometry/ConceptGatePillars012A") as Node3D
		var left_collision := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/WorldGeometry/GateLeftCollision") as StaticBody3D
		var right_collision := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/WorldGeometry/GateRightCollision") as StaticBody3D
		var camera := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/Hunter/CameraYaw/CameraPitch/Camera3D") as Camera3D
		_check("live game contains Pack 012A", live_overlay != null)
		_check("existing left gate collision preserved", left_collision != null and left_collision.position.is_equal_approx(Vector3(-4.8, 2.2, -10.0)))
		_check("existing right gate collision preserved", right_collision != null and right_collision.position.is_equal_approx(Vector3(4.8, 2.2, -10.0)))
		_check("first-person camera remains current", camera != null and camera.current)
		prototype.queue_free()
		await process_frame

	print()
	print("Checks: %d | Passed: %d | Failed: %d" % [checks, checks - failures.size(), failures.size()])
	print("Gate: " + ("PIXEL_RPG_VISUAL_PACK_012A_GATE_PILLARS_VERIFIED" if failures.is_empty() else "PIXEL_RPG_VISUAL_PACK_012A_GATE_PILLARS_FAILED"))
	quit(0 if failures.is_empty() else 1)
