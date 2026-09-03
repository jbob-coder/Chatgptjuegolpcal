# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / SEVEN CORE COMBAT CONTRACTS RECORDED / MONSTER 01 ATTACK PACKET NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Continue building the Android monster-hunting RPG one bounded layer at a time while the Stage-1 Galaxy A03s implementation gate waits on direct device evidence.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when device evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone game-design action:
`MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`.

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
8. newest relevant `docs/70_handoff/` record
9. owning package/README/source/tests.

For the next Monster 01 pass additionally read:
- `docs/20_gameplay/combat/README.md`;
- all seven combat contracts;
- `docs/30_content/monsters/MONSTER_01/README.md`;
- `ANATOMY_AND_DAMAGE.md`;
- `BEHAVIOR_AND_REGION.md`;
- Region 01 encounter/terrain owners needed for attack legality.

## Project identity

New Android-targeted monster-hunting tactical RPG; WorldLife is abandoned.

Playable direction:
- walkable settlement/hub;
- aerial wilderness tracking/exploration;
- first-person turn-based combat from the same physical encounter;
- explicit movement/cover/defense/attack/body-part choices;
- anatomy, terrain, preparation, break/sever and harvest quality matter;
- deterministic authored creature/NPC behavior.

## Stage-1 engine/device truth

Candidate:
Godot 4.7 family / CI Godot 4.7.2 stable / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum target.

Current automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Workflow `33811355891`: SUCCESS.

Automated gates:
- static `154/154`;
- Monster collision `8/8`;
- boundary `12/12`;
- aerial↔first-person `17/17`;
- lifecycle `47/47`;
- performance telemetry `20/20`;
- Godot parse/smoke PASS;
- Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Direct current-phone bundle and sustained 24-minute run remain deferred.

`PERFORMANCE_VERIFIED = NO`.
`ENGINE_PHONE_PROBE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

## Combat design foundation — seven contracts

1. Action Economy — 4 AP / 1 RP / persistent Stamina.
2. Combat Resolution — deterministic legality/contact/defense/hit quality.
3. First Weapon — Field Poleblade.
4. Stamina — Max 100 prototype / +10 passive / Catch Breath / explicit costs.
5. Initiative — deterministic snapshot scheduler / no random opener / one normal activation max per actor-round.
6. Status Set — Bleeding / Staggered / Off-Balance / Braced / Guarded.
7. Terrain Effect Set — Stable / Rough / Shallow Water / Mud + Brush / High Ground / Narrow.

Terrain authority:
`docs/20_gameplay/combat/FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`.

Terrain pass:
`docs/70_handoff/FIRST_SLICE_TERRAIN_EFFECT_SET_PASS_2026-09-03.md`.

Selected terrain Stamina surcharges:
- Stable: move +0 / Sprint +0 / Dodge +0;
- Rough: +1 / +2 / +2;
- Shallow Water: +2 / +4 / +3;
- Mud: +3 / +5 / +4.

Terrain invariants:
- one effective primary surface per node for cost;
- Dodge uses max(origin,destination) surcharge;
- no terrain random slip RNG;
- forced displacement does not charge voluntary movement Stamina;
- Brush is visibility, not physical cover;
- High Ground gives no generic damage/Initiative bonus;
- Narrow is clearance/adjacency legality;
- terrain never auto-applies status or reorders Initiative.

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS_RECORDED`.
`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`.

## Region 01 combat mapping

- Riverbank Ford → Stable/Mud/Shallow Water + real cover;
- Meadow Edge → Stable + Brush edge + real cover;
- Root/Boulder Hollow → Rough + Brush + Narrow + real cover;
- Deep Nest Shelf → Stable/Rough stone + High Ground/Narrow where physically authored.

Combat remains a tactical interpretation of the actual region, not a disconnected arena.

## Current design sequence

`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Effect Set → Monster 01 Attacks → Berserk → Solo/Party → Defeat/Retreat`.

Completed through Terrain Effect Set.

Remaining before real combat source:
1. Monster 01 combat attack packet;
2. first berserk prototype;
3. solo/party baseline;
4. defeat/retreat baseline;
5. prior production implementation/testing gates.

## Documentation/navigation discipline

The repository must answer:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

Navigation:
- root `README.md` — game/front door;
- `docs/README.md` — placement rules;
- local package README — local map;
- `DOCUMENTATION_INDEX.md` — global map;
- `docs/70_handoff/` — bounded-pass records;
- this + `START_HERE_NEW_CHAT.md` — current reconstruction;
- `EVOLVE_ALIGNMENT.md` — operating contract/exact next actions.

## Current exact state

`IMPLEMENTATION_AUTHORIZED = YES`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`FIRST_SLICE_TERRAIN_EFFECT_SET = RECORDED`
`TERRAIN_RUNTIME_IMPLEMENTED = NO`
`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS_RECORDED`

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`