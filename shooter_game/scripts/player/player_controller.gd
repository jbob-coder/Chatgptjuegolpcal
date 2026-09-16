class_name ShooterPlayerController
extends CharacterBody3D

@export_category("Movement — provisional graybox tuning")
@export var move_speed_mps := 5.0
@export var ground_acceleration_mps2 := 22.0
@export var air_acceleration_mps2 := 7.0

@export_category("Camera — provisional graybox tuning")
@export var mouse_sensitivity := 0.0025
@export_range(-80.0, 0.0, 1.0) var min_pitch_degrees := -55.0
@export_range(0.0, 80.0, 1.0) var max_pitch_degrees := 35.0
@export_range(-60.0, 30.0, 1.0) var initial_pitch_degrees := -12.0

@onready var camera_yaw: Node3D = $CameraYaw
@onready var camera_pitch: Node3D = $CameraYaw/CameraPitch
@onready var spring_arm: SpringArm3D = $CameraYaw/CameraPitch/SpringArm3D

var _pitch_radians := 0.0


func _ready() -> void:
	ShooterDebugInputBindings.install()
	_pitch_radians = deg_to_rad(initial_pitch_degrees)
	camera_pitch.rotation.x = _pitch_radians
	spring_arm.add_excluded_object(get_rid())
	if not OS.has_feature("mobile"):
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	elif velocity.y < 0.0:
		velocity.y = 0.0

	var input_vector := Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	var camera_forward := -camera_yaw.global_transform.basis.z
	camera_forward.y = 0.0
	camera_forward = camera_forward.normalized()
	var camera_right := camera_yaw.global_transform.basis.x
	camera_right.y = 0.0
	camera_right = camera_right.normalized()

	var desired_direction := (camera_right * input_vector.x) + (camera_forward * -input_vector.y)
	if desired_direction.length_squared() > 1.0:
		desired_direction = desired_direction.normalized()

	var acceleration := ground_acceleration_mps2 if is_on_floor() else air_acceleration_mps2
	var target_x := desired_direction.x * move_speed_mps
	var target_z := desired_direction.z * move_speed_mps
	velocity.x = move_toward(velocity.x, target_x, acceleration * delta)
	velocity.z = move_toward(velocity.z, target_z, acceleration * delta)

	move_and_slide()


func apply_look_delta(screen_delta: Vector2, sensitivity_multiplier := 1.0) -> void:
	camera_yaw.rotate_y(-screen_delta.x * mouse_sensitivity * sensitivity_multiplier)
	_pitch_radians = clamp(
		_pitch_radians - (screen_delta.y * mouse_sensitivity * sensitivity_multiplier),
		deg_to_rad(min_pitch_degrees),
		deg_to_rad(max_pitch_degrees)
	)
	camera_pitch.rotation.x = _pitch_radians


func _unhandled_input(event: InputEvent) -> void:
	if OS.has_feature("mobile"):
		return

	if event is InputEventMouseButton and event.pressed and Input.mouse_mode != Input.MOUSE_MODE_CAPTURED:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
		get_viewport().set_input_as_handled()
		return

	if event.is_action_pressed("pause_game"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED else Input.MOUSE_MODE_CAPTURED
		get_viewport().set_input_as_handled()
		return

	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		apply_look_delta(event.screen_relative)
