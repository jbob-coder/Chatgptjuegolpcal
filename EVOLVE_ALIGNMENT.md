# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / HUNT-01 BUILD MANIFEST + VALIDATION CONTRACT RECORDED / STATIC MANIFEST VALIDATOR NEXT
Last reconciled: 2026-09-03

## Mandatory pre-work rule

Before every bounded pass read:
1. this file;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. newest relevant `docs/70_handoff/`;
6. exact owning package/README/source/tests.

Current repository/source/build/device evidence outranks chat memory.

## Main-goal rule

The game is the objective.

Documentation/data/tests exist to preserve intent, ownership, dependencies, dimensions, coordinates, implementation readiness, verification evidence, continuity and exact next action.

Do not create paperwork with no game/design/implementation/QA/continuity consumer.

## Authority order

For intended changes:
1. current explicit user instruction;
2. current verified source/tests;
3. current owning repository authorities;
4. direct build/runtime/device evidence;
5. external documentation/research;
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

Never begin unrelated next work before closing the current boundary.

## Documentation/navigation law

Every substantial durable piece must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

Use:
- root README — human/game front door;
- `docs/README.md` — placement rules;
- local README — package map;
- `DOCUMENTATION_INDEX.md` — global discovery;
- `docs/70_handoff/` — completed-pass evidence;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- this file — exact operating/next-action state.

Dated status reports are snapshots only and never outrank this file or owning authorities.

## Stage-1 engine/device truth

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`.

Candidate:
- Godot 4.7 family;
- CI/build Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum.

`probes/android_stage1/` remains disposable evidence-gathering source, not production architecture.

Automated lineage:
- protocol revision `c02971996e35770bbaaaf9bf6c460af208db4f83`;
- workflow `33811355891`: SUCCESS;
- protected static 154/154;
- Monster collision 8/8;
- world boundary 12/12;
- state continuity 17/17;
- lifecycle 47/47;
- performance telemetry 20/20;
- Godot parse/smoke + Android export/APK integrity/artifact upload PASS.

Inner APK:
57,570,361 bytes; SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Phone evidence remains deferred:
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone becomes available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Important distinction:
`PRODUCTION_DOMAIN_IMPLEMENTATION = BLOCKED_BY_ENGINE_PHONE_GATE`.

Bounded probe/design/specification/QA work remains authorized and continues independently.

## Recorded first-slice game chain

Recorded at design/build-spec level:
- nine reusable combat/outcome authorities through Defeat/Retreat;
- Mudcrest Raker anatomy/attacks/Berserk/behavior/escape/harvest;
- finite Harvest + Inventory/Recovery Bundle conservation;
- one Raker-Tendon Grip craft/equip proof;
- physical Settlement 01 Smith service;
- Persistence schema-1 safe-point/anti-replay design;
- shared world dimensions/coordinates;
- one complete Region 01 Hunt-01 tracking→encounter→escape/reacquisition proof;
- Hunt-01 graybox geometry specification + registry;
- Hunt-01 build manifest Markdown + machine JSON + validation contract.

No production gameplay/world runtime is claimed.

## Shared spatial baseline

Measurement:
`1 world unit = 1 meter`.

Axes:
+X East / +Y Up / -Z North / +Z South.

Major local spaces:
- `space_settlement_01`;
- `space_frontier_01`;
- `space_region_01`.

Settlement 01:
200×260 m prototype plan; Hunter Gate `(0,0,0)`; Smith workbench `(-22,3,40)`.

Frontier:
~80 m centerline.

Region sector centers:
S00 `(0,0,-35)`; S01 `(-90,-3,-130)`; S02 `(75,2,-135)`; S03 `(-35,4,-245)`; S04 `(-45,22,-365)`; S05 `(80,-4,-265)`; S06 `(70,18,-395)`.

## Hunt-01 spatial/geometry baseline

Scenario:
`R01_HUNT01_M01_TRACK_TO_MEADOW`.

Hunt:
`hunt_r01_m01_proof_01`.

Monster:
`monster_r01_m01_0001`.

Encounter:
`enc_r01_ef02_m01_0001`.

Physical chain:
`S00 -> S01 River Ford -> S03 Feeding Meadow -> EF02 combat -> escape east -> S03→S05 -> reacquisition`.

Required navigable route target:
`285–315 m`.

General route targets:
- sustained <=15%;
- short <=18%;
- required step <=0.25 m;
- normal cross-slope <=8%.

River Ford:
- basin 58×54 m;
- water 34×18 m;
- required depth 0.15–0.55 m;
- wallow 16×12 m;
- exit mud 20×12 m.

S01→S03:
- ~58 m / ~7 m rise reference;
- Hunter width >=6 m;
- Raker width >=9 m;
- overhead >=4.5 m.

EF02:
- 70×54 m working floor;
- ~48×34 m open core;
- 16×12 m observation shelf;
- 10 nodes / 14 links;
- boulder 5×4×3 m;
- tree trunk 1.4 m diameter + 4×3 m root base;
- Charge lane ~48 m × >=9 m;
- pivot radius 8 m;
- body-force reference 24×24 m.

Escape stub:
`(-8,4,-258) -> (23,0,-255) -> (35,0,-260) -> (58,-3,-268)` with Raker width >=9 m.

## Hunt-01 build manifest — RECORDED

Human owner:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.md`.

Machine projection:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`.

Validation owner:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_VALIDATION_PASS_2026-09-03.md`.

Manifest structure:
- 12 engine-neutral build groups;
- physical terrain/corridor/cover entries;
- 7 evidence placements;
- 10 tactical nodes;
- 14 tactical links;
- Monster pivot/body-force/Charge clearance;
- escape corridor;
- camera clearance;
- 3 stream proxies;
- terrain allowlist;
- validation rule IDs `H01VAL001..030`.

### Build-only coordinates

Observation-ramp midpoint:
`build_ctrl_h01_obs_ramp_mid = (-74.0,4.62,-237.5)`.

Status:
`PROTOTYPE_BUILD_CONTROL_NOT_GAMEPLAY_ANCHOR`.

It creates approximately 6.6 m 3D observation→N01 ramp routing with segment grades around 15–16%, inside the <=18% short-transition target.

Nominal west brush-belt center:
`(-74,4,-250)` within current 10–14 m depth allowance.

Status:
`PROTOTYPE_NOMINAL_PLACEMENT`.

Neither value is persistence/evidence/tactical/Monster authority.

## Validation contract — RECORDED

Levels:
1. `MANIFEST_STATIC`;
2. `SCENE_STATIC_FUTURE`;
3. `RUNTIME_FUTURE`;
4. `PHONE_FUTURE`.

No lower-level PASS promotes a higher level.

Thirty rule IDs exist.

Minimum first executable subset:
`H01VAL001,002,003,004,012,013,014,021,024,025,026,027,030`.

The first validator must also report:
- entry/group counts;
- recomputed node-link distances;
- ramp path/segment-grade calculations;
- coordinate-copy consistency;
- higher-level checks as NOT EXECUTED.

## Verification boundary

Recorded:
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_RECORDED = YES`
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_RECORDED = YES`
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_RECORDED = YES`
`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_INTEGRATION_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION_RECORDED = YES`.

Not implemented/verified:
`HUNT01_GRAYBOX_MANIFEST_STATIC_VALIDATOR_IMPLEMENTED = NO`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = NO`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`
`WORLD_SPATIAL_RUNTIME_VERIFIED = NO`
`SPATIAL_COORDINATES_PHONE_VERIFIED = NO`
`PERSISTENCE_RUNTIME_IMPLEMENTED = NO`.

## Exact current active non-phone gate

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`.

Bounded scope:
1. reread this file, latest handoff, `CODE_GUIDE.md`, `CONTENT_DATA_GUIDE.md`, `docs/60_quality/README.md`, build manifest JSON and validation spec;
2. select/create the smallest test/quality source location consistent with current code guide;
3. parse JSON with no third-party runtime dependency unless justified;
4. implement MANIFEST_STATIC rules `001,002,003,004,012,013,014,021,024,025,026,027,030`;
5. compute node-link distances from manifest coordinates;
6. compute observation-ramp path length and segment grades;
7. verify source coordinate copies against an explicit validator fixture/source table derived from current owning spatial registry;
8. verify required counts/families/groups and terrain tags;
9. emit deterministic human-readable PASS/FAIL + machine-readable result if practical;
10. return non-zero on ERROR;
11. test the validator with at least one intentional invalid fixture or mutation so failure detection is proven;
12. update quality/Region/front doors and handoff;
13. do not create engine scene, production gameplay code, final art or phone PASS claims.

## After static validator

Reread engine/domain gate.

If production world implementation remains blocked, choose the next smallest build/test-enabling artifact based on validated manifest evidence rather than broad content expansion.

If new phone evidence clears the engine gate, begin only the smallest verified Hunt-01 graybox implementation slice.

## Saved visual concept

Google Drive `Unnamed Hunt RPG`:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only.

## Current gate truth

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`
`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154`
`MONSTER_COLLISION_STATIC = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC = YES / 12_OF_12`
`VIEW_CONTINUITY_HEADLESS = YES / 17_OF_17`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS = YES / 47_OF_47`
`PERFORMANCE_TELEMETRY_HEADLESS = YES / 20_OF_20`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`PRODUCTION_DOMAIN_IMPLEMENTATION = BLOCKED_BY_ENGINE_PHONE_GATE`.

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`
`NEXT_INDEPENDENT_DESIGN_ACTION = FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`.
