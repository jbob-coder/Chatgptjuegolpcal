extends SceneTree

const HUNTER_ID := "hunter_player_0001"
const MONSTER_ID := "monster_r01_m01_0001"
const ENCOUNTER_ID := "enc_r01_ef02_m01_0001"
const EXPECTED_SCENARIO := "R01_HUNT01_M01_TRACK_TO_MEADOW"
const EXPECTED_HUNT := "hunt_r01_m01_proof_01"
const ENGAGEMENT_POSITION := Vector3(-72.0, 0.875, -236.0)
const EVIDENCE_IDS := [
	"R01_H01_EV01_OUTER_PRINTS",
	"R01_H01_EV02_BANK_REEDS",
	"R01_H01_EV03_FRESH_WALLOW",
	"R01_H01_EV05_OLD_ROOT_SCRAPE",
	"R01_H01_EV04_WATER_EXIT",
	"R01_H01_EV06_FEEDING_REMAINS",
	"R01_H01_EV07_FLATTENED_GRASS_AUDIO",
]

var failures: Array[String] = []
var checks := 0

func _init() -> void:
	call_deferred("_run")

func _check(label: String, condition: bool, detail: String = "") -> void:
	checks += 1
	print("[%s] %s%s" % ["PASS" if condition else "FAIL", label, " :: " + detail if not detail.is_empty() else ""])
	if not condition:
		failures.append(label)

func _cycle_check(cycle_index: int, label: String, condition: bool, detail: String = "") -> void:
	_check("cycle %d: %s" % [cycle_index, label], condition, detail)

func _settle_world() -> void:
	for _frame in range(4):
		await process_frame
		await physics_frame

func _settle_hunter(hunter: CharacterBody3D, position: Vector3) -> void:
	hunter.global_position = position
	hunter.velocity = Vector3.ZERO
	for _frame in range(8):
		await physics_frame
		await process_frame

func _record_tracking(tracking: Node) -> bool:
	for evidence_id in EVIDENCE_IDS:
		if not bool(tracking.call("record_evidence_for_test", evidence_id)):
			return false
		await process_frame
	return int(tracking.call("get_collected_count")) == EVIDENCE_IDS.size()

func _teardown_world(world: Node3D, cycle_index: int) -> void:
	world.queue_free()
	for _frame in range(3):
		await process_frame
		await physics_frame
	_cycle_check(cycle_index, "world root is released after teardown", root.get_children().is_empty(), str(root.get_children()))
	_cycle_check(cycle_index, "tactical-node group is clean after teardown", get_nodes_in_group("hunt01_tactical_nodes").is_empty())
	_cycle_check(cycle_index, "evidence group is clean after teardown", get_nodes_in_group("hunt01_evidence").is_empty())
	_cycle_check(cycle_index, "monster group is clean after teardown", get_nodes_in_group("hunt01_monster").is_empty())

func _run_cycle(packed: PackedScene, cycle_index: int) -> Dictionary:
	var world := packed.instantiate() as Node3D
	_cycle_check(cycle_index, "production Region-01 instance created", world != null)
	if world == null:
		return {}
	root.add_child(world)
	await _settle_world()

	_cycle_check(cycle_index, "world reports built", bool(world.call("is_world_built")))
	var identity: Dictionary = world.call("get_manifest_identity")
	_cycle_check(cycle_index, "stable scenario identity", String(identity.get("scenario", "")) == EXPECTED_SCENARIO, str(identity))
	_cycle_check(cycle_index, "stable hunt identity", String(identity.get("hunt", "")) == EXPECTED_HUNT, str(identity))
	_cycle_check(cycle_index, "stable monster identity", String(identity.get("monster", "")) == MONSTER_ID, str(identity))
	_cycle_check(cycle_index, "stable encounter identity", String(identity.get("encounter", "")) == ENCOUNTER_ID, str(identity))
	_cycle_check(cycle_index, "protected exploration speed remains 6.25 m/s", is_equal_approx(float(world.call("get_move_speed_mps")), 6.25))

	var hunter := world.get_node_or_null("Hunter") as CharacterBody3D
	var tracking := world.get_node_or_null("TrackingRuntime")
	var encounter := world.get_node_or_null("EncounterRuntime")
	_cycle_check(cycle_index, "Hunter and basic runtime owners exist", hunter != null and tracking != null and encounter != null)
	if hunter == null or tracking == null or encounter == null:
		await _teardown_world(world, cycle_index)
		return {}

	_cycle_check(cycle_index, "fresh tracking starts at zero", int(tracking.call("get_collected_count")) == 0)
	_cycle_check(cycle_index, "fresh tracking starts SEARCHING", String((tracking.call("get_current_inference") as Dictionary).get("phase", "")) == "SEARCHING")
	_cycle_check(cycle_index, "fresh encounter starts SEARCHING", String(encounter.call("get_state")) == "SEARCHING")
	_cycle_check(cycle_index, "fresh encounter is not already started", not bool(encounter.call("has_encounter_started")))
	_cycle_check(cycle_index, "fresh scene restores seven evidence nodes", get_nodes_in_group("hunt01_evidence").size() == 7, str(get_nodes_in_group("hunt01_evidence").size()))

	_cycle_check(cycle_index, "tracking autorun reaches seven clues", await _record_tracking(tracking))
	var final_inference: Dictionary = tracking.call("get_current_inference")
	_cycle_check(cycle_index, "tracking reaches OBSERVATION_READY", String(final_inference.get("phase", "")) == "OBSERVATION_READY", str(final_inference))
	_cycle_check(cycle_index, "tracking history is exactly seven entries", (tracking.call("get_history") as Array).size() == 7)

	await _settle_hunter(hunter, ENGAGEMENT_POSITION)
	_cycle_check(cycle_index, "physical engagement zone is reached", bool(encounter.call("is_inside_engagement_zone")))
	_cycle_check(cycle_index, "ENGAGE becomes available", String(encounter.call("get_state")) == "ENGAGEMENT_AVAILABLE", String(encounter.call("get_state")))
	_cycle_check(cycle_index, "explicit ENGAGE succeeds once", bool(encounter.call("engage_for_test")))
	_cycle_check(cycle_index, "duplicate ENGAGE remains rejected", not bool(encounter.call("engage_for_test")))
	_cycle_check(cycle_index, "encounter stages first-person at same hunt instance", String(encounter.call("get_state")) == "ENCOUNTER_STAGED_FIRST_PERSON")

	var record: Dictionary = encounter.call("get_encounter_record")
	_cycle_check(cycle_index, "encounter record keeps stable identity", String(record.get("encounter_id", "")) == ENCOUNTER_ID and String(record.get("monster_id", "")) == MONSTER_ID, str(record))
	_cycle_check(cycle_index, "entry node remains authored N01", String(record.get("player_tactical_node", "")) == "R01_EF02_N01", str(record))

	var shell := encounter.call("get_combat_turn_shell") as Node
	var movement := encounter.call("get_tactical_movement_runtime") as Node
	var reaction := encounter.call("get_reaction_window_runtime") as Node
	var anatomy := encounter.call("get_mudcrest_anatomy_runtime") as Node
	var mudcrest_attack := encounter.call("get_mudcrest_attack_runtime") as Node
	_cycle_check(cycle_index, "basic combat owners are all attached", shell != null and movement != null and reaction != null and anatomy != null and mudcrest_attack != null)
	if shell == null or movement == null or reaction == null or anatomy == null or mudcrest_attack == null:
		await _teardown_world(world, cycle_index)
		return {}

	var initial_state: Dictionary = shell.call("get_current_state")
	_cycle_check(cycle_index, "fresh combat starts Round 1 on Hunter", int(initial_state.get("round_id", 0)) == 1 and String(initial_state.get("current_actor_id", "")) == HUNTER_ID, str(initial_state))
	_cycle_check(cycle_index, "basic Hunter end-turn commits", bool(shell.call("end_player_turn")))
	var post_idle_state: Dictionary = shell.call("get_current_state")
	_cycle_check(cycle_index, "out-of-range Monster idle completes and Round 2 returns to Hunter", int(post_idle_state.get("round_id", 0)) == 2 and String(post_idle_state.get("current_actor_id", "")) == HUNTER_ID, str(post_idle_state))
	_cycle_check(cycle_index, "idle N01 Monster activation does not fabricate an attack", int(mudcrest_attack.call("get_attack_sequence")) == 0)

	var signature := {
		"scenario": String(identity.get("scenario", "")),
		"hunt": String(identity.get("hunt", "")),
		"monster": String(identity.get("monster", "")),
		"encounter": String(identity.get("encounter", "")),
		"tracking_schema": String(tracking.call("get_schema")),
		"shell_schema": String(shell.call("get_schema")),
		"movement_schema": String(movement.call("get_schema")),
		"reaction_schema": String(reaction.call("get_schema")),
		"anatomy_schema": String(anatomy.call("get_schema")),
		"attack_schema": String(mudcrest_attack.call("get_schema")),
		"post_idle_round": int(post_idle_state.get("round_id", 0)),
		"post_idle_actor": String(post_idle_state.get("current_actor_id", "")),
	}
	await _teardown_world(world, cycle_index)
	return signature

func _run() -> void:
	print("Hunt-01 basic runtime autorun repeatability regression")
	var packed := load("res://scenes/regions/region_01_hunt01_graybox.tscn") as PackedScene
	_check("production Region-01 scene loads", packed != null)
	if packed == null:
		_finish()
		return

	var first_signature: Dictionary = await _run_cycle(packed, 1)
	var second_signature: Dictionary = await _run_cycle(packed, 2)
	_check("both autorun cycles produced stable runtime signatures", not first_signature.is_empty() and not second_signature.is_empty())
	_check("second fresh cycle matches first without leaked state", first_signature == second_signature, "first=%s second=%s" % [str(first_signature), str(second_signature)])
	_finish()

func _finish() -> void:
	print()
	print("Checks: %d | Passed: %d | Failed: %d" % [checks, checks - failures.size(), failures.size()])
	if failures.is_empty():
		print("Gate: HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED")
	else:
		print("Gate: HUNT01_BASIC_RUNTIME_AUTORUN_FAILED")
	print("This gate verifies development/CI repeatability only. It does not implement player-facing autoplay, phone acceptance or sustained performance.")
	quit(0 if failures.is_empty() else 1)
