class_name PixelRPGWorldPack001
extends RefCounted

const WOOD_DARK := Color(0.26, 0.18, 0.11)
const WOOD_MID := Color(0.40, 0.27, 0.15)
const WOOD_LIGHT := Color(0.52, 0.36, 0.20)
const STONE := Color(0.33, 0.35, 0.32)
const ROOF := Color(0.20, 0.12, 0.08)
const CLOTH_RED := Color(0.48, 0.18, 0.15)
const CLOTH_BLUE := Color(0.18, 0.28, 0.42)
const FOLIAGE_DARK := Color(0.12, 0.28, 0.15)
const FOLIAGE_MID := Color(0.20, 0.38, 0.18)
const LANTERN_GLOW := Color(0.95, 0.62, 0.20)

static func add_settlement_gate(parent: Node3D, position: Vector3) -> Node3D:
	var root := _root(parent, "WorldPack001Gate", position)
	_box(root, "LeftTower", Vector3(-5.0, 2.4, 0.0), Vector3(2.1, 4.8, 2.4), WOOD_DARK)
	_box(root, "RightTower", Vector3(5.0, 2.4, 0.0), Vector3(2.1, 4.8, 2.4), WOOD_DARK)
	_box(root, "UpperBeam", Vector3(0.0, 4.45, 0.0), Vector3(8.2, 0.55, 1.2), WOOD_MID)
	_box(root, "LeftCap", Vector3(-5.0, 4.95, 0.0), Vector3(2.6, 0.45, 2.8), ROOF)
	_box(root, "RightCap", Vector3(5.0, 4.95, 0.0), Vector3(2.6, 0.45, 2.8), ROOF)
	_box(root, "BraceLeft", Vector3(-2.75, 3.35, 0.0), Vector3(0.24, 3.0, 0.22), WOOD_LIGHT, Vector3(0.0, 0.0, -48.0))
	_box(root, "BraceRight", Vector3(2.75, 3.35, 0.0), Vector3(0.24, 3.0, 0.22), WOOD_LIGHT, Vector3(0.0, 0.0, 48.0))
	return root

static func add_service_smith(parent: Node3D, position: Vector3, yaw_deg := 0.0) -> Node3D:
	var root := _root(parent, "WorldPack001Smith", position, yaw_deg)
	_box(root, "MainShell", Vector3(0.0, 1.65, 0.0), Vector3(6.6, 3.3, 6.4), WOOD_MID)
	_box(root, "StoneBase", Vector3(0.0, 0.45, 0.0), Vector3(6.9, 0.9, 6.7), STONE)
	_box(root, "RoofA", Vector3(-1.65, 3.75, 0.0), Vector3(3.8, 0.45, 7.2), ROOF, Vector3(0.0, 0.0, -18.0))
	_box(root, "RoofB", Vector3(1.65, 3.75, 0.0), Vector3(3.8, 0.45, 7.2), ROOF, Vector3(0.0, 0.0, 18.0))
	_box(root, "Door", Vector3(0.0, 1.15, 3.25), Vector3(1.5, 2.3, 0.16), WOOD_DARK)
	_box(root, "ForgeCanopy", Vector3(2.5, 2.45, 3.55), Vector3(2.2, 0.25, 1.5), CLOTH_RED)
	_box(root, "ForgeTable", Vector3(2.5, 0.75, 3.55), Vector3(2.0, 1.5, 1.1), WOOD_DARK)
	return root

static func add_market_stall(parent: Node3D, position: Vector3, yaw_deg := 0.0) -> Node3D:
	var root := _root(parent, "WorldPack001Market", position, yaw_deg)
	_box(root, "Counter", Vector3(0.0, 0.9, 0.0), Vector3(3.2, 1.0, 1.15), WOOD_MID)
	_box(root, "PostLeft", Vector3(-1.45, 1.55, 0.0), Vector3(0.18, 3.1, 0.18), WOOD_DARK)
	_box(root, "PostRight", Vector3(1.45, 1.55, 0.0), Vector3(0.18, 3.1, 0.18), WOOD_DARK)
	_box(root, "Canopy", Vector3(0.0, 2.75, 0.0), Vector3(3.6, 0.22, 2.5), CLOTH_BLUE)
	_box(root, "CrateA", Vector3(-1.0, 0.35, -1.0), Vector3(0.7, 0.7, 0.7), WOOD_LIGHT)
	_box(root, "CrateB", Vector3(0.9, 0.28, -0.95), Vector3(0.55, 0.55, 0.55), WOOD_LIGHT)
	return root

static func add_service_clutter(parent: Node3D, position: Vector3, yaw_deg := 0.0) -> Node3D:
	var root := _root(parent, "WorldPack001Clutter", position, yaw_deg)
	_box(root, "Crate", Vector3(-0.55, 0.5, 0.0), Vector3(1.0, 1.0, 1.0), WOOD_MID)
	_cylinder(root, "Barrel", Vector3(0.65, 0.58, 0.0), 0.45, 1.15, WOOD_DARK, 8)
	return root

static func add_signpost(parent: Node3D, position: Vector3, yaw_deg := 0.0) -> Node3D:
	var root := _root(parent, "WorldPack001Signpost", position, yaw_deg)
	_box(root, "Post", Vector3(0.0, 1.25, 0.0), Vector3(0.22, 2.5, 0.22), WOOD_DARK)
	_box(root, "SignA", Vector3(0.65, 2.05, 0.0), Vector3(1.6, 0.34, 0.16), WOOD_LIGHT, Vector3(0.0, 0.0, -7.0))
	_box(root, "SignB", Vector3(-0.55, 1.65, 0.0), Vector3(1.35, 0.32, 0.16), WOOD_MID, Vector3(0.0, 0.0, 8.0))
	_box(root, "SignC", Vector3(0.45, 1.3, 0.0), Vector3(1.1, 0.3, 0.16), WOOD_LIGHT, Vector3(0.0, 0.0, -4.0))
	return root

static func add_lantern_post(parent: Node3D, position: Vector3, yaw_deg := 0.0) -> Node3D:
	var root := _root(parent, "WorldPack001Lantern", position, yaw_deg)
	_box(root, "Pole", Vector3(0.0, 1.35, 0.0), Vector3(0.18, 2.7, 0.18), WOOD_DARK)
	_box(root, "Arm", Vector3(0.35, 2.55, 0.0), Vector3(0.9, 0.14, 0.14), WOOD_DARK)
	_box(root, "Frame", Vector3(0.7, 2.28, 0.0), Vector3(0.38, 0.55, 0.38), STONE)
	_box(root, "Glow", Vector3(0.7, 2.28, 0.0), Vector3(0.22, 0.34, 0.22), LANTERN_GLOW)
	return root

static func add_fence(parent: Node3D, position: Vector3, yaw_deg := 0.0) -> Node3D:
	var root := _root(parent, "WorldPack001Fence", position, yaw_deg)
	_box(root, "PostLeft", Vector3(-1.5, 0.78, 0.0), Vector3(0.22, 1.55, 0.22), WOOD_DARK)
	_box(root, "PostRight", Vector3(1.5, 0.78, 0.0), Vector3(0.22, 1.55, 0.22), WOOD_DARK)
	_box(root, "RailLow", Vector3(0.0, 0.55, 0.0), Vector3(3.2, 0.18, 0.16), WOOD_MID)
	_box(root, "RailHigh", Vector3(0.0, 1.15, 0.0), Vector3(3.2, 0.18, 0.16), WOOD_MID)
	return root

static func add_banner_post(parent: Node3D, position: Vector3, yaw_deg := 0.0) -> Node3D:
	var root := _root(parent, "WorldPack001Banner", position, yaw_deg)
	_box(root, "Post", Vector3(0.0, 1.5, 0.0), Vector3(0.22, 3.0, 0.22), WOOD_DARK)
	_box(root, "TopBar", Vector3(0.55, 2.85, 0.0), Vector3(1.35, 0.15, 0.15), WOOD_DARK)
	_box(root, "Banner", Vector3(0.55, 1.85, 0.0), Vector3(1.0, 1.8, 0.08), CLOTH_RED)
	return root

static func add_vegetation_cluster(parent: Node3D, position: Vector3, yaw_deg := 0.0) -> Node3D:
	var root := _root(parent, "WorldPack001Vegetation", position, yaw_deg)
	_tree(root, "TreeA", Vector3(-1.25, 0.0, 0.3), 0.26, 2.5, 0.95)
	_tree(root, "TreeB", Vector3(0.25, 0.0, -0.35), 0.32, 3.1, 1.15)
	_tree(root, "TreeC", Vector3(1.35, 0.0, 0.25), 0.23, 2.3, 0.85)
	_sphere(root, "BushA", Vector3(-0.55, 0.55, -1.05), 0.55, FOLIAGE_MID)
	_sphere(root, "BushB", Vector3(0.65, 0.48, 1.0), 0.48, FOLIAGE_MID)
	return root

static func add_rock_cluster(parent: Node3D, position: Vector3, yaw_deg := 0.0) -> Node3D:
	var root := _root(parent, "WorldPack001Rocks", position, yaw_deg)
	_box(root, "RockA", Vector3(-0.8, 0.5, 0.0), Vector3(1.55, 1.0, 1.15), STONE, Vector3(0.0, 24.0, 10.0))
	_box(root, "RockB", Vector3(0.45, 0.35, 0.2), Vector3(1.25, 0.7, 1.0), STONE, Vector3(0.0, -18.0, -6.0))
	_box(root, "RockC", Vector3(1.1, 0.25, -0.5), Vector3(0.8, 0.5, 0.75), STONE, Vector3(0.0, 35.0, 8.0))
	return root

static func _tree(parent: Node3D, name: String, position: Vector3, radius: float, height: float, crown_radius: float) -> void:
	_cylinder(parent, name + "Trunk", position + Vector3(0.0, height * 0.5, 0.0), radius, height, WOOD_DARK, 6)
	_sphere(parent, name + "Canopy", position + Vector3(0.0, height + crown_radius * 0.55, 0.0), crown_radius, FOLIAGE_DARK)

static func _root(parent: Node3D, name: String, position: Vector3, yaw_deg := 0.0) -> Node3D:
	var root := Node3D.new()
	root.name = name
	root.position = position
	root.rotation_degrees.y = yaw_deg
	parent.add_child(root)
	return root

static func _box(parent: Node3D, name: String, position: Vector3, size: Vector3, color: Color, rotation_deg := Vector3.ZERO) -> MeshInstance3D:
	var node := MeshInstance3D.new()
	node.name = name
	var mesh := BoxMesh.new()
	mesh.size = size
	node.mesh = mesh
	node.position = position
	node.rotation_degrees = rotation_deg
	node.material_override = _material(color)
	parent.add_child(node)
	return node

static func _cylinder(parent: Node3D, name: String, position: Vector3, radius: float, height: float, color: Color, segments: int) -> MeshInstance3D:
	var node := MeshInstance3D.new()
	node.name = name
	var mesh := CylinderMesh.new()
	mesh.top_radius = radius * 0.86
	mesh.bottom_radius = radius
	mesh.height = height
	mesh.radial_segments = segments
	node.mesh = mesh
	node.position = position
	node.material_override = _material(color)
	parent.add_child(node)
	return node

static func _sphere(parent: Node3D, name: String, position: Vector3, radius: float, color: Color) -> MeshInstance3D:
	var node := MeshInstance3D.new()
	node.name = name
	var mesh := SphereMesh.new()
	mesh.radius = radius
	mesh.height = radius * 2.0
	mesh.radial_segments = 8
	mesh.rings = 4
	node.mesh = mesh
	node.position = position
	node.material_override = _material(color)
	parent.add_child(node)
	return node

static func _material(color: Color) -> StandardMaterial3D:
	var material := StandardMaterial3D.new()
	material.albedo_color = color
	material.roughness = 0.95
	material.shading_mode = BaseMaterial3D.SHADING_MODE_PER_VERTEX
	material.texture_filter = BaseMaterial3D.TEXTURE_FILTER_NEAREST
	return material
