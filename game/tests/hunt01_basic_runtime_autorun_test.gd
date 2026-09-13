extends SceneTree

const HUNTER_ID := "hunter_player_0001"
const MONSTER_ID := "monster_r01_m01_0001"
const ENCOUNTER_ID := "enc_r01_ef02_m01_0001"
const EXPECTED_SCENARIO := "R01_HUNT01_M01_TRACK_TO_MEADOW"
const EXPECTED_HUNT := "hunt_r01_m01_proof_01"
const TAIL_SWEEP_ATTACK_ID := "M01_TAIL_SWEEP"
const HEAD_SWEEP_ATTACK_ID := "M01_HEAD_SWEEP_GORE"
const MEASURED_CUT_TECHNIQUE_ID := "POLEBLADE_MEASURED_CUT"
const DORSAL_TARGET_GROUP := "DORSAL_PLATES"
const REACTION_BLOCK := "POLEBLADE_BLOCK"
const ENGAGEMENT_POSITION := Vector3(-72.0, 0.875, -236.0)
const TAIL_SWEEP_NODE_POSITION := Vector3(-22.0, 0.875, -270.0)
const HUNTER_ATTACK_NODE_POSITION := Vector3(-22.0, 0.875, -238.0)
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
	_cycle_check(cycle_index, "attack-telegraph group is clean after teardown", get_nodes_in_group("hunt01_monster_attack_telegraph").is_empty())

func _drive_tail_sweep_block_exchange(
	cycle_index: int,
	hunter: CharacterBody3D,
	shell: Node,
	movement: Node,
	reaction: Node,
	mudcrest_attack: Node
) -> Dictionary:
	var wound_contact := mudcrest_attack.call("get_wound_contact_runtime") as Node
	var defense := mudcrest_attack.call("get_hunter_defense_runtime") as Node
	var status_application: Node = null
	if wound_contact != null:
		status_application = wound_contact.call("get_status_application_runtime") as Node
	_cycle_check(cycle_index, "combat exchange consequence/status owners exist", wound_contact != null and defense != null and status_application != null)
	if wound_contact == null or defense == null or status_application == null:
		return {}

	_cycle_check(cycle_index, "Round-2 N01 -> N02 move succeeds", bool(movement.call("move_for_test", "R01_EF02_N02")))
	_cycle_check(cycle_index, "Round-2 N02 -> N05 move succeeds", bool(movement.call("move_for_test", "R01_EF02_N05")))
	_cycle_check(cycle_index, "Round-2 N05 -> N08 move succeeds", bool(movement.call("move_for_test", "R01_EF02_N08")))
	_cycle_check(cycle_index, "Round-2 N08 -> N10 move succeeds", bool(movement.call("move_for_test", "R01_EF02_N10")))
	_cycle_check(cycle_index, "Hunter reaches authored N10 Tail Sweep flank", String(movement.call("get_current_node_id")) == "R01_EF02_N10" and hunter.global_position.distance_to(TAIL_SWEEP_NODE_POSITION) < 0.001, str(hunter.global_position))
	await physics_frame
	await process_frame

	_cycle_check(cycle_index, "Round-2 Hunter end-turn delegates close-flank Monster activation", bool(shell.call("end_player_turn")))
	var state: Dictionary = shell.call("get_current_state")
	_cycle_check(cycle_index, "Monster stays current while Tail Sweep reaction is open", int(state.get("round_id", 0)) == 2 and String(state.get("current_actor_id", "")) == MONSTER_ID, str(state))

	var active_attack: Dictionary = mudcrest_attack.call("get_active_attack")
	_cycle_check(cycle_index, "real Tail Sweep is selected for the exchange", String(active_attack.get("attack_id", "")) == TAIL_SWEEP_ATTACK_ID and String(active_attack.get("state", "")) == "WAITING_REACTION_DECISION", str(active_attack))
	var monster_resources: Dictionary = shell.call("get_resource_state", MONSTER_ID)
	_cycle_check(cycle_index, "Tail Sweep spends existing 3 AP / 18 Stamina cost", int(monster_resources.get("ap", -1)) == 1 and int(monster_resources.get("stamina", -1)) == 82, str(monster_resources))

	var window: Dictionary = reaction.call("get_active_window")
	var window_id := String(window.get("window_id", ""))
	_cycle_check(cycle_index, "Tail Sweep opens the existing reaction window", String(window.get("source_action_id", "")) == TAIL_SWEEP_ATTACK_ID and not window_id.is_empty(), str(window))
	var hunter_before_block: Dictionary = shell.call("get_resource_state", HUNTER_ID)
	var committed: Dictionary = reaction.call("commit_reaction", window_id, REACTION_BLOCK)
	_cycle_check(cycle_index, "Field Poleblade Block commits through the real reaction owner", bool(committed.get("success", false)), str(committed))
	var hunter_after_commit: Dictionary = shell.call("get_resource_state", HUNTER_ID)
	_cycle_check(cycle_index, "Block commitment spends existing 1 RP + 6 Stamina", int(hunter_after_commit.get("rp", -1)) == int(hunter_before_block.get("rp", -1)) - 1 and int(hunter_after_commit.get("stamina", -1)) == int(hunter_before_block.get("stamina", -1)) - 6, str(hunter_after_commit))
	await process_frame
	await process_frame

	var resolution: Dictionary = mudcrest_attack.call("get_last_resolution")
	var defense_consequence: Dictionary = resolution.get("defense_consequence", {}) as Dictionary
	var health_consequence: Dictionary = defense_consequence.get("health_injury_consequence", {}) as Dictionary
	var classification: Dictionary = resolution.get("wound_contact_classification", {}) as Dictionary
	_cycle_check(cycle_index, "Tail Sweep resolves one deterministic hostile transaction", bool(resolution.get("success", false)) and String(resolution.get("attack_id", "")) == TAIL_SWEEP_ATTACK_ID and int(mudcrest_attack.call("get_attack_sequence")) == 1, str(resolution))
	_cycle_check(cycle_index, "blocked Tail Sweep keeps deterministic SOLID quality", String(resolution.get("hit_quality", "")) == "SOLID" and int(resolution.get("variance_sample", 99)) == -1, str(resolution))
	_cycle_check(cycle_index, "existing defense consequence remains BLOCK_STRONG", String(defense_consequence.get("block_outcome", "")) == "BLOCK_STRONG" and int(defense_consequence.get("guard_impact_applied_stamina", -1)) == 14, str(defense_consequence))
	_cycle_check(cycle_index, "existing health consequence remains 100 -> 98", int(health_consequence.get("health_before", -1)) == 100 and int(health_consequence.get("health_after", -1)) == 98 and int(health_consequence.get("applied_injury_load", -1)) == 2, str(health_consequence))
	_cycle_check(cycle_index, "strong Block emits no status request", int(classification.get("status_request_count", -1)) == 0 and String(classification.get("classification_reason", "")) == "STRONG_BLOCK_PREVENTS_FIRST_SLICE_OFF_BALANCE_REQUEST", str(classification))
	_cycle_check(cycle_index, "generic status owner confirms no Off-Balance or Staggered after strong Block", not bool(status_application.call("has_status", HUNTER_ID, "status_off_balance")) and not bool(status_application.call("has_status", HUNTER_ID, "status_staggered")))
	_cycle_check(cycle_index, "reaction closes after the combat exchange", String(reaction.call("get_state")) == "IDLE" and not bool(mudcrest_attack.call("is_telegraph_visible")))
	_cycle_check(cycle_index, "combat exchange resolution readback is idempotent", mudcrest_attack.call("get_resolution", String(resolution.get("resolution_id", ""))) == resolution)

	state = shell.call("get_current_state")
	_cycle_check(cycle_index, "combat exchange returns scheduler to Round-3 Hunter", int(state.get("round_id", 0)) == 3 and String(state.get("current_actor_id", "")) == HUNTER_ID, str(state))

	return {
		"attack_id": String(resolution.get("attack_id", "")),
		"hit_quality": String(resolution.get("hit_quality", "")),
		"variance_sample": int(resolution.get("variance_sample", 99)),
		"block_outcome": String(defense_consequence.get("block_outcome", "")),
		"hunter_health_after": int(health_consequence.get("health_after", -1)),
		"monster_ap_after_attack": int(monster_resources.get("ap", -1)),
		"monster_stamina_after_attack": int(monster_resources.get("stamina", -1)),
		"off_balance_present": bool(status_application.call("has_status", HUNTER_ID, "status_off_balance")),
		"staggered_present": bool(status_application.call("has_status", HUNTER_ID, "status_staggered")),
		"post_exchange_round": int(state.get("round_id", 0)),
		"post_exchange_actor": String(state.get("current_actor_id", "")),
	}

func _drive_hunter_attack_exchange(
	cycle_index: int,
	hunter: CharacterBody3D,
	shell: Node,
	movement: Node,
	reaction: Node,
	anatomy: Node,
	mudcrest_attack: Node,
	hunter_attack: Node
) -> Dictionary:
	var state: Dictionary = shell.call("get_current_state")
	_cycle_check(cycle_index, "Hunter attack extension starts on Round-3 Hunter", int(state.get("round_id", 0)) == 3 and String(state.get("current_actor_id", "")) == HUNTER_ID, str(state))
	_cycle_check(cycle_index, "Hunter attack extension starts from preserved N10", String(movement.call("get_current_node_id")) == "R01_EF02_N10")
	var n10_legality: Dictionary = hunter_attack.call("get_measured_cut_legality", DORSAL_TARGET_GROUP)
	_cycle_check(cycle_index, "Measured Cut remains out of working melee at N10", not bool(n10_legality.get("legal", false)) and String(n10_legality.get("reason", "")) == "OUT_OF_WORKING_MELEE", str(n10_legality))

	_cycle_check(cycle_index, "Round-3 N10 -> N08 move succeeds", bool(movement.call("move_for_test", "R01_EF02_N08")))
	_cycle_check(cycle_index, "Round-3 N08 -> N05 move succeeds", bool(movement.call("move_for_test", "R01_EF02_N05")))
	_cycle_check(cycle_index, "Round-3 N05 -> N07 move succeeds", bool(movement.call("move_for_test", "R01_EF02_N07")))
	_cycle_check(cycle_index, "Round-3 N07 -> N09 move succeeds", bool(movement.call("move_for_test", "R01_EF02_N09")))
	_cycle_check(cycle_index, "Hunter reaches authored N09 Measured Cut node", String(movement.call("get_current_node_id")) == "R01_EF02_N09" and hunter.global_position.distance_to(HUNTER_ATTACK_NODE_POSITION) < 0.001, str(hunter.global_position))
	var n09_no_ap: Dictionary = hunter_attack.call("get_measured_cut_legality", DORSAL_TARGET_GROUP)
	_cycle_check(cycle_index, "N09 passes melee geometry but four-step approach consumes attack AP", not bool(n09_no_ap.get("legal", true)) and String(n09_no_ap.get("reason", "")) == "INSUFFICIENT_AP", str(n09_no_ap))
	var after_reposition_resources: Dictionary = shell.call("get_resource_state", HUNTER_ID)
	_cycle_check(cycle_index, "Round-3 authored reposition consumes all 4 AP", int(after_reposition_resources.get("ap", -1)) == 0, str(after_reposition_resources))
	await physics_frame
	await process_frame

	_cycle_check(cycle_index, "Round-3 Hunter end-turn delegates the real close-front Monster activation", bool(shell.call("end_player_turn")))
	state = shell.call("get_current_state")
	_cycle_check(cycle_index, "Monster stays current while Head Sweep bridge reaction is open", int(state.get("round_id", 0)) == 3 and String(state.get("current_actor_id", "")) == MONSTER_ID, str(state))
	var active_attack: Dictionary = mudcrest_attack.call("get_active_attack")
	_cycle_check(cycle_index, "authored N09 relation selects existing Head Sweep bridge", String(active_attack.get("attack_id", "")) == HEAD_SWEEP_ATTACK_ID and String(active_attack.get("state", "")) == "WAITING_REACTION_DECISION" and int(active_attack.get("action_sequence", -1)) == 2, str(active_attack))
	var window: Dictionary = reaction.call("get_active_window")
	var window_id := String(window.get("window_id", ""))
	_cycle_check(cycle_index, "Head Sweep bridge opens the existing reaction window", String(window.get("source_action_id", "")) == HEAD_SWEEP_ATTACK_ID and not window_id.is_empty(), str(window))
	var bridge_block: Dictionary = reaction.call("commit_reaction", window_id, REACTION_BLOCK)
	_cycle_check(cycle_index, "Head Sweep bridge uses the existing Poleblade Block reaction", bool(bridge_block.get("success", false)), str(bridge_block))
	await process_frame
	await process_frame

	var bridge_resolution: Dictionary = mudcrest_attack.call("get_last_resolution")
	var bridge_defense: Dictionary = bridge_resolution.get("defense_consequence", {}) as Dictionary
	_cycle_check(cycle_index, "Head Sweep bridge resolves through existing hostile consequence owners", bool(bridge_resolution.get("success", false)) and String(bridge_resolution.get("attack_id", "")) == HEAD_SWEEP_ATTACK_ID and bool(bridge_resolution.get("block_commitment_applied", false)), str(bridge_resolution))
	state = shell.call("get_current_state")
	_cycle_check(cycle_index, "Head Sweep bridge returns scheduler to Round-4 Hunter at N09", int(state.get("round_id", 0)) == 4 and String(state.get("current_actor_id", "")) == HUNTER_ID and String(movement.call("get_current_node_id")) == "R01_EF02_N09", str(state))

	var attack_resources_before: Dictionary = shell.call("get_resource_state", HUNTER_ID)
	_cycle_check(cycle_index, "Round-4 Hunter has a fresh 4-AP activation for Measured Cut", int(attack_resources_before.get("ap", -1)) == 4 and int(attack_resources_before.get("stamina", -1)) >= 12, str(attack_resources_before))
	var ready: Dictionary = hunter_attack.call("get_measured_cut_legality", DORSAL_TARGET_GROUP)
	_cycle_check(cycle_index, "Dorsal-plate Measured Cut is legal at authored N09", bool(ready.get("legal", false)) and String(ready.get("current_node_id", "")) == "R01_EF02_N09" and String((ready.get("line_of_effect", {}) as Dictionary).get("reason", "")) == "CLEAR_TO_MONSTER_BODY", str(ready))
	var resolution: Dictionary = hunter_attack.call("commit_measured_cut_for_test", DORSAL_TARGET_GROUP)
	_cycle_check(cycle_index, "real Hunter Measured Cut commits through the existing attack owner", bool(resolution.get("success", false)), str(resolution))
	var attack_resources_after: Dictionary = shell.call("get_resource_state", HUNTER_ID)
	_cycle_check(cycle_index, "Measured Cut spends exactly existing 2 AP / 12 Stamina", int(attack_resources_after.get("ap", -1)) == int(attack_resources_before.get("ap", -1)) - 2 and int(attack_resources_after.get("stamina", -1)) == int(attack_resources_before.get("stamina", -1)) - 12, str(attack_resources_after))
	_cycle_check(cycle_index, "Measured Cut keeps stable technique and Round-4 action identity", String(resolution.get("technique_id", "")) == MEASURED_CUT_TECHNIQUE_ID and int(resolution.get("round_id", -1)) == 4 and int(resolution.get("action_sequence", -1)) == 1, str(resolution))
	_cycle_check(cycle_index, "Dorsal target acquires selected-part contact", String(resolution.get("contact_class", "")) == "SELECTED_PART_CONTACT" and String(resolution.get("resolved_target_group", "")) == DORSAL_TARGET_GROUP, str(resolution))
	_cycle_check(cycle_index, "Round-4 deterministic Dorsal hit remains CLEAN", String(resolution.get("hit_quality", "")) == "CLEAN" and String(resolution.get("hit_quality_ceiling", "")) == "CLEAN" and int(resolution.get("variance_sample", 99)) == 0, str(resolution))
	_cycle_check(cycle_index, "Dorsal protection routes through existing mineralized profile", String(resolution.get("protection_profile", "")) == "MINERALIZED_DORSAL_PLATE", str(resolution))
	var handoff: Dictionary = resolution.get("damage_handoff", {}) as Dictionary
	var anatomy_result: Dictionary = resolution.get("anatomy_result", {}) as Dictionary
	_cycle_check(cycle_index, "Measured Cut handoff is consumed by existing anatomy owner", String(handoff.get("status", "")) == "ANATOMY_INTEGRITY_APPLIED" and bool(anatomy_result.get("success", false)), str(anatomy_result))
	_cycle_check(cycle_index, "Dorsal provisional integrity remains existing 100 -> 95", int(anatomy_result.get("integrity_before", -1)) == 100 and int(anatomy_result.get("integrity_loss", -1)) == 5 and int(anatomy_result.get("integrity_after", -1)) == 95, str(anatomy_result))
	_cycle_check(cycle_index, "Mudcrest anatomy readback matches committed Dorsal result", int((anatomy.call("get_target_state", DORSAL_TARGET_GROUP) as Dictionary).get("integrity", -1)) == 95, str(anatomy.call("get_target_state", DORSAL_TARGET_GROUP)))
	_cycle_check(cycle_index, "Hunter attack readback does not reroll the committed transaction", hunter_attack.call("get_last_resolution") == resolution)
	var duplicate: Dictionary = anatomy.call("apply_damage_handoff_for_test", handoff)
	_cycle_check(cycle_index, "replaying Measured Cut anatomy handoff remains idempotent", bool(duplicate.get("duplicate", false)) and not bool(duplicate.get("applied", true)) and int((anatomy.call("get_target_state", DORSAL_TARGET_GROUP) as Dictionary).get("integrity", -1)) == 95, str(duplicate))
	_cycle_check(cycle_index, "Hunter attack sequence increments exactly once", int(hunter_attack.call("get_attack_sequence")) == 1)

	return {
		"bridge_attack_id": String(bridge_resolution.get("attack_id", "")),
		"bridge_block_outcome": String(bridge_defense.get("block_outcome", "")),
		"technique_id": String(resolution.get("technique_id", "")),
		"round_id": int(resolution.get("round_id", -1)),
		"selected_target_group": String(resolution.get("selected_target_group", "")),
		"resolved_target_group": String(resolution.get("resolved_target_group", "")),
		"contact_class": String(resolution.get("contact_class", "")),
		"hit_quality": String(resolution.get("hit_quality", "")),
		"variance_sample": int(resolution.get("variance_sample", 99)),
		"protection_profile": String(resolution.get("protection_profile", "")),
		"integrity_before": int(anatomy_result.get("integrity_before", -1)),
		"integrity_after": int(anatomy_result.get("integrity_after", -1)),
		"post_attack_ap": int(attack_resources_after.get("ap", -1)),
		"post_attack_stamina": int(attack_resources_after.get("stamina", -1)),
		"current_node_id": String(movement.call("get_current_node_id")),
	}

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
	var hunter_attack := shell.get_node_or_null("HunterAttackRuntime") as Node if shell != null else null
	_cycle_check(cycle_index, "basic combat owners including Hunter attack are all attached", shell != null and movement != null and reaction != null and anatomy != null and mudcrest_attack != null and hunter_attack != null)
	if shell == null or movement == null or reaction == null or anatomy == null or mudcrest_attack == null or hunter_attack == null:
		await _teardown_world(world, cycle_index)
		return {}

	var initial_state: Dictionary = shell.call("get_current_state")
	_cycle_check(cycle_index, "fresh combat starts Round 1 on Hunter", int(initial_state.get("round_id", 0)) == 1 and String(initial_state.get("current_actor_id", "")) == HUNTER_ID, str(initial_state))
	_cycle_check(cycle_index, "basic Hunter end-turn commits", bool(shell.call("end_player_turn")))
	var post_idle_state: Dictionary = shell.call("get_current_state")
	_cycle_check(cycle_index, "out-of-range Monster idle completes and Round 2 returns to Hunter", int(post_idle_state.get("round_id", 0)) == 2 and String(post_idle_state.get("current_actor_id", "")) == HUNTER_ID, str(post_idle_state))
	_cycle_check(cycle_index, "idle N01 Monster activation does not fabricate an attack", int(mudcrest_attack.call("get_attack_sequence")) == 0)

	var exchange_signature: Dictionary = await _drive_tail_sweep_block_exchange(cycle_index, hunter, shell, movement, reaction, mudcrest_attack)
	_cycle_check(cycle_index, "one real deterministic combat exchange completes", not exchange_signature.is_empty(), str(exchange_signature))
	var hunter_attack_signature: Dictionary = await _drive_hunter_attack_exchange(cycle_index, hunter, shell, movement, reaction, anatomy, mudcrest_attack, hunter_attack)
	_cycle_check(cycle_index, "one real deterministic Hunter attack/anatomy exchange completes", not hunter_attack_signature.is_empty(), str(hunter_attack_signature))

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
		"monster_attack_schema": String(mudcrest_attack.call("get_schema")),
		"hunter_attack_schema": String(hunter_attack.call("get_schema")),
		"post_idle_round": int(post_idle_state.get("round_id", 0)),
		"post_idle_actor": String(post_idle_state.get("current_actor_id", "")),
		"combat_exchange": exchange_signature,
		"hunter_attack_exchange": hunter_attack_signature,
	}
	await _teardown_world(world, cycle_index)
	return signature

func _run() -> void:
	print("Hunt-01 basic runtime autorun repeatability + combat exchange + Hunter attack/anatomy regression")
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
		print("Gate: HUNT01_BASIC_RUNTIME_AUTORUN_COMBAT_EXCHANGE_VERIFIED")
		print("Gate: HUNT01_BASIC_RUNTIME_AUTORUN_HUNTER_ATTACK_EXCHANGE_VERIFIED")
	else:
		print("Gate: HUNT01_BASIC_RUNTIME_AUTORUN_FAILED")
		print("Gate: HUNT01_BASIC_RUNTIME_AUTORUN_COMBAT_EXCHANGE_FAILED")
		print("Gate: HUNT01_BASIC_RUNTIME_AUTORUN_HUNTER_ATTACK_EXCHANGE_FAILED")
	print("This gate verifies development/CI repeatability only. It does not implement player-facing autoplay, phone acceptance or sustained performance.")
	quit(0 if failures.is_empty() else 1)