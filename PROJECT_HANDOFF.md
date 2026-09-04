# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN THROUGH PERSISTENCE + SPATIAL FRAMEWORK RECORDED / REGION TRACKING->ENCOUNTER GRAYBOX INTEGRATION NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Build the Android monster-hunting tactical RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`.

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

For current Region graybox integration additionally read:
- `docs/10_world/spatial/README.md`;
- coordinate framework + registry;
- Region 01 README / topology / tracking / encounter / streaming / acceptance;
- Monster 01 behavior/anatomy/attacks;
- current terrain/status/defeat-retreat owners;
- Persistence because pursuit/encounter locations must survive save/reload.

## Project identity

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Playable direction:
walkable Settlement 01 -> frontier transition -> aerial Region 01 tracking -> first-person turn-based encounter at same terrain -> anatomy damage/escape/death -> harvest -> Inventory -> physical Smith -> refinement -> persistence -> next hunt.

## Stage-1 engine/device truth

Candidate:
Godot 4.7 family / CI 4.7.2 stable / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated lineage remains successful through workflow `33811355891`.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Recorded first-slice design chain

Combat baseline through Defeat/Retreat: RECORDED.

Monster 01 Mudcrest Raker:
~6.6 m long / ~3.0 m shoulder-body prototype; anatomy/attacks/Berserk/behavior/escape/harvest packet recorded.

Harvest/Inventory/Craft:
physical finite source -> Recovery Bundle -> player Inventory -> `recipe_field_poleblade_raker_tendon_grip` -> Field Poleblade refinement -> Placed Hew Stamina 18->16.

Settlement Smith:
physical workbench on the Hunter Service Loop, normal essential service independent of one NPC schedule.

Persistence:
`UHR_SAVE_SCHEMA_1`, one first-slice slot, safe-point committed snapshots, active-combat scheduler continuity, transaction anti-replay and same Monster/material/equipment identity across reload.

No production runtime implementation is claimed for these domains.

## Spatial coordinate/dimension baseline — RECORDED

Front door:
`docs/10_world/spatial/README.md`.

Framework:
`docs/10_world/spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`.

Registry:
`docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_PASS_2026-09-03.md`.

Selected:
- 1 world unit = 1 meter;
- +X East / +Y Up / -Z North / +Z South;
- separate `space_settlement_01`, `space_frontier_01`, `space_region_01` coordinate spaces;
- stable transition anchor mapping between spaces;
- Settlement 01 200×260 m prototype envelope with major service anchors;
- Hunter Gate origin `(0,0,0)`;
- Smith workbench `(-22,3,40)`;
- ~80 m Frontier corridor;
- Region entry `(0,0,0)` in its own space;
- seven Region sector centers preserving canonical adjacency;
- connected center distances ~117–165 m;
- S06 deepest center ~402 m from entry;
- eleven canonical route anchors;
- four encounter-footprint centers/envelopes within existing 30–90 m guidance.

All numeric world positions remain `PROTOTYPE TARGETS` until graybox/runtime/device validation unless explicitly labeled locked.

`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_RECORDED = YES`
`WORLD_SPATIAL_GRAYBOX_IMPLEMENTED = NO`
`WORLD_SPATIAL_RUNTIME_VERIFIED = NO`
`SPATIAL_COORDINATES_PHONE_VERIFIED = NO`.

## Exact next game-development piece

`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`

Purpose:
use the new coordinate registry to define one representative physical first hunt chain rather than only isolated sector/footprint documents.

Bounded expected content:
- select one S00 departure route and evidence progression;
- assign evidence anchors and player route choices;
- assign same Monster instance's movement/position anchors;
- define observation/engagement threshold and one footprint entry;
- define first tactical-node/cover/escape-node planning set for that footprint;
- define Monster escape route into reacquisition using canonical Region links;
- preserve exact position/identity through Persistence;
- define path-length/sightline/body-clearance/camera-transition graybox acceptance checks;
- no production art/runtime implementation or phone PASS claim.

## Saved visual concept

Google Drive folder `Unnamed Hunt RPG`.
File `Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`.
Drive ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.
Visual intent only.

## Current exact state

`IMPLEMENTATION_AUTHORIZED = YES`
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
`WORLD_SPATIAL_RUNTIME_VERIFIED = NO`.

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`.