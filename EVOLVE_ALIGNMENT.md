# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN THROUGH PERSISTENCE + WORLD COORDINATE/DIMENSION FRAMEWORK RECORDED / REGION TRACKING->ENCOUNTER GRAYBOX INTEGRATION NEXT
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
nine reusable first-slice contracts through Defeat/Retreat.

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

## World coordinate / dimension baseline — RECORDED

Front door:
`docs/10_world/spatial/README.md`.

Framework:
`docs/10_world/spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`.

Registry:
`docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_PASS_2026-09-03.md`.

Selected measurement:
`1 world unit = 1 meter`.

Selected world/map axes:
- +X East;
- +Y Up;
- -Z North / outbound wilderness;
- +Z South / settlement-inbound.

Heading:
0° North / 90° East / 180° South / 270° West.

Selected local spaces:
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

Key anchors:
- Gate outer `(0,0,-10)`;
- Processing Yard `(-34,1,22)`;
- Smith center `(-22,3,42)`;
- Smith entry `(-16,3,34)`;
- Smith workbench `(-22,3,40)`;
- Storage/Loadout `(24,4,38)`;
- Hunter Lodge `(34,7,105)`;
- Market/Civic `(-34,7,105)`;
- Recovery/Inn `(20,12,175)`;
- Residential center `(-22,12,185)`;
- Arrival gate `(0,7,242)`.

Gate->Smith workbench straight planning distance ~45.7 m. Existing <=25-second walking target remains `UNVERIFIED` until graybox movement/path measurement.

Selected built-scale targets include:
- Hunter 1.75 m `LOCKED/CURRENT`;
- Monster 01 ~6.6 m long / ~3.0 m shoulder height `PROTOTYPE`;
- Smith 16×22 m;
- processing yard 28×24 m;
- storage 16×20 m;
- Hunter Lodge 28×32 m;
- market plaza 28×24 m;
- recovery/inn 18×24 m;
- main route ~8 m;
- secondary street ~5 m;
- alley ~3 m;
- Hunter Gate ~7 m clear width;
- defensive wall ~7 m high.

### Frontier

`space_frontier_01`:
- ~80 m centerline;
- ~12 m normal clear width;
- ~8 m minimum choke;
- up to ~18 m watch/supply widening;
- ~4 m total elevation drop.

Anchors:
- gate outer `(0,0,0)`;
- pass exit `(0,-1,-14)`;
- watch/supply `(6,-2,-42)`;
- Region handoff `(0,-4,-80)`.

### Region 01

`space_region_01` origin:
`anchor_r01_entry = (0,0,0)`.

Sector centers:
- S00 `(0,0,-35)`;
- S01 `(-90,-3,-130)`;
- S02 `(75,2,-135)`;
- S03 `(-35,4,-245)`;
- S04 `(-45,22,-365)`;
- S05 `(80,-4,-265)`;
- S06 `(70,18,-395)`.

Canonical linked center distances are approximately 117–165 m and preserve all existing topology links. Deepest center is ~401.6 m from Region entry.

All eleven canonical route-anchor coordinates are recorded in the registry. No extra adjacency was created.

Encounter footprints:
- EF01 Riverbank Ford `(-92,-4,-145)`, 52×46 m;
- EF02 Meadow Edge `(-45,4,-250)`, 76×60 m;
- EF03 Root/Boulder Hollow `(43,0,-205)`, 58×52 m;
- EF04 Deep Nest Shelf `(70,19,-405)`, 68×56 m.

Exact tactical nodes remain intentionally deferred.

## Spatial verification boundary

`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_RECORDED = YES`
`WORLD_SPATIAL_GRAYBOX_IMPLEMENTED = NO`
`WORLD_SPATIAL_RUNTIME_VERIFIED = NO`
`SPATIAL_COORDINATES_PHONE_VERIFIED = NO`.

All unbuilt coordinate values are prototype targets, not production-final facts.

## Exact current active non-phone gate

`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`

Bounded scope:
1. reread the spatial framework/registry, Region 01 topology/tracking/encounter/streaming/acceptance authorities, Monster 01 behavior/anatomy/attacks, terrain/combat/outcome owners and Persistence;
2. choose one representative first-slice physical pursuit beginning at S00 after Frontier entry;
3. place a small ordered set of evidence anchors using existing Region evidence classes and current coordinates;
4. define player route-choice points without omniscient Monster GPS;
5. define same Monster instance position/activity/route anchors and deterministic movement facts;
6. choose an engagement approach and exact existing footprint for the first integrated proof;
7. define a first tactical-node plan inside that footprint with node IDs, positions, terrain tags, cover, elevation, links and escape relation;
8. ensure Monster 01 body/Charge/Tail/Ram clearance is physically plausible from its ~6.6×3.0 m prototype dimensions;
9. map aerial engagement position/bearing/range into first-person entry without changing terrain context;
10. define Monster escape route through canonical Region anchors and reacquisition evidence/position after combat;
11. define save/reload checkpoints using `space_region_01` positions and same Monster/evidence/encounter IDs;
12. record direct path-length, visibility, camera-obstruction, route-clearance and topology acceptance targets;
13. record future graybox tests;
14. do not create production art/runtime code, broad tracking catalog, second Monster or phone PASS claims.

## After tracking-to-encounter integration

Reread current vertical-slice readiness and choose the smallest remaining integration dependency. Do not expand broad content until one complete physical hunt path is coherent.

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
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_RECORDED = YES`
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_RECORDED = YES`
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_RECORDED = YES`
`WORLD_SPATIAL_GRAYBOX_IMPLEMENTED = NO`
`PERSISTENCE_RUNTIME_IMPLEMENTED = NO`.

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`
`NEXT_INDEPENDENT_DESIGN_ACTION = FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`.