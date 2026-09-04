# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / HUNT-01 TRACKING→ENCOUNTER INTEGRATION RECORDED / HUNT-01 GRAYBOX GEOMETRY SPECIFICATION NEXT
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

Documentation exists to preserve intent, ownership, dependencies, implementation readiness, verification evidence, continuity and exact next action. Do not create documentation with no game/design/implementation/QA/continuity consumer.

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
- root README — game/human front door;
- `docs/README.md` — placement rules;
- local README — package map;
- `DOCUMENTATION_INDEX.md` — global discovery;
- `docs/70_handoff/` — completed-pass evidence;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- this file — exact operating/next-action state.

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

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

## Recorded first-slice game-design chain

Combat:
nine reusable first-slice combat/outcome authorities through Defeat/Retreat.

Monster 01:
Mudcrest Raker anatomy/attacks/Berserk/deterministic Region behavior/escape-reacquisition/harvest packet.

Harvest:
finite physical capacity/condition/quality/depletion.

Inventory:
Recovery Bundles + `PLAYER_FIELD_INVENTORY` + provenance/transaction conservation.

Craft/equip:
`recipe_field_poleblade_raker_tendon_grip`
consumes 2 HIGH tail tendon + 2 STANDARD-or-better hide and applies one Field Poleblade refinement.

Effect:
Placed Hew Stamina 18 -> 16 through typed `COST_MODIFIER` only.

Settlement Smith:
physical Settlement 01 workbench on Hunter Service Loop; normal essential service independent of one NPC schedule.

Persistence:
`UHR_SAVE_SCHEMA_1`, version 1, `save_slot_01`, safe-point committed snapshots, active-combat exact scheduler state, transaction anti-replay, same Monster/material/refinement identity after reload.

No production runtime implementation is claimed for these gameplay domains.

## Shared world coordinate / dimension baseline — RECORDED

Front door:
`docs/10_world/spatial/README.md`.

Framework:
`docs/10_world/spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`.

Major registry:
`docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Measurement:
`1 world unit = 1 meter`.

World/map axes:
- +X East;
- +Y Up;
- -Z North / outbound wilderness;
- +Z South / settlement-inbound.

Heading:
0° North / 90° East / 180° South / 270° West.

Major local spaces:
- `space_settlement_01`;
- `space_frontier_01`;
- `space_region_01`.

Persistence consumes `space ID + local XYZ + heading + stable anchor/sector refs`.

### Settlement 01

Prototype planning bounds:
- X `-100..+100 m`;
- Z `-10..+250 m`;
- primary walkable Y `~0..+14 m`;
- plan `200 × 260 m`.

Origin:
`anchor_set01_hunter_gate_inner = (0,0,0)`.

Smith workbench:
`(-22,3,40)`.

### Frontier

~80 m centerline; ~12 m normal clear width; ~8 m minimum choke; up to ~18 m watch/supply widening; ~4 m elevation drop.

### Region 01

Sector centers:
- S00 `(0,0,-35)`;
- S01 `(-90,-3,-130)`;
- S02 `(75,2,-135)`;
- S03 `(-35,4,-245)`;
- S04 `(-45,22,-365)`;
- S05 `(80,-4,-265)`;
- S06 `(70,18,-395)`.

Canonical linked center distances ~117–165 m. Deepest center ~402 m from Region entry.

Encounter footprints:
- EF01 `(-92,-4,-145)`, 52×46 m;
- EF02 `(-45,4,-250)`, 76×60 m;
- EF03 `(43,0,-205)`, 58×52 m;
- EF04 `(70,19,-405)`, 68×56 m.

## Region 01 Hunt-01 tracking→encounter integration — RECORDED

Rules:
`docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`.

Concrete registry:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_PASS_2026-09-03.md`.

Stable proof identities:
- scenario `R01_HUNT01_M01_TRACK_TO_MEADOW`;
- Hunt `hunt_r01_m01_proof_01`;
- Monster `monster_r01_m01_0001`;
- encounter `enc_r01_ef02_m01_0001`;
- footprint `R01_EF02`.

Selected physical chain:
`S00 departure -> S01 River Ford -> S03 Feeding Meadow -> observation -> EF02 combat -> Monster escape east -> canonical S03→S05 route -> reacquisition`.

Tracking proof:
- seven pre-engagement evidence anchors;
- old weak S02 clue competes with fresh strong S03 clue after wallow;
- wrong S02 inference remains physically legal and can recover through canonical topology;
- normal player UI does not expose authoring coordinates as Monster GPS.

Pursuit distance:
- intended straight anchor-chain ~253 m;
- future actual navigable graybox target ~260–340 m;
- intended clue gaps generally under ~70 m;
- no required gap should exceed ~90 m without strong macro/route orientation.

Observation / engagement:
- observation `(-72,5,-236)`;
- N01 entry `(-70,4,-238)`;
- Monster MA01 `(-18,4,-252)`;
- observation range ~56 m;
- initial tactical separation ~54 m;
- player heading ~75° toward Monster;
- Monster facing ~255°.

Tactical layout:
- nodes `R01_EF02_N01..N10`;
- selected legal link distances ~14.0–18.5 m;
- primary surfaces Stable/Rough with Brush/High-Ground context where physically justified;
- no generic arena teleport;
- node world coordinates remain the encounter coordinates.

Physical cover:
- `R01_EF02_COV01_BOULDER_W` ~5×4×3 m;
- `R01_EF02_COV02_SCARRED_TREE_NW` trunk ~1.4 m diameter + ~4×3 m root base.

Monster clearance targets:
- Monster body prototype ~6.6 m long / ~3.0 m shoulder-body height;
- `R01_EF02_CHARGE_LANE_W` ~48 m centerline / ~9 m clear width;
- initial Monster pivot permanent-solid-free radius ~8 m;
- ~12 m local body-force clearance around initial Monster position.

These are environment-clearance targets, not final attack-range/collider laws.

Escape/reacquisition:
- east footprint escape boundary `(-8,4,-258)`;
- canonical S03↔S05 route `(23,0,-255)`;
- guaranteed passage evidence around `(8,2,-257)`;
- deeper route evidence around `(35,0,-260)`;
- same Monster S05 staging `anchor_r01_h01_m01_reacquire_s05 = (58,-3,-268)`.

Blood/altered-gait evidence remains conditional on authoritative injury state.

Persistence checkpoints:
- `H01_CP01_S00_ROUTE_CHOICE`;
- `H01_CP02_S01_POST_WALLOW`;
- `H01_CP03_MEADOW_OBSERVATION`;
- `H01_CP04_EF02_COMBAT_DECISION`;
- `H01_CP05_POST_MONSTER_ESCAPE`;
- `H01_CP06_S05_REACQUIRE`.

Reload preserves the same Monster/evidence/encounter IDs and cannot replay scheduler hooks or escape outcome.

## Verification boundary

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_RECORDED = YES`
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_RECORDED = YES`
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_RECORDED = YES`
`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_INTEGRATION_RECORDED = YES`
`REGION01_HUNT01_TACTICAL_NODES_RECORDED = YES`.

Not verified/implemented:
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`
`WORLD_SPATIAL_RUNTIME_VERIFIED = NO`
`SPATIAL_COORDINATES_PHONE_VERIFIED = NO`
`PERSISTENCE_RUNTIME_IMPLEMENTED = NO`.

## Exact current active non-phone gate

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION`

Why this is next:
- logical/spatial Hunt-01 coordinates now exist;
- the next practical authoring layer is primitive geometry, not more abstract systems;
- final production implementation remains blocked by the engine-phone/domain gate;
- a blockout specification can continue game construction without falsely claiming engine/runtime evidence.

Bounded scope:
1. reread Hunt-01 integration contract/registry, shared spatial framework, Region topology/tracking/terrain/encounter/streaming/acceptance and Monster 01 anatomy/attacks;
2. specify S00 departure/fork ground/route widths and grades;
3. specify S00→S01 corridor cross-section/clearance and large-body pass assumptions where applicable;
4. specify S01 River Ford water/mud/dry-bank patch dimensions, bank slopes and wallow/evidence volumes;
5. specify S01→S03 physical route geometry and visibility breaks;
6. specify S03 feeding/observation meadow-edge geometry;
7. specify EF02 terrain patch shape/height bands and tactical-node marker volumes;
8. specify COV01 boulder and COV02 scarred-tree primitive geometry/tolerances;
9. specify Charge lane, Monster pivot, body-force and escape-route clearance volumes;
10. specify camera-transition clearance markers without locking final FOV/altitude;
11. specify streaming-boundary/grace-zone debug proxies for only this corridor;
12. define route-length, slope, Monster-fit, cover-line, sightline and no-softlock validation checks;
13. do not build final art, all seven sectors, production gameplay code or phone PASS claims.

## After Hunt-01 graybox geometry specification

Reread the engine/domain gate. If production world implementation is still blocked, choose the next smallest build-enabling artifact/test specification rather than broad content expansion. If the gate changes through new phone evidence, transition to the smallest verified graybox implementation slice.

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
`FINAL_ENGINE_SELECTED = NO`.

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION`
`NEXT_INDEPENDENT_DESIGN_ACTION = FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION`.