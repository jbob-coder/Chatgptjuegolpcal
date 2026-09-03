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

Automated gates:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; parse/smoke PASS; Android export/APK integrity PASS.

Phone regression + 24-minute sustained run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Combat baseline

Nine generic first-slice combat/outcome contracts are recorded through:
`docs/20_gameplay/combat/README.md`.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`.
No production combat runtime is claimed.

## Harvest baseline

Read:
1. `docs/20_gameplay/harvest/README.md`;
2. `docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`;
3. `docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`;
4. `docs/70_handoff/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_PASS_2026-09-03.md`.

Selected rules:
- finite physical source capacities;
- source condition reduces surviving capacity;
- PRISTINE/GOOD/DAMAGED/POOR/RUINED/DESTROYED = 1.00/0.90/0.70/0.40/0.10/0.00 preservation;
- clean sever preserves/transfers rather than creates material;
- deterministic extraction efficiency never exceeds 1.00;
- partial harvest depletes only recovered amount;
- stable source lineage prevents horn/tail/carcass duplication;
- no random loot quantity layer.

Monster 01 pristine selected-source total:
`45` prototype units across horns, plates, hide, distal-tail ridge/tendon and dense bone.

Damage and extraction reduce actual recovered quantity.

No harvest runtime is claimed.

## Monster 01 — Mudcrest Raker

Read local front door:
`docs/30_content/monsters/MONSTER_01/README.md`.

Important package files:
- `ANATOMY_AND_DAMAGE.md`;
- `COMBAT_ATTACK_PACKET.md`;
- `BERSERK_PROTOTYPE_CONTRACT.md`;
- `BEHAVIOR_AND_REGION.md`;
- `CRYSTAL_AND_MUTATION.md`;
- `HARVEST_CAPACITY_PACKET.md`.

Monster escape preserves same persistent instance/anatomy for reacquisition. Monster death preserves one final carcass state for harvesting.

## Current planned sequence

Completed:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest Capacity/Condition`.

Next:
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`
-> one-recipe crafting/equipment linkage
-> implementation after prerequisite engine/domain gates.

## Exact continuation

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Active non-phone action:
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`.

That pass must define authoritative material storage/stack identity/quantity/quality/provenance/transfer/save-load semantics from committed harvest results.

Do not combine it with broad economy, many recipes or production implementation.