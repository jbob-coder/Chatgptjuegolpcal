extends SceneTree

const HUNTER_ID := "hunter_player_0001"
const MONSTER_ID := "monster_r01_m01_0001"
const ATTACK_ID := "M01_TAIL_SWEEP"
const REACTION_BLOCK := "POLEBLADE_BLOCK"
const STATUS_OFF_BALANCE := "status_off_balance"

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

func _record_tracking(tracking: Node) -> bool:
	var evidence_ids := [
		"R01_H01_EV01_OUTER_PRINTS",
		"R01_H01_EV02_BANK_REEDS",
		"R01_H01_EV03_FRESH_WALLOW",
		"R01_H01_EV05_OLD_ROOT_SCRAPE",
		"R01_H01_EV04_WATER_EXIT",
		"R01_H01_EV06_FEEDING_REMAINS",
		"R01_H01_EV07_FLATTENED_GRASS_AUDIO",
	]
	for evidence_id in evidence_ids:
		if not bool(tracking.call("record_evidence_for_test", evidence_id)):
			return false
		await process_frame
	return int(tracking.call("get_collected_count")) == 7

func _has_event(trace: Array, event_name: String) -> bool:
	for entry_variant in trace:
		var entry := entry_variant as Dictionary
		if String(entry.get("event", "")) == event_name:
			return true
	return false

func _run() -> void:
	print("Hunt-01 Mudcrest Tail Sweep hostile attack runtime")
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
	var tracking := world.get_node("TrackingRuntime")
	var encounter := world.get_node("EncounterRuntime")
	_check("tracking prerequisite resolves", await _record_tracking(tracking))
	_check("tracking reaches observation-ready", String((tracking.call("get_current_inference") as Dictionary).get("phase", "")) == "OBSERVATION_READY")
	await _settle_hunter(hunter, Vector3(-72.0, 0.875, -236.0))
	_check("physical engagement is available", String(encounter.call("get_state")) == "ENGAGEMENT_AVAILABLE", String(encounter.call("get_state")))
	_check("explicit ENGAGE starts combat stack", bool(encounter.call("engage_for_test")))

	var shell := encounter.call("get_combat_turn_shell") as Node
	var movement := encounter.call("get_tactical_movement_runtime") as Node
	var reaction := encounter.call("get_reaction_window_runtime") as Node
	var anatomy := encounter.call("get_mudcrest_anatomy_runtime") as Node
	var attack := encounter.call("get_mudcrest_attack_runtime") as Node
	_check("combat dependencies exist", shell != null and movement != null and reaction != null and anatomy != null and attack != null)
	if shell == null or movement == null or reaction == null or anatomy == null or attack == null:
		_finish()
		return
	await process_frame

	_check("attack owner still has one registered Monster driver", bool(attack.call("is_driver_registered")))
	_check("Tail Sweep identity is stable", String(attack.call("get_tail_sweep_attack_id")) == ATTACK_ID)
	_check("Tail Sweep is owned by same attack runtime", (attack.call("get_supported_attack_ids") as Array).has(ATTACK_ID))
	_check("provisional tail reach is 8 m from authored pivot clearance", is_equal_approx(float(attack.call("get_tail_sweep_working_limit_m")), 8.0))
	_check("Tail Sweep rear/flank threshold is explicit", is_equal_approx(float(attack.call("get_tail_sweep_max_forward_dot")), 0.25))
	var tail_state: Dictionary = anatomy.call("get_target_state", "TAIL")
	_check("baseline Tail anatomy exists without sever threshold invention", not tail_state.is_empty() and String(tail_state.get("integrity_state", "")) == "BASELINE_INTEGRITY_FIXTURE", str(tail_state))

	_check("Round-1 Hunter turn ends", bool(shell.call("end_player_turn")))
	var state: Dictionary = shell.call("get_current_state")
	_check("out-of-range Monster activation advances to Round 2 Hunter", int(state.get("round_id", 0)) == 2 and String(state.get("current_actor_id", "")) == HUNTER_ID, str(state))
	_check("no attack sequence committed out of range", int(attack.call("get_attack_sequence")) == 0)

	_check("N01 -> N02", bool(movement.call("move_for_test", "R01_EF02_N02")))
	_check("N02 -> N03", bool(movement.call("move_for_test", "R01_EF02_N03")))
	_check("N03 -> N06", bool(movement.call("move_for_test", "R01_EF02_N06")))
	_check("N06 -> N08", bool(movement.call("move_for_test", "R01_EF02_N08")))
	_check("Hunter reaches authored N08", String(movement.call("get_current_node_id")) == "R01_EF02_N08")
	await physics_frame
	await process_frame
	_check("Round-2 Hunter turn ends after authored movement", bool(shell.call("end_player_turn")))
	state = shell.call("get_current_state")
	_check("N08 does not falsely trigger Tail Sweep", int(state.get("round_id", 0)) == 3 and String(state.get("current_actor_id", "")) == HUNTER_ID and int(attack.call("get_attack_sequence")) == 0, str(state))

	_check("N08 -> N10", bool(movement.call("move_for_test", "R01_EF02_N10")))
	_check("Hunter reaches authored N10", String(movement.call("get_current_node_id")) == "R01_EF02_N10")
	await physics_frame
	await process_frame
	_check("ending Round-3 Hunter turn delegates Tail Sweep", bool(shell.call("end_player_turn")))
	state = shell.call("get_current_state")
	_check("Monster remains current during Tail Sweep reaction", int(state.get("round_id", 0)) == 3 and String(state.get("current_actor_id", "")) == MONSTER_ID, str(state))
	var active: Dictionary = attack.call("get_active_attack")
	_check("Tail Sweep commits and waits for reaction", String(active.get("state", "")) == "WAITING_REACTION_DECISION" and String(active.get("attack_id", "")) == ATTACK_ID, str(active))
	var monster_resources: Dictionary = shell.call("get_resource_state", MONSTER_ID)
	_check("Tail Sweep spends exactly 3 AP / 18 Stamina", int(monster_resources.get("ap", -1)) == 1 and int(monster_resources.get("stamina", -1)) == 82, str(monster_resources))
	var legality: Dictionary = active.get("legality_snapshot", {}) as Dictionary
	_check("Tail Sweep uses rear/flank bearing gate", float(legality.get("bearing_dot", 99.0)) <= 0.25 and String(legality.get("bearing_class", "")).begins_with("REAR_OR_FLANK"), str(legality))
	_check("Tail Sweep passes authored pivot clearance", bool((legality.get("pivot_clearance", {}) as Dictionary).get("legal", false)), str(legality))
	_check("Tail Sweep passes physical arc/line blocker gate", String((legality.get("line_of_effect", {}) as Dictionary).get("reason", "")) == "CLEAR_TO_HUNTER_BODY", str(legality))
	_check("Tail Sweep is pure Impact", (active.get("damage_channels", []) as Array) == ["IMPACT"], str(active))
	_check("Tail Sweep telegraph is present", bool(attack.call("is_telegraph_visible")) and get_nodes_in_group("hunt01_monster_attack_telegraph").size() == 1)

	var window: Dictionary = reaction.call("get_active_window")
	var window_id := String(window.get("window_id", ""))
	_check("Tail Sweep opens the shared reaction window", String(window.get("source_action_id", "")) == ATTACK_ID and not window_id.is_empty(), str(window))
	var hunter_before_block: Dictionary = shell.call("get_resource_state", HUNTER_ID)
	_check("Poleblade Block commits against Tail Sweep", bool((reaction.call("commit_reaction", window_id, REACTION_BLOCK) as Dictionary).get("success", false)))
	var hunter_after_commit: Dictionary = shell.call("get_resource_state", HUNTER_ID)
	_check("Block commitment spends 1 RP + 6 Stamina", int(hunter_after_commit.get("rp", -1)) == int(hunter_before_block.get("rp", -1)) - 1 and int(hunter_after_commit.get("stamina", -1)) == int(hunter_before_block.get("stamina", -1)) - 6, str(hunter_after_commit))
	await process_frame
	await process_frame

	var first_resolution: Dictionary = attack.call("get_last_resolution")
	_check("Tail Sweep resolves stable hostile transaction", bool(first_resolution.get("success", false)) and String(first_resolution.get("attack_id", "")) == ATTACK_ID, str(first_resolution))
	_check("seeded Tail Sweep Block sample is deterministic CLEAN", int(first_resolution.get("variance_sample", 99)) == 6 and String(first_resolution.get("hit_quality", "")) == "CLEAN", str(first_resolution))
	var first_handoff: Dictionary = first_resolution.get("damage_handoff", {}) as Dictionary
	_check("Tail Sweep records exact 14-Stamina Block impact drain", int(first_handoff.get("standard_block_impact_drain_stamina", -1)) == 14, str(first_handoff))
	var defense: Dictionary = first_resolution.get("defense_consequence", {}) as Dictionary
	_check("existing defense owner applies 14-Stamina impact transaction", int(defense.get("guard_impact_requested_stamina", -1)) == 14 and int(defense.get("guard_impact_applied_stamina", -1)) == 14, str(defense))
	var hunter_after_impact: Dictionary = shell.call("get_resource_state", HUNTER_ID)
	_check("Hunter Stamina reflects 6 commitment + 14 impact drain", int(hunter_after_impact.get("stamina", -1)) == int(hunter_before_block.get("stamina", -1)) - 20, str(hunter_after_impact))
	var wound: Dictionary = first_resolution.get("wound_contact_classification", {}) as Dictionary
	_check("Tail Sweep routes through species wound/contact classifier", String(wound.get("status", "")) == "MUDCREST_TAIL_SWEEP_WOUND_CONTACT_CLASSIFIED", str(wound))
	var requests: Array = wound.get("status_application_requests", []) as Array
	_check("Tail Sweep emits Off-Balance without Bleeding or Staggered", requests.size() == 1 and String((requests[0] as Dictionary).get("status_id", "")) == STATUS_OFF_BALANCE and String(wound.get("bleeding_request_status", "")) == "NOT_APPLICABLE_PURE_IMPACT_TAIL_SWEEP" and String(wound.get("staggered_request_status", "")) == "DEFERRED_NOT_EMITTED_BY_THIS_SLICE", str(wound))
	var application_results: Array = wound.get("status_application_results", []) as Array
	_check("generic status runtime applies Off-Balance", application_results.size() == 1 and bool((application_results[0] as Dictionary).get("success", false)) and String((application_results[0] as Dictionary).get("status", "")) == "STATUS_APPLICATION_COMMITTED", str(application_results))
	var classifier := attack.call("get_wound_contact_runtime") as Node
	var status_runtime := classifier.call("get_status_application_runtime") as Node
	_check("Hunter has active Off-Balance instance", status_runtime != null and bool(status_runtime.call("has_status", HUNTER_ID, STATUS_OFF_BALANCE)))
	_check("reaction closes and Tail telegraph disappears", String(reaction.call("get_state")) == "IDLE" and not bool(attack.call("is_telegraph_visible")))
	state = shell.call("get_current_state")
	_check("scheduler advances to Round-4 Hunter", int(state.get("round_id", 0)) == 4 and String(state.get("current_actor_id", "")) == HUNTER_ID, str(state))

	_check("ending Round-4 Hunter turn opens second Tail Sweep", bool(shell.call("end_player_turn")))
	window = reaction.call("get_active_window")
	var second_window_id := String(window.get("window_id", ""))
	_check("second Tail Sweep reaction window is distinct", not second_window_id.is_empty() and second_window_id != window_id, str(window))
	_check("explicit decline is accepted", bool((reaction.call("decline_reaction", second_window_id) as Dictionary).get("success", false)))
	await process_frame
	await process_frame
	var second_resolution: Dictionary = attack.call("get_last_resolution")
	_check("declined Tail Sweep is deterministic CLEAN", int(second_resolution.get("action_sequence", 0)) == 2 and int(second_resolution.get("variance_sample", 99)) == 5 and String(second_resolution.get("hit_quality", "")) == "CLEAN" and String(second_resolution.get("reaction_id", "")) == "DECLINE_REACTION", str(second_resolution))
	_check("decline routes to body protection rather than guard", String(second_resolution.get("protection_route", "")) == "HUNTER_BODY_PROTECTION_PENDING_RUNTIME", str(second_resolution))
	_check("Tail Sweep never mutates Mudcrest anatomy as incoming Hunter damage", int(anatomy.call("get_applied_resolution_count")) == 0)
	_check("exactly two legal Tail Sweeps were committed", int(attack.call("get_attack_sequence")) == 2)

	var trace: Array = attack.call("get_trace")
	_check("trace records illegal Tail Sweep before flank entry", _has_event(trace, "MUDCREST_TAIL_SWEEP_SKIPPED"))
	_check("trace records Tail Sweep telegraph", _has_event(trace, "MUDCREST_TAIL_SWEEP_TELEGRAPH_EMITTED"))
	_check("trace records Tail Sweep resolution", _has_event(trace, "MUDCREST_TAIL_SWEEP_RESOLUTION_HANDOFF_COMMITTED"))
	_finish()

func _finish() -> void:
	print()
	print("Checks: %d | Passed: %d | Failed: %d" % [checks, checks - failures.size(), failures.size()])
	if failures.is_empty():
		print("Gate: HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_VERIFIED")
	else:
		print("Gate: HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_FAILED")
	print("This gate proves intact-tail Tail Sweep only. Tail sever thresholds, Staggered, other Mudcrest attacks, final balance, phone acceptance and performance remain outside this slice.")
	quit(0 if failures.is_empty() else 1)
