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

func _has_audio_descendant(node: Node) -> bool:
	if node is AudioStreamPlayer or node is AudioStreamPlayer2D or node is AudioStreamPlayer3D:
		return true
	for child in node.get_children():
		if _has_audio_descendant(child):
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
	print("Hunt-01 flat-foundation visual/evidence repair integration")
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

	var route_length := float(world.call("get_required_route_length_m"))
	_check("raw manifest route retains authoritative 3D planning length", route_length >= 279.0 and route_length <= 315.0, "%.3f m" % route_length)
	_check("13 required route visual lanes exist", get_nodes_in_group("hunt01_required_route").size() == 13, "count=%d" % get_nodes_in_group("hunt01_required_route").size())
	_check("3 escape route visual lanes exist", get_nodes_in_group("hunt01_escape_route").size() == 3, "count=%d" % get_nodes_in_group("hunt01_escape_route").size())

	_check("one continuous world foundation exists", get_nodes_in_group("hunt01_foundation").size() == 1, "count=%d" % get_nodes_in_group("hunt01_foundation").size())
	var foundation_size: Vector2 = world.call("get_foundation_size_m")
	_check("foundation covers 440 x 440 m", foundation_size == Vector2(440.0, 440.0), str(foundation_size))
	_check("Hunter movement speed increased to 6.25 m/s", is_equal_approx(float(world.call("get_move_speed_mps")), 6.25), str(world.call("get_move_speed_mps")))

	_check("7 evidence areas exist initially", get_nodes_in_group("hunt01_evidence").size() == 7, "count=%d" % get_nodes_in_group("hunt01_evidence").size())
	var all_evidence_are_areas := true
	for evidence in get_nodes_in_group("hunt01_evidence"):
		if not (evidence is Area3D):
			all_evidence_are_areas = false
	_check("all evidence uses walk-over Area3D triggers", all_evidence_are_areas)
	_check("10 tactical nodes exist", get_nodes_in_group("hunt01_tactical_nodes").size() == 10, "count=%d" % get_nodes_in_group("hunt01_tactical_nodes").size())
	_check("3 streaming proxies exist", get_nodes_in_group("hunt01_stream_proxy").size() == 3, "count=%d" % get_nodes_in_group("hunt01_stream_proxy").size())
	_check("one Monster exists", get_nodes_in_group("hunt01_monster").size() == 1, "count=%d" % get_nodes_in_group("hunt01_monster").size())
	_check("two physical cover objects exist", get_nodes_in_group("hunt01_cover").size() == 2, "count=%d" % get_nodes_in_group("hunt01_cover").size())
	_check("environment uses reusable stylized asset instances", get_nodes_in_group("hunt01_environment_asset").size() >= 40, "count=%d" % get_nodes_in_group("hunt01_environment_asset").size())

	var stream_collision_free := true
	for proxy in get_nodes_in_group("hunt01_stream_proxy"):
		if _has_collision_descendant(proxy):
			stream_collision_free = false
	_check("streaming proxies are non-colliding", stream_collision_free)
	_check("normal Region scene has no audio-player dependency", not _has_audio_descendant(world))

	var hunter := world.get_node("Hunter") as CharacterBody3D
	var hunter_exclude: Array[RID] = [hunter.get_rid()]
	var s00_hit := _ray_hit_name(world, Vector3(0.0, 8.0, -45.0), Vector3(0.0, -5.0, -45.0), hunter_exclude)
	_check("S00 has continuous physical ground", s00_hit == "H01_WORLD_FOUNDATION", s00_hit)
	var meadow_hit := _ray_hit_name(world, Vector3(-45.0, 8.0, -250.0), Vector3(-45.0, -5.0, -250.0), hunter_exclude)
	_check("EF02 Meadow has continuous physical ground", meadow_hit == "H01_WORLD_FOUNDATION", meadow_hit)
	var offroute_hit := _ray_hit_name(world, Vector3(80.0, 8.0, -100.0), Vector3(80.0, -5.0, -100.0), hunter_exclude)
	_check("off-route map area still has physical ground", offroute_hit == "H01_WORLD_FOUNDATION", offroute_hit)

	var monster_hit := _ray_hit_name(world, Vector3(-25.0, 1.6, -252.0), Vector3(-10.0, 1.6, -252.0), hunter_exclude)
	_check("Mudcrest Raker remains solid", monster_hit == "monster_r01_m01_0001", monster_hit)
	var monster := world.get_node("WorldGeometry/monster_r01_m01_0001") as Node3D
	_check("Mudcrest Raker themed visual exists", monster.get_node_or_null("MudcrestRakerVisual") != null)
	_check("Hunter themed visual exists", world.get_node_or_null("Hunter/Visual") != null)

	# Actual proximity-trigger proof: move the Hunter into EV02 and allow physics
	# overlap processing to emit Area3D.body_entered. This is the regression for
	# the user's report that walking across the old yellow balls did nothing.
	hunter.global_position = Vector3(-70.0, 0.875, -110.0)
	hunter.velocity = Vector3.ZERO
	await physics_frame
	await physics_frame
	await process_frame
	_check("walking into evidence triggers investigation", int(world.call("get_collected_evidence_count")) == 1, str(world.call("get_collected_evidence_count")))
	_check("walked-over evidence disappears", world.get_node_or_null("WorldGeometry/R01_H01_EV02_BANK_REEDS") == null)
	_check("walked-over evidence leaves active group", get_nodes_in_group("hunt01_evidence").size() == 6, "count=%d" % get_nodes_in_group("hunt01_evidence").size())

	var collected := bool(world.call("collect_evidence_for_test", "R01_H01_EV01_OUTER_PRINTS"))
	_check("evidence domain path can investigate another clue", collected)
	await process_frame
	_check("second investigated evidence disappears", world.get_node_or_null("WorldGeometry/R01_H01_EV01_OUTER_PRINTS") == null)
	_check("second investigated evidence leaves active group", get_nodes_in_group("hunt01_evidence").size() == 5, "count=%d" % get_nodes_in_group("hunt01_evidence").size())
	_check("evidence collection count increments deterministically", int(world.call("get_collected_evidence_count")) == 2, str(world.call("get_collected_evidence_count")))
	_check("same evidence cannot be collected twice", not bool(world.call("collect_evidence_for_test", "R01_H01_EV01_OUTER_PRINTS")))

	var first_person_camera := world.get_node("Hunter/FirstPersonCamera") as Camera3D
	var aerial_camera := world.get_node("AerialCamera") as Camera3D
	_check("first-person FOV remains 115 degrees", is_equal_approx(first_person_camera.fov, 115.0), str(first_person_camera.fov))
	world.call("_on_toggle_view_pressed")
	_check("view toggle enters first person", first_person_camera.current and not aerial_camera.current)
	world.call("_on_toggle_view_pressed")
	_check("view toggle returns to aerial", aerial_camera.current and not first_person_camera.current)

	world.call("_on_reset_to_start_pressed")
	_check("reset returns Hunter to S00", hunter.global_position.distance_to(Vector3(0.0, 0.875, -45.0)) < 0.001, str(hunter.global_position))
	_check("reset does not create a duplicate world", root.get_children().size() == 1, "root children=%d" % root.get_children().size())

	_finish()

func _finish() -> void:
	print()
	print("Checks: %d | Passed: %d | Failed: %d" % [checks, checks - failures.size(), failures.size()])
	print("Gate: HUNT01_PRODUCTION_GRAYBOX_HEADLESS_INTEGRATION_VERIFIED" if failures.is_empty() else "Gate: HUNT01_PRODUCTION_GRAYBOX_HEADLESS_INTEGRATION_FAILED")
	print("H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH=NOT_EXECUTED")
	print("This result does NOT prove Galaxy A03s visual acceptance, traversal feel, or sustained performance.")
	quit(0 if failures.is_empty() else 1)
