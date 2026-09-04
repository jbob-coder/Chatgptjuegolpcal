# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / COMBAT + HARVEST + INVENTORY + ONE-RECIPE DESIGN BASELINES RECORDED / SETTLEMENT SMITH SERVICE NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Continue building the Android monster-hunting tactical RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`.

Operating contract:
`EVOLVE_ALIGNMENT.md`.

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

For the next Smith-service pass additionally read:
- `FIRST_SETTLEMENT_BLUEPRINT.md`;
- `docs/20_gameplay/crafting/README.md`;
- `docs/20_gameplay/crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`;
- current settlement/world package front doors;
- current interaction/UI/service authorities before adding any service state.

## Project identity

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Playable direction:
- walkable settlement/hub;
- aerial wilderness tracking/exploration;
- first-person turn-based tactical combat from the same physical encounter;
- anatomy damage affects Monster capability and physical harvest;
- deterministic authored creature/NPC/companion behavior;
- harvest -> inventory -> crafting/equipment progression.

## Stage-1 engine/device truth

Candidate:
Godot 4.7 family / CI Godot 4.7.2 stable / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Automated gates:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; Godot parse/smoke PASS; Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Direct phone regression + sustained 24-minute run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Recorded gameplay design chain

Combat:
nine reusable first-slice contracts through Defeat/Retreat.

Harvest:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Inventory:
`docs/20_gameplay/inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

Craft/equip:
`docs/20_gameplay/crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`.

Selected first recipe:
`recipe_field_poleblade_raker_tendon_grip`.

Inputs:
- 2 HIGH `material_m01_tail_tendon`;
- 2 STANDARD-or-better `material_m01_hide`.

Output:
`refinement_field_poleblade_raker_tendon_grip` applied to one compatible Field Poleblade instance.

Effect:
`POLEBLADE_PLACED_HEW` Stamina 18 -> 16 through typed `COST_MODIFIER`.

Crafting is deterministic/atomic/idempotent. Exact inventory provenance lots are reserved and consumed exactly once if and only if the refinement commits exactly once.

No runtime implementation is claimed for combat/harvest/inventory/crafting.

## Saved finished-game visual reference

Google Drive project folder:
`Unnamed Hunt RPG`.

Saved image:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`.

Drive file ID:
`1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

This is a visual-intent artifact, not technical/runtime authority.

## Current game-development sequence

Completed:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest Capacity/Condition -> Inventory Material Ownership -> One Recipe/Craft-Equip Linkage`.

Next:
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`
-> then select the next smallest vertical-slice prerequisite from repository evidence
-> production implementation only after prerequisite engine/domain gates.

## Documentation/navigation discipline

Repository must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

Navigation:
root README / `docs/README.md` / package READMEs / `DOCUMENTATION_INDEX.md` / `docs/70_handoff/` / this + `START_HERE_NEW_CHAT.md` / `EVOLVE_ALIGNMENT.md`.

## Current exact state

`IMPLEMENTATION_AUTHORIZED = YES`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_IMPLEMENTED = NO`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`
`CRAFTING_RUNTIME_IMPLEMENTED = NO`.

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`.