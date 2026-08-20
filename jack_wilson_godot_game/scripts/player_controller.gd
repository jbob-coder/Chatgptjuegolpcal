extends CharacterBody3D

@export var walk_speed: float = 4.2
@export var mouse_sensitivity: float = 0.0022

@onready var head: Node3D = $Head


func _ready() -> void:
	_ensure_input_actions()
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		rotate_y(-event.screen_relative.x * mouse_sensitivity)
		head.rotate_x(-event.screen_relative.y * mouse_sensitivity)
		head.rotation.x = clampf(head.rotation.x, deg_to_rad(-85.0), deg_to_rad(85.0))
		return

	if event is InputEventKey and event.pressed and not event.echo and event.keycode == KEY_ESCAPE:
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED else Input.MOUSE_MODE_CAPTURED


func _physics_process(_delta: float) -> void:
	var input_vector := Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	var direction := (transform.basis * Vector3(input_vector.x, 0.0, input_vector.y)).normalized()

	velocity.x = direction.x * walk_speed
	velocity.y = 0.0
	velocity.z = direction.z * walk_speed
	move_and_slide()


func _ensure_input_actions() -> void:
	_bind_key("move_forward", KEY_W)
	_bind_key("move_back", KEY_S)
	_bind_key("move_left", KEY_A)
	_bind_key("move_right", KEY_D)


func _bind_key(action: StringName, keycode: int) -> void:
	if not InputMap.has_action(action):
		InputMap.add_action(action)

	for existing_event in InputMap.action_get_events(action):
		if existing_event is InputEventKey and existing_event.physical_keycode == keycode:
			return

	var key_event := InputEventKey.new()
	key_event.physical_keycode = keycode
	InputMap.action_add_event(action, key_event)
