extends SceneTree

const REQUIRED_ACTIONS: PackedStringArray = [
	"move_left",
	"move_right",
	"move_forward",
	"move_back",
	"aim",
	"fire",
	"reload",
	"dodge",
	"interact",
	"pause_game",
]

func _initialize() -> void:
	var failures: Array[String] = []

	var configured_name := str(ProjectSettings.get_setting("application/config/name", ""))
	if configured_name != "Shooter RPG":
		failures.append("application/config/name must be Shooter RPG")

	var main_scene := str(ProjectSettings.get_setting("application/run/main_scene", ""))
	if main_scene != "res://scenes/boot/boot.tscn":
		failures.append("application/run/main_scene must own the Shooter RPG boot scene")

	var rendering_method := str(ProjectSettings.get_setting("rendering/renderer/rendering_method", ""))
	if rendering_method != "mobile":
		failures.append("rendering method must be mobile for scaffold 001")

	for action in REQUIRED_ACTIONS:
		if not InputMap.has_action(action):
			failures.append("missing input action: %s" % action)

	if not ResourceLoader.exists("res://scenes/boot/boot.tscn"):
		failures.append("boot scene is missing")
	else:
		var packed := load("res://scenes/boot/boot.tscn") as PackedScene
		if packed == null:
			failures.append("boot scene could not be loaded as PackedScene")
		else:
			var instance := packed.instantiate()
			if instance == null:
				failures.append("boot scene could not be instantiated")
			else:
				instance.free()

	if failures.is_empty():
		print("SHOOTER_RPG_SCAFFOLD_SMOKE_PASS actions=%d" % REQUIRED_ACTIONS.size())
		quit(0)
		return

	for failure in failures:
		push_error("SHOOTER_RPG_SCAFFOLD_SMOKE_FAIL: %s" % failure)
	quit(1)
