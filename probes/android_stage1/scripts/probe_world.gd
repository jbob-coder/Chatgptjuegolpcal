extends Node3D

const MOVE_SPEED_MPS := 3.5
const PROBE_BOUNDS := 8.5
const METRICS_REFRESH_SECONDS := 0.25
const SETTINGS_PATH := "user://stage1_settings.cfg"
const LOOK_SPEED_DEFAULT := 0.35
const JOYSTICK_DEADZONE := 0.12

# Stage-1 camera/control prototype values. The user-approved behavior is
# documented in docs/CONTROL_CAMERA_FOUNDATION_README.md. Do not retune or
# replace these controls silently; preserve the contract and re-test on phone.
const AERIAL_CAMERA_HEIGHT_M := 8.6
const AERIAL_CAMERA_TRAIL_M := 8.4
const AERIAL_CAMERA_LOOK_AHEAD_M := 2.2

@onready var hunter: CharacterBody3D = $Hunter
@onready var hunter_body: MeshInstance3D = $Hunter/Body
@onready var monster: MeshInstance3D = $Monster
@onready var aerial_camera: Camera3D = $AerialCamera
@onready var first_person_camera: Camera3D = $Hunter/FirstPersonCamera
@onready var fps_label: Label = $HUD/MetricsPanel/Metrics/FPS
@onready var renderer_label: Label = $HUD/MetricsPanel/Metrics/Renderer
@onready var memory_label: Label = $HUD/MetricsPanel/Metrics/Memory
@onready var mode_label: Label = $HUD/MetricsPanel/Metrics/Mode
@onready var joystick_base: Control = $HUD/Touch/MoveJoystick
@onready var joystick_knob: Control = $HUD/Touch/MoveJoystick/Knob
@onready var settings_overlay: PanelContainer = $HUD/SettingsOverlay
@onready var look_speed_slider: HSlider = $HUD/SettingsOverlay/Layout/Tabs/Controls/LookSpeed
@onready var look_speed_value: Label = $HUD/SettingsOverlay/Layout/Tabs/Controls/LookSpeedValue

var _joystick_vector := Vector2.ZERO
var _joystick_touch_id := -1
var _joystick_reference_forward := Vector3(0.0, 0.0, -1.0)
var _joystick_reference_right := Vector3(1.0, 0.0, 0.0)
var _first_person := false
var _monster_phase := 0.0
var _metrics_elapsed := 0.0
var _look_speed := LOOK_SPEED_DEFAULT
var _settings_open := false

func _ready() -> void:
	_load_settings()
	look_speed_slider.value = _look_speed * 100.0
	_update_look_speed_label()
	_reset_joystick()
	_capture_joystick_reference_heading()
	_update_aerial_camera(0.0, true)
	_update_renderer_label()
	_update_view_state()
	settings_overlay.visible = false

func _input(event: InputEvent) -> void:
	if _settings_open:
		return

	if event is InputEventScreenTouch:
		var touch := event as InputEventScreenTouch
		if touch.pressed and _joystick_touch_id == -1 and joystick_base.get_global_rect().has_point(touch.position):
			_joystick_touch_id = touch.index
			_capture_joystick_reference_heading()
			_update_joystick_from_screen_position(touch.position)
			get_viewport().set_input_as_handled()
		elif not touch.pressed and touch.index == _joystick_touch_id:
			_reset_joystick()
			get_viewport().set_input_as_handled()
	elif event is InputEventScreenDrag:
		var drag := event as InputEventScreenDrag
		if drag.index == _joystick_touch_id:
			_update_joystick_from_screen_position(drag.position)
			get_viewport().set_input_as_handled()

func _physics_process(delta: float) -> void:
	var desktop_x := (1.0 if Input.is_key_pressed(KEY_D) else 0.0) - (1.0 if Input.is_key_pressed(KEY_A) else 0.0)
	var desktop_y := (1.0 if Input.is_key_pressed(KEY_S) else 0.0) - (1.0 if Input.is_key_pressed(KEY_W) else 0.0)
	var desktop_world := Vector3(desktop_x, 0.0, desktop_y)
	var movement_world := desktop_world + _joystick_world_vector()

	if _settings_open:
		movement_world = Vector3.ZERO
	elif movement_world.length() > 1.0:
		movement_world = movement_world.normalized()

	if movement_world.length_squared() > 0.0001:
		_update_hunter_heading(movement_world.normalized(), delta)

	hunter.velocity = movement_world * MOVE_SPEED_MPS
	hunter.move_and_slide()

	var bounded_position := hunter.global_position
	bounded_position.x = clampf(bounded_position.x, -PROBE_BOUNDS, PROBE_BOUNDS)
	bounded_position.z = clampf(bounded_position.z, -PROBE_BOUNDS, PROBE_BOUNDS)
	hunter.global_position = bounded_position

	# Keep the aerial camera synchronized even while first-person is active so
	# returning to aerial does not revive an old camera position.
	_update_aerial_camera(delta)

	_monster_phase += delta
	monster.position.y = 1.2 + sin(_monster_phase * 1.8) * 0.08
	monster.rotation.y = sin(_monster_phase * 0.65) * 0.12

func _process(delta: float) -> void:
	_metrics_elapsed += delta
	if _metrics_elapsed < METRICS_REFRESH_SECONDS:
		return
	_metrics_elapsed = 0.0

	var fps := Engine.get_frames_per_second()
	var frame_ms := 1000.0 / maxf(float(fps), 1.0)
	var static_memory_mb := Performance.get_monitor(Performance.MEMORY_STATIC) / (1024.0 * 1024.0)
	fps_label.text = "FPS: %d | approx %.1f ms/frame" % [fps, frame_ms]
	memory_label.text = "Debug static memory: %.1f MiB" % static_memory_mb

func _effective_hunter_turn_response() -> float:
	return lerpf(2.0, 10.0, _look_speed)

func _effective_camera_follow_response() -> float:
	return lerpf(1.5, 9.0, _look_speed)

func _update_hunter_heading(direction: Vector3, delta: float) -> void:
	# Godot's conventional 3D forward direction is local -Z.
	var target_yaw := atan2(-direction.x, -direction.z)
	var turn_weight := 1.0 - exp(-_effective_hunter_turn_response() * maxf(delta, 0.0))
	hunter.rotation.y = lerp_angle(hunter.rotation.y, target_yaw, turn_weight)

func _hunter_forward() -> Vector3:
	var forward := -hunter.global_transform.basis.z
	forward.y = 0.0
	if forward.length_squared() <= 0.0001:
		return Vector3(0.0, 0.0, -1.0)
	return forward.normalized()

func _capture_joystick_reference_heading() -> void:
	# Each new touch gesture gets a stable movement basis from the Hunter's
	# current heading. Releasing and touching again therefore "re-centers" the
	# joystick's forward direction without making the basis rotate under the
	# player's finger during the active gesture.
	_joystick_reference_forward = _hunter_forward()
	_joystick_reference_right = _joystick_reference_forward.cross(Vector3.UP)
	_joystick_reference_right.y = 0.0
	if _joystick_reference_right.length_squared() <= 0.0001:
		_joystick_reference_right = Vector3.RIGHT
	else:
		_joystick_reference_right = _joystick_reference_right.normalized()

func _joystick_world_vector() -> Vector3:
	if _joystick_vector.length_squared() <= 0.0001:
		return Vector3.ZERO

	# Screen-stick up is negative Y, so invert Y to produce positive forward
	# intent in the captured Hunter-relative basis.
	return (
		_joystick_reference_right * _joystick_vector.x
		+ _joystick_reference_forward * -_joystick_vector.y
	)

func _update_aerial_camera(delta: float, snap: bool = false) -> void:
	var forward := _hunter_forward()
	var desired_position := hunter.global_position + Vector3(0.0, AERIAL_CAMERA_HEIGHT_M, 0.0) - forward * AERIAL_CAMERA_TRAIL_M

	if snap:
		aerial_camera.global_position = desired_position
	else:
		var follow_weight := 1.0 - exp(-_effective_camera_follow_response() * maxf(delta, 0.0))
		aerial_camera.global_position = aerial_camera.global_position.lerp(desired_position, follow_weight)

	var look_target := hunter.global_position + Vector3(0.0, 0.7, 0.0) + forward * AERIAL_CAMERA_LOOK_AHEAD_M
	aerial_camera.look_at(look_target, Vector3.UP)

func _update_joystick_from_screen_position(screen_position: Vector2) -> void:
	var base_rect := joystick_base.get_global_rect()
	var center := base_rect.get_center()
	var offset := screen_position - center
	var knob_radius := maxf(joystick_knob.size.x, joystick_knob.size.y) * 0.5
	var travel_radius := maxf(minf(base_rect.size.x, base_rect.size.y) * 0.5 - knob_radius, 1.0)
	var clamped_offset := offset.limit_length(travel_radius)
	var raw_vector := clamped_offset / travel_radius

	if raw_vector.length() < JOYSTICK_DEADZONE:
		_joystick_vector = Vector2.ZERO
	else:
		var remapped_strength := inverse_lerp(JOYSTICK_DEADZONE, 1.0, minf(raw_vector.length(), 1.0))
		_joystick_vector = raw_vector.normalized() * remapped_strength

	joystick_knob.position = (joystick_base.size - joystick_knob.size) * 0.5 + clamped_offset

func _reset_joystick() -> void:
	_joystick_vector = Vector2.ZERO
	_joystick_touch_id = -1
	if is_instance_valid(joystick_base) and is_instance_valid(joystick_knob):
		joystick_knob.position = (joystick_base.size - joystick_knob.size) * 0.5

func _load_settings() -> void:
	var config := ConfigFile.new()
	if config.load(SETTINGS_PATH) == OK:
		_look_speed = clampf(float(config.get_value("controls", "look_speed", LOOK_SPEED_DEFAULT)), 0.0, 1.0)
	else:
		_look_speed = LOOK_SPEED_DEFAULT

func _save_settings() -> void:
	var config := ConfigFile.new()
	config.set_value("controls", "look_speed", _look_speed)
	var save_error := config.save(SETTINGS_PATH)
	if save_error != OK:
		push_warning("Stage 1 settings could not be saved: %s" % error_string(save_error))

func _update_look_speed_label() -> void:
	look_speed_value.text = "Look Speed: %d%%" % int(round(_look_speed * 100.0))

func _update_renderer_label() -> void:
	renderer_label.text = "Renderer: %s / %s" % [
		RenderingServer.get_current_rendering_method(),
		RenderingServer.get_current_rendering_driver_name()
	]

func _update_view_state() -> void:
	aerial_camera.current = not _first_person
	first_person_camera.current = _first_person
	hunter_body.visible = not _first_person
	mode_label.text = "View: %s" % ("FIRST PERSON" if _first_person else "AERIAL")

func _on_toggle_view_pressed() -> void:
	if _settings_open:
		return
	_first_person = not _first_person
	_update_view_state()

func _on_settings_pressed() -> void:
	_settings_open = not _settings_open
	settings_overlay.visible = _settings_open
	_reset_joystick()

func _on_settings_close_pressed() -> void:
	_settings_open = false
	settings_overlay.visible = false
	_reset_joystick()

func _on_look_speed_changed(value: float) -> void:
	_look_speed = clampf(value / 100.0, 0.0, 1.0)
	_update_look_speed_label()
	_save_settings()
