# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / STAGE 1 PHONE GATE DEFERRED / COMBAT + HARVEST + INVENTORY + ONE-RECIPE DESIGN BASELINES RECORDED / SETTLEMENT SMITH SERVICE NEXT
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
| INVENTORY MATERIAL DESIGN | BASELINE RECORDED | deterministic recovered-material ownership/transfer recorded |
| CRAFT/EQUIP LINKAGE DESIGN | FIRST RECIPE RECORDED | one Monster-01-derived Poleblade refinement transaction/effect recorded |
| VERTICAL SLICE | PARTIAL | physical Settlement Smith service + implementation/persistence prerequisites remain |
| EXPANSION | INTENTIONALLY OPEN | broad content/lore/economy does not block first slice |

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

Recorded design prerequisites now include stable IDs/data ownership, stats/effects, deterministic behavior, Crystal state, combat, Monster 01 content, harvest, material inventory and one crafting/refinement transaction.

`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`.

## 4. Recorded first-slice design chain

Combat:
Action Economy / Resolution / Field Poleblade / Stamina / Initiative / Status / Terrain / Solo-Party / Defeat-Retreat.

Harvest:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Inventory:
`docs/20_gameplay/inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

Craft/equip:
`docs/20_gameplay/crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`.

First recipe:
- 2 HIGH `material_m01_tail_tendon`;
- 2 STANDARD-or-better `material_m01_hide`;
- compatible Field Poleblade;
- logical weapon workbench context.

Output:
`refinement_field_poleblade_raker_tendon_grip`.

Effect:
Placed Hew Stamina 18 -> 16 through typed equipment modifier.

Crafting transaction requirements:
- deterministic exact lot selection;
- reservation before mutation;
- atomic consume + refinement application;
- idempotent transaction ID;
- save/load anti-replay;
- no randomized craft quality or currency requirement in first proof.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`.

Runtime for these domains remains unimplemented/unverified.

## 5. Vertical-slice prerequisites

Required integrated loop:
`TITLE/PREP -> WALKABLE HUB -> GATE -> REGION 01 -> TRACK -> ENGAGE -> COMBAT -> BREAK/SEVER/BERSERK -> DEFEAT/ESCAPE -> HARVEST -> INVENTORY -> RETURN -> SMITH/CRAFT -> EQUIP -> SAVE/RELOAD`.

Still requires:
- Stage-1 Galaxy A03s phone gate;
- production domain/stats/Crystal/content/combat implementation/tests;
- Region 01 graybox/tracking/escape continuity;
- runtime harvest/inventory/crafting;
- physical Settlement 01 Smith/workbench service interaction;
- persistent Monster/material/refinement save state;
- integrated Android lifecycle/performance verification.

`VERTICAL_SLICE_READINESS = PARTIAL / SETTLEMENT_SMITH_SERVICE + IMPLEMENTATION STAGES REMAIN`.

## 6. Exact next independent design dependency

`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`

That packet should map the logical `CRAFT_STATION_WEAPON_WORKBENCH` requirement into the existing Settlement 01 Smith/Workshop and return-from-hunt Hunter Service Loop. It must not expand into broad market economy, large shop inventories or many recipes.

## 7. Can wait until expansion

Final name/lore; broad elements; many regions/Monsters/weapons/recipes; deep companion relationships; multiplayer; permanent Hunter death; advanced revive/capture; large status/terrain/material catalogs; market breadth; final store/signing/localization/device matrix.

## 8. Exact state

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`
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

Implementation and design may advance in parallel only when dependencies do not conflict. Every pass remains governed by `EVOLVE_ALIGNMENT.md`.