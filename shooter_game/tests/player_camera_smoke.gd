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
	var spring_arm := instance.get_node_or_null("Player/CameraYaw/CameraPitch/SpringArm3D") as SpringArm3D
	var camera := instance.get_node_or_null("Player/CameraYaw/CameraPitch/SpringArm3D/Camera3D") as Camera3D
	var ground := instance.get_node_or_null("Ground") as StaticBody3D
	var obstacle := instance.get_node_or_null("Obstacle") as StaticBody3D

	if player == null:
		failures.append("Player must be CharacterBody3D")
	if spring_arm == null:
		failures.append("camera boom must be SpringArm3D")
	if camera == null:
		failures.append("camera must be Camera3D")
	if ground == null:
		failures.append("Ground must be StaticBody3D")
	if obstacle == null:
		failures.append("Obstacle must be StaticBody3D")

	if spring_arm != null and not is_equal_approx(spring_arm.spring_length, 4.5):
		failures.append("unexpected provisional spring length")
	if camera != null and not camera.current:
		failures.append("graybox camera must be current")

	instance.queue_free()

	if failures.is_empty():
		print("SHOOTER_RPG_PLAYER_CAMERA_SMOKE_PASS")
		quit(0)
		return

	for failure in failures:
		push_error("SHOOTER_RPG_PLAYER_CAMERA_SMOKE_FAIL: %s" % failure)
	quit(1)
