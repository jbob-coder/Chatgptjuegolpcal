class_name ShooterProjectContract
extends RefCounted

const PROJECT_ID := "shooter_rpg"
const PROJECT_DISPLAY_NAME := "Shooter RPG"
const SCAFFOLD_VERSION := "001"
const TARGET_ENGINE := "Godot 4.7.2-stable"

const REQUIRED_INPUT_ACTIONS: PackedStringArray = [
	"move_left",
	"move_right",
	"move_forward",
	"move_back",
	"jump",
	"aim",
	"fire",
	"reload",
	"dodge",
	"interact",
	"pause_game",
]
