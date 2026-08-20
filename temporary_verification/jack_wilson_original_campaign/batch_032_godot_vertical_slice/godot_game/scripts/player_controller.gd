class_name JackPlayerController
extends CharacterBody3D

signal feedback(message: String)

@export var walk_speed := 4.2
@export var sprint_speed := 6.0
@export var acceleration := 22.0
@export var deceleration := 28.0
@export var jump_velocity := 4.2
@export var mouse_sensitivity := 0.0022

@onready var head: Node3D = $Head
@onready var interaction_ray: RayCast3D = $Head/Camera3D/InteractionRay

var current_hp := 34
var max_hp := 34
var current_cm := 120
var max_cm := 120
var occupied_ability_slots := 0

func _ready() -> void:
	_ensure_input_actions()
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		rotate_y(-event.relative.x * mouse_sensitivity)
		head.rotate_x(-event.relative.y * mouse_sensitivity)
		head.rotation.x = clampf(head.rotation.x, deg_to_rad(-85.0), deg_to_rad(85.0))
		return
	if event is InputEventKey and event.pressed and not event.echo:
		if event.keycode == KEY_ESCAPE:
			_toggle_mouse_capture()
		elif event.physical_keycode == KEY_Q:
			_attempt_steal()

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity
	var input_vector := Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	var desired_direction := (transform.basis * Vector3(input_vector.x, 0.0, input_vector.y)).normalized()
	var target_speed := sprint_speed if Input.is_action_pressed("sprint") else walk_speed
	if desired_direction != Vector3.ZERO:
		velocity.x = move_toward(velocity.x, desired_direction.x * target_speed, acceleration * delta)
		velocity.z = move_toward(velocity.z, desired_direction.z * target_speed, acceleration * delta)
	else:
		velocity.x = move_toward(velocity.x, 0.0, deceleration * delta)
		velocity.z = move_toward(velocity.z, 0.0, deceleration * delta)
	move_and_slide()

func _attempt_steal() -> void:
	if not interaction_ray.is_colliding():
		feedback.emit("Steal: no living bearer in direct contact.")
		return
	var target := interaction_ray.get_collider()
	if target == null or not target.is_in_group("stealable_living"):
		feedback.emit("Steal: no valid living bearer in direct contact.")
		return
	# Batch 032 deliberately has no living target. Future targets must expose an explicit contact resolver.
	feedback.emit("Steal: contact target found, but resolution is not enabled in this slice.")

func _toggle_mouse_capture() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED else Input.MOUSE_MODE_CAPTURED

func _ensure_input_actions() -> void:
	_bind_physical_key("move_forward", KEY_W)
	_bind_physical_key("move_back", KEY_S)
	_bind_physical_key("move_left", KEY_A)
	_bind_physical_key("move_right", KEY_D)
	_bind_physical_key("jump", KEY_SPACE)
	_bind_physical_key("sprint", KEY_SHIFT)

func _bind_physical_key(action: StringName, keycode: int) -> void:
	if not InputMap.has_action(action):
		InputMap.add_action(action)
	for existing_event in InputMap.action_get_events(action):
		if existing_event is InputEventKey and existing_event.physical_keycode == keycode:
			return
	var key_event := InputEventKey.new()
	key_event.physical_keycode = keycode
	InputMap.action_add_event(action, key_event)
