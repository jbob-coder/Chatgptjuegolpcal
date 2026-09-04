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

func _move_hunter_to(hunter: CharacterBody3D, position: Vector3) -> void:
	hunter.global_position = position
	hunter.velocity = Vector3.ZERO
	await physics_frame
	await physics_frame
	await process_frame

func _run() -> void:
	print("Hunt-01 production integration + tracking/evidence layer")
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
	await process_frame

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
	_check("Hunter movement speed remains 6.25 m/s", is_equal_approx(float(world.call("get_move_speed_mps")), 6.25), str(world.call("get_move_speed_mps")))

	_check("7 evidence areas exist initially", get_nodes_in_group("hunt01_evidence").size() == 7, "count=%d" % get_nodes_in_group("hunt01_evidence").size())
	var all_evidence_are_areas := true
	for evidence in get_nodes_in_group("hunt01_evidence"):
		if not (evidence is Area3D):
			all_evidence_are_areas = false
	_check("all evidence uses walk-over Area3D triggers", all_evidence_are_areas)
	_check("10 tactical nodes exist", get_nodes_in_group("hunt01_tactical_nodes").size() == 10, "count=%d" % get_nodes_in_group("hunt01_tactical_nodes").size())
	var tactical_hidden := true
	for marker_variant in get_nodes_in_group("hunt01_tactical_nodes"):
		var marker := marker_variant as Node3D
		if marker != null and marker.visible:
			tactical_hidden = false
	_check("future tactical-node debug discs are hidden during exploration", tactical_hidden)
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

	var tracking := world.get_node_or_null("TrackingRuntime")
	_check("tracking runtime node exists", tracking != null)
	if tracking != null:
		_check("tracking schema v1 loaded", String(tracking.call("get_schema")) == "uhr.hunt01.tracking_evidence.v1", String(tracking.call("get_schema")))
		_check("tracking does not require audio", not bool(tracking.call("is_audio_required")))
		_check("tracking enforces no-GPS presentation", bool(tracking.call("is_no_gps_enabled")))
		var initial_inference: Dictionary = tracking.call("get_current_inference")
		_check("tracking begins unresolved", String(initial_inference.get("phase", "")) == "SEARCHING", str(initial_inference))

	# Walk the real Hunter through all seven stable evidence coordinates. This proves
	# Area3D collection, disappearance and deterministic interpretation together.
	await _move_hunter_to(hunter, Vector3(-24.0, 0.875, -68.0))
	_check("EV01 walk-over collected", int(world.call("get_collected_evidence_count")) == 1)
	_check("EV01 disappears", world.get_node_or_null("WorldGeometry/R01_H01_EV01_OUTER_PRINTS") == null)
	if tracking != null:
		var ev01_inference: Dictionary = tracking.call("get_current_inference")
		_check("EV01 points toward River Ford", String(ev01_inference.get("phase", "")) == "OUTER_TRAIL" and String(ev01_inference.get("primary_route_id", "")) == "R01_S01", str(ev01_inference))

	await _move_hunter_to(hunter, Vector3(-70.0, 0.875, -110.0))
	_check("EV02 walk-over collected", int(world.call("get_collected_evidence_count")) == 2)
	if tracking != null:
		var ev02_inference: Dictionary = tracking.call("get_current_inference")
		_check("EV02 confirms River Ford approach", String(ev02_inference.get("phase", "")) == "RIVER_APPROACH", str(ev02_inference))

	await _move_hunter_to(hunter, Vector3(-100.0, 0.875, -140.0))
	_check("EV03 walk-over collected", int(world.call("get_collected_evidence_count")) == 3)
	if tracking != null:
		var ev03_inference: Dictionary = tracking.call("get_current_inference")
		_check("EV03 is activity evidence, not a forced route", String(ev03_inference.get("phase", "")) == "FORD_ACTIVITY" and String(ev03_inference.get("primary_route_id", "")) == "", str(ev03_inference))

	await _move_hunter_to(hunter, Vector3(-35.0, 0.875, -145.0))
	_check("EV05 old Rootwood clue can be investigated", int(world.call("get_collected_evidence_count")) == 4)
	if tracking != null:
		var old_inference: Dictionary = tracking.call("get_current_inference")
		_check("old S02 clue remains legal but weak", String(old_inference.get("phase", "")) == "WEAK_S02_HISTORY" and String(old_inference.get("alternate_route_id", "")) == "R01_S02" and String(old_inference.get("confidence", "")) == "WEAK", str(old_inference))

	await _move_hunter_to(hunter, Vector3(-78.0, 0.875, -168.0))
	_check("EV04 fresh water-exit clue can be investigated", int(world.call("get_collected_evidence_count")) == 5)
	if tracking != null:
		var resolved_inference: Dictionary = tracking.call("get_current_inference")
		_check("fresh S03 clue outweighs old S02 clue", String(resolved_inference.get("phase", "")) == "FRESH_S03_LEAD" and String(resolved_inference.get("primary_route_id", "")) == "R01_S03" and String(resolved_inference.get("alternate_route_id", "")) == "R01_S02", str(resolved_inference))
		_check("route comparison explains confidence instead of GPS", String(resolved_inference.get("lead", "")).contains("outweigh") and not String(resolved_inference.get("lead", "")).contains("-252"), String(resolved_inference.get("lead", "")))

	await _move_hunter_to(hunter, Vector3(-59.0, 0.875, -220.0))
	_check("EV06 feeding evidence collected", int(world.call("get_collected_evidence_count")) == 6)
	if tracking != null:
		var feeding_inference: Dictionary = tracking.call("get_current_inference")
		_check("feeding remains confirm Meadow activity", String(feeding_inference.get("phase", "")) == "MEADOW_CONFIRMATION", str(feeding_inference))

	await _move_hunter_to(hunter, Vector3(-67.0, 0.875, -232.0))
	_check("EV07 final pre-contact sign collected", int(world.call("get_collected_evidence_count")) == 7)
	_check("all collected physical evidence disappears", get_nodes_in_group("hunt01_evidence").size() == 0, "count=%d" % get_nodes_in_group("hunt01_evidence").size())
	if tracking != null:
		var final_inference: Dictionary = tracking.call("get_current_inference")
		_check("final tracking phase reaches observation-ready", String(final_inference.get("phase", "")) == "OBSERVATION_READY" and String(final_inference.get("primary_route_id", "")) == "R01_S03", str(final_inference))
		var history: Array = tracking.call("get_history")
		_check("tracking keeps deterministic seven-clue history", history.size() == 7, str(history))
		_check("tracking count agrees with world evidence state", int(tracking.call("get_collected_count")) == 7, str(tracking.call("get_collected_count")))
		var ev05_profile: Dictionary = tracking.call("get_profile", "R01_H01_EV05_OLD_ROOT_SCRAPE")
		_check("old Rootwood profile remains explicitly OLD / WEAK", String(ev05_profile.get("freshness", "")) == "OLD" and String(ev05_profile.get("confidence", "")) == "WEAK", str(ev05_profile))
		var ev07_profile: Dictionary = tracking.call("get_profile", "R01_H01_EV07_FLATTENED_GRASS_AUDIO")
		_check("final visual clue explicitly works without audio", String(ev07_profile.get("summary", "")).contains("audio is optional"), String(ev07_profile.get("summary", "")))

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
	if failures.is_empty():
		print("Gate: HUNT01_PRODUCTION_GRAYBOX_HEADLESS_INTEGRATION_VERIFIED")
		print("Gate: HUNT01_TRACKING_EVIDENCE_RUNTIME_VERIFIED")
	else:
		print("Gate: HUNT01_PRODUCTION_GRAYBOX_HEADLESS_INTEGRATION_FAILED")
		print("Gate: HUNT01_TRACKING_EVIDENCE_RUNTIME_FAILED")
	print("H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH=NOT_EXECUTED")
	print("Phone/user acceptance is intentionally deferred and does not block independent layer development.")
	quit(0 if failures.is_empty() else 1)
