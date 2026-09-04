# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / HUNT-01 TRACKING→ENCOUNTER + GRAYBOX GEOMETRY SPECIFICATIONS RECORDED / BUILD MANIFEST + VALIDATION SPECIFICATION NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Build the Android monster-hunting tactical RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`.

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

For the current next piece additionally read:
- `docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`;
- Hunt-01 integration contract/spatial registry;
- shared spatial framework;
- Region topology/streaming/acceptance;
- current engine/domain gate.

## Project identity

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Playable direction:
walkable Settlement 01 -> frontier transition -> aerial Region 01 tracking -> first-person turn-based encounter at same terrain -> anatomy damage/escape/death -> harvest -> Inventory -> physical Smith -> refinement -> persistence -> next hunt.

## Stage-1 engine/device truth

Candidate:
Godot 4.7 family / CI 4.7.2 stable / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated Stage-1 lineage remains successful through workflow `33811355891`.

`IMPLEMENTATION_AUTHORIZED = YES` for the current Stage-1 probe/bounded work.

`PRODUCTION_DOMAIN_IMPLEMENTATION = BLOCKED_BY_ENGINE_PHONE_GATE`.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Saved project report

`docs/00_project/PROJECT_STATUS_REPORT_2026-09-03.md`.

It is a dated snapshot for review. It is not the live current-action authority; EVOLVE remains authoritative for continuation.

## Recorded design chain

Recorded through:
- combat/outcome baseline;
- Monster 01;
- Harvest;
- Inventory;
- one craft/equip proof;
- physical Settlement 01 Smith;
- Persistence;
- shared world coordinates/dimensions;
- complete Region 01 Hunt-01 tracking->encounter->escape/reacquisition integration;
- Hunt-01 primitive graybox geometry specification.

No production gameplay/world runtime is claimed.

## Shared spatial baseline

Measurement:
`1 world unit = 1 meter`.

Axes:
+X East / +Y Up / -Z North / +Z South.

Major spaces:
`space_settlement_01`, `space_frontier_01`, `space_region_01`.

Settlement:
200×260 m prototype envelope, Hunter Gate origin `(0,0,0)`, Smith workbench `(-22,3,40)`.

Frontier:
~80 m centerline.

Region:
seven sector centers; canonical linked center spacing ~117–165 m; deepest center ~402 m from entry.

Hunter:
1.75 m `LOCKED/CURRENT`.

Monster 01:
~6.6 m long / ~3.0 m shoulder-body prototype.

## Hunt-01 physical integration — RECORDED

Rules:
`docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`.

Concrete spatial registry:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

Physical proof:
`S00 -> S01 River Ford -> S03 Feeding Meadow -> R01_EF02 -> Monster escape east -> canonical S03->S05 route -> same-Monster reacquisition`.

Stable IDs:
- scenario `R01_HUNT01_M01_TRACK_TO_MEADOW`;
- Hunt `hunt_r01_m01_proof_01`;
- Monster `monster_r01_m01_0001`;
- encounter `enc_r01_ef02_m01_0001`.

Recorded:
- 7 evidence anchors;
- 10 tactical nodes;
- initial Hunter/Monster separation ~54 m;
- physical boulder/tree cover;
- Charge/pivot/body-clearance targets;
- escape/reacquisition positions;
- six Persistence checkpoint applications.

## Hunt-01 graybox geometry — RECORDED

Rules:
`docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`.

Concrete primitive/volume registry:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION_PASS_2026-09-03.md`.

Major prototype build targets:
- required S00->N01 route 285–315 m after smoothing;
- normal sustained grade <=15%; short <=18%; step <=0.25 m;
- S00->S01 normal surface >=7 m / Raker corridor >=9 m;
- Monster-route overhead >=4.5 m;
- S01 ford envelope 58×54 m;
- shallow water 34×18 m, required depth 0.15–0.55 m;
- wallow mud 16×12 m;
- exit mud 20×12 m;
- S01->S03 hunter route >=6 m / Raker route >=9 m;
- two visibility-break geometry targets;
- EF02 meadow working patch 70×54 m;
- observation shelf 16×12 m;
- observation->N01 ramp 6–7 m / >=3.5 m wide;
- node-link corridors >=3.5 m;
- boulder 5×4×3 m;
- tree trunk 1.4 m diameter + 4×3 m root base;
- Charge lane ~48 m / >=9 m solid-free;
- pivot radius 8 m;
- escape corridor >=9 m;
- camera and streaming debug volumes.

These values are environment graybox targets, not final Monster collider/attack/camera/streaming laws.

## Verification boundary

`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_INTEGRATION_RECORDED = YES`
`REGION01_HUNT01_TACTICAL_NODES_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_REGISTRY_RECORDED = YES`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`
`REGION01_HUNT01_PHONE_VERIFIED = NO`.

## Exact next game-development piece

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`

Purpose:
turn the geometry IDs/measurements into an engine-neutral build manifest and explicit validation ownership so later engine graybox construction can be small, repeatable and testable.

Bounded expected scope:
- scene/build grouping for only S00->S01->S03 + EF02 + escape stub;
- stable primitive IDs and parent groups;
- collision/navigation/debug classification per geometry entry;
- terrain-tag binding points;
- evidence/node/Monster/camera/stream proxy bindings;
- machine-readable validation data requirements;
- static validation/checklist ownership;
- build order/acceptance output;
- no final art, no all-seven-sector expansion, no production gameplay implementation, no phone PASS.

## Saved visual concept

Google Drive:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
Drive ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.
Visual intent only.

## Current exact state

`IMPLEMENTATION_AUTHORIZED = YES`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_RECORDED = YES`
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_RECORDED = YES`
`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_INTEGRATION_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION_RECORDED = YES`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`.

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`.
