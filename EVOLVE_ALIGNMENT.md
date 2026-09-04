# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / COMBAT + HARVEST + INVENTORY + ONE-RECIPE DESIGN BASELINES RECORDED / SETTLEMENT SMITH SERVICE NEXT
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

Monster 01 application:
`docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Selected generic model:
- finite authored source capacity;
- condition/preservation determines surviving quantity/quality;
- clean sever transfers source lineage rather than creating matter;
- deterministic recovery efficiency `<=1.00`;
- no independent harvest RNG;
- save/load/reacquisition cannot restore or duplicate depleted sources.

Monster 01 selected pristine source total:
`45` prototype capacity units.

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`.

## Inventory material ownership baseline — RECORDED

Authority:
`docs/20_gameplay/inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

Selected model:
- `PLAYER_FIELD_INVENTORY` first-slice destination;
- prototype 20 material stacks / max 99 units per stack;
- merge compatibility = material ID + quality band;
- provenance remains internally conserved as lots;
- committed harvest output first belongs to persistent `RECOVERY_BUNDLE`;
- partial/full inventory rejection leaves exact unaccepted quantity in bundle;
- source loss equals destination gain;
- stable transfer IDs prevent replay.

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`.

## One-recipe craft/equip linkage — RECORDED

Front door:
`docs/20_gameplay/crafting/README.md`.

Authority:
`docs/20_gameplay/crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_PASS_2026-09-03.md`.

Recipe:
`recipe_field_poleblade_raker_tendon_grip`.

Exact inputs:
- `2 x material_m01_tail_tendon`, minimum HIGH;
- `2 x material_m01_hide`, minimum STANDARD.

Refinement:
`refinement_field_poleblade_raker_tendon_grip`.

Effect:
`effect_field_poleblade_raker_tendon_grip_placed_hew_stamina`.

Typed behavior:
- `COST_MODIFIER`;
- Placed Hew Stamina base 18 -> 16 with only this refinement;
- no AP/damage/hit-quality/sever/Initiative/reaction/Max-Stamina bonus.

Craft transaction law:
- material must already be owned by `PLAYER_FIELD_INVENTORY`;
- deterministic lowest-sufficient-quality/stack/provenance selection;
- reserve exact inputs before mutation;
- validate recipe + workbench context + compatible Poleblade + empty grip-refinement state;
- atomically consume exact 2 tendon + 2 hide and apply one refinement;
- stable craft transaction ID is idempotent across UI/save/load;
- failure before commit consumes nothing;
- interrupted transaction must recover to full commit once or no commit;
- no random craft quality/currency/broad recipe tree in first proof.

`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`CRAFTING_RUNTIME_IMPLEMENTED = NO`
`CRAFTING_RUNTIME_VERIFIED = NO`.

## Saved finished-game visual concept

Google Drive folder:
`Unnamed Hunt RPG`.

File:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`.

Drive file ID:
`1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

This is visual intent only; repository mechanics/runtime evidence remain authoritative.

## Exact current active non-phone gate

`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`

Bounded scope:
1. reread `FIRST_SETTLEMENT_BLUEPRINT.md`, current world/settlement front doors, crafting contract, gameplay/readiness authorities and interaction/UI ownership;
2. map `CRAFT_STATION_WEAPON_WORKBENCH` to the physical Settlement 01 Smith/Workshop;
3. define the smallest return-from-hunt path from gate/material ownership to Smith interaction;
4. define interaction authority and service availability without depending on an NPC always standing at one spot;
5. expose only the one recorded first-slice recipe in the proof service;
6. define open/close/confirm/cancel behavior so UI cannot consume material independently;
7. define how the selected Field Poleblade target instance is chosen/validated;
8. define save/load/service re-entry anti-replay behavior;
9. record future interaction/runtime tests;
10. do not build broad shop inventory, market prices, many recipes, social systems or production implementation.

## After Smith service baseline

Select the next smallest vertical-slice prerequisite from current repository evidence. Candidate areas include persistence/save continuity or Region 01 tracking/encounter graybox integration, but do not preselect until the Smith-service pass is closed and current readiness is reread.

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
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_IMPLEMENTED = NO`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`
`CRAFTING_RUNTIME_IMPLEMENTED = NO`.

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`
`NEXT_INDEPENDENT_DESIGN_ACTION = FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`.
