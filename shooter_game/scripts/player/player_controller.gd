class_name ShooterPlayerController
extends CharacterBody3D

@export_category("Movement — provisional graybox tuning")
@export var move_speed_mps := 5.5
@export var ground_acceleration_mps2 := 24.0
@export var air_acceleration_mps2 := 8.0

@export_category("Movement techniques — provisional")
@export var ground_jump_speed_mps := 6.4
@export var wall_jump_vertical_speed_mps := 6.6
@export var wall_jump_horizontal_speed_mps := 7.4
@export_range(0.0, 0.5, 0.01) var wall_jump_steer_lock_seconds := 0.16
@export_range(0.0, 1.0, 0.05) var wall_jump_air_control_multiplier := 0.30

@export_category("Camera — first-person")
@export_range(70.0, 130.0, 1.0) var target_horizontal_fov_degrees := 115.0
@export var mouse_sensitivity := 0.0025
@export_range(-89.0, 0.0, 1.0) var min_pitch_degrees := -80.0
@export_range(0.0, 89.0, 1.0) var max_pitch_degrees := 80.0
@export_range(-60.0, 30.0, 1.0) var initial_pitch_degrees := -4.0

@onready var camera_yaw: Node3D = $CameraYaw
@onready var camera_pitch: Node3D = $CameraYaw/CameraPitch
@onready var camera: Camera3D = $CameraYaw/CameraPitch/Camera3D

var _pitch_radians := 0.0
var _wall_jump_steer_lock_remaining := 0.0


func _ready() -> void:
	ShooterDebugInputBindings.install()
	_pitch_radians = deg_to_rad(initial_pitch_degrees)
	camera_pitch.rotation.x = _pitch_radians
	camera.keep_aspect = Camera3D.KEEP_HEIGHT
	_update_camera_fov()
	get_viewport().size_changed.connect(_update_camera_fov)
	if not OS.has_feature("mobile"):
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _physics_process(delta: float) -> void:
	_wall_jump_steer_lock_remaining = maxf(_wall_jump_steer_lock_remaining - delta, 0.0)

	var was_on_floor := is_on_floor()
	var was_on_wall := is_on_wall()
	var wall_normal := get_wall_normal() if was_on_wall else Vector3.ZERO

	if not was_on_floor:
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

	var performed_wall_jump := false
	if Input.is_action_just_pressed("jump"):
		if was_on_floor:
			velocity.y = ground_jump_speed_mps
		elif was_on_wall and _wall_jump_steer_lock_remaining <= 0.0:
			var away_from_wall := wall_normal
			away_from_wall.y = 0.0
			if away_from_wall.length_squared() > 0.001:
				away_from_wall = away_from_wall.normalized()
				velocity.x = away_from_wall.x * wall_jump_horizontal_speed_mps
				velocity.z = away_from_wall.z * wall_jump_horizontal_speed_mps
				velocity.y = wall_jump_vertical_speed_mps
				_wall_jump_steer_lock_remaining = wall_jump_steer_lock_seconds
				performed_wall_jump = true

	if not performed_wall_jump:
		var acceleration := ground_acceleration_mps2 if was_on_floor else air_acceleration_mps2
		if _wall_jump_steer_lock_remaining > 0.0:
			acceleration *= wall_jump_air_control_multiplier
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


func get_view_camera() -> Camera3D:
	return camera


func _update_camera_fov() -> void:
	var viewport_size := get_viewport().get_visible_rect().size
	if viewport_size.y <= 0.0:
		return
	var aspect := viewport_size.x / viewport_size.y
	if aspect <= 0.0:
		return
	var horizontal_radians := deg_to_rad(target_horizontal_fov_degrees)
	var vertical_radians := 2.0 * atan(tan(horizontal_radians * 0.5) / aspect)
	camera.fov = rad_to_deg(vertical_radians)


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
