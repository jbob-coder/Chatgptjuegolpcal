class_name ShooterMobileTouchInput
extends Control

@export_category("Touch regions — provisional mobile tuning")
@export_range(0.30, 0.60, 0.01) var movement_region_width_ratio := 0.45
@export_range(0.0, 0.65, 0.01) var movement_region_min_y_ratio := 0.28
@export_range(48.0, 160.0, 1.0) var joystick_radius := 96.0
@export_range(0.25, 2.0, 0.05) var touch_look_multiplier := 0.85
@export var player_path: NodePath = NodePath("../../Player")

@export_category("Graybox visualization")
@export var show_dynamic_joystick := true

@onready var safe_area: Control = $SafeArea

var _player: ShooterPlayerController
var _movement_touch_index := -1
var _look_touch_index := -1
var _movement_origin := Vector2.ZERO
var _movement_position := Vector2.ZERO
var _movement_vector := Vector2.ZERO


func _ready() -> void:
	_player = get_node_or_null(player_path) as ShooterPlayerController
	_update_safe_area()
	get_viewport().size_changed.connect(_update_safe_area)
	queue_redraw()


func _exit_tree() -> void:
	clear_movement_vector()


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		_handle_screen_touch(event)
	elif event is InputEventScreenDrag:
		_handle_screen_drag(event)


func _handle_screen_touch(event: InputEventScreenTouch) -> void:
	if event.pressed:
		if _movement_touch_index == -1 and _is_in_movement_region(event.position):
			_movement_touch_index = event.index
			_movement_origin = event.position
			_movement_position = event.position
			set_movement_vector(Vector2.ZERO)
			queue_redraw()
			get_viewport().set_input_as_handled()
			return

		if _look_touch_index == -1 and _is_in_look_region(event.position):
			_look_touch_index = event.index
			get_viewport().set_input_as_handled()
			return

	if event.index == _movement_touch_index:
		_movement_touch_index = -1
		_movement_origin = Vector2.ZERO
		_movement_position = Vector2.ZERO
		clear_movement_vector()
		queue_redraw()
		get_viewport().set_input_as_handled()
	elif event.index == _look_touch_index:
		_look_touch_index = -1
		get_viewport().set_input_as_handled()


func _handle_screen_drag(event: InputEventScreenDrag) -> void:
	if event.index == _movement_touch_index:
		_movement_position = event.position
		var delta := _movement_position - _movement_origin
		var radius := maxf(joystick_radius, 1.0)
		set_movement_vector(delta.limit_length(radius) / radius)
		queue_redraw()
		get_viewport().set_input_as_handled()
	elif event.index == _look_touch_index:
		submit_look_delta(event.screen_relative)
		get_viewport().set_input_as_handled()


func set_movement_vector(value: Vector2) -> void:
	_movement_vector = value.limit_length(1.0)
	_set_action_strength(&"move_left", maxf(-_movement_vector.x, 0.0))
	_set_action_strength(&"move_right", maxf(_movement_vector.x, 0.0))
	_set_action_strength(&"move_forward", maxf(-_movement_vector.y, 0.0))
	_set_action_strength(&"move_back", maxf(_movement_vector.y, 0.0))


func clear_movement_vector() -> void:
	_movement_vector = Vector2.ZERO
	for action in [&"move_left", &"move_right", &"move_forward", &"move_back"]:
		Input.action_release(action)


func submit_look_delta(screen_delta: Vector2) -> void:
	if is_instance_valid(_player):
		_player.apply_look_delta(screen_delta, touch_look_multiplier)


func get_movement_vector() -> Vector2:
	return _movement_vector


func _set_action_strength(action: StringName, strength: float) -> void:
	if strength > 0.001:
		Input.action_press(action, strength)
	else:
		Input.action_release(action)


func _is_in_movement_region(screen_position: Vector2) -> bool:
	var rect := safe_area.get_global_rect()
	if not rect.has_point(screen_position):
		return false
	var local := screen_position - rect.position
	return local.x <= rect.size.x * movement_region_width_ratio and local.y >= rect.size.y * movement_region_min_y_ratio


func _is_in_look_region(screen_position: Vector2) -> bool:
	var rect := safe_area.get_global_rect()
	if not rect.has_point(screen_position):
		return false
	var local := screen_position - rect.position
	return local.x > rect.size.x * movement_region_width_ratio


func _update_safe_area() -> void:
	var viewport_size := get_viewport_rect().size
	var safe_position := Vector2.ZERO
	var safe_size := viewport_size

	if OS.has_feature("mobile"):
		var window_size_i := DisplayServer.window_get_size()
		var raw_safe_i := DisplayServer.get_display_safe_area()
		var window_size := Vector2(window_size_i)
		if window_size.x > 0.0 and window_size.y > 0.0 and raw_safe_i.size.x > 0 and raw_safe_i.size.y > 0:
			var canvas_scale := Vector2(viewport_size.x / window_size.x, viewport_size.y / window_size.y)
			safe_position = Vector2(raw_safe_i.position) * canvas_scale
			safe_size = Vector2(raw_safe_i.size) * canvas_scale

	safe_area.position = safe_position
	safe_area.size = safe_size


func _draw() -> void:
	if not show_dynamic_joystick or _movement_touch_index == -1:
		return
	var delta := (_movement_position - _movement_origin).limit_length(joystick_radius)
	draw_circle(_movement_origin, joystick_radius, Color(0.1, 0.12, 0.16, 0.28))
	draw_circle(_movement_origin + delta, joystick_radius * 0.42, Color(0.85, 0.88, 0.92, 0.48))
