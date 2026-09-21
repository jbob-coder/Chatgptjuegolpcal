extends Node

const WorldPack001 := preload("res://scripts/presentation/pixel_rpg/world_pack_001.gd")
const MudcrestVisualScene: PackedScene = preload("res://assets/monsters/mudcrest_visual.tscn")

const MOVE_SPEED_MPS := 5.2
const GRAVITY_MPS2 := 9.8
const JOYSTICK_DEADZONE := 0.12
const LOOK_REGION_START_X_RATIO := 0.44
const DEFAULT_LOOK_DEGREES_PER_PIXEL := 0.105
const MINIMAP_WORLD_MIN_X := -23.0
const MINIMAP_WORLD_MAX_X := 23.0
const MINIMAP_WORLD_MIN_Z := -57.0
const MINIMAP_WORLD_MAX_Z := 20.0
const CAMERA_PITCH_MIN_DEG := -34.0
const CAMERA_PITCH_MAX_DEG := 32.0
const NPC_INTERACT_DISTANCE_M := 2.6
const MONSTER_OBSERVE_DISTANCE_M := 15.0
const RESPAWN_Y_M := -8.0
const PLAYER_START := Vector3(0.0, 0.9, 13.0)
const HUD_EDGE_MARGIN := 18.0

@onready var world_viewport: SubViewport = $WorldDisplay/WorldViewport
@onready var world_geometry: Node3D = $WorldDisplay/WorldViewport/World/WorldGeometry
@onready var hunter: CharacterBody3D = $WorldDisplay/WorldViewport/World/Hunter
@onready var hunter_visual: Node3D = $WorldDisplay/WorldViewport/World/Hunter/Visual
@onready var camera_yaw: Node3D = $WorldDisplay/WorldViewport/World/Hunter/CameraYaw
@onready var camera_pitch: Node3D = $WorldDisplay/WorldViewport/World/Hunter/CameraYaw/CameraPitch
@onready var spring_arm: SpringArm3D = $WorldDisplay/WorldViewport/World/Hunter/CameraYaw/CameraPitch/SpringArm3D
@onready var camera: Camera3D = $WorldDisplay/WorldViewport/World/Hunter/CameraYaw/CameraPitch/SpringArm3D/Camera3D
@onready var joystick_base: Control = $HUD/Touch/MoveJoystick
@onready var joystick_knob: Control = $HUD/Touch/MoveJoystick/Knob
@onready var action_button: Button = $HUD/Touch/ActionButton
@onready var watch_button: Button = $HUD/Touch/WatchButton
@onready var settings_button: Button = $HUD/Touch/SettingsButton
@onready var minimap_panel: PanelContainer = $HUD/MinimapPanel
@onready var minimap_canvas: Control = $HUD/MinimapPanel/Map
@onready var minimap_player_marker: ColorRect = $HUD/MinimapPanel/Map/PlayerMarker
@onready var status_panel: PanelContainer = $HUD/TopLeft
@onready var status_label: Label = $HUD/TopLeft/Status
@onready var objective_panel: PanelContainer = $HUD/ObjectivePanel
@onready var objective_label: Label = $HUD/ObjectivePanel/Objective
@onready var prompt_label: Label = $HUD/InteractionPrompt
@onready var watch_panel: PanelContainer = $HUD/WatchPanel
@onready var watch_text: Label = $HUD/WatchPanel/Layout/Body
@onready var settings_panel: PanelContainer = $HUD/SettingsPanel
@onready var settings_sensitivity_label: Label = $HUD/SettingsPanel/Layout/SensitivityLabel
@onready var camera_sensitivity_slider: HSlider = $HUD/SettingsPanel/Layout/CameraSensitivity

var _joystick_vector := Vector2.ZERO
var _joystick_touch_id := -1
var _look_touch_id := -1
var _look_last_position := Vector2.ZERO
var _camera_yaw_rad := 0.0
var _camera_pitch_rad := deg_to_rad(-11.0)
var _look_degrees_per_pixel := DEFAULT_LOOK_DEGREES_PER_PIXEL
var _npc_anchor: Node3D
var _monster_anchor: Node3D
var _current_context := "NONE"
var _world_ready := false
var _elapsed := 0.0

func _notification(what: int) -> void:
	match what:
		NOTIFICATION_APPLICATION_PAUSED, NOTIFICATION_APPLICATION_RESUMED, NOTIFICATION_APPLICATION_FOCUS_OUT, NOTIFICATION_APPLICATION_FOCUS_IN:
			_reset_transient_input()

func _ready() -> void:
	_build_prototype_world()
	_camera_yaw_rad = 0.0
	_camera_pitch_rad = deg_to_rad(-11.0)
	_apply_camera_rotation()
	spring_arm.add_excluded_object(hunter.get_rid())
	camera.current = true
	watch_panel.visible = false
	settings_panel.visible = false
	camera_sensitivity_slider.value = _look_degrees_per_pixel
	_update_sensitivity_label()
	prompt_label.visible = false
	action_button.visible = false
	get_viewport().size_changed.connect(_apply_safe_area_layout)
	_apply_safe_area_layout()
	_update_minimap()
	_world_ready = true
	_update_contextual_action()

func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		var touch := event as InputEventScreenTouch
		if touch.pressed:
			if _joystick_touch_id == -1 and joystick_base.get_global_rect().has_point(touch.position):
				_joystick_touch_id = touch.index
				_update_joystick(touch.position)
				get_viewport().set_input_as_handled()
			elif _look_touch_id == -1 and _can_claim_look_touch(touch.position):
				_look_touch_id = touch.index
				_look_last_position = touch.position
				get_viewport().set_input_as_handled()
		else:
			if touch.index == _joystick_touch_id:
				_reset_joystick()
				get_viewport().set_input_as_handled()
			elif touch.index == _look_touch_id:
				_look_touch_id = -1
				get_viewport().set_input_as_handled()
	elif event is InputEventScreenDrag:
		var drag := event as InputEventScreenDrag
		if drag.index == _joystick_touch_id:
			_update_joystick(drag.position)
			get_viewport().set_input_as_handled()
		elif drag.index == _look_touch_id:
			var delta_px := drag.position - _look_last_position
			_look_last_position = drag.position
			_apply_look_delta(delta_px)
			get_viewport().set_input_as_handled()
	elif event is InputEventMouseMotion and Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
		var mouse_motion := event as InputEventMouseMotion
		_apply_look_delta(mouse_motion.relative)

func _physics_process(delta: float) -> void:
	if not _world_ready:
		return

	var desktop_x := (1.0 if Input.is_key_pressed(KEY_D) else 0.0) - (1.0 if Input.is_key_pressed(KEY_A) else 0.0)
	var desktop_y := (1.0 if Input.is_key_pressed(KEY_S) else 0.0) - (1.0 if Input.is_key_pressed(KEY_W) else 0.0)
	var movement_input := Vector2(desktop_x, desktop_y) + _joystick_vector
	if movement_input.length() > 1.0:
		movement_input = movement_input.normalized()

	var move_world := _camera_relative_movement(movement_input)
	hunter.velocity.x = move_world.x * MOVE_SPEED_MPS
	hunter.velocity.z = move_world.z * MOVE_SPEED_MPS

	if not hunter.is_on_floor():
		hunter.velocity.y -= GRAVITY_MPS2 * maxf(delta, 0.0)
	elif hunter.velocity.y < 0.0:
		hunter.velocity.y = -0.1

	hunter.move_and_slide()

	if move_world.length_squared() > 0.002:
		var target_yaw := atan2(move_world.x, move_world.z)
		hunter_visual.rotation.y = lerp_angle(hunter_visual.rotation.y, target_yaw, clampf(delta * 12.0, 0.0, 1.0))

	if hunter.global_position.y < RESPAWN_Y_M:
		hunter.global_position = PLAYER_START
		hunter.velocity = Vector3.ZERO

func _process(delta: float) -> void:
	_elapsed += maxf(delta, 0.0)
	if _elapsed < 0.12:
		return
	_elapsed = 0.0
	_update_contextual_action()
	var pos := hunter.global_position
	status_label.text = "HP 100   ST 100\nX %.0f  Z %.0f" % [pos.x, pos.z]
	_update_minimap()

func _camera_relative_movement(input_vector: Vector2) -> Vector3:
	if input_vector.length_squared() <= 0.0001:
		return Vector3.ZERO
	var basis := camera_yaw.global_transform.basis
	var right := basis.x
	right.y = 0.0
	right = right.normalized()
	var forward := -basis.z
	forward.y = 0.0
	forward = forward.normalized()
	return (right * input_vector.x + forward * -input_vector.y).normalized()

func _apply_look_delta(delta_px: Vector2) -> void:
	_camera_yaw_rad -= deg_to_rad(delta_px.x * _look_degrees_per_pixel)
	_camera_pitch_rad -= deg_to_rad(delta_px.y * _look_degrees_per_pixel)
	_camera_pitch_rad = clampf(_camera_pitch_rad, deg_to_rad(CAMERA_PITCH_MIN_DEG), deg_to_rad(CAMERA_PITCH_MAX_DEG))
	_apply_camera_rotation()

func _apply_camera_rotation() -> void:
	camera_yaw.rotation.y = _camera_yaw_rad
	camera_pitch.rotation.x = _camera_pitch_rad

func _can_claim_look_touch(screen_position: Vector2) -> bool:
	var viewport_size := get_viewport().get_visible_rect().size
	if screen_position.x < viewport_size.x * LOOK_REGION_START_X_RATIO:
		return false
	if action_button.visible and action_button.get_global_rect().has_point(screen_position):
		return false
	if watch_button.get_global_rect().has_point(screen_position):
		return false
	if settings_button.get_global_rect().has_point(screen_position):
		return false
	if minimap_panel.get_global_rect().has_point(screen_position):
		return false
	if watch_panel.visible and watch_panel.get_global_rect().has_point(screen_position):
		return false
	if settings_panel.visible and settings_panel.get_global_rect().has_point(screen_position):
		return false
	return true

func _update_joystick(screen_position: Vector2) -> void:
	var rect := joystick_base.get_global_rect()
	var center := rect.position + rect.size * 0.5
	var radius := minf(rect.size.x, rect.size.y) * 0.34
	var offset := screen_position - center
	if offset.length() > radius:
		offset = offset.normalized() * radius
	var normalized := offset / maxf(radius, 1.0)
	if normalized.length() < JOYSTICK_DEADZONE:
		normalized = Vector2.ZERO
	_joystick_vector = normalized
	var knob_size := joystick_knob.size
	joystick_knob.position = rect.size * 0.5 - knob_size * 0.5 + offset

func _reset_joystick() -> void:
	_joystick_touch_id = -1
	_joystick_vector = Vector2.ZERO
	var rect := joystick_base.get_rect()
	joystick_knob.position = rect.size * 0.5 - joystick_knob.size * 0.5

func _reset_transient_input() -> void:
	_reset_joystick()
	_look_touch_id = -1

func _apply_safe_area_layout() -> void:
	var viewport_size := get_viewport().get_visible_rect().size
	if viewport_size.x <= 0.0 or viewport_size.y <= 0.0:
		return

	var left_safe := 0.0
	var top_safe := 0.0
	var right_safe := 0.0
	var bottom_safe := 0.0
	var window_size := DisplayServer.window_get_size()
	var safe_rect := DisplayServer.get_display_safe_area()
	if window_size.x > 0 and window_size.y > 0 and safe_rect.size.x > 0 and safe_rect.size.y > 0:
		var scale := Vector2(viewport_size.x / float(window_size.x), viewport_size.y / float(window_size.y))
		left_safe = maxf(0.0, float(safe_rect.position.x) * scale.x)
		top_safe = maxf(0.0, float(safe_rect.position.y) * scale.y)
		right_safe = maxf(0.0, float(window_size.x - safe_rect.end.x) * scale.x)
		bottom_safe = maxf(0.0, float(window_size.y - safe_rect.end.y) * scale.y)

	var left := maxf(24.0, left_safe + HUD_EDGE_MARGIN)
	var top := maxf(22.0, top_safe + HUD_EDGE_MARGIN)
	var right := maxf(24.0, right_safe + HUD_EDGE_MARGIN)
	var bottom := maxf(24.0, bottom_safe + HUD_EDGE_MARGIN)
	var available_width := maxf(320.0, viewport_size.x - left - right)
	var available_height := maxf(240.0, viewport_size.y - top - bottom)

	status_panel.offset_left = left
	status_panel.offset_top = top
	status_panel.offset_right = left + minf(250.0, available_width * 0.34)
	status_panel.offset_bottom = top + 82.0

	objective_panel.offset_left = left
	objective_panel.offset_top = top + 96.0
	objective_panel.offset_right = left + minf(470.0, available_width * 0.48)
	objective_panel.offset_bottom = top + 174.0

	settings_button.anchor_left = 0.5
	settings_button.anchor_right = 0.5
	settings_button.anchor_top = 0.0
	settings_button.anchor_bottom = 0.0
	settings_button.offset_left = -86.0
	settings_button.offset_right = 86.0
	settings_button.offset_top = top
	settings_button.offset_bottom = top + 60.0

	minimap_panel.anchor_left = 1.0
	minimap_panel.anchor_right = 1.0
	minimap_panel.anchor_top = 0.0
	minimap_panel.anchor_bottom = 0.0
	minimap_panel.offset_left = -right - 222.0
	minimap_panel.offset_right = -right
	minimap_panel.offset_top = top
	minimap_panel.offset_bottom = top + 166.0

	watch_button.offset_left = -right - 180.0
	watch_button.offset_right = -right
	watch_button.offset_top = top + 178.0
	watch_button.offset_bottom = top + 242.0

	joystick_base.offset_left = left + 10.0
	joystick_base.offset_right = left + 214.0
	joystick_base.offset_top = -bottom - 204.0
	joystick_base.offset_bottom = -bottom

	action_button.offset_left = -right - 218.0
	action_button.offset_right = -right
	action_button.offset_top = -bottom - 150.0
	action_button.offset_bottom = -bottom - 56.0

	prompt_label.anchor_left = 0.32
	prompt_label.anchor_right = 0.68
	prompt_label.anchor_top = 1.0
	prompt_label.anchor_bottom = 1.0
	prompt_label.offset_left = 0.0
	prompt_label.offset_right = 0.0
	prompt_label.offset_top = -bottom - 118.0
	prompt_label.offset_bottom = -bottom - 72.0

	var panel_width := minf(660.0, available_width - 32.0)
	var panel_height := minf(460.0, available_height - 28.0)
	watch_panel.anchor_left = 0.5
	watch_panel.anchor_right = 0.5
	watch_panel.anchor_top = 0.5
	watch_panel.anchor_bottom = 0.5
	watch_panel.offset_left = -panel_width * 0.5
	watch_panel.offset_right = panel_width * 0.5
	watch_panel.offset_top = -panel_height * 0.5
	watch_panel.offset_bottom = panel_height * 0.5

	var settings_width := minf(520.0, available_width - 40.0)
	var settings_height := minf(340.0, available_height - 36.0)
	settings_panel.anchor_left = 0.5
	settings_panel.anchor_right = 0.5
	settings_panel.anchor_top = 0.5
	settings_panel.anchor_bottom = 0.5
	settings_panel.offset_left = -settings_width * 0.5
	settings_panel.offset_right = settings_width * 0.5
	settings_panel.offset_top = -settings_height * 0.5
	settings_panel.offset_bottom = settings_height * 0.5

	_update_minimap()
	_reset_joystick()

func _update_minimap() -> void:
	if minimap_canvas == null or minimap_player_marker == null or hunter == null:
		return
	var map_size := minimap_canvas.size
	var marker_size := minimap_player_marker.size
	if map_size.x <= 1.0 or map_size.y <= 1.0:
		return
	var pos := hunter.global_position
	var normalized_x := clampf(inverse_lerp(MINIMAP_WORLD_MIN_X, MINIMAP_WORLD_MAX_X, pos.x), 0.0, 1.0)
	var normalized_z := clampf(inverse_lerp(MINIMAP_WORLD_MIN_Z, MINIMAP_WORLD_MAX_Z, pos.z), 0.0, 1.0)
	minimap_player_marker.position = Vector2(
		normalized_x * maxf(map_size.x - marker_size.x, 0.0),
		normalized_z * maxf(map_size.y - marker_size.y, 0.0)
	)

func _update_contextual_action() -> void:
	if _npc_anchor != null:
		var npc_distance := hunter.global_position.distance_to(_npc_anchor.global_position)
		if npc_distance <= NPC_INTERACT_DISTANCE_M:
			_set_context("TALK", "Talk • Gate Warden")
			return
	if _monster_anchor != null:
		var monster_distance := hunter.global_position.distance_to(_monster_anchor.global_position)
		if monster_distance <= MONSTER_OBSERVE_DISTANCE_M:
			_set_context("OBSERVE", "Observe • Large trail beast")
			return
	_set_context("NONE", "")

func _set_context(context: String, prompt: String) -> void:
	_current_context = context
	var active := context != "NONE"
	action_button.visible = active
	prompt_label.visible = active
	prompt_label.text = prompt
	match context:
		"TALK":
			action_button.text = "TALK"
		"OBSERVE":
			action_button.text = "OBSERVE"
		_:
			action_button.text = "ACTION"

func _on_action_button_pressed() -> void:
	match _current_context:
		"TALK":
			objective_label.text = "Warden: tracks crossed the north gate before dawn. Follow the damaged pines."
			watch_text.text = "FIELD NOTE\nFresh heavy tracks north of the settlement.\nThe gate warden reports damaged pines along the trail."
		"OBSERVE":
			objective_label.text = "Observation recorded: broad tail, armored dorsal ridge, heavy forequarters."
			watch_text.text = "HUNTER JOURNAL\nObserved from the trail:\n• armored dorsal ridge\n• broad tail\n• heavy forequarters\nBody-part data remains provisional until combat."

func _on_settings_button_pressed() -> void:
	settings_panel.visible = not settings_panel.visible
	if settings_panel.visible:
		watch_panel.visible = false
		_reset_transient_input()

func _on_settings_close_pressed() -> void:
	settings_panel.visible = false

func _on_camera_sensitivity_changed(value: float) -> void:
	_look_degrees_per_pixel = clampf(value, 0.06, 0.18)
	_update_sensitivity_label()

func _update_sensitivity_label() -> void:
	settings_sensitivity_label.text = "CAMERA SENSITIVITY  %.3f" % _look_degrees_per_pixel

func _on_watch_button_pressed() -> void:
	watch_panel.visible = not watch_panel.visible
	if watch_panel.visible:
		settings_panel.visible = false
		_reset_transient_input()

func _on_watch_close_pressed() -> void:
	watch_panel.visible = false

func _build_prototype_world() -> void:
	_add_box("Ground", Vector3(0, -0.35, -18), Vector3(46, 0.7, 78), Color(0.19, 0.29, 0.16), true)
	_add_box("Street", Vector3(0, 0.03, 2), Vector3(6.2, 0.10, 34), Color(0.38, 0.30, 0.20), false)
	_add_box("Trail", Vector3(0, 0.04, -31), Vector3(4.2, 0.11, 34), Color(0.29, 0.24, 0.16), false)

	_add_building(Vector3(-7.0, 1.7, 8.5), Vector3(7.0, 3.4, 7.0), Color(0.34, 0.22, 0.13))
	WorldPack001.add_market_stall(world_geometry, Vector3(7.0, 0.0, 6.0), -90.0)
	WorldPack001.add_service_smith(world_geometry, Vector3(-7.4, 0.0, -1.5), 90.0)
	_add_collision_box("SmithCollision", Vector3(-7.4, 1.5, -1.5), Vector3(6.2, 3.0, 6.2))
	_add_building(Vector3(7.5, 1.6, -3.0), Vector3(6.8, 3.2, 6.4), Color(0.36, 0.23, 0.13))

	WorldPack001.add_settlement_gate(world_geometry, Vector3(0.0, 0.0, -10.0))
	_add_collision_box("GateLeftCollision", Vector3(-4.8, 2.2, -10.0), Vector3(2.2, 4.4, 2.2))
	_add_collision_box("GateRightCollision", Vector3(4.8, 2.2, -10.0), Vector3(2.2, 4.4, 2.2))
	WorldPack001.add_service_clutter(world_geometry, Vector3(-3.8, 0.0, -5.5))
	WorldPack001.add_lantern_post(world_geometry, Vector3(-3.1, 0.0, -7.0))
	WorldPack001.add_lantern_post(world_geometry, Vector3(3.1, 0.0, -7.0), 180.0)
	WorldPack001.add_banner_post(world_geometry, Vector3(-6.7, 0.0, -9.2))
	WorldPack001.add_signpost(world_geometry, Vector3(2.9, 0.0, -13.0), -15.0)
	WorldPack001.add_fence(world_geometry, Vector3(-4.0, 0.0, -16.5), 10.0)
	WorldPack001.add_fence(world_geometry, Vector3(4.0, 0.0, -19.0), -12.0)

	for z in [-18.0, -25.0, -33.0, -48.0]:
		_add_tree(Vector3(-7.5, 0.0, z))
		_add_tree(Vector3(7.0, 0.0, z - 2.0))
	_add_tree(Vector3(-11.0, 0.0, -39.0))
	_add_tree(Vector3(11.5, 0.0, -43.0))

	_add_box("TrailRockL", Vector3(-3.8, 0.75, -29.0), Vector3(2.4, 1.5, 2.0), Color(0.28, 0.29, 0.27), true)
	WorldPack001.add_vegetation_cluster(world_geometry, Vector3(-8.5, 0.0, -22.0))
	WorldPack001.add_vegetation_cluster(world_geometry, Vector3(8.0, 0.0, -31.0), 120.0)
	WorldPack001.add_rock_cluster(world_geometry, Vector3(4.8, 0.0, -34.0))

	_npc_anchor = Node3D.new()
	_npc_anchor.name = "GateWarden"
	_npc_anchor.position = Vector3(-2.6, 0.0, -6.2)
	world_geometry.add_child(_npc_anchor)
	_add_npc_visual(_npc_anchor)

	_monster_anchor = Node3D.new()
	_monster_anchor.name = "MonsterProxy"
	_monster_anchor.position = Vector3(0.0, 0.0, -49.0)
	world_geometry.add_child(_monster_anchor)
	_add_monster_proxy(_monster_anchor)

func _add_building(position: Vector3, size: Vector3, color: Color) -> void:
	_add_box("Building", position, size, color, true)
	_add_box("Roof", position + Vector3(0, size.y * 0.5 + 0.45, 0), Vector3(size.x + 0.6, 0.9, size.z + 0.6), Color(0.20, 0.12, 0.08), false)

func _add_tree(position: Vector3) -> void:
	var trunk := MeshInstance3D.new()
	var trunk_mesh := CylinderMesh.new()
	trunk_mesh.top_radius = 0.22
	trunk_mesh.bottom_radius = 0.32
	trunk_mesh.height = 3.2
	trunk_mesh.radial_segments = 6
	trunk.mesh = trunk_mesh
	trunk.position = position + Vector3(0, 1.6, 0)
	trunk.material_override = _material(Color(0.22, 0.14, 0.08))
	world_geometry.add_child(trunk)

	var canopy := MeshInstance3D.new()
	var canopy_mesh := SphereMesh.new()
	canopy_mesh.radius = 1.35
	canopy_mesh.height = 2.7
	canopy_mesh.radial_segments = 8
	canopy_mesh.rings = 4
	canopy.mesh = canopy_mesh
	canopy.position = position + Vector3(0, 3.5, 0)
	canopy.scale = Vector3(1.0, 1.25, 1.0)
	canopy.material_override = _material(Color(0.12, 0.31, 0.16))
	world_geometry.add_child(canopy)

func _add_npc_visual(parent: Node3D) -> void:
	var body := MeshInstance3D.new()
	var mesh := CapsuleMesh.new()
	mesh.radius = 0.28
	mesh.height = 1.5
	mesh.radial_segments = 8
	mesh.rings = 4
	body.mesh = mesh
	body.position = Vector3(0, 0.9, 0)
	body.material_override = _material(Color(0.42, 0.22, 0.14))
	parent.add_child(body)

	var head := MeshInstance3D.new()
	var head_mesh := SphereMesh.new()
	head_mesh.radius = 0.18
	head_mesh.height = 0.36
	head_mesh.radial_segments = 8
	head_mesh.rings = 4
	head.mesh = head_mesh
	head.position = Vector3(0, 1.7, 0)
	head.material_override = _material(Color(0.57, 0.39, 0.27))
	parent.add_child(head)

func _add_monster_proxy(parent: Node3D) -> void:
	var visual := MudcrestVisualScene.instantiate() as Node3D
	if visual == null:
		push_error("Pixel RPG Pack 002 failed to instantiate Mudcrest visual")
		return
	visual.name = "MudcrestVisual"
	parent.add_child(visual)

func _add_collision_box(name: String, position: Vector3, size: Vector3) -> void:
	var body := StaticBody3D.new()
	body.name = name
	body.position = position
	world_geometry.add_child(body)
	var collision := CollisionShape3D.new()
	var shape := BoxShape3D.new()
	shape.size = size
	collision.shape = shape
	body.add_child(collision)

func _add_box(name: String, position: Vector3, size: Vector3, color: Color, collision_enabled: bool) -> void:
	var holder: Node3D
	if collision_enabled:
		var body := StaticBody3D.new()
		body.name = name
		body.position = position
		world_geometry.add_child(body)
		holder = body
	else:
		var node := Node3D.new()
		node.name = name
		node.position = position
		world_geometry.add_child(node)
		holder = node

	var mesh_instance := MeshInstance3D.new()
	var mesh := BoxMesh.new()
	mesh.size = size
	mesh_instance.mesh = mesh
	mesh_instance.material_override = _material(color)
	holder.add_child(mesh_instance)

	if collision_enabled:
		var collision := CollisionShape3D.new()
		var shape := BoxShape3D.new()
		shape.size = size
		collision.shape = shape
		holder.add_child(collision)

func _material(color: Color) -> StandardMaterial3D:
	var material := StandardMaterial3D.new()
	material.albedo_color = color
	material.roughness = 0.95
	material.shading_mode = BaseMaterial3D.SHADING_MODE_PER_VERTEX
	material.texture_filter = BaseMaterial3D.TEXTURE_FILTER_NEAREST
	return material
