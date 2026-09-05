extends Node

const SCHEMA := "uhr.hunt01.mudcrest_wound_contact.v1"
const REQUEST_SCHEMA := "uhr.status_application_request.v1"
const EXPECTED_ENCOUNTER_ID := "enc_r01_ef02_m01_0001"
const MONSTER_COMBATANT_ID := "monster_r01_m01_0001"
const HUNTER_COMBATANT_ID := "hunter_player_0001"
const HEAD_SWEEP_ATTACK_ID := "M01_HEAD_SWEEP_GORE"
const GORE_SWEEP_PROFILE := "GORE_SWEEP"
const STATUS_BLEEDING := "status_bleeding"
const STATUS_OFF_BALANCE := "status_off_balance"
const TRIGGER_HOOK := "ON_HIT_OR_DAMAGE_CONSEQUENCE"
const FIXTURE_STATUS := "PROVISIONAL_FIRST_SLICE_HEAD_SWEEP_WOUND_CONTACT_CLASSIFICATION_FIXTURE"

var _encounter_record: Dictionary = {}
var _initialized := false
var _resolutions: Dictionary = {}
var _last_resolution: Dictionary = {}
var _trace_sequence := 0
var _trace: Array[Dictionary] = []

func initialize(encounter_record: Dictionary) -> bool:
	if _initialized:
		return false
	if String(encounter_record.get("encounter_id", "")) != EXPECTED_ENCOUNTER_ID:
		return false
	_encounter_record = encounter_record.duplicate(true)
	_initialized = true
	_record_trace("MUDCREST_WOUND_CONTACT_RUNTIME_READY", {
		"fixture_status": FIXTURE_STATUS,
		"request_schema": REQUEST_SCHEMA,
	})
	return true

func resolve_head_sweep_consequence(damage_handoff: Dictionary, defense_consequence: Dictionary) -> Dictionary:
	if not _initialized:
		return {"success": false, "reason": "WOUND_CONTACT_RUNTIME_NOT_INITIALIZED"}
	var resolution_id := String(damage_handoff.get("resolution_id", ""))
	if resolution_id.is_empty():
		return {"success": false, "reason": "MISSING_RESOLUTION_ID"}
	if _resolutions.has(resolution_id):
		return (_resolutions[resolution_id] as Dictionary).duplicate(true)
	var validation := _validate_input(damage_handoff, defense_consequence)
	if not bool(validation.get("valid", false)):
		return {
			"success": false,
			"reason": String(validation.get("reason", "INVALID_WOUND_CONTACT_INPUT")),
			"resolution_id": resolution_id,
		}

	var health: Dictionary = defense_consequence.get("health_injury_consequence", {}) as Dictionary
	var hit_quality := String(damage_handoff.get("hit_quality", ""))
	var block_outcome := String(defense_consequence.get("block_outcome", "NOT_APPLICABLE"))
	var defense_outcome := String(health.get("defense_outcome", ""))
	var applied_injury := int(health.get("applied_injury_load", 0))
	var damage_channels: Array = (damage_handoff.get("damage_channels", []) as Array).duplicate(true)
	var attack_profile := String(damage_handoff.get("attack_profile", ""))
	var contact_class := String(damage_handoff.get("contact_class", ""))

	var contact_mode := "NO_QUALIFYING_STATUS_CONTACT"
	var classification_reason := "NO_STATUS_PREREQUISITE_ESTABLISHED"
	var horn_penetration := false
	var impact_dominant := false
	var requests: Array[Dictionary] = []

	if contact_class == "NO_CONTACT" or hit_quality == "MISS" or applied_injury <= 0:
		classification_reason = "NO_RESOLVED_WOUND_OR_CONTACT"
	elif attack_profile == GORE_SWEEP_PROFILE and damage_channels.has("PIERCING") and defense_outcome == "NO_ACTIVE_GUARD" and (hit_quality == "SOLID" or hit_quality == "CLEAN"):
		# Reversible first-slice content fixture: unguarded solid/clean GORE_SWEEP
		# with resolved injury is treated as horn penetration. CLEAN no-guard is
		# deliberately assigned to penetration rather than also claiming impact
		# dominance so mixed channels cannot silently request two statuses.
		contact_mode = "HORN_PENETRATION_PROVISIONAL"
		classification_reason = "UNGUARDED_GORE_SWEEP_SOLID_OR_CLEAN_WITH_RESOLVED_INJURY"
		horn_penetration = true
		requests.append(_build_bleeding_request(resolution_id, hit_quality, applied_injury))
	elif damage_channels.has("IMPACT") and hit_quality == "CLEAN" and (block_outcome == "BLOCK_PARTIAL" or block_outcome == "BLOCK_BROKEN") and applied_injury > 0:
		# Reversible first-slice content fixture: a CLEAN sweep whose Poleblade
		# guard is only partial/broken is treated as impact-dominant residual force.
		contact_mode = "IMPACT_DOMINANT_GUARD_FAILURE_PROVISIONAL"
		classification_reason = "CLEAN_CONTACT_WITH_PARTIAL_OR_BROKEN_GUARD_AND_RESOLVED_INJURY"
		impact_dominant = true
		requests.append(_build_off_balance_request(resolution_id, block_outcome, applied_injury))
	elif block_outcome == "BLOCK_STRONG":
		contact_mode = "GUARD_ABSORBED_NO_QUALIFYING_STATUS_CONTACT"
		classification_reason = "STRONG_BLOCK_PREVENTS_FIRST_SLICE_PENETRATION_OR_IMPACT_DOMINANCE_CLAIM"
	elif hit_quality == "GRAZE":
		classification_reason = "GRAZE_DOES_NOT_MEET_HEAD_SWEEP_STATUS_REQUEST_THRESHOLD"

	var result := {
		"success": true,
		"status": "MUDCREST_HEAD_SWEEP_WOUND_CONTACT_CLASSIFIED",
		"schema": SCHEMA,
		"resolution_id": resolution_id,
		"classification_id": "%s:WOUND_CONTACT" % resolution_id,
		"encounter_id": EXPECTED_ENCOUNTER_ID,
		"attacker_id": MONSTER_COMBATANT_ID,
		"defender_id": HUNTER_COMBATANT_ID,
		"attack_id": HEAD_SWEEP_ATTACK_ID,
		"attack_profile": attack_profile,
		"damage_channels": damage_channels,
		"contact_class": contact_class,
		"hit_quality": hit_quality,
		"block_outcome": block_outcome,
		"defense_outcome": defense_outcome,
		"applied_injury_load": applied_injury,
		"contact_mode": contact_mode,
		"classification_reason": classification_reason,
		"horn_penetration_established": horn_penetration,
		"impact_dominant_established": impact_dominant,
		"status_application_requests": requests.duplicate(true),
		"status_request_count": requests.size(),
		"fixture_status": FIXTURE_STATUS,
		"final_classification_balance_status": "PROVISIONAL_REPLACEABLE_WITH_AUTHORED_CONTACT_WOUND_DATA",
	}
	_resolutions[resolution_id] = result.duplicate(true)
	_last_resolution = result.duplicate(true)
	_record_trace("MUDCREST_HEAD_SWEEP_WOUND_CONTACT_CLASSIFIED", result)
	return result.duplicate(true)

func _validate_input(damage_handoff: Dictionary, defense_consequence: Dictionary) -> Dictionary:
	if String(damage_handoff.get("status", "")) != "PENDING_HUNTER_DAMAGE_RUNTIME":
		return {"valid": false, "reason": "UNEXPECTED_DAMAGE_HANDOFF_STATUS"}
	if String(damage_handoff.get("encounter_id", "")) != EXPECTED_ENCOUNTER_ID:
		return {"valid": false, "reason": "UNEXPECTED_ENCOUNTER_ID"}
	if String(damage_handoff.get("attacker_id", "")) != MONSTER_COMBATANT_ID or String(damage_handoff.get("defender_id", "")) != HUNTER_COMBATANT_ID:
		return {"valid": false, "reason": "UNEXPECTED_COMBATANT_ID"}
	if String(damage_handoff.get("attack_id", "")) != HEAD_SWEEP_ATTACK_ID:
		return {"valid": false, "reason": "UNSUPPORTED_ATTACK_ID"}
	if not bool(defense_consequence.get("success", false)):
		return {"valid": false, "reason": "DEFENSE_CONSEQUENCE_NOT_RESOLVED"}
	var health: Dictionary = defense_consequence.get("health_injury_consequence", {}) as Dictionary
	if not bool(health.get("success", false)):
		return {"valid": false, "reason": "HEALTH_INJURY_CONSEQUENCE_NOT_RESOLVED"}
	if String(health.get("resolution_id", "")) != String(damage_handoff.get("resolution_id", "")):
		return {"valid": false, "reason": "RESOLUTION_ID_MISMATCH"}
	return {"valid": true, "reason": "VALID_HEAD_SWEEP_WOUND_CONTACT_INPUT"}

func _build_bleeding_request(resolution_id: String, hit_quality: String, applied_injury: int) -> Dictionary:
	return {
		"status": "VALID_STATUS_APPLICATION_REQUEST",
		"request_schema": REQUEST_SCHEMA,
		"application_request_id": "%s:STATUS:%s" % [resolution_id, STATUS_BLEEDING],
		"status_id": STATUS_BLEEDING,
		"target_actor_id": HUNTER_COMBATANT_ID,
		"source_actor_id": MONSTER_COMBATANT_ID,
		"source_action_id": HEAD_SWEEP_ATTACK_ID,
		"source_resolution_id": resolution_id,
		"trigger_hook": TRIGGER_HOOK,
		"application_mode": "STACK_INTENSITY_CAPPED",
		"intensity_delta": 1,
		"qualification": "HEAD_SWEEP_HORN_PENETRATION_WOUND_ESTABLISHED",
		"hit_quality": hit_quality,
		"applied_injury_load": applied_injury,
		"consumer_status": "PENDING_GENERIC_STATUS_APPLICATION_RUNTIME",
	}

func _build_off_balance_request(resolution_id: String, block_outcome: String, applied_injury: int) -> Dictionary:
	return {
		"status": "VALID_STATUS_APPLICATION_REQUEST",
		"request_schema": REQUEST_SCHEMA,
		"application_request_id": "%s:STATUS:%s" % [resolution_id, STATUS_OFF_BALANCE],
		"status_id": STATUS_OFF_BALANCE,
		"target_actor_id": HUNTER_COMBATANT_ID,
		"source_actor_id": MONSTER_COMBATANT_ID,
		"source_action_id": HEAD_SWEEP_ATTACK_ID,
		"source_resolution_id": resolution_id,
		"trigger_hook": TRIGGER_HOOK,
		"application_mode": "APPLY_OR_REFRESH",
		"qualification": "HEAD_SWEEP_CLEAN_IMPACT_DOMINANT_CONTACT_ESTABLISHED",
		"block_outcome": block_outcome,
		"applied_injury_load": applied_injury,
		"consumer_status": "PENDING_GENERIC_STATUS_APPLICATION_RUNTIME",
	}

func _record_trace(event_name: String, details: Dictionary = {}) -> void:
	_trace_sequence += 1
	var entry: Dictionary = {
		"sequence": _trace_sequence,
		"event": event_name,
		"encounter_id": EXPECTED_ENCOUNTER_ID,
		"monster_id": MONSTER_COMBATANT_ID,
	}
	for key in details.keys():
		entry[key] = details[key]
	_trace.append(entry)

func get_schema() -> String:
	return SCHEMA

func is_initialized() -> bool:
	return _initialized

func get_fixture_status() -> String:
	return FIXTURE_STATUS

func get_last_resolution() -> Dictionary:
	return _last_resolution.duplicate(true)

func get_resolution(resolution_id: String) -> Dictionary:
	if not _resolutions.has(resolution_id):
		return {}
	return (_resolutions[resolution_id] as Dictionary).duplicate(true)

func get_applied_resolution_count() -> int:
	return _resolutions.size()

func get_trace() -> Array[Dictionary]:
	return _trace.duplicate(true)
