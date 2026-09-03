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

## Main working rule

The game is the objective.

Documentation must preserve:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## Current engine/Android phase

Stage-1 automated foundation is advanced, but direct Galaxy A03s evidence remains required.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Automated gates:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; Godot parse/smoke PASS; Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Phone regression + 24-minute sustained run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Combat/gameplay foundation

Nine reusable first-slice combat contracts are recorded:
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative / Turn Order;
6. Status Set;
7. Terrain Set;
8. Solo / Party Baseline;
9. Defeat / Retreat Baseline.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`.

This is design-recorded only. Production combat source is not implemented or runtime verified.

## Solo / party baseline

Authority:
`docs/20_gameplay/combat/SOLO_PARTY_BASELINE_CONTRACT.md`.

Selected:
- fully solo-capable with optional companions;
- max three active Hunters;
- player directly controls own Hunter only;
- independent actor resources;
- one shared deterministic Initiative scheduler;
- deterministic companion behavior/orders;
- no body switching/runtime generative AI.

## Defeat / retreat baseline

Authority:
`docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md`.

Read the pass record:
`docs/70_handoff/DEFEAT_RETREAT_BASELINE_PASS_2026-09-03.md`.

Core first-slice rules:
- Hunter Health <=0 -> Downed, not permanent death;
- no in-combat revive;
- player Downed -> Hunter defeat after current authoritative resolution;
- companion Downed alone does not end combat;
- voluntary withdrawal is spatial/deterministic, not a random escape roll;
- final Hunter withdrawal = 1 AP from legal escape node;
- party retreat declaration = player 1 AP, companions withdraw on own turns/resources;
- Monster behavior chooses legal retreat route;
- final Monster escape completion is owned by Defeat/Retreat;
- Monster escape -> aerial reacquisition with same persistent Monster instance;
- Hunter withdrawal -> hunt active/disengaged;
- Monster death remains Crystal/body-terminal owned;
- final anatomy/part state persists for harvest;
- mutual terminal result is deterministic;
- terminal encounter cannot resume after outcome commit.

## Monster 01 — Mudcrest Raker

Read when relevant:
1. `docs/30_content/monsters/MONSTER_01/README.md`;
2. `ANATOMY_AND_DAMAGE.md`;
3. `COMBAT_ATTACK_PACKET.md`;
4. `BERSERK_PROTOTYPE_CONTRACT.md`;
5. `BEHAVIOR_AND_REGION.md`;
6. `CRYSTAL_AND_MUTATION.md`.

Monster escape/reacquisition now explicitly consumes the generic Defeat/Retreat outcome owner rather than inventing its own encounter-end rules.

No combat runtime is claimed.

## Current planned sequence

Completed design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status Set -> Terrain Set -> Monster 01 Normal Attacks -> Monster 01 Berserk -> Solo/Party -> Defeat/Retreat`.

Current next independent design action:
`FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`.

That is the next core-loop dependency because combat anatomy state must determine actual recoverable material.

## Exact continuation

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Active non-phone action:
`FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`.

That pass should create a harvest gameplay package/front door as needed and define only:
- anatomical capacity;
- remaining usable mass/condition;
- clean sever/damage/break/destroy consequences;
- carcass/detached-part depletion;
- tool/knowledge modifiers;
- deterministic yield traces;
- persistence/anti-duplication.

Do not combine it with crafting/economy implementation.