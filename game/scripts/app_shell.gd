extends Node

const FIRST_SLICE_SCENE := "res://scenes/regions/region_01_hunt01_graybox.tscn"

func _ready() -> void:
	call_deferred("_enter_first_slice")

func _enter_first_slice() -> void:
	var error := get_tree().change_scene_to_file(FIRST_SLICE_SCENE)
	if error != OK:
		push_error("Failed to enter first production Hunt-01 slice: %s" % error_string(error))
