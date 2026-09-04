extends SceneTree

var failures: Array[String] = []
var checks := 0

func _init() -> void:
	call_deferred("_run")

func _check(label: String, condition: bool, detail: String = "") -> void:
	checks += 1
	print("[%s] %s%s" % ["PASS" if condition else "FAIL", label, " :: " + detail if not detail.is_empty() else ""])
	if not condition:
		failures.append(label)

func _has_collision_descendant(node: Node) -> bool:
	if node is CollisionObject3D:
		return true
	for child in node.get_children():
		if _has_collision_descendant(child):
			return true
	return false

func _ray_hit_name(world: Node3D, from: Vector3, to: Vector3, exclude: Array[RID] = []) -> String:
	var query := PhysicsRayQueryParameters3D.create(from, to)
	query.exclude = exclude
	query.collide_with_areas = false
	query.collide_with_bodies = true
	var result := world.get_world_3d().direct_space_state.intersect_ray(query)
	if result.is_empty():
		return ""
	var collider: Object = result.get("collider")
	if collider == null:
		return ""
	return String(collider.get("name"))

func _run() -> void:
	print("Hunt-01 production graybox headless integration")
	var packed := load("res://scenes/regions/region_01_hunt01_graybox.tscn") as PackedScene
	if packed == null:
		_check("production Region-01 scene loads", false, "PackedScene load returned null")
		_finish()
		return

	var world := packed.instantiate() as Node3D
	root.add_child(world)
	await process_frame
	await physics_frame
	await physics_frame

	_check("world reports built", bool(world.call("is_world_built")))
	var identity: Dictionary = world.call("get_manifest_identity")
	_check("scenario identity", identity.get("scenario") == "R01_HUNT01_M01_TRACK_TO_MEADOW", str(identity))
	_check("hunt identity", identity.get("hunt") == "hunt_r01_m01_proof_01", str(identity))
	_check("monster identity", identity.get("monster") == "monster_r01_m01_0001", str(identity))
	_check("encounter identity", identity.get("encounter") == "enc_r01_ef02_m01_0001", str(identity))

	# This is the raw construction centerline generated from manifest anchors, not
	# the final smoothed navigable path measured by H01VAL005. The manifest records
	# ~279 m before ramp controls and a future 285-315 m smoothed path target. Keep
	# this headless gate at the correct evidence level and leave final path-length
	# proof to later scene-static/runtime traversal validation.
	var route_length := float(world.call("get_required_route_length_m"))
	_check(
		"raw required route stays consistent with pre-smoothing planning geometry",
		route_length >= 279.0 and route_length <= 315.0,
		"%.3f m; final smoothed target 285-315 m remains unverified" % route_length
	)
	_check("13 required route slabs exist", get_nodes_in_group("hunt01_required_route").size() == 13, "count=%d" % get_nodes_in_group("hunt01_required_route").size())
	_check("3 escape route slabs exist", get_nodes_in_group("hunt01_escape_route").size() == 3, "count=%d" % get_nodes_in_group("hunt01_escape_route").size())
	_check("7 evidence markers exist", get_nodes_in_group("hunt01_evidence").size() == 7, "count=%d" % get_nodes_in_group("hunt01_evidence").size())
	_check("10 tactical nodes exist", get_nodes_in_group("hunt01_tactical_nodes").size() == 10, "count=%d" % get_nodes_in_group("hunt01_tactical_nodes").size())
	_check("3 streaming proxies exist", get_nodes_in_group("hunt01_stream_proxy").size() == 3, "count=%d" % get_nodes_in_group("hunt01_stream_proxy").size())
	_check("one Monster placeholder exists", get_nodes_in_group("hunt01_monster").size() == 1, "count=%d" % get_nodes_in_group("hunt01_monster").size())
	_check("two physical cover objects exist", get_nodes_in_group("hunt01_cover").size() == 2, "count=%d" % get_nodes_in_group("hunt01_cover").size())

	var stream_collision_free := true
	for proxy in get_nodes_in_group("hunt01_stream_proxy"):
		if _has_collision_descendant(proxy):
			stream_collision_free = false
	_check("streaming proxies are non-colliding", stream_collision_free)

	var hunter := world.get_node("Hunter") as CharacterBody3D
	var hunter_exclude: Array[RID] = [hunter.get_rid()]
	var s00_hit := _ray_hit_name(world, Vector3(0.0, 8.0, -45.0), Vector3(0.0, -5.0, -45.0), hunter_exclude)
	_check("S00 departure surface has physical collision", not s00_hit.is_empty(), s00_hit)
	var meadow_hit := _ray_hit_name(world, Vector3(-45.0, 12.0, -250.0), Vector3(-45.0, -4.0, -250.0), hunter_exclude)
	_check("EF02 meadow floor has physical collision", meadow_hit.contains("H01_GB_EF02_MEADOW_FLOOR") or meadow_hit.contains("H01_REQUIRED_ROUTE"), meadow_hit)
	var monster_hit := _ray_hit_name(world, Vector3(-25.0, 5.2, -252.0), Vector3(-10.0, 5.2, -252.0), hunter_exclude)
	_check("Monster placeholder has solid collision", monster_hit == "monster_r01_m01_0001", monster_hit)

	var first_person_camera := world.get_node("Hunter/FirstPersonCamera") as Camera3D
	var aerial_camera := world.get_node("AerialCamera") as Camera3D
	_check("first-person FOV remains 115 degrees", is_equal_approx(first_person_camera.fov, 115.0), str(first_person_camera.fov))
	world.call("_on_toggle_view_pressed")
	_check("view toggle enters first person", first_person_camera.current and not aerial_camera.current)
	world.call("_on_toggle_view_pressed")
	_check("view toggle returns to aerial", aerial_camera.current and not first_person_camera.current)

	var start_position := hunter.global_position
	world.call("_on_reset_to_start_pressed")
	_check("reset returns Hunter to S00", hunter.global_position.distance_to(Vector3(0.0, 0.875, -45.0)) < 0.001, str(hunter.global_position))
	_check("reset does not create a duplicate world", root.get_children().size() == 1, "root children=%d" % root.get_children().size())
	_check("initial/reset position is stable", start_position.distance_to(Vector3(0.0, 0.875, -45.0)) < 0.05)

	_finish()

func _finish() -> void:
	print()
	print("Checks: %d | Passed: %d | Failed: %d" % [checks, checks - failures.size(), failures.size()])
	print("Gate: HUNT01_PRODUCTION_GRAYBOX_HEADLESS_INTEGRATION_VERIFIED" if failures.is_empty() else "Gate: HUNT01_PRODUCTION_GRAYBOX_HEADLESS_INTEGRATION_FAILED")
	print("H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH=NOT_EXECUTED")
	print("This result does NOT prove Galaxy A03s traversal, visual quality, scene-static dimensional tolerances, or sustained performance.")
	quit(0 if failures.is_empty() else 1)
