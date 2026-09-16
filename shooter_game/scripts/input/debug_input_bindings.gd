class_name ShooterDebugInputBindings
extends RefCounted

static func install() -> void:
	if OS.has_feature("mobile"):
		return

	_ensure_key("move_forward", KEY_W)
	_ensure_key("move_back", KEY_S)
	_ensure_key("move_left", KEY_A)
	_ensure_key("move_right", KEY_D)
	_ensure_key("jump", KEY_SPACE)
	_ensure_key("reload", KEY_R)
	_ensure_key("dodge", KEY_SHIFT)
	_ensure_key("interact", KEY_E)
	_ensure_key("pause_game", KEY_ESCAPE)
	_ensure_mouse_button("aim", MOUSE_BUTTON_RIGHT)
	_ensure_mouse_button("fire", MOUSE_BUTTON_LEFT)

static func _ensure_key(action: StringName, physical_keycode: Key) -> void:
	if not InputMap.has_action(action):
		InputMap.add_action(action)
	for existing in InputMap.action_get_events(action):
		if existing is InputEventKey and existing.physical_keycode == physical_keycode:
			return
	var event := InputEventKey.new()
	event.physical_keycode = physical_keycode
	InputMap.action_add_event(action, event)

static func _ensure_mouse_button(action: StringName, button_index: MouseButton) -> void:
	if not InputMap.has_action(action):
		InputMap.add_action(action)
	for existing in InputMap.action_get_events(action):
		if existing is InputEventMouseButton and existing.button_index == button_index:
			return
	var event := InputEventMouseButton.new()
	event.button_index = button_index
	InputMap.action_add_event(action, event)
