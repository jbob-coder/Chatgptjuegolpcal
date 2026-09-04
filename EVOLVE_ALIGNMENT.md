# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / HUNT-01 TRACKING→ENCOUNTER + GRAYBOX GEOMETRY SPECIFICATIONS RECORDED / BUILD MANIFEST + VALIDATION SPECIFICATION NEXT
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

Dated status reports are snapshots only and never outrank this file or owning authorities.

## Saved project report

User-requested report:
`docs/00_project/PROJECT_STATUS_REPORT_2026-09-03.md`.

Classification:
`DATED_REVIEW_SNAPSHOT / NOT_LIVE_OPERATING_AUTHORITY`.

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

Important distinction:
`PRODUCTION_DOMAIN_IMPLEMENTATION = BLOCKED_BY_ENGINE_PHONE_GATE`.

Stage-1 bounded probe/design/specification work remains authorized and continues independently.

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

## Region 01 Hunt-01 tracking->encounter integration — RECORDED

Rules:
`docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`.

Concrete spatial registry:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

Stable proof identities:
- scenario `R01_HUNT01_M01_TRACK_TO_MEADOW`;
- Hunt `hunt_r01_m01_proof_01`;
- Monster `monster_r01_m01_0001`;
- encounter `enc_r01_ef02_m01_0001`;
- footprint `R01_EF02`.

Selected physical chain:
`S00 departure -> S01 River Ford -> S03 Feeding Meadow -> observation -> EF02 combat -> Monster escape east -> canonical S03->S05 route -> reacquisition`.

Recorded:
- seven pre-engagement evidence anchors;
- wrong S02 inference remains physically legal/recoverable;
- 10 tactical nodes;
- physical cover;
- Monster clearance targets;
- same-Monster escape/reacquisition;
- six Persistence checkpoints.

## Hunt-01 graybox geometry — RECORDED

Rules:
`docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`.

Concrete registry:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION_PASS_2026-09-03.md`.

### Required route

Current centerline through route controls is ~279 m before final observation-ramp smoothing.

Selected navigable graybox target:
`285–315 m`.

Grade/step targets:
- normal sustained <=15%;
- short <=18%;
- required step/ledge <=0.25 m;
- normal cross-slope <=8%.

### S00 / S00->S01

- departure pad 18×14 m;
- route-choice clearing 24×20 m;
- primary S01 route >=7 m;
- required Raker corridor >=9 m;
- Monster bends 10–12 m;
- Monster-route overhead >=4.5 m;
- S02 wrong-route mouth remains >=6 m clear for first 20–30 m.

### S01 River Ford

- working envelope 58×54 m;
- shallow-water patch 34×18 m;
- required crossing depth 0.15–0.55 m;
- wallow mud 16×12 m, depression ~0.35–0.45 m;
- exit mud 20×12 m;
- required dry-bank shoulders >=8 m;
- required bank sustained slope <=12° / short <=15°;
- reeds/brush 3–6 m deep, non-solid by default.

### S01->S03

- route controls span ~58 m / ~7 m rise;
- hunter surface >=6 m;
- required Raker corridor >=9 m;
- bend width 10–11 m;
- overhead >=4.5 m;
- sustained grade <=14%; short <=16%;
- two visibility-break geometry targets.

### EF02 Meadow

- working floor 70×54 m within existing 76×60 m footprint;
- primary Y band 3.5–5.5 m;
- open core ~48×34 m;
- observation shelf 16×12 m;
- observation->N01 uses 6–7 m curved/ramped approach >=3.5 m wide;
- tactical-node marker 2 m diameter / legal-link corridor >=3.5 m;
- immediate Hunter head clearance >=3 m.

### Cover

Boulder:
5×4×3 m, ~15–25° yaw, placement tolerance ±0.75 m X/Z.

Scarred tree:
1.4 m trunk diameter, >=8 m graybox height, 4×3 m root base.

### Monster clearances

- Charge lane ~48 m, >=9 m permanent-solid-free width, >=4.5 m height;
- MA01 pivot cylinder radius 8 m / >=4.5 m height;
- 24×24 m body-force reference area proving ~12 m relevant directional clearance;
- escape/S05 staging corridor >=9 m, sustained grade <=15%, overhead >=4.5 m.

These are environment fit targets, not final Monster collider/attack-range laws.

### Camera / streaming debug

- N01 camera descent clear radius 4 m / Y ~4..16;
- initial sight tube radius 1.5 m;
- streaming debug proxies at S00/S01, S01/S03 and S03/S05 route anchors;
- debug proxies have no gameplay collision and do not select final runtime grace meters.

## Current verification boundary

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_RECORDED = YES`
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_RECORDED = YES`
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_RECORDED = YES`
`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_INTEGRATION_RECORDED = YES`
`REGION01_HUNT01_TACTICAL_NODES_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_REGISTRY_RECORDED = YES`.

Not verified/implemented:
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`
`WORLD_SPATIAL_RUNTIME_VERIFIED = NO`
`SPATIAL_COORDINATES_PHONE_VERIFIED = NO`
`PERSISTENCE_RUNTIME_IMPLEMENTED = NO`.

## Exact current active non-phone gate

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`

Why this is next:
- Hunt-01 coordinates and dimensions now exist;
- the next build-enabling artifact is a stable scene/build manifest plus validation-data ownership;
- production world implementation remains blocked by the engine-phone gate;
- this keeps game construction moving without broad content expansion or false runtime claims.

Bounded scope:
1. reread Hunt-01 geometry specification/registry, integration/spatial authorities and engine gate;
2. define engine-neutral parent/build groups for only S00->S01->S03 + EF02 + escape stub;
3. map every graybox geometry ID to one stable build entry;
4. classify each entry as terrain/solid/non-solid/debug/camera/stream/evidence/node/Monster-clearance;
5. define terrain-tag binding and world-space fields;
6. define collision/navigation intent without locking final collider dimensions;
7. define machine-readable validation fields for coordinates/dimensions/grades/links/clearances;
8. define static validation ownership/check list;
9. define build order and expected validation output;
10. do not create final art, broad Region content, production gameplay source or phone PASS claims.

## After build manifest / validation specification

Reread the engine/domain gate. If production implementation is still blocked, choose the next smallest test/build-enabling artifact rather than expanding content. If new phone evidence clears the gate, begin only the smallest verified Hunt-01 graybox implementation slice.

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
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`
`NEXT_INDEPENDENT_DESIGN_ACTION = FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`.
