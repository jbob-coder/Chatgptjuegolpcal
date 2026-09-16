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

	var player := instance.get_node_or_null("Player")
	var spring_arm := instance.get_node_or_null("Player/CameraYaw/CameraPitch/SpringArm3D")
	var camera := instance.get_node_or_null("Player/CameraYaw/CameraPitch/SpringArm3D/Camera3D")
	var ground := instance.get_node_or_null("Ground")
	var obstacle := instance.get_node_or_null("Obstacle")

	if not player is CharacterBody3D:
		failures.append("Player must be CharacterBody3D")
	if not spring_arm is SpringArm3D:
		failures.append("camera boom must be SpringArm3D")
	if not camera is Camera3D:
		failures.append("camera must be Camera3D")
	if not ground is StaticBody3D:
		failures.append("Ground must be StaticBody3D")
	if not obstacle is StaticBody3D:
		failures.append("Obstacle must be StaticBody3D")

	if spring_arm is SpringArm3D and not is_equal_approx(spring_arm.spring_length, 4.5):
		failures.append("unexpected provisional spring length")
	if camera is Camera3D and not camera.current:
		failures.append("graybox camera must be current")

	instance.queue_free()

	if failures.is_empty():
		print("SHOOTER_RPG_PLAYER_CAMERA_SMOKE_PASS")
		quit(0)
		return

	for failure in failures:
		push_error("SHOOTER_RPG_PLAYER_CAMERA_SMOKE_FAIL: %s" % failure)
	quit(1)
