# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / HUNT-01 TRACKING→ENCOUNTER INTEGRATION RECORDED / GRAYBOX GEOMETRY SPECIFICATION NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Build the Android monster-hunting tactical RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION`.

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

For current graybox-geometry work additionally read:
- shared spatial framework + major registry;
- Region 01 README;
- Hunt-01 integration contract + concrete registry;
- Region topology/tracking/terrain/encounter/streaming/acceptance;
- Monster 01 anatomy/attacks;
- Persistence.

## Project identity

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Playable direction:
walkable Settlement 01 -> frontier transition -> aerial Region 01 tracking -> first-person turn-based encounter at same terrain -> anatomy damage/escape/death -> harvest -> Inventory -> physical Smith -> refinement -> persistence -> next hunt.

## Stage-1 engine/device truth

Candidate:
Godot 4.7 family / CI 4.7.2 stable / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated Stage-1 lineage remains successful through workflow `33811355891`.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

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
- first complete Region 01 Hunt-01 tracking→encounter→escape/reacquisition integration.

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

Concrete registry:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_PASS_2026-09-03.md`.

Stable IDs:
- scenario `R01_HUNT01_M01_TRACK_TO_MEADOW`;
- Hunt `hunt_r01_m01_proof_01`;
- Monster `monster_r01_m01_0001`;
- encounter `enc_r01_ef02_m01_0001`.

Physical proof:
`S00 -> S01 River Ford -> S03 Feeding Meadow -> R01_EF02 -> Monster escape east -> canonical S03→S05 route -> same-Monster reacquisition`.

Concrete values:
- 7 evidence anchors;
- ~253 m straight cumulative intended clue chain;
- future actual route target ~260–340 m;
- observation anchor `(-72,5,-236)`;
- initial Hunter node `(-70,4,-238)`;
- initial Monster anchor `(-18,4,-252)`;
- ~54 m initial separation;
- 10 tactical nodes;
- legal node links ~14.0–18.5 m;
- boulder ~5×4×3 m;
- scarred tree/root cover;
- Charge lane ~48×9 m clearance target;
- Monster pivot-clearance radius ~8 m;
- east escape boundary `(-8,4,-258)`;
- S05 same-Monster staging `(58,-3,-268)`;
- six Persistence checkpoint applications.

No GPS is exposed to the player merely because authoring coordinates exist.

## Verification boundary

`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_INTEGRATION_RECORDED = YES`
`REGION01_HUNT01_TACTICAL_NODES_RECORDED = YES`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`
`REGION01_HUNT01_PHONE_VERIFIED = NO`.

## Exact next game-development piece

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION`

Purpose:
convert the recorded Hunt-01 route into primitive build-ready geometry for only S00→S01→S03 + EF02.

Bounded expected content:
- route corridor widths;
- grade/elevation segments;
- river/mud/wallow terrain-patch dimensions;
- meadow/observation terrain-patch dimensions;
- evidence marker/inspection volumes;
- tactical-node marker volumes;
- boulder/tree primitive placement tolerances;
- Monster Charge/pivot/escape clearance volumes;
- camera-transition clearances;
- streaming boundary/grace-zone proxies;
- path-length/large-body-fit/visibility tests;
- no final art/all-seven-sector expansion/runtime PASS.

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
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`.

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION`.