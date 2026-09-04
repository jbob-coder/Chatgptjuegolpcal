# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN LOOP THROUGH SETTLEMENT SMITH SERVICE RECORDED / PERSISTENCE NEXT
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

## Recorded combat baseline

Nine reusable first-slice combat/outcome authorities are recorded through Defeat/Retreat.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`.

Monster 01 attacks/Berserk/behavior/outcome remain design-recorded content, not runtime implementation.

## Harvest baseline — RECORDED

Owner:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Monster 01 application:
`docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Selected laws:
finite authored source capacity; condition/preservation changes surviving quantity/quality; clean sever transfers lineage rather than creating matter; deterministic recovery efficiency <=1.00; no independent harvest RNG; save/reload cannot restore depleted sources.

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`.

## Inventory baseline — RECORDED

Owner:
`docs/20_gameplay/inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

Selected laws:
- `PLAYER_FIELD_INVENTORY` first-slice destination;
- 20 prototype stack entries / 99 units max per stack;
- material ID + quality defines visible merge compatibility;
- provenance preserved internally as lots;
- committed harvest output first belongs to persistent `RECOVERY_BUNDLE`;
- source loss equals destination gain;
- stable transfer IDs prevent replay.

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`.

## One-recipe craft/equip linkage — RECORDED

Owner:
`docs/20_gameplay/crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`.

Recipe:
`recipe_field_poleblade_raker_tendon_grip`.

Inputs:
- 2 HIGH `material_m01_tail_tendon`;
- 2 STANDARD-or-better `material_m01_hide`.

Refinement:
`refinement_field_poleblade_raker_tendon_grip`.

Typed effect:
Placed Hew Stamina 18 -> 16 through `COST_MODIFIER` only.

Craft transaction is deterministic, atomic and idempotent.

`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`CRAFTING_RUNTIME_IMPLEMENTED = NO`.

## Settlement 01 Smith service — RECORDED

Settlement package map:
`docs/10_world/settlements/README.md`.

Local front door:
`docs/10_world/settlements/SETTLEMENT_01/README.md`.

Authority:
`docs/10_world/settlements/SETTLEMENT_01/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_PASS_2026-09-03.md`.

Selected service model:
- settlement `SETTLEMENT_01`;
- service `service_settlement01_smith_weapon_workbench`;
- interaction anchor `interact_settlement01_smith_weapon_workbench`;
- capability `CRAFT_STATION_WEAPON_WORKBENCH`;
- Smith/Workshop in Craft/Processing Quarter on Hunter Service Loop;
- gate-return-to-workbench graybox target <=25 seconds normal walking;
- normal essential service availability independent of one Smith NPC schedule;
- only Raker-Tendon Grip recipe exposed in first proof;
- opening/previewing/canceling does not mutate Inventory/equipment;
- Confirm submits authoritative Craft request;
- selected Field Poleblade is stored/revalidated by stable instance ID;
- materials may be consumed only from `PLAYER_FIELD_INVENTORY`, not directly from recovery bundles;
- UI/NPC/Settlement code may not directly consume material or write refinement;
- save/re-entry cannot replay committed craft transaction.

`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_RECORDED = YES`
`SETTLEMENT_SMITH_RUNTIME_IMPLEMENTED = NO`
`SETTLEMENT_SMITH_RUNTIME_VERIFIED = NO`.

## Saved finished-game visual concept

Google Drive folder:
`Unnamed Hunt RPG`.

File:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`.

Drive file ID:
`1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only; repository mechanics/runtime evidence remain authoritative.

## Exact current active non-phone gate

`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT`

Why this is next:
- Region 01 already records topology, tracking/escape, terrain and encounter-footprint design;
- every major first-slice owner now has save/reload requirements, but there is no single first-slice persistence authority connecting them;
- save/reload is required by the vertical-slice integration gate;
- the next design must close persistence before content breadth expands.

Bounded scope:
1. reread `SYSTEM_ARCHITECTURE_BLUEPRINT.md`, current readiness/roadmap, combat outcome/Initiative persistence hooks, Region 01 tracking/escape, Monster 01 anatomy/Crystal/behavior, harvest/inventory/crafting/Smith service contracts;
2. define one first-slice authoritative save snapshot/slot boundary and stable save version marker;
3. define minimum persisted player/world position/loadout/state required to resume the walkable hub/hunt loop;
4. preserve the same Monster instance ID, current Region/sector, anatomy damage/sever, persistent statuses, Crystal Energy/Strain/Berserk history and hunt/outcome state;
5. preserve carcass/detached harvest containers, source lineage/capacity depletion and recovery bundles;
6. preserve Inventory stacks/provenance, transfer ledgers, crafted refinement and craft transaction ledger;
7. preserve Settlement 01 service availability/local state needed for Smith re-entry;
8. select bounded active-encounter save policy for the first slice without creating a giant general save system;
9. define atomic write/read validation and replay/duplicate prevention sufficient for the vertical slice;
10. define presentation/session reconstruction after reload so UI/animation never becomes authority;
11. record deterministic trace + future tests;
12. do not bundle full migration history, cloud sync, multiple profiles, broad corruption recovery, production implementation or Stage-14 hardening.

## After persistence baseline

Reread current vertical-slice readiness and choose the smallest remaining playable integration dependency, likely Region 01 graybox/tracking-to-encounter integration unless current evidence changes. Do not pre-authorize broad implementation before required gates.

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
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_RECORDED = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_IMPLEMENTED = NO`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`
`CRAFTING_RUNTIME_IMPLEMENTED = NO`
`SETTLEMENT_SMITH_RUNTIME_IMPLEMENTED = NO`.

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT`
`NEXT_INDEPENDENT_DESIGN_ACTION = FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT`.
