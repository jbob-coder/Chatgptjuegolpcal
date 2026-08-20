class_name StealSystem
extends RefCounted

const ABILITY_ID := "ABILITY_STEAL"
const PERMANENT_ABILITY_SLOTS := 5
const ACQUISITION_FIXED_CM := 8
const ACQUISITION_CM_PER_LEVEL := 10
const MINIMUM_FAILURE_CM := 4

static func acquisition_cost(ability_level: int) -> int:
	return ACQUISITION_FIXED_CM + ACQUISITION_CM_PER_LEVEL * maxi(1, ability_level)

static func failure_cost(full_cost: int) -> int:
	return maxi(MINIMUM_FAILURE_CM, ceili(float(full_cost) * 0.25))

static func preview_acquisition(current_cm: int, ability_level: int, occupied_slots: int) -> Dictionary:
	var full_cost := acquisition_cost(ability_level)
	return {"ability_id":ABILITY_ID,"full_cost_cm":full_cost,"failure_cost_cm":failure_cost(full_cost),"has_cm":current_cm >= full_cost,"has_slot":occupied_slots < PERMANENT_ABILITY_SLOTS,"requires_direct_contact":true,"modes":["COPY","REMOVE"]}
