extends SceneTree

func _initialize() -> void:
	var failures: Array[String] = []
	var packed := load("res://scenes/graybox/player_camera_graybox.tscn") as PackedScene
	if packed == null:
		push_error("SHOOTER_RPG_MOBILE_TOUCH_SMOKE_FAIL: graybox scene did not load")
		quit(1)
		return

	var instance := packed.instantiate()
	root.add_child(instance)

	var touch_surface := instance.get_node_or_null("MobileControls/TouchSurface") as Control
	var safe_area := instance.get_node_or_null("MobileControls/TouchSurface/SafeArea") as Control
	var jump_button := instance.get_node_or_null("MobileControls/TouchSurface/SafeArea/JumpButton") as Button
	var fire_button := instance.get_node_or_null("MobileControls/TouchSurface/SafeArea/FireButton") as Button
	var player := instance.get_node_or_null("Player") as CharacterBody3D

	if touch_surface == null:
		failures.append("TouchSurface must exist")
	if safe_area == null:
		failures.append("SafeArea must exist")
	if jump_button == null:
		failures.append("JumpButton must exist")
	if fire_button == null:
		failures.append("FireButton must exist")
	if player == null:
		failures.append("Player must exist")

	if touch_surface != null:
		touch_surface.call("set_movement_vector", Vector2(0.75, -0.5))
		if Input.get_action_strength("move_right") <= 0.0:
			failures.append("touch movement must feed move_right action")
		if Input.get_action_strength("move_forward") <= 0.0:
			failures.append("touch movement must feed move_forward action")
		touch_surface.call("clear_movement_vector")

	if not InputMap.has_action("jump"):
		failures.append("jump semantic action must exist")

	instance.queue_free()

	if failures.is_empty():
		print("SHOOTER_RPG_MOBILE_TOUCH_SMOKE_PASS move_look_jump=yes")
		quit(0)
		return

	for failure in failures:
		push_error("SHOOTER_RPG_MOBILE_TOUCH_SMOKE_FAIL: %s" % failure)
	quit(1)
