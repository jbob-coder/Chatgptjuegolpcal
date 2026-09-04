# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / STAGE 1 PHONE GATE DEFERRED / COMBAT + HARVEST + INVENTORY DESIGN BASELINES RECORDED / ONE-RECIPE LINKAGE NEXT
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
| INVENTORY MATERIAL DESIGN | BASELINE RECORDED | deterministic recovered-material ownership/stacking/transfer recorded |
| VERTICAL SLICE | PARTIAL | one-recipe crafting/equipment linkage + implementation prerequisites remain |
| EXPANSION | INTENTIONALLY OPEN | broad content/lore/endgame does not block first slice |

## 2. Engine probe truth

Candidate:
Godot 4.7 family / CI 4.7.2 stable / GDScript / GL Compatibility/OpenGL3 / Galaxy A03s / stable 30 FPS representative-scene minimum.

Protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Automated evidence:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; Godot parse/smoke PASS; Android export/APK integrity/artifact upload PASS.

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

Recorded design prerequisites include stable IDs, data ownership, stats/effects, deterministic behavior, Crystal state, combat contracts, Monster 01 content, harvest semantics and inventory material ownership.

`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`.

## 4. Combat design baseline

Nine reusable contracts are recorded:
Action Economy / Combat Resolution / Field Poleblade / Stamina / Initiative / Status / Terrain / Solo-Party / Defeat-Retreat.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`COMBAT_RUNTIME_VERIFIED = NO`.

## 5. Harvest design baseline

Authority:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Monster 01 packet:
`docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Recorded:
- finite source capacities;
- condition/preservation bands;
- clean sever transfers source lineage;
- carcass/detached-part ownership;
- deterministic recovery efficiency;
- partial extraction/depletion;
- no harvest RNG;
- save/load anti-duplication.

Monster 01 pristine selected-source total = 45 prototype capacity units.

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`.

## 6. Inventory material ownership baseline

Authority:
`docs/20_gameplay/inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

Recorded:
- `PLAYER_FIELD_INVENTORY` as first-slice material destination;
- prototype 20 stack entries / max 99 units per stack;
- compatible stack key = material ID + quality band;
- internal provenance lots;
- committed harvest output first belongs to persistent `RECOVERY_BUNDLE`;
- full/partial capacity preserves unaccepted bundle quantity;
- source loss equals destination gain;
- deterministic stack fill/merge/split;
- idempotent transfer IDs;
- save/load/world reload cannot replay transfer or duplicate bundles.

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`
`INVENTORY_RUNTIME_VERIFIED = NO`.

## 7. Vertical-slice prerequisites

Required integrated loop:
`TITLE/PREP -> HUB -> GATE -> REGION 01 -> TRACK -> ENGAGE -> COMBAT -> BREAK/SEVER/BERSERK -> DEFEAT/ESCAPE -> HARVEST -> INVENTORY -> RETURN -> CRAFT/EQUIP ONE UPGRADE -> SAVE/RELOAD`.

Still requires:
- Stage-1 Galaxy A03s gate;
- production domain/stats/Crystal/content/combat implementation/tests;
- Region 01 graybox/tracking/escape continuity;
- runtime harvest + inventory transfer;
- one recipe/equipment-upgrade linkage;
- minimal settlement service loop;
- persistent Monster/harvest/inventory/crafting save state;
- integrated Android lifecycle/performance verification.

`VERTICAL_SLICE_READINESS = PARTIAL / ONE_RECIPE_LINKAGE + IMPLEMENTATION STAGES REMAIN`.

## 8. Exact next independent design dependency

`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT`

That packet should select exactly one Monster-01-derived recipe/equipment improvement and define deterministic material consumption, output ownership/equip behavior and save/load anti-replay. Do not build a broad recipe tree or market economy.

## 9. Can wait until expansion

Final name/lore; broad elements; many regions/Monsters/weapons/recipes; deep companion relationships; multiplayer; permanent Hunter death; advanced revive/capture; large status/terrain/material catalogs; market breadth; final store/signing/localization/device matrix.

## 10. Exact state

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_IMPLEMENTED = NO`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`.

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT`.

Implementation and design may advance in parallel only when dependencies do not conflict. Every pass remains governed by `EVOLVE_ALIGNMENT.md`.
