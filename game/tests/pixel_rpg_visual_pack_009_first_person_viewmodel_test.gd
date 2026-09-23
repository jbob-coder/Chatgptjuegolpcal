extends SceneTree

const PROTOTYPE_SCENE: PackedScene = preload("res://scenes/prototypes/pixel_rpg_prototype_001.tscn")
const VIEWMODEL_SCENE: PackedScene = preload("res://assets/characters/first_person_viewmodel_01.tscn")

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

func _contains_control_or_script_owner(node: Node) -> bool:
	if node is Control:
		return true
	if node.get_script() != null:
		return true
	for child in node.get_children():
		if _contains_control_or_script_owner(child):
			return true
	return false

func _mesh_local_bounds_are_safe(node: Node) -> bool:
	if node is MeshInstance3D:
		var mesh_node := node as MeshInstance3D
		if mesh_node.position.z > -0.20 or mesh_node.position.z < -1.10:
			return false
		if mesh_node.position.y > 0.12 or mesh_node.position.y < -0.55:
			return false
	for child in node.get_children():
		if not _mesh_local_bounds_are_safe(child):
			return false
	return true

func _run() -> void:
	print("Pixel RPG Visual Pack 009 first-person viewmodel runtime gate")

	var standalone := VIEWMODEL_SCENE.instantiate() as Node3D
	_check("first-person viewmodel instantiates", standalone != null)
	if standalone != null:
		root.add_child(standalone)
		_check("viewmodel is presentation-only with no physics", not _contains_physics(standalone))
		_check("viewmodel owns no Control nodes or scripts", not _contains_control_or_script_owner(standalone))
		_check("viewmodel has both hands/forearms", standalone.has_node("LeftForearm") and standalone.has_node("LeftHand") and standalone.has_node("RightForearm") and standalone.has_node("RightHand"))
		_check("viewmodel has bounded poleblade silhouette", standalone.has_node("PolebladeShaft") and standalone.has_node("PolebladeHead") and standalone.has_node("PolebladeHook"))
		_check("viewmodel mesh anchors stay in bounded camera-local lower/front envelope", _mesh_local_bounds_are_safe(standalone))
		standalone.queue_free()

	var prototype := PROTOTYPE_SCENE.instantiate()
	_check("prototype instantiates with first-person viewmodel", prototype != null)
	if prototype == null:
		_finish()
		return

	var pre_tree_hunter := prototype.get_node("WorldDisplay/WorldViewport/World/Hunter") as CharacterBody3D
	var hunter_before := pre_tree_hunter.transform
	root.add_child(prototype)
	var hunter_after_presentation_init := pre_tree_hunter.transform
	await process_frame
	await physics_frame
	await process_frame

	var hunter := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/Hunter") as CharacterBody3D
	var hunter_visual := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/Hunter/Visual") as Node3D
	var camera := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/Hunter/CameraYaw/CameraPitch/Camera3D") as Camera3D
	var pitch := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/Hunter/CameraYaw/CameraPitch") as Node3D
	var spring_arm := prototype.get_node_or_null("WorldDisplay/WorldViewport/World/Hunter/CameraYaw/CameraPitch/SpringArm3D") as SpringArm3D
	var live_viewmodel := camera.get_node_or_null("FirstPersonViewmodel") as Node3D if camera != null else null

	_check("Hunter presentation init remains transform-neutral", hunter_after_presentation_init.is_equal_approx(hunter_before), str(hunter_after_presentation_init))
	_check("active Camera3D path remains unchanged", camera != null and camera.current and camera.get_parent() == pitch)
	_check("camera transform remains authored identity", camera != null and camera.transform.is_equal_approx(Transform3D.IDENTITY), str(camera.transform) if camera != null else "missing")
	_check("camera FOV/near/far contract remains exact", camera != null and is_equal_approx(camera.fov, 70.0) and is_equal_approx(camera.near, 0.04) and is_equal_approx(camera.far, 180.0))
	_check("legacy SpringArm remains camera-free", spring_arm != null and spring_arm.get_node_or_null("Camera3D") == null)
	_check("third-person Hunter body remains hidden", hunter_visual != null and not hunter_visual.visible)
	_check("live viewmodel is direct child of active camera", live_viewmodel != null and live_viewmodel.get_parent() == camera)
	_check("live viewmodel stays presentation-only", live_viewmodel != null and not _contains_physics(live_viewmodel) and not _contains_control_or_script_owner(live_viewmodel))

	var move: Vector3 = prototype.call("_camera_relative_movement", Vector2(0.0, -1.0))
	_check("camera-relative movement contract remains normalized", absf(move.length() - 1.0) <= 0.01 and absf(move.y) <= 0.001, str(move))

	var state_before: Dictionary = prototype.call("get_targeting_preview_state")
	_check("viewmodel does not imply combat domain start", not bool(state_before.get("combat_domain_started", true)))
	_check("viewmodel does not alter target count contract", int(state_before.get("target_count", -1)) == 8, str(state_before))

	prototype.queue_free()
	await process_frame
	_finish()

func _finish() -> void:
	print()
	print("Checks: %d | Passed: %d | Failed: %d" % [checks, checks - failures.size(), failures.size()])
	if failures.is_empty():
		print("Gate: PIXEL_RPG_VISUAL_PACK_009_FIRST_PERSON_VIEWMODEL_VERIFIED")
	else:
		print("Gate: PIXEL_RPG_VISUAL_PACK_009_FIRST_PERSON_VIEWMODEL_FAILED")
	print("This gate proves a cosmetic camera-child hands/poleblade viewmodel without moving camera/controller/collision/targeting/combat/state authority. Physical-device obstruction/readability/performance remains open.")
	quit(0 if failures.is_empty() else 1)
