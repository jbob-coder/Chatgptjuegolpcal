extends SceneTree

const HUNTER_ID := "hunter_player_0001"
const MONSTER_ID := "monster_r01_m01_0001"

var failures: Array[String] = []
var checks := 0

func _init() -> void:
	call_deferred("_run")

func _check(label: String, condition: bool, detail: String = "") -> void:
	checks += 1
	print("[%s] %s%s" % ["PASS" if condition else "FAIL", label, " :: " + detail if not detail.is_empty() else ""])
	if not condition:
		failures.append(label)

func _settle_hunter(hunter: CharacterBody3D, position: Vector3) -> void:
	hunter.global_position = position
	hunter.velocity = Vector3.ZERO
	for _frame in range(8):
		await physics_frame
		await process_frame

func _count_trace_event(trace: Array, event_name: String, round_id: int, combatant_id: String) -> int:
	var count := 0
	for entry_variant in trace:
		var entry := entry_variant as Dictionary
		if String(entry.get("event", "")) == event_name and int(entry.get("round_id", -1)) == round_id and String(entry.get("combatant_id", "")) == combatant_id:
			count += 1
	return count

func _has_trace_reason(trace: Array, event_name: String, reason: String) -> bool:
	for entry_variant in trace:
		var entry := entry_variant as Dictionary
		if String(entry.get("event", "")) == event_name and String(entry.get("reason", "")) == reason:
			return true
	return false

func _run() -> void:
	print("Hunt-01 combat scheduler/action-economy turn shell")
	var packed := load("res://scenes/regions/region_01_hunt01_graybox.tscn") as PackedScene
	if packed == null:
		_check("production Region-01 scene loads", false)
		_finish()
		return

	var world := packed.instantiate() as Node3D
	root.add_child(world)
	for _frame in range(4):
		await process_frame
		await physics_frame

	var hunter := world.get_node("Hunter") as CharacterBody3D
	var monster := world.get_node("WorldGeometry/monster_r01_m01_0001") as Node3D
	var encounter := world.get_node("EncounterRuntime")
	var tracking := world.get_node("TrackingRuntime")
	_check("encounter runtime available", encounter != null)
	_check("tracking runtime available", tracking != null)

	# This focused combat-shell test bypasses physical clue traversal, which is
	# already covered by the production integration suite. It must still drive the
	# authoritative TrackingRuntime evidence path rather than only changing the
	# world's presentation/evidence counter.
	var evidence_ids := [
		"R01_H01_EV01_OUTER_PRINTS",
		"R01_H01_EV02_BANK_REEDS",
		"R01_H01_EV03_FRESH_WALLOW",
		"R01_H01_EV05_OLD_ROOT_SCRAPE",
		"R01_H01_EV04_WATER_EXIT",
		"R01_H01_EV06_FEEDING_REMAINS",
		"R01_H01_EV07_FLATTENED_GRASS_AUDIO",
	]
	var all_recorded := true
	for evidence_id in evidence_ids:
		if not bool(tracking.call("record_evidence_for_test", evidence_id)):
			all_recorded = false
		await process_frame
	_check("seven-clue tracking prerequisite resolves", all_recorded and int(tracking.call("get_collected_count")) == 7)
	var inference: Dictionary = tracking.call("get_current_inference")
	_check("tracking prerequisite is observation-ready", String(inference.get("phase", "")) == "OBSERVATION_READY", str(inference))

	await _settle_hunter(hunter, Vector3(-72.0, 0.875, -236.0))
	_check("physical engagement is available", String(encounter.call("get_state")) == "ENGAGEMENT_AVAILABLE", String(encounter.call("get_state")))

	var hunter_before := hunter.global_transform
	var monster_before := monster.global_transform
	_check("explicit ENGAGE starts encounter and turn shell", bool(encounter.call("engage_for_test")))
	_check("encounter reports combat turn shell started", bool(encounter.call("has_combat_turn_shell_started")))
	var shell := world.get_node_or_null("CombatTurnShellRuntime")
	_check("combat turn shell node exists", shell != null)
	if shell == null:
		_finish()
		return

	_check("combat turn shell schema v1", String(shell.call("get_schema")) == "uhr.hunt01.combat_turn_shell.v1")
	_check("same-location Hunter transform survives combat shell entry", hunter.global_transform.is_equal_approx(hunter_before), str(hunter.global_position))
	_check("same-location Monster transform survives combat shell entry", monster.global_transform.is_equal_approx(monster_before), str(monster.global_position))
	_check("free exploration physics is locked in combat", not world.is_physics_processing())
	_check("exploration joystick is hidden in combat", not (world.get_node("HUD/Touch/MoveJoystick") as Control).visible)
	_check("debug reset-to-start is disabled in combat", (world.get_node("HUD/Touch/ResetToStart") as Button).disabled)
	_check("first-person view remains active", (world.get_node("Hunter/FirstPersonCamera") as Camera3D).current)
	_check("combat HUD exists", world.get_node_or_null("HUD/CombatTurnPanel") != null)

	var hunter_snapshot: Dictionary = shell.call("get_initiative_snapshot", HUNTER_ID)
	var monster_snapshot: Dictionary = shell.call("get_initiative_snapshot", MONSTER_ID)
	_check("Hunter initiative fixture is explicit/provisional", hunter_snapshot.get("fixture_status") == "PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE", str(hunter_snapshot))
	_check("Monster initiative fixture is explicit/provisional", monster_snapshot.get("fixture_status") == "PROVISIONAL_CONTRACT_EXAMPLE_FIXTURE", str(monster_snapshot))
	_check("Hunter initiative formula resolves to 140", int(hunter_snapshot.get("initiative_rating", -1)) == 140, str(hunter_snapshot))
	_check("Monster initiative formula resolves to 140", int(monster_snapshot.get("initiative_rating", -1)) == 140, str(monster_snapshot))
	_check("equal Initiative is resolved by higher Hunter Agility", int(hunter_snapshot.get("effective_agility", 0)) > int(monster_snapshot.get("effective_agility", 0)))

	var state: Dictionary = shell.call("get_current_state")
	var roster: Array = state.get("round_roster", [])
	_check("Round 1 begins", int(state.get("round_id", 0)) == 1, str(state))
	_check("deterministic roster contains exactly two actors", roster.size() == 2, str(roster))
	_check("Hunter wins deterministic tie-break and owns first activation", roster.size() == 2 and roster[0] == HUNTER_ID and roster[1] == MONSTER_ID and state.get("current_actor_id") == HUNTER_ID, str(state))

	var hunter_resources: Dictionary = shell.call("get_resource_state", HUNTER_ID)
	_check("Hunter activation refreshes 4 AP", int(hunter_resources.get("ap", -1)) == 4 and int(hunter_resources.get("max_ap", -1)) == 4, str(hunter_resources))
	_check("Hunter activation refreshes 1 RP", int(hunter_resources.get("rp", -1)) == 1 and int(hunter_resources.get("max_rp", -1)) == 1, str(hunter_resources))
	_check("Hunter starts at normalized 100 Stamina", int(hunter_resources.get("stamina", -1)) == 100 and int(hunter_resources.get("max_stamina", -1)) == 100, str(hunter_resources))
	_check("duplicate normal activation is rejected", not bool(shell.call("attempt_duplicate_activation_for_test")))

	_check("bounded resource commit succeeds", bool(shell.call("try_commit_cost", HUNTER_ID, "test_measured_commit", 1, 12)))
	hunter_resources = shell.call("get_resource_state", HUNTER_ID)
	_check("resource commit spends AP exactly once", int(hunter_resources.get("ap", -1)) == 3, str(hunter_resources))
	_check("resource commit spends Stamina exactly once", int(hunter_resources.get("stamina", -1)) == 88, str(hunter_resources))
	var before_reject := hunter_resources.duplicate(true)
	_check("unaffordable AP commitment is rejected", not bool(shell.call("try_commit_cost", HUNTER_ID, "test_unaffordable", 4, 0)))
	_check("rejected commitment spends nothing", shell.call("get_resource_state", HUNTER_ID) == before_reject)

	_check("player can explicitly end own activation", bool(shell.call("end_player_turn")))
	state = shell.call("get_current_state")
	hunter_resources = shell.call("get_resource_state", HUNTER_ID)
	_check("Monster placeholder resolves and Round 2 returns to Hunter", int(state.get("round_id", 0)) == 2 and state.get("current_actor_id") == HUNTER_ID, str(state))
	_check("unused AP does not bank; Round 2 refresh is exactly 4", int(hunter_resources.get("ap", -1)) == 4, str(hunter_resources))
	_check("Round 2 RP refresh is exactly 1", int(hunter_resources.get("rp", -1)) == 1, str(hunter_resources))
	_check("passive Stamina recovery occurs once at next Hunter activation", int(hunter_resources.get("stamina", -1)) == 98, str(hunter_resources))

	var trace: Array = shell.call("get_trace")
	_check("Hunter has exactly one Round-1 normal activation", _count_trace_event(trace, "ACTIVATION_START", 1, HUNTER_ID) == 1)
	_check("Monster has exactly one Round-1 normal activation", _count_trace_event(trace, "ACTIVATION_START", 1, MONSTER_ID) == 1)
	_check("Monster placeholder is explicit rather than a fake attack", _has_trace_reason(trace, "ACTIVATION_END", "WAIT_NO_ATTACK_RUNTIME"))
	_check("duplicate-activation invariant violation is traceable", _count_trace_event(trace, "INVARIANT_REJECTED_DUPLICATE_ACTIVATION", 1, HUNTER_ID) == 1)

	_check("second end-turn advances another complete deterministic round", bool(shell.call("end_player_turn")))
	state = shell.call("get_current_state")
	hunter_resources = shell.call("get_resource_state", HUNTER_ID)
	_check("Round 3 returns to Hunter", int(state.get("round_id", 0)) == 3 and state.get("current_actor_id") == HUNTER_ID, str(state))
	_check("Stamina recovery clamps at Max Stamina", int(hunter_resources.get("stamina", -1)) == 100, str(hunter_resources))
	_check("no attack/damage runtime is smuggled into turn shell", world.get_node_or_null("AttackRuntime") == null and world.get_node_or_null("CombatResolutionRuntime") == null)
	_check("actors remain in same physical encounter after scheduler rounds", hunter.global_transform.is_equal_approx(hunter_before) and monster.global_transform.is_equal_approx(monster_before))

	_finish()

func _finish() -> void:
	print()
	print("Checks: %d | Passed: %d | Failed: %d" % [checks, checks - failures.size(), failures.size()])
	if failures.is_empty():
		print("Gate: HUNT01_COMBAT_TURN_SHELL_RUNTIME_VERIFIED")
	else:
		print("Gate: HUNT01_COMBAT_TURN_SHELL_RUNTIME_FAILED")
	print("Phone/user acceptance is intentionally deferred and does not block independent layer development.")
	quit(0 if failures.is_empty() else 1)
