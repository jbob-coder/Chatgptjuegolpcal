extends Node3D

const MANIFEST_PATH := "res://content/regions/region_01/hunt01_graybox_build_manifest.json"
const SETTINGS_PATH := "user://unnamed_hunt_settings.cfg"
const MOVE_SPEED_MPS := 3.5
const GRAVITY_MPS2 := 9.8
const JOYSTICK_DEADZONE := 0.12
const LOOK_SPEED_DEFAULT := 0.35
const LOOK_TOUCH_REGION_START_X_RATIO := 0.45
const LOOK_DEGREES_PER_PIXEL_MIN := 0.04
const LOOK_DEGREES_PER_PIXEL_MAX := 0.20
const FIRST_PERSON_PITCH_LIMIT_DEG := 80.0
const FIRST_PERSON_FOV_DEG := 115.0
const AERIAL_CAMERA_HEIGHT_M := 8.6
const AERIAL_CAMERA_TRAIL_M := 8.4
const AERIAL_CAMERA_LOOK_AHEAD_M := 2.2
const AERIAL_CAMERA_FOLLOW_RESPONSE := 7.0
const ROUTE_THICKNESS_M := 0.40
const RESPAWN_Y_M := -18.0
const S00_SPAWN := Vector3(0.0, 0.875, -45.0)

@onready var world_geometry: Node3D = $WorldGeometry
@onready var debug_geometry: Node3D = $DebugGeometry
@onready var hunter: CharacterBody3D = $Hunter
@onready var hunter_body: MeshInstance3D = $Hunter/Body
@onready var first_person_camera: Camera3D = $Hunter/FirstPersonCamera
@onready var aerial_camera: Camera3D = $AerialCamera
@onready var coordinates_label: Label = $HUD/MetricsPanel/Metrics/Coordinates
@onready var fps_label: Label = $HUD/MetricsPanel/Metrics/FPS
@onready var mode_label: Label = $HUD/MetricsPanel/Metrics/Mode
@onready var joystick_base: Control = $HUD/Touch/MoveJoystick
@onready var joystick_knob: Control = $HUD/Touch/MoveJoystick/Knob
@onready var toggle_view_button: Button = $HUD/Touch/ToggleView
@onready var reset_button: Button = $HUD/Touch/ResetToStart
@onready var settings_button: Button = $HUD/Touch/SettingsButton
@onready var settings_overlay: PanelContainer = $HUD/SettingsOverlay
@onready var look_speed_slider: HSlider = $HUD/SettingsOverlay/Layout/Controls/LookSpeed
@onready var look_speed_value: Label = $HUD/SettingsOverlay/Layout/Controls/LookSpeedValue

var _manifest: Dictionary = {}
var _required_route_length_m := 0.0
var _joystick_vector := Vector2.ZERO
var _joystick_touch_id := -1
var _look_touch_id := -1
var _look_last_position := Vector2.ZERO
var _view_yaw := 0.0
var _view_pitch := 0.0
var _first_person := false
var _look_speed := LOOK_SPEED_DEFAULT
var _settings_open := false
var _metrics_elapsed := 0.0
var _world_built := false

func _notification(what: int) -> void:
	match what:
		NOTIFICATION_APPLICATION_PAUSED, NOTIFICATION_APPLICATION_RESUMED, NOTIFICATION_APPLICATION_FOCUS_OUT, NOTIFICATION_APPLICATION_FOCUS_IN:
			_reset_transient_controls()

func _ready() -> void:
	_manifest = _load_manifest()
	if _manifest.is_empty():
		push_error("Hunt-01 production graybox cannot start without its runtime manifest projection.")
		return

	_build_hunt01_graybox()
	_load_settings()
	look_speed_slider.value = _look_speed * 100.0
	_update_look_speed_label()
	_reset_transient_controls()
	_view_yaw = 0.0
	_view_pitch = 0.0
	first_person_camera.fov = FIRST_PERSON_FOV_DEG
	_apply_view_orientation()
	_update_aerial_camera(0.0, true)
	_update_view_state()
	settings_overlay.visible = false
	_world_built = true

func _input(event: InputEvent) -> void:
	if _settings_open:
		return

	if event is InputEventScreenTouch:
		var touch := event as InputEventScreenTouch
		if touch.pressed:
			if _joystick_touch_id == -1 and joystick_base.get_global_rect().has_point(touch.position):
				_joystick_touch_id = touch.index
				_update_joystick_from_screen_position(touch.position)
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
				_reset_look_touch()
				get_viewport().set_input_as_handled()
	elif event is InputEventScreenDrag:
		var drag := event as InputEventScreenDrag
		if drag.index == _joystick_touch_id:
			_update_joystick_from_screen_position(drag.position)
			get_viewport().set_input_as_handled()
		elif drag.index == _look_touch_id:
			var look_delta := drag.position - _look_last_position
			_look_last_position = drag.position
			_apply_look_delta(look_delta)
			get_viewport().set_input_as_handled()

func _physics_process(delta: float) -> void:
	if not _world_built:
		return

	var desktop_x := (1.0 if Input.is_key_pressed(KEY_D) else 0.0) - (1.0 if Input.is_key_pressed(KEY_A) else 0.0)
	var desktop_y := (1.0 if Input.is_key_pressed(KEY_S) else 0.0) - (1.0 if Input.is_key_pressed(KEY_W) else 0.0)
	var movement_input := Vector2(desktop_x, desktop_y) + _joystick_vector
	if _settings_open:
		movement_input = Vector2.ZERO
	elif movement_input.length() > 1.0:
		movement_input = movement_input.normalized()

	var movement_world := _camera_relative_movement(movement_input)
	hunter.velocity.x = movement_world.x * MOVE_SPEED_MPS
	hunter.velocity.z = movement_world.z * MOVE_SPEED_MPS
	if not hunter.is_on_floor():
		hunter.velocity.y -= GRAVITY_MPS2 * maxf(delta, 0.0)
	elif hunter.velocity.y < 0.0:
		hunter.velocity.y = -0.1
	hunter.move_and_slide()

	if hunter.global_position.y < RESPAWN_Y_M:
		_reset_hunter_to_s00()

	_update_aerial_camera(delta)

func _process(delta: float) -> void:
	_metrics_elapsed += maxf(delta, 0.0)
	if _metrics_elapsed < 0.20:
		return
	_metrics_elapsed = 0.0
	var pos := hunter.global_position
	coordinates_label.text = "XYZ: %.1f / %.1f / %.1f" % [pos.x, pos.y, pos.z]
	fps_label.text = "FPS: %d" % Engine.get_frames_per_second()

func _load_manifest() -> Dictionary:
	var file := FileAccess.open(MANIFEST_PATH, FileAccess.READ)
	if file == null:
		push_error("Missing Hunt-01 manifest projection: %s" % MANIFEST_PATH)
		return {}
	var parsed: Variant = JSON.parse_string(file.get_as_text())
	if typeof(parsed) != TYPE_DICTIONARY:
		push_error("Hunt-01 manifest projection is not a JSON object.")
		return {}
	return parsed as Dictionary

func _build_hunt01_graybox() -> void:
	_build_required_route()
	_build_wrong_route_stub()
	_build_landmark_surfaces()
	_build_cover()
	_build_evidence_markers()
	_build_tactical_nodes()
	_build_monster_and_clearance()
	_build_escape_corridor()
	_build_camera_debug()
	_build_stream_proxies()

func _build_required_route() -> void:
	var anchors: Array = _manifest["route"]["anchors"]
	_required_route_length_m = 0.0
	for index in range(anchors.size() - 1):
		var a := _array_to_v3(anchors[index])
		var b := _array_to_v3(anchors[index + 1])
		_required_route_length_m += a.distance_to(b)
		var width := 9.0
		if index == 10:
			width = 7.0
		elif index >= 11:
			width = 3.5
		_create_route_segment(
			world_geometry,
			"H01_REQUIRED_ROUTE_%02d" % (index + 1),
			a,
			b,
			width,
			Color(0.31, 0.35, 0.22, 1.0),
			"hunt01_required_route"
		)

func _build_wrong_route_stub() -> void:
	# Reversible BUILD_ONLY geometry. It preserves the documented requirement that
	# the first 20-30 m of the weaker S02 inference remains physically open; it is
	# deliberately not promoted into the stable coordinate registry.
	_create_route_segment(
		world_geometry,
		"BUILD_ONLY_S02_WRONG_ROUTE_STUB",
		Vector3(0.0, 0.0, -65.0),
		Vector3(18.0, 0.0, -83.0),
		6.0,
		Color(0.27, 0.30, 0.20, 1.0),
		"hunt01_build_only"
	)

func _build_landmark_surfaces() -> void:
	_create_solid_surface("H01_GB_S00_DEPART_PAD", Vector3(0.0, 0.0, -45.0), Vector2(18.0, 14.0), Color(0.33, 0.38, 0.24, 1.0), "hunt01_surface")
	_create_solid_surface("H01_GB_S00_CHOICE_CLEARING", Vector3(0.0, 0.0, -65.0), Vector2(24.0, 20.0), Color(0.29, 0.34, 0.21, 1.0), "hunt01_surface")

	# River Ford basin is represented as non-blocking low terrain color while the
	# required route slabs remain the actual traversable collision surface.
	_create_visual_box("H01_GB_S01_FORD_BASIN", Vector3(-90.0, -4.55, -145.0), Vector3(58.0, 0.12, 54.0), Color(0.26, 0.24, 0.19, 1.0), debug_geometry, "hunt01_ford_visual")
	_create_visual_box("H01_GB_S01_SHALLOW_WATER_MAIN", Vector3(-92.0, -3.62, -149.0), Vector3(34.0, 0.05, 18.0), Color(0.12, 0.43, 0.54, 0.58), debug_geometry, "hunt01_water")
	var water_visual := debug_geometry.get_node_or_null("H01_GB_S01_SHALLOW_WATER_MAIN") as Node3D
	if water_visual != null:
		water_visual.rotation.y = deg_to_rad(25.0)
	_create_visual_box("H01_GB_S01_WALLOW_MUD", Vector3(-100.0, -3.88, -142.0), Vector3(16.0, 0.06, 12.0), Color(0.27, 0.17, 0.11, 0.82), debug_geometry, "hunt01_mud")
	_create_visual_box("H01_GB_S01_EXIT_MUD", Vector3(-79.0, -2.86, -165.0), Vector3(20.0, 0.06, 12.0), Color(0.29, 0.18, 0.11, 0.82), debug_geometry, "hunt01_mud")

	# Visibility breaks are debug/visual forms and cannot close the required 9 m
	# Monster opening in this first production graybox.
	_create_visual_box("H01_GB_VIS01_BANK_RISE", Vector3(-73.0, 1.0, -190.0), Vector3(12.0, 2.0, 8.0), Color(0.22, 0.28, 0.16, 0.9), debug_geometry, "hunt01_visibility_break")
	_create_visual_box("H01_GB_VIS02_MEADOW_EDGE_SCREEN", Vector3(-69.0, 5.5, -222.0), Vector3(12.0, 3.0, 10.0), Color(0.18, 0.34, 0.16, 0.45), debug_geometry, "hunt01_visibility_break")

	_create_solid_surface("H01_GB_EF02_MEADOW_FLOOR", Vector3(-45.0, 4.0, -250.0), Vector2(70.0, 54.0), Color(0.34, 0.43, 0.24, 1.0), "hunt01_meadow")
	_create_visual_box("H01_GB_EF02_OPEN_CORE", Vector3(-37.0, 4.03, -252.0), Vector3(48.0, 0.04, 34.0), Color(0.43, 0.49, 0.27, 0.55), debug_geometry, "hunt01_open_core")
	_create_visual_box("H01_GB_EF02_WEST_BRUSH_BELT", Vector3(-74.0, 5.3, -250.0), Vector3(12.0, 2.6, 54.0), Color(0.12, 0.32, 0.14, 0.28), debug_geometry, "hunt01_brush")
	_create_visual_box("H01_GB_EF02_FEED_SITE", Vector3(-20.0, 4.04, -258.0), Vector3(14.0, 0.05, 12.0), Color(0.49, 0.42, 0.22, 0.7), debug_geometry, "hunt01_feed_site")
	_create_solid_surface("H01_GB_OBSERVATION_SHELF_W", Vector3(-72.0, 5.0, -236.0), Vector2(16.0, 12.0), Color(0.30, 0.37, 0.21, 1.0), "hunt01_observation")

func _build_cover() -> void:
	_create_solid_box("R01_EF02_COV01_BOULDER_W", Vector3(-61.0, 4.8, -253.0), Vector3(5.0, 3.0, 4.0), Color(0.34, 0.33, 0.31, 1.0), "hunt01_cover")
	var boulder := world_geometry.get_node_or_null("R01_EF02_COV01_BOULDER_W") as Node3D
	if boulder != null:
		boulder.rotation.y = deg_to_rad(20.0)

	var tree_body := StaticBody3D.new()
	tree_body.name = "R01_EF02_COV02_SCARRED_TREE_NW"
	tree_body.position = Vector3(-61.0, 8.0, -270.0)
	tree_body.add_to_group("hunt01_cover")
	world_geometry.add_child(tree_body)
	var tree_mesh := MeshInstance3D.new()
	var cylinder := CylinderMesh.new()
	cylinder.top_radius = 0.7
	cylinder.bottom_radius = 0.7
	cylinder.height = 8.0
	tree_mesh.mesh = cylinder
	tree_mesh.material_override = _material(Color(0.30, 0.20, 0.12, 1.0))
	tree_body.add_child(tree_mesh)
	var tree_collision := CollisionShape3D.new()
	var tree_shape := CylinderShape3D.new()
	tree_shape.radius = 0.7
	tree_shape.height = 8.0
	tree_collision.shape = tree_shape
	tree_body.add_child(tree_collision)
	_create_visual_box("R01_EF02_COV02_ROOT_BASE", Vector3(-61.0, 4.35, -270.0), Vector3(4.0, 0.7, 3.0), Color(0.27, 0.18, 0.11, 1.0), debug_geometry, "hunt01_root_visual")

func _build_evidence_markers() -> void:
	for entry_variant in _manifest["evidence"]:
		var entry: Array = entry_variant
		_create_marker(entry[0], _array_to_v3(entry[1]) + Vector3.UP * 0.35, Color(1.0, 0.68, 0.12, 1.0), 0.32, "hunt01_evidence")

func _build_tactical_nodes() -> void:
	for entry_variant in _manifest["nodes"]:
		var entry: Array = entry_variant
		_create_marker(entry[0], _array_to_v3(entry[1]) + Vector3.UP * 0.22, Color(0.12, 0.84, 0.95, 0.95), 0.28, "hunt01_tactical_nodes")

func _build_monster_and_clearance() -> void:
	var pivot: Dictionary = _manifest["monster_clearance"]["pivot"]
	var pivot_center := _array_to_v3(pivot["center"])
	_create_solid_box("monster_r01_m01_0001", pivot_center + Vector3.UP * 1.2, Vector3(2.5, 2.4, 5.8), Color(0.70, 0.18, 0.52, 1.0), "hunt01_monster")

	var pivot_mesh := MeshInstance3D.new()
	pivot_mesh.name = "R01_EF02_MA01_PIVOT_CLEARANCE"
	var pivot_cylinder := CylinderMesh.new()
	pivot_cylinder.top_radius = float(pivot["radius"])
	pivot_cylinder.bottom_radius = float(pivot["radius"])
	pivot_cylinder.height = float(pivot["height_min"])
	pivot_mesh.mesh = pivot_cylinder
	pivot_mesh.position = pivot_center + Vector3.UP * float(pivot["height_min"]) * 0.5
	pivot_mesh.material_override = _material(Color(0.82, 0.18, 0.72, 0.10))
	pivot_mesh.add_to_group("hunt01_monster_clearance_debug")
	debug_geometry.add_child(pivot_mesh)

	var charge: Dictionary = _manifest["monster_clearance"]["charge"]
	_create_debug_lane("R01_EF02_CHARGE_LANE_W", _array_to_v3(charge["start"]) + Vector3.UP * 0.06, _array_to_v3(charge["end"]) + Vector3.UP * 0.06, float(charge["width_min"]), Color(0.95, 0.22, 0.72, 0.22), "hunt01_monster_clearance_debug")

func _build_escape_corridor() -> void:
	var points: Array = _manifest["escape"]["polyline"]
	for index in range(points.size() - 1):
		_create_route_segment(
			world_geometry,
			"H01_ESCAPE_ROUTE_%02d" % (index + 1),
			_array_to_v3(points[index]),
			_array_to_v3(points[index + 1]),
			float(_manifest["escape"]["monster_w_min"]),
			Color(0.35, 0.31, 0.20, 1.0),
			"hunt01_escape_route"
		)

func _build_camera_debug() -> void:
	var descent: Dictionary = _manifest["camera"]["descent"]
	var center_xz: Array = descent["center_xz"]
	var y_band: Array = descent["y"]
	var height := float(y_band[1]) - float(y_band[0])
	var mesh_instance := MeshInstance3D.new()
	mesh_instance.name = "H01_CAMERA_DESCENT_CLEARANCE"
	var cylinder := CylinderMesh.new()
	cylinder.top_radius = float(descent["radius"])
	cylinder.bottom_radius = float(descent["radius"])
	cylinder.height = height
	mesh_instance.mesh = cylinder
	mesh_instance.position = Vector3(float(center_xz[0]), float(y_band[0]) + height * 0.5, float(center_xz[1]))
	mesh_instance.material_override = _material(Color(0.20, 0.45, 1.0, 0.08))
	mesh_instance.add_to_group("hunt01_camera_debug")
	debug_geometry.add_child(mesh_instance)

func _build_stream_proxies() -> void:
	for entry_variant in _manifest["stream"]:
		var entry: Array = entry_variant
		_create_visual_box(entry[0], _array_to_v3(entry[1]), _array_to_v3(entry[2]), Color(0.16, 0.72, 0.94, 0.06), debug_geometry, "hunt01_stream_proxy")

func _create_route_segment(parent: Node3D, build_id: String, a: Vector3, b: Vector3, width: float, color: Color, group_name: String) -> StaticBody3D:
	var delta := b - a
	var length := delta.length()
	var body := StaticBody3D.new()
	body.name = build_id
	body.set_meta("build_id", build_id)
	body.add_to_group(group_name)
	parent.add_child(body)
	body.position = (a + b) * 0.5
	if length > 0.001:
		body.look_at(b, Vector3.UP)

	var size := Vector3(width, ROUTE_THICKNESS_M, maxf(length, 0.01))
	var mesh_instance := MeshInstance3D.new()
	var mesh := BoxMesh.new()
	mesh.size = size
	mesh_instance.mesh = mesh
	mesh_instance.position.y = -ROUTE_THICKNESS_M * 0.5
	mesh_instance.material_override = _material(color)
	body.add_child(mesh_instance)

	var collision := CollisionShape3D.new()
	var shape := BoxShape3D.new()
	shape.size = size
	collision.shape = shape
	collision.position = mesh_instance.position
	body.add_child(collision)
	return body

func _create_solid_surface(build_id: String, top_center: Vector3, size_xz: Vector2, color: Color, group_name: String) -> StaticBody3D:
	return _create_solid_box(build_id, top_center - Vector3.UP * ROUTE_THICKNESS_M * 0.5, Vector3(size_xz.x, ROUTE_THICKNESS_M, size_xz.y), color, group_name)

func _create_solid_box(build_id: String, center: Vector3, size: Vector3, color: Color, group_name: String) -> StaticBody3D:
	var body := StaticBody3D.new()
	body.name = build_id
	body.position = center
	body.set_meta("build_id", build_id)
	body.add_to_group(group_name)
	world_geometry.add_child(body)

	var mesh_instance := MeshInstance3D.new()
	var mesh := BoxMesh.new()
	mesh.size = size
	mesh_instance.mesh = mesh
	mesh_instance.material_override = _material(color)
	body.add_child(mesh_instance)

	var collision := CollisionShape3D.new()
	var shape := BoxShape3D.new()
	shape.size = size
	collision.shape = shape
	body.add_child(collision)
	return body

func _create_visual_box(build_id: String, center: Vector3, size: Vector3, color: Color, parent: Node3D, group_name: String) -> Node3D:
	var holder := Node3D.new()
	holder.name = build_id
	holder.position = center
	holder.set_meta("build_id", build_id)
	holder.add_to_group(group_name)
	parent.add_child(holder)
	var mesh_instance := MeshInstance3D.new()
	var mesh := BoxMesh.new()
	mesh.size = size
	mesh_instance.mesh = mesh
	mesh_instance.material_override = _material(color)
	holder.add_child(mesh_instance)
	return holder

func _create_marker(build_id: String, position: Vector3, color: Color, radius: float, group_name: String) -> MeshInstance3D:
	var marker := MeshInstance3D.new()
	marker.name = build_id
	marker.position = position
	marker.set_meta("build_id", build_id)
	marker.add_to_group(group_name)
	var sphere := SphereMesh.new()
	sphere.radius = radius
	sphere.height = radius * 2.0
	marker.mesh = sphere
	marker.material_override = _material(color)
	debug_geometry.add_child(marker)
	return marker

func _create_debug_lane(build_id: String, a: Vector3, b: Vector3, width: float, color: Color, group_name: String) -> Node3D:
	var holder := Node3D.new()
	holder.name = build_id
	holder.set_meta("build_id", build_id)
	holder.add_to_group(group_name)
	debug_geometry.add_child(holder)
	var delta := b - a
	var length := delta.length()
	holder.position = (a + b) * 0.5
	if length > 0.001:
		holder.look_at(b, Vector3.UP)
	var mesh_instance := MeshInstance3D.new()
	var mesh := BoxMesh.new()
	mesh.size = Vector3(width, 0.08, maxf(length, 0.01))
	mesh_instance.mesh = mesh
	mesh_instance.material_override = _material(color)
	holder.add_child(mesh_instance)
	return holder

func _material(color: Color) -> StandardMaterial3D:
	var material := StandardMaterial3D.new()
	material.albedo_color = color
	material.roughness = 1.0
	if color.a < 0.999:
		material.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
		material.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	return material

func _array_to_v3(values: Array) -> Vector3:
	return Vector3(float(values[0]), float(values[1]), float(values[2]))

func _view_forward() -> Vector3:
	var forward := Basis(Vector3.UP, _view_yaw) * Vector3(0.0, 0.0, -1.0)
	forward.y = 0.0
	return forward.normalized()

func _view_right() -> Vector3:
	var right := _view_forward().cross(Vector3.UP)
	right.y = 0.0
	return right.normalized()

func _camera_relative_movement(input_vector: Vector2) -> Vector3:
	if input_vector.length_squared() <= 0.0001:
		return Vector3.ZERO
	var movement := _view_right() * input_vector.x + _view_forward() * -input_vector.y
	if movement.length() > 1.0:
		movement = movement.normalized()
	return movement

func _look_degrees_per_pixel() -> float:
	return lerpf(LOOK_DEGREES_PER_PIXEL_MIN, LOOK_DEGREES_PER_PIXEL_MAX, _look_speed)

func _apply_look_delta(delta_pixels: Vector2) -> void:
	var sensitivity := _look_degrees_per_pixel()
	_view_yaw = wrapf(_view_yaw - deg_to_rad(delta_pixels.x * sensitivity), -PI, PI)
	if _first_person:
		_view_pitch = clampf(
			_view_pitch - deg_to_rad(delta_pixels.y * sensitivity),
			deg_to_rad(-FIRST_PERSON_PITCH_LIMIT_DEG),
			deg_to_rad(FIRST_PERSON_PITCH_LIMIT_DEG)
		)
	else:
		_view_pitch = 0.0
	_apply_view_orientation()

func _apply_view_orientation() -> void:
	hunter.rotation.y = _view_yaw
	first_person_camera.rotation.x = _view_pitch

func _can_claim_look_touch(screen_position: Vector2) -> bool:
	var viewport_width := get_viewport().get_visible_rect().size.x
	if screen_position.x < viewport_width * LOOK_TOUCH_REGION_START_X_RATIO:
		return false
	if toggle_view_button.get_global_rect().has_point(screen_position):
		return false
	if reset_button.get_global_rect().has_point(screen_position):
		return false
	if settings_button.get_global_rect().has_point(screen_position):
		return false
	return true

func _set_joystick_from_raw_vector(raw_vector: Vector2) -> void:
	var raw_strength := minf(raw_vector.length(), 1.0)
	if raw_strength < JOYSTICK_DEADZONE:
		_joystick_vector = Vector2.ZERO
		return
	var remapped_strength := inverse_lerp(JOYSTICK_DEADZONE, 1.0, raw_strength)
	_joystick_vector = raw_vector.normalized() * remapped_strength

func _update_joystick_from_screen_position(screen_position: Vector2) -> void:
	var base_rect := joystick_base.get_global_rect()
	var center := base_rect.get_center()
	var offset := screen_position - center
	var knob_radius := maxf(joystick_knob.size.x, joystick_knob.size.y) * 0.5
	var travel_radius := maxf(minf(base_rect.size.x, base_rect.size.y) * 0.5 - knob_radius, 1.0)
	var clamped_offset := offset.limit_length(travel_radius)
	_set_joystick_from_raw_vector(clamped_offset / travel_radius)
	joystick_knob.position = (joystick_base.size - joystick_knob.size) * 0.5 + clamped_offset

func _reset_joystick() -> void:
	_joystick_vector = Vector2.ZERO
	_joystick_touch_id = -1
	if is_instance_valid(joystick_base) and is_instance_valid(joystick_knob):
		joystick_knob.position = (joystick_base.size - joystick_knob.size) * 0.5

func _reset_look_touch() -> void:
	_look_touch_id = -1
	_look_last_position = Vector2.ZERO

func _reset_transient_controls() -> void:
	_reset_joystick()
	_reset_look_touch()

func _update_aerial_camera(delta: float, snap: bool = false) -> void:
	var forward := _view_forward()
	var desired_position := hunter.global_position + Vector3(0.0, AERIAL_CAMERA_HEIGHT_M, 0.0) - forward * AERIAL_CAMERA_TRAIL_M
	if snap:
		aerial_camera.global_position = desired_position
	else:
		var follow_weight := 1.0 - exp(-AERIAL_CAMERA_FOLLOW_RESPONSE * maxf(delta, 0.0))
		aerial_camera.global_position = aerial_camera.global_position.lerp(desired_position, follow_weight)
	var look_target := hunter.global_position + Vector3(0.0, 0.7, 0.0) + forward * AERIAL_CAMERA_LOOK_AHEAD_M
	aerial_camera.look_at(look_target, Vector3.UP)

func _load_settings() -> void:
	var config := ConfigFile.new()
	if config.load(SETTINGS_PATH) == OK:
		_look_speed = clampf(float(config.get_value("controls", "look_speed", LOOK_SPEED_DEFAULT)), 0.0, 1.0)
	else:
		_look_speed = LOOK_SPEED_DEFAULT

func _save_settings() -> void:
	var config := ConfigFile.new()
	config.set_value("controls", "look_speed", _look_speed)
	var error := config.save(SETTINGS_PATH)
	if error != OK:
		push_warning("Production settings could not be saved: %s" % error_string(error))

func _update_look_speed_label() -> void:
	look_speed_value.text = "Look Speed: %d%%" % int(round(_look_speed * 100.0))

func _update_view_state() -> void:
	aerial_camera.current = not _first_person
	first_person_camera.current = _first_person
	hunter_body.visible = not _first_person
	mode_label.text = "View: %s" % ("FIRST PERSON" if _first_person else "AERIAL")

func _reset_hunter_to_s00() -> void:
	hunter.global_position = S00_SPAWN
	hunter.velocity = Vector3.ZERO
	_view_yaw = 0.0
	_view_pitch = 0.0
	_apply_view_orientation()
	_update_aerial_camera(0.0, true)
	_reset_transient_controls()

func _on_toggle_view_pressed() -> void:
	if _settings_open:
		return
	_first_person = not _first_person
	if not _first_person:
		_view_pitch = 0.0
		first_person_camera.rotation.x = 0.0
	_update_view_state()

func _on_reset_to_start_pressed() -> void:
	_reset_hunter_to_s00()

func _on_settings_pressed() -> void:
	_settings_open = not _settings_open
	settings_overlay.visible = _settings_open
	_reset_transient_controls()

func _on_settings_close_pressed() -> void:
	_settings_open = false
	settings_overlay.visible = false
	_reset_transient_controls()

func _on_look_speed_changed(value: float) -> void:
	_look_speed = clampf(value / 100.0, 0.0, 1.0)
	_update_look_speed_label()
	_save_settings()

func get_manifest_identity() -> Dictionary:
	return {
		"schema": _manifest.get("schema", ""),
		"scenario": _manifest.get("scenario", ""),
		"hunt": _manifest.get("hunt", ""),
		"monster": _manifest.get("monster", ""),
		"encounter": _manifest.get("encounter", ""),
	}

func get_required_route_length_m() -> float:
	return _required_route_length_m

func is_world_built() -> bool:
	return _world_built
