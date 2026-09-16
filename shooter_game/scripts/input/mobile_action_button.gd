class_name ShooterMobileActionButton
extends Button

@export var action_name: StringName


func _ready() -> void:
	focus_mode = Control.FOCUS_NONE
	button_down.connect(_press_action)
	button_up.connect(_release_action)


func _exit_tree() -> void:
	_release_action()


func _press_action() -> void:
	if not action_name.is_empty():
		Input.action_press(action_name, 1.0)


func _release_action() -> void:
	if not action_name.is_empty():
		Input.action_release(action_name)
