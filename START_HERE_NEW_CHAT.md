# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project

This is the new Android-targeted monster-hunting tactical RPG. WorldLife is abandoned and must not be resumed unless a current repository authority explicitly preserves something.

Working name: `Unnamed Hunt RPG`.

## Mandatory first read

Before every bounded pass:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. this file;
4. `DOCUMENTATION_INDEX.md`;
5. root `README.md`;
6. `docs/README.md`;
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`;
8. newest relevant `docs/70_handoff/`;
9. owning package/README/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## Main rule

The game is the objective.

Documentation must preserve:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## Current engine/Android phase

Stage-1 automated foundation is advanced, but direct Galaxy A03s evidence remains required.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Workflow `33811355891`: SUCCESS for automated protocol revision `c02971996e35770bbaaaf9bf6c460af208db4f83`.

Phone regression + 24-minute sustained run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Current recorded first-slice chain

Combat:
`docs/20_gameplay/combat/README.md`.

Harvest:
`docs/20_gameplay/harvest/README.md`.

Inventory:
`docs/20_gameplay/inventory/README.md`.

Crafting:
`docs/20_gameplay/crafting/README.md`.

Current recipe authority:
`docs/20_gameplay/crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`.

Selected recipe:
`recipe_field_poleblade_raker_tendon_grip`.

Requirements:
- 2 HIGH `material_m01_tail_tendon`;
- 2 STANDARD-or-better `material_m01_hide`.

Output:
`refinement_field_poleblade_raker_tendon_grip`.

Effect:
`POLEBLADE_PLACED_HEW` Stamina 18 -> 16 through one typed `COST_MODIFIER` only.

Crafting reserves exact inventory provenance lots and commits input consumption + refinement application atomically/idempotently.

No production combat/harvest/inventory/crafting runtime is claimed.

## Saved visual concept

Google Drive project folder:
`Unnamed Hunt RPG`.

Image:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`.

Drive file ID:
`1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only; repository mechanics/runtime evidence remain authoritative.

## Current planned sequence

Completed:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest -> Inventory -> One Recipe/Craft-Equip Linkage`.

Next:
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`.

For that pass read:
- `FIRST_SETTLEMENT_BLUEPRINT.md`;
- current settlement/world front doors;
- crafting contract;
- interaction/service/UI authorities.

Map the logical `CRAFT_STATION_WEAPON_WORKBENCH` into the physical walkable Settlement 01 Smith/Workshop and Hunter Service Loop.

Do not expand into broad economy, many shops, many recipes or production implementation.

## Exact continuation

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Active non-phone action:
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`.