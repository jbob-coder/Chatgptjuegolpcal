class_name PixelRPGConceptGatePillars012A
extends Node3D

const SCHEMA := "pixel_rpg.concept_gate_pillars_012a.v1"
const LEFT_PATH := "res://assets/environment/starting_area/concept_photo_sprites_012/concept_gate_left_pillar.png"
const RIGHT_PATH := "res://assets/environment/starting_area/concept_photo_sprites_012/concept_gate_right_pillar.png"
const LEFT_SHA256 := "1846beabed5dd2b1dddca6d9747b70f96ae5289fe13b953402aedd0c480fcc18"
const RIGHT_SHA256 := "72ccb4eb3083d294c7d487275b519e1238bad2f5163fffe268b69248e3c1ddbe"

func _ready() -> void:
	name = "ConceptGatePillars012A"
	_add_sprite("GateLeftPillarPhoto", LEFT_PATH, Vector3(-4.8, 2.4, -9.24), 0.050)
	_add_sprite("GateRightPillarPhoto", RIGHT_PATH, Vector3(4.8, 2.4, -9.24), 0.048)

func _add_sprite(node_name: String, path: String, world_position: Vector3, pixel_size: float) -> Sprite3D:
	var texture := load(path) as Texture2D
	if texture == null:
		push_error("Pixel RPG Pack 012A missing direct concept-photo PNG: " + path)
		return null
	var sprite := Sprite3D.new()
	sprite.name = node_name
	sprite.position = world_position
	sprite.pixel_size = pixel_size
	sprite.texture = texture
	sprite.shaded = false
	sprite.texture_filter = BaseMaterial3D.TEXTURE_FILTER_NEAREST
	add_child(sprite)
	return sprite
