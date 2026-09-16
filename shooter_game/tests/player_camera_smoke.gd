extends SceneTree

func _initialize() -> void:
	var failures: Array[String] = []
	var packed := load("res://scenes/graybox/player_camera_graybox.tscn") as PackedScene
	if packed == null:
		push_error("SHOOTER_RPG_PLAYER_CAMERA_SMOKE_FAIL: graybox scene did not load")
		quit(1)
		return

	var instance := packed.instantiate()
	if instance == null:
		push_error("SHOOTER_RPG_PLAYER_CAMERA_SMOKE_FAIL: graybox scene did not instantiate")
		quit(1)
		return

	root.add_child(instance)

	var player := instance.get_node_or_null("Player") as CharacterBody3D
	var camera_yaw := instance.get_node_or_null("Player/CameraYaw") as Node3D
	var camera_pitch := instance.get_node_or_null("Player/CameraYaw/CameraPitch") as Node3D
	var camera := instance.get_node_or_null("Player/CameraYaw/CameraPitch/Camera3D") as Camera3D
	var spring_arm := instance.get_node_or_null("Player/CameraYaw/CameraPitch/SpringArm3D")
	var ground := instance.get_node_or_null("Ground") as StaticBody3D
	var wall := instance.get_node_or_null("Wall") as StaticBody3D
	var mobile_controls := instance.get_node_or_null("MobileControls") as CanvasLayer

	if player == null:
		failures.append("Player must be CharacterBody3D")
	if camera_yaw == null:
		failures.append("CameraYaw must exist")
	if camera_pitch == null:
		failures.append("CameraPitch must exist")
	if camera == null:
		failures.append("first-person camera must be Camera3D")
	if spring_arm != null:
		failures.append("first-person camera must not use SpringArm3D")
	if ground == null:
		failures.append("Ground must be StaticBody3D")
	if wall == null:
		failures.append("Wall must be StaticBody3D for wall-jump testing")
	if mobile_controls == null:
		failures.append("MobileControls must be instanced")

	if player != null:
		var target_hfov := float(player.get("target_horizontal_fov_degrees"))
		if not is_equal_approx(target_hfov, 115.0):
			failures.append("target horizontal FOV must be 115 degrees")
		if float(player.get("wall_jump_vertical_speed_mps")) <= 0.0:
			failures.append("wall jump vertical speed must be positive")
		if float(player.get("wall_jump_horizontal_speed_mps")) <= 0.0:
			failures.append("wall jump horizontal speed must be positive")

	if camera != null and not camera.current:
		failures.append("first-person graybox camera must be current")

	if not InputMap.has_action("jump"):
		failures.append("jump input action must exist")

	instance.queue_free()

	if failures.is_empty():
		print("SHOOTER_RPG_PLAYER_CAMERA_SMOKE_PASS perspective=first_person hfov=115 wall_jump=yes")
		quit(0)
		return

	for failure in failures:
		push_error("SHOOTER_RPG_PLAYER_CAMERA_SMOKE_FAIL: %s" % failure)
	quit(1)
