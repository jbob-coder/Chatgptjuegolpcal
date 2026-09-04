extends SceneTree

var failures: Array[String] = []

func _init() -> void:
	call_deferred("_run")

func _check(label: String, condition: bool, detail: String = "") -> void:
	print("[%s] %s%s" % ["PASS" if condition else "FAIL", label, " :: " + detail if not detail.is_empty() else ""])
	if not condition:
		failures.append(label)

func _run() -> void:
	print("Stage 1 adaptive joystick / first-person camera regression")
	var packed := load("res://scenes/probe_world.tscn") as PackedScene
	if packed == null:
		_check("ProbeWorld loads", false, "PackedScene load returned null")
		_finish()
		return

	var world := packed.instantiate()
	root.add_child(world)
	await process_frame

	var hunter := world.get_node("Hunter") as CharacterBody3D
	var first_person_camera := world.get_node("Hunter/FirstPersonCamera") as Camera3D

	_check("first-person FOV remains 115 degrees", absf(first_person_camera.fov - 115.0) < 0.001, str(first_person_camera.fov))

	world.set("_look_speed", 0.35)
	world.set("_first_person", false)
	var aerial_turn_response := float(world.call("_effective_hunter_turn_response"))
	world.set("_first_person", true)
	var first_person_turn_response := float(world.call("_effective_hunter_turn_response"))
	_check("first-person turning remains damped relative to aerial", first_person_turn_response < aerial_turn_response, "aerial=%.3f first_person=%.3f" % [aerial_turn_response, first_person_turn_response])

	# Simulate one continuous touch. The player pushes right from a north-facing
	# start and keeps the same finger down while the Hunter aligns east.
	world.set("_first_person", false)
	world.set("_joystick_touch_id", 7)
	hunter.rotation.y = 0.0
	world.call("_capture_joystick_reference_heading")
	world.call("_set_joystick_from_raw_vector", Vector2.RIGHT)
	var initial_world_intent := world.call("_joystick_world_vector") as Vector3
	_check("right initially resolves east", initial_world_intent.normalized().dot(Vector3.RIGHT) > 0.999, str(initial_world_intent))

	# Pretend the visual Hunter/camera has completed that turn. Adaptive rebase
	# must update the reference for the next deliberate stick change while the
	# CURRENT movement remains east.
	hunter.rotation.y = -PI * 0.5
	world.call("_update_joystick_adaptation", 0.20)
	var rebased_reference := world.get("_joystick_reference_forward") as Vector3
	var held_world_intent := world.call("_joystick_world_vector") as Vector3
	_check("sustained aligned movement rebases forward without release", rebased_reference.normalized().dot(Vector3.RIGHT) > 0.999, str(rebased_reference))
	_check("adaptive rebase does not change current held world movement", held_world_intent.normalized().dot(Vector3.RIGHT) > 0.999, str(held_world_intent))
	_check("adaptive rebase enters held-direction latch", bool(world.get("_joystick_adaptive_latched")))

	# The same finger now straightens from RIGHT toward UP. It never enters the
	# deadzone. The world direction must stay east through the entire gesture.
	world.call("_set_joystick_from_raw_vector", Vector2(0.70, -0.70))
	var diagonal_straighten := world.call("_joystick_world_vector") as Vector3
	_check("diagonal straightening preserves committed heading", diagonal_straighten.normalized().dot(Vector3.RIGHT) > 0.999, str(diagonal_straighten))
	_check("straightening did not require deadzone", not bool(world.get("_joystick_in_deadzone")))

	world.call("_set_joystick_from_raw_vector", Vector2(0.0, -1.0))
	var forward_after_straighten := world.call("_joystick_world_vector") as Vector3
	_check("up after continuous straightening keeps the new forward heading", forward_after_straighten.normalized().dot(Vector3.RIGHT) > 0.999, str(forward_after_straighten))
	_check("forward cone releases adaptive latch cleanly", not bool(world.get("_joystick_adaptive_latched")))
	_check("same touch owner remains active through adaptive turn", int(world.get("_joystick_touch_id")) == 7, str(world.get("_joystick_touch_id")))

	# Prove a second turn can adapt again without release. From east-forward,
	# push left -> north, align, then straighten left -> up while still touch 7.
	world.call("_set_joystick_from_raw_vector", Vector2.LEFT)
	var north_intent := world.call("_joystick_world_vector") as Vector3
	_check("left relative to east-forward requests north", north_intent.normalized().dot(Vector3(0.0, 0.0, -1.0)) > 0.999, str(north_intent))
	hunter.rotation.y = 0.0
	world.call("_update_joystick_adaptation", 0.20)
	world.call("_set_joystick_from_raw_vector", Vector2(-0.70, -0.70))
	world.call("_set_joystick_from_raw_vector", Vector2(0.0, -1.0))
	var north_forward := world.call("_joystick_world_vector") as Vector3
	_check("second adaptive straighten also needs no release/zero", north_forward.normalized().dot(Vector3(0.0, 0.0, -1.0)) > 0.999, str(north_forward))
	_check("touch owner still unchanged after second adaptive turn", int(world.get("_joystick_touch_id")) == 7)

	world.call("_reset_joystick")
	_check("reset zeros joystick world intent", (world.call("_joystick_world_vector") as Vector3).length_squared() < 0.00001)
	_check("reset releases touch owner", int(world.get("_joystick_touch_id")) == -1)

	_finish()

func _finish() -> void:
	print()
	print("Failures: %d" % failures.size())
	print("Gate: STAGE1_ADAPTIVE_JOYSTICK_RUNTIME_VERIFIED" if failures.is_empty() else "Gate: STAGE1_ADAPTIVE_JOYSTICK_RUNTIME_FAILED")
	print("This headless result does NOT replace the required Galaxy A03s feel test.")
	quit(0 if failures.is_empty() else 1)
