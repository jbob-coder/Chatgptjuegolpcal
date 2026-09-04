extends SceneTree

var failures: Array[String] = []

func _init() -> void:
	call_deferred("_run")

func _check(label: String, condition: bool, detail: String = "") -> void:
	print("[%s] %s%s" % ["PASS" if condition else "FAIL", label, " :: " + detail if not detail.is_empty() else ""])
	if not condition:
		failures.append(label)

func _run() -> void:
	print("Stage 1 phone-feedback control/camera regression")
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

	_check("first-person FOV is 115 degrees", absf(first_person_camera.fov - 115.0) < 0.001, str(first_person_camera.fov))

	world.set("_look_speed", 0.35)
	world.set("_first_person", false)
	var aerial_turn_response := float(world.call("_effective_hunter_turn_response"))
	world.set("_first_person", true)
	var first_person_turn_response := float(world.call("_effective_hunter_turn_response"))
	_check("first-person turning is damped relative to aerial", first_person_turn_response < aerial_turn_response, "aerial=%.3f first_person=%.3f" % [aerial_turn_response, first_person_turn_response])
	_check("first-person damping keeps positive controllable response", first_person_turn_response > 0.5, str(first_person_turn_response))

	# A held off-center stick must keep a stable reference even if Hunter facing changes.
	world.set("_first_person", false)
	hunter.rotation.y = 0.0
	world.call("_capture_joystick_reference_heading")
	world.call("_set_joystick_from_raw_vector", Vector2.RIGHT)
	var original_reference := world.get("_joystick_reference_forward") as Vector3
	hunter.rotation.y = 1.1
	world.call("_set_joystick_from_raw_vector", Vector2.RIGHT)
	var held_reference := world.get("_joystick_reference_forward") as Vector3
	_check("off-center held stick does not continuously rotate reference", held_reference.distance_to(original_reference) < 0.00001, "%s -> %s" % [original_reference, held_reference])

	# Returning through neutral without releasing the finger is the new recenter event.
	var expected_latest_forward := world.call("_hunter_forward") as Vector3
	world.call("_set_joystick_from_raw_vector", Vector2.ZERO)
	var recentered_reference := world.get("_joystick_reference_forward") as Vector3
	_check("neutral crossing recaptures latest Hunter heading without touch release", recentered_reference.distance_to(expected_latest_forward) < 0.00001, "%s vs %s" % [recentered_reference, expected_latest_forward])
	_check("neutral crossing zeros movement", (world.get("_joystick_vector") as Vector2).length_squared() < 0.00001, str(world.get("_joystick_vector")))

	# Pushing screen-up after recenter must now resolve along the latest heading.
	world.call("_set_joystick_from_raw_vector", Vector2(0.0, -1.0))
	var resolved_forward := world.call("_joystick_world_vector") as Vector3
	_check("up after neutral follows newly captured heading", resolved_forward.normalized().dot(expected_latest_forward.normalized()) > 0.9999, "%s vs %s" % [resolved_forward, expected_latest_forward])

	# A full reset still clears the touch/transient state for Settings/lifecycle safety.
	world.call("_reset_joystick")
	_check("reset returns joystick to deadzone state", bool(world.get("_joystick_in_deadzone")))
	_check("reset zeros joystick vector", (world.get("_joystick_vector") as Vector2).length_squared() < 0.00001)
	_check("reset releases joystick touch owner", int(world.get("_joystick_touch_id")) == -1, str(world.get("_joystick_touch_id")))

	_finish()

func _finish() -> void:
	print()
	print("Failures: %d" % failures.size())
	print("Gate: STAGE1_PHONE_FEEDBACK_CONTROL_CAMERA_RUNTIME_VERIFIED" if failures.is_empty() else "Gate: STAGE1_PHONE_FEEDBACK_CONTROL_CAMERA_RUNTIME_FAILED")
	print("This headless result does NOT replace the required Galaxy A03s retest.")
	quit(0 if failures.is_empty() else 1)
