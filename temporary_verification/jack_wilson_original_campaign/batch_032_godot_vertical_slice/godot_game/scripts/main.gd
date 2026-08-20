extends Node3D

const PLAYER_SCENE := preload("res://scenes/player.tscn")
const DATA_PATH := "res://data/campaign_start_slice.json"

var campaign_data: Dictionary = {}
var feedback_label: Label


func _ready() -> void:
	campaign_data = _load_campaign_data()
	_build_environment()
	_build_start_room()
	_build_corridor()
	_spawn_player()
	_build_hud()


func _load_campaign_data() -> Dictionary:
	var raw := FileAccess.get_file_as_string(DATA_PATH)
	var parsed = JSON.parse_string(raw)
	if typeof(parsed) != TYPE_DICTIONARY:
		push_error("Unable to parse campaign_start_slice.json")
		return {}
	return parsed


func _build_environment() -> void:
	var light := DirectionalLight3D.new()
	light.name = "PrototypeDirectionalLight"
	light.rotation_degrees = Vector3(-62.0, -28.0, 0.0)
	light.light_energy = 1.2
	add_child(light)

	var environment := WorldEnvironment.new()
	environment.name = "WorldEnvironment"
	var env := Environment.new()
	env.background_mode = Environment.BG_COLOR
	env.background_color = Color(0.035, 0.045, 0.065)
	env.ambient_light_source = Environment.AMBIENT_SOURCE_COLOR
	env.ambient_light_color = Color(0.68, 0.72, 0.80)
	env.ambient_light_energy = 0.55
	env.ambient_light_sky_contribution = 0.0
	environment.environment = env
	add_child(environment)


func _build_start_room() -> void:
	var room := Node3D.new()
	room.name = "ROOM_JACK_START_01"
	room.set_meta("stable_id", "ROOM_JACK_START_01")
	add_child(room)

	var width := 3.6
	var length := 4.2
	var height := 2.7
	var wall := 0.12
	var door_width := 0.9
	var door_height := 2.05
	var floor_thickness := 0.10

	_add_box(room, "Floor", Vector3(width, floor_thickness, length), Vector3(0, -floor_thickness * 0.5, 0), Color(0.30, 0.32, 0.35))
	_add_box(room, "Ceiling", Vector3(width, 0.08, length), Vector3(0, height + 0.04, 0), Color(0.70, 0.72, 0.74))
	_add_box(room, "SouthWall", Vector3(width, height, wall), Vector3(0, height * 0.5, length * 0.5), Color(0.62, 0.64, 0.67))
	_add_box(room, "WestWall", Vector3(wall, height, length), Vector3(-width * 0.5, height * 0.5, 0), Color(0.59, 0.61, 0.64))
	_add_box(room, "EastWall", Vector3(wall, height, length), Vector3(width * 0.5, height * 0.5, 0), Color(0.59, 0.61, 0.64))

	var side_segment := (width - door_width) * 0.5
	var segment_offset := door_width * 0.5 + side_segment * 0.5
	_add_box(room, "NorthWallLeft", Vector3(side_segment, height, wall), Vector3(-segment_offset, height * 0.5, -length * 0.5), Color(0.62, 0.64, 0.67))
	_add_box(room, "NorthWallRight", Vector3(side_segment, height, wall), Vector3(segment_offset, height * 0.5, -length * 0.5), Color(0.62, 0.64, 0.67))
	_add_box(room, "NorthDoorLintel", Vector3(door_width, height - door_height, wall), Vector3(0, door_height + (height - door_height) * 0.5, -length * 0.5), Color(0.62, 0.64, 0.67))

	# Reversible prototype-only furniture layout. Dimensions/obstacle identities
	# come from campaign authority; exact placements are deliberately non-canon.
	_add_box(room, "Bed", Vector3(0.95, 0.45, 2.0), Vector3(1.15, 0.225, 0.55), Color(0.30, 0.38, 0.48))
	_add_box(room, "Desk", Vector3(1.1, 0.74, 0.55), Vector3(-0.95, 0.37, 1.30), Color(0.31, 0.25, 0.20))
	_add_box(room, "Chair", Vector3(0.45, 0.88, 0.45), Vector3(-0.95, 0.44, 0.55), Color(0.25, 0.23, 0.22))
	_add_box(room, "Wardrobe", Vector3(0.80, 1.90, 0.55), Vector3(-1.28, 0.95, -1.25), Color(0.34, 0.30, 0.27))
	_add_box(room, "Window", Vector3(1.20, 1.10, 0.025), Vector3(0.30, 1.45, length * 0.5 - wall * 0.55), Color(0.22, 0.39, 0.52), false)


func _build_corridor() -> void:
	var corridor := Node3D.new()
	corridor.name = "LOC_RESIDENCE_F2_CORRIDOR_01"
	corridor.set_meta("stable_id", "LOC_RESIDENCE_F2_CORRIDOR_01")
	add_child(corridor)

	var width := 1.6
	var length := 8.0
	var height := 2.7
	var wall := 0.12
	var room_north_z := -2.1
	var center_z := room_north_z - length * 0.5

	_add_box(corridor, "Floor", Vector3(width, 0.10, length), Vector3(0, -0.05, center_z), Color(0.27, 0.29, 0.32))
	_add_box(corridor, "Ceiling", Vector3(width, 0.08, length), Vector3(0, height + 0.04, center_z), Color(0.68, 0.70, 0.72))
	_add_box(corridor, "WestWall", Vector3(wall, height, length), Vector3(-width * 0.5, height * 0.5, center_z), Color(0.56, 0.58, 0.61))
	_add_box(corridor, "EastWall", Vector3(wall, height, length), Vector3(width * 0.5, height * 0.5, center_z), Color(0.56, 0.58, 0.61))
	_add_box(corridor, "PrototypeBoundary", Vector3(width, height, wall), Vector3(0, height * 0.5, room_north_z - length), Color(0.22, 0.24, 0.30))


func _spawn_player() -> void:
	var player := PLAYER_SCENE.instantiate() as JackPlayerController
	player.name = "CHAR_JACK_WILSON"
	player.position = Vector3(0.0, 0.03, 0.85)
	player.feedback.connect(_on_player_feedback)
	add_child(player)


func _build_hud() -> void:
	var canvas := CanvasLayer.new()
	canvas.name = "HUD"
	add_child(canvas)

	var status := Label.new()
	status.name = "Status"
	status.position = Vector2(18, 16)
	status.add_theme_font_size_override("font_size", 18)
	status.text = "JACK WILSON  •  LV 1\nHP 34 / 34    CM 120 / 120\n2670 CE  •  T-14 DAYS\nROOM_JACK_START_01"
	canvas.add_child(status)

	var controls := Label.new()
	controls.name = "Controls"
	controls.position = Vector2(18, 620)
	controls.add_theme_font_size_override("font_size", 15)
	controls.text = "WASD Move   Shift Sprint   Space Jump   Q Steal   Esc Mouse"
	canvas.add_child(controls)

	var crosshair := Label.new()
	crosshair.name = "Crosshair"
	crosshair.position = Vector2(636, 342)
	crosshair.add_theme_font_size_override("font_size", 22)
	crosshair.text = "+"
	canvas.add_child(crosshair)

	feedback_label = Label.new()
	feedback_label.name = "Feedback"
	feedback_label.position = Vector2(18, 574)
	feedback_label.add_theme_font_size_override("font_size", 16)
	feedback_label.text = "First playable slice: start room + corridor."
	canvas.add_child(feedback_label)


func _on_player_feedback(message: String) -> void:
	feedback_label.text = message


func _add_box(parent: Node3D, node_name: String, size: Vector3, position: Vector3, color: Color, collidable := true) -> Node3D:
	if collidable:
		var body := StaticBody3D.new()
		body.name = node_name
		body.position = position
		parent.add_child(body)

		var mesh_instance := MeshInstance3D.new()
		mesh_instance.mesh = _make_box_mesh(size, color)
		body.add_child(mesh_instance)

		var collision := CollisionShape3D.new()
		var shape := BoxShape3D.new()
		shape.size = size
		collision.shape = shape
		body.add_child(collision)
		return body

	var visual := MeshInstance3D.new()
	visual.name = node_name
	visual.position = position
	visual.mesh = _make_box_mesh(size, color)
	parent.add_child(visual)
	return visual


func _make_box_mesh(size: Vector3, color: Color) -> BoxMesh:
	var mesh := BoxMesh.new()
	mesh.size = size
	var material := StandardMaterial3D.new()
	material.albedo_color = color
	material.roughness = 0.84
	mesh.material = material
	return mesh
