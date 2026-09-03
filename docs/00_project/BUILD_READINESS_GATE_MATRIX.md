# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / STAGE 1 PHONE GATE DEFERRED / COMBAT DESIGN + HARVEST BASELINE RECORDED / INVENTORY MATERIAL OWNERSHIP NEXT
Last reconciled: 2026-09-03

## Purpose

Classify requirements by the earliest implementation stage that genuinely consumes them.

Primary law:
**an open question blocks only the earliest implementation gate that actually needs its answer.**

Readiness classes:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`
3. `MUST_EXIST_BEFORE_COMBAT`
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`
5. `CAN_WAIT_UNTIL_EXPANSION`

## 1. Gate summary

| Gate | Current status | Meaning |
|---|---|---|
| ENGINE PROBE | AUTOMATED FOUNDATION / PHONE GATE DEFERRED | source/build/headless gates pass; direct Galaxy A03s evidence remains |
| DOMAIN IMPLEMENTATION | BLOCKED BY ENGINE PHONE GATE | production architecture waits for target-device gate |
| COMBAT DESIGN | BASELINE RECORDED | nine generic combat/outcome contracts + Monster 01 content packets recorded |
| COMBAT IMPLEMENTATION | NOT STARTED | production domain/combat source and tests absent |
| HARVEST DESIGN | BASELINE RECORDED | finite anatomy capacity + Monster 01 source packet recorded |
| VERTICAL SLICE | PARTIAL | inventory/material ownership, one-recipe crafting and implementation prerequisites remain |
| EXPANSION | INTENTIONALLY OPEN | broad content/lore/endgame does not block first slice |

## 2. Engine probe truth

Candidate:
Godot 4.7 family / CI 4.7.2 stable / GDScript / GL Compatibility/OpenGL3 / Galaxy A03s / stable 30 FPS representative-scene minimum.

Protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Automated evidence:
- protected static 154/154 PASS;
- Monster collision 8/8 PASS;
- boundary 12/12 PASS;
- view continuity 17/17 PASS;
- lifecycle 47/47 PASS;
- performance telemetry 20/20 PASS;
- Godot parse/smoke PASS;
- Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Still missing direct Galaxy A03s regression + sustained 24-minute run.

`ENGINE_PHONE_PROBE_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

## 3. Domain implementation gate

Stage 2 begins only after `ENGINE_PHONE_PROBE_VERIFIED`.

Recorded design prerequisites include stable IDs, data ownership, stats/effects, deterministic behavior, Crystal state, combat contracts, Monster 01 attack/Berserk/outcome integration and harvest-source semantics.

`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`.

## 4. Combat design baseline

Recorded reusable contracts:
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative;
6. Status Set;
7. Terrain Set;
8. Solo/Party Baseline;
9. Defeat/Retreat Baseline.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`COMBAT_RUNTIME_VERIFIED = NO`.

Monster 01 normal attacks/Berserk/behavior consume these rules but remain unimplemented runtime content.

## 5. Harvest design baseline

Generic authority:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Monster 01 packet:
`docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Recorded:
- finite source capacities;
- condition bands `PRISTINE/GOOD/DAMAGED/POOR/RUINED/DESTROYED`;
- preservation multipliers `1.00/0.90/0.70/0.40/0.10/0.00`;
- clean sever transfers source lineage without duplication;
- carcass/detached-part container ownership;
- deterministic recovery efficiency `0.50..1.00`;
- partial extraction/depletion;
- unique-source anti-duplication;
- Monster escape/death/mutual-terminal boundaries;
- save/load transaction persistence;
- no independent harvest RNG.

Monster 01 pristine selected-source capacities:
- horn L 4;
- horn R 4;
- dorsal plates 8;
- torso hide 12;
- distal-tail ridge 5;
- distal-tail tendon 4;
- dense bone 8;
- total 45 prototype capacity units.

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_VERIFIED = NO`.

## 6. Vertical-slice prerequisites

Required integrated loop:
`TITLE/PREP -> HUB -> GATE -> REGION 01 -> TRACK -> ENGAGE -> COMBAT -> BREAK/SEVER/BERSERK -> DEFEAT/ESCAPE -> HARVEST -> INVENTORY -> RETURN -> CRAFT/EQUIP ONE UPGRADE -> SAVE/RELOAD`.

Still requires:
- Stage-1 Galaxy A03s gate;
- production domain/stats/Crystal/content/combat implementation/tests;
- Region 01 graybox/tracking/escape continuity;
- first-slice harvest implementation;
- material inventory ownership;
- one recipe/equipment-upgrade linkage;
- minimal settlement service loop;
- persistent Monster/harvest/inventory save state;
- integrated Android lifecycle/performance verification.

`VERTICAL_SLICE_READINESS = PARTIAL / INVENTORY + CRAFT LINKAGE + IMPLEMENTATION STAGES REMAIN`.

## 7. Exact next independent design dependency

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`

This packet should consume committed harvest-transfer results and define material stack/quality/provenance ownership without broad economy or recipe expansion.

## 8. Can wait until expansion

Final name/lore; broad elements; many regions/monsters/weapons/recipes; deep companion relationships; multiplayer; permanent Hunter death; advanced revive/capture; large status/terrain/material catalogs; final store/signing/localization/device matrix.

## 9. Exact state

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_IMPLEMENTED = NO`

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`.

Implementation and design may advance in parallel only when dependencies do not conflict. Every pass remains governed by `EVOLVE_ALIGNMENT.md`.