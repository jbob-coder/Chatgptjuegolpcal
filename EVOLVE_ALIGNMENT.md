# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / COMBAT + HARVEST DESIGN BASELINES RECORDED / INVENTORY MATERIAL OWNERSHIP NEXT
Last reconciled: 2026-09-03

## Mandatory pre-work rule

Read the current repository copy of this file before every bounded design, documentation, asset, implementation, debugging, build or verification pass.

Then read:
1. `PROJECT_HANDOFF.md`;
2. `START_HERE_NEW_CHAT.md`;
3. `DOCUMENTATION_INDEX.md`;
4. newest relevant `docs/70_handoff/`;
5. owning package/README/source/tests.

Current repository/source/build/device evidence outranks chat memory.

## Main-goal rule

The game is the objective.

Documentation exists to preserve intent, ownership, dependencies, implementation readiness, verification evidence, continuity and exact next action. Do not create documentation with no game/design/implementation/QA/continuity consumer.

## Authority order

For intended changes:
1. current explicit user instruction;
2. current verified source/tests;
3. current owning repository authorities;
4. direct build/runtime/device evidence;
5. external research/documentation;
6. chat summaries/memory.

For runtime claims:
1. direct target-device evidence;
2. logs/screenshots/video;
3. build/package evidence;
4. source/static expectations;
5. planning documents.

## Mandatory loop

`READ EVOLVE`
-> `READ CURRENT STATE/HANDOFF`
-> `VERIFY STATE`
-> `IDENTIFY EXACTLY ONE SMALL PIECE`
-> `IDENTIFY OWNER + READINESS GATE`
-> `STATE EXACT BOUNDED ACTION`
-> `RESEARCH IF REQUIRED`
-> `IMPLEMENT OR DOCUMENT`
-> `TEST/REVIEW AT HIGHEST AVAILABLE LEVEL`
-> `INSPECT REGRESSION`
-> `FIX SAME-PIECE FAILURES`
-> `UPDATE OWNER/HANDOFF/README/INDEX AS REQUIRED`
-> `SAVE/COMMIT`
-> `READ BACK`
-> `MARK EXACT STATUS`
-> `SELECT EXACT NEXT PIECE`
-> `WRITE NEXT PIECE INTO EVOLVE`
-> `STATE SAME NEXT ACTION TO USER`.

Never begin an unrelated next piece before closing the current boundary.

## Documentation/navigation law

Every substantial durable piece must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

Use:
- root `README.md` — human game/front door;
- `docs/README.md` — placement/package rules;
- local package README — local map;
- `DOCUMENTATION_INDEX.md` — global map/read order;
- `docs/70_handoff/` — bounded-pass continuity;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- this file — operating contract + exact next actions.

## Build-readiness taxonomy

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Classes:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Law: an open question blocks only the earliest implementation gate that genuinely consumes it.

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`.

## Stage-1 engine/device candidate

- Godot 4.7 family;
- CI/build Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

`probes/android_stage1/` is disposable evidence-gathering source and must not silently become production architecture.

Protected control/camera authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

## Phone-evidence rule

Development must not stop waiting for phone reports.

Therefore:
- record phone-only tests for later;
- never infer phone PASS from CI/source;
- continue independent non-phone work;
- do not close Stage 1 without direct Galaxy A03s evidence.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

## Current automated Stage-1 lineage

Protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Performance telemetry source:
`89394067971120df43b184a8509934f5458185f2`.
Workflow `33811355891`: SUCCESS.

Verified automated gates:
- protected static 154/154;
- Monster collision 8/8;
- world boundary 12/12;
- Godot parse/smoke PASS;
- aerial<->first-person 17/17;
- lifecycle 47/47;
- performance telemetry 20/20;
- Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Prepared sustained phone run:
24 minutes with checkpoints T+02/T+07/T+09/T+14/T+19/T+24.

`SUSTAINED_PERFORMANCE_PHONE_EXECUTED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Combat design baseline — RECORDED

Nine reusable first-slice authorities:
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative/Turn Order;
6. Status;
7. Terrain;
8. Solo/Party;
9. Defeat/Retreat.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`.

Monster 01 attack/Berserk/behavior/outcome content remains design-recorded, not runtime implemented.

## Harvest baseline — RECORDED

Generic owner:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Package front door:
`docs/20_gameplay/harvest/README.md`.

Worked example:
`docs/20_gameplay/harvest/HARVEST_TRANSACTION_EXAMPLE.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_PASS_2026-09-03.md`.

Selected generic model:
- finite authored source capacity;
- first-slice material-specific capacity units;
- preservation bands PRISTINE/GOOD/DAMAGED/POOR/RUINED/DESTROYED = `1.00/0.90/0.70/0.40/0.10/0.00`;
- `surviving_capacity = floor(original_capacity * preservation_multiplier)`;
- clean sever transfers source lineage rather than creating material;
- carcass and detached-part containers preserve source identity;
- deterministic recovery efficiency, prototype clamp `0.50..1.00` when legal;
- partial extraction depletes only recovered quantity;
- quality and quantity are separate;
- no independent harvest RNG;
- save/load/reacquisition cannot restore or duplicate depleted sources.

## Monster 01 harvest packet — RECORDED

Authority:
`docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Prototype pristine selected-source capacities:
- horn L 4;
- horn R 4;
- dorsal plates 8;
- torso hide 12;
- distal-tail ridge 5;
- distal-tail tendon 4;
- dense bone 8.

Total:
`45` prototype capacity units.

This is not guaranteed yield. Final combat source condition + extraction efficiency determine actual recovery.

Clean distal-tail sever transfers both tail source lineages to the detached-tail container; later carcass creation cannot duplicate them.

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_VERIFIED = NO`.

## Exact current active non-phone gate

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`

Bounded scope:
1. reread current harvest owner, Monster 01 harvest packet, `CONTENT_DATA_GUIDE.md`, mechanical inventory/crafting authorities and current vertical-slice requirements;
2. create a local inventory/material package/front door only if current structure genuinely needs one;
3. define authoritative ownership for recovered material quantities after a committed harvest transaction;
4. define material stack identity by stable material ID plus only the minimum quality/provenance fields required by current design;
5. define quantity conservation between harvest extraction result and inventory acceptance;
6. define inventory rejection/full-capacity handling so material is neither deleted nor duplicated;
7. define stack merge/split rules without losing quality/provenance determinism;
8. define save/load transaction IDs and anti-replay;
9. define minimum deterministic trace/future tests;
10. do not bundle crafting recipes, market prices, broad equipment loadouts, party reward splitting or production implementation.

## After inventory baseline

Select the smallest one-recipe crafting/equipment linkage that closes:
`HARVEST -> INVENTORY -> CRAFT/EQUIP -> REASON TO HUNT AGAIN`.

Do not build a broad crafting/economy catalog before that one linkage works.

## Current gate truth

`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154`
`MONSTER_COLLISION_STATIC = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC = YES / 12_OF_12`
`VIEW_CONTINUITY_HEADLESS = YES / 17_OF_17`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS = YES / 47_OF_47`
`PERFORMANCE_TELEMETRY_HEADLESS = YES / 20_OF_20`
`SUSTAINED_PERFORMANCE_PROTOCOL_PREPARED = YES`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_IMPLEMENTED = NO`.

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`
`NEXT_INDEPENDENT_DESIGN_ACTION = FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`.