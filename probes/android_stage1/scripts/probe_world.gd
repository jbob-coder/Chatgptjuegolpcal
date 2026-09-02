extends Node3D

const MOVE_SPEED_MPS := 3.5
const PROBE_BOUNDS := 8.5
const METRICS_REFRESH_SECONDS := 0.25

@onready var hunter: CharacterBody3D = $Hunter
@onready var hunter_body: MeshInstance3D = $Hunter/Body
@onready var monster: MeshInstance3D = $Monster
@onready var aerial_camera: Camera3D = $AerialCamera
@onready var first_person_camera: Camera3D = $Hunter/FirstPersonCamera
@onready var fps_label: Label = $HUD/MetricsPanel/Metrics/FPS
@onready var renderer_label: Label = $HUD/MetricsPanel/Metrics/Renderer
@onready var memory_label: Label = $HUD/MetricsPanel/Metrics/Memory
@onready var mode_label: Label = $HUD/MetricsPanel/Metrics/Mode

var _touch_up := false
var _touch_down := false
var _touch_left := false
var _touch_right := false
var _first_person := false
var _monster_phase := 0.0
var _metrics_elapsed := 0.0

func _ready() -> void:
	_update_aerial_camera()
	_update_renderer_label()
	_update_view_state()

func _physics_process(delta: float) -> void:
	var desktop_x := (1.0 if Input.is_key_pressed(KEY_D) else 0.0) - (1.0 if Input.is_key_pressed(KEY_A) else 0.0)
	var desktop_y := (1.0 if Input.is_key_pressed(KEY_S) else 0.0) - (1.0 if Input.is_key_pressed(KEY_W) else 0.0)
	var touch_x := (1.0 if _touch_right else 0.0) - (1.0 if _touch_left else 0.0)
	var touch_y := (1.0 if _touch_down else 0.0) - (1.0 if _touch_up else 0.0)
	var movement := Vector2(desktop_x + touch_x, desktop_y + touch_y)

	if movement.length() > 1.0:
		movement = movement.normalized()

	hunter.velocity = Vector3(movement.x, 0.0, movement.y) * MOVE_SPEED_MPS
	hunter.move_and_slide()

	var bounded_position := hunter.global_position
	bounded_position.x = clampf(bounded_position.x, -PROBE_BOUNDS, PROBE_BOUNDS)
	bounded_position.z = clampf(bounded_position.z, -PROBE_BOUNDS, PROBE_BOUNDS)
	hunter.global_position = bounded_position

	if not _first_person:
		_update_aerial_camera()

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

func _update_aerial_camera() -> void:
	aerial_camera.global_position = hunter.global_position + Vector3(0.0, 8.6, 8.4)
	aerial_camera.look_at(hunter.global_position + Vector3(0.0, 0.7, -1.0), Vector3.UP)

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
	_first_person = not _first_person
	_update_view_state()

func _on_up_down() -> void:
	_touch_up = true

func _on_up_up() -> void:
	_touch_up = false

func _on_down_down() -> void:
	_touch_down = true

func _on_down_up() -> void:
	_touch_down = false

func _on_left_down() -> void:
	_touch_left = true

func _on_left_up() -> void:
	_touch_left = false

func _on_right_down() -> void:
	_touch_right = true

func _on_right_up() -> void:
	_touch_right = false
