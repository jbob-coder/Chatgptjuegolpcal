# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PHONE GATE DEFERRED / HUNT-01 PHYSICAL INTEGRATION + GRAYBOX GEOMETRY SPECIFICATIONS RECORDED / BUILD MANIFEST + VALIDATION SPECIFICATION NEXT
Last reconciled: 2026-09-03

## Purpose

Map authority, ownership, verification boundaries and continuation order so the project can be reconstructed from repository evidence instead of chat memory.

Required answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. exact owning package/README/source/tests.

## Project governance / reports

Project-governance front door:
`docs/00_project/README.md`.

Build readiness:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Saved requested status report:
`docs/00_project/PROJECT_STATUS_REPORT_2026-09-03.md`.

The status report is a dated snapshot, not a live operating contract. EVOLVE remains authoritative for exact current action.

## Stage-1 engine / Android

Authorities:
- `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`;
- `probes/android_stage1/`;
- `PERFORMANCE_BUDGETS_AND_CAPS.md`.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene target.

`IMPLEMENTATION_AUTHORIZED = YES` for Stage-1 probe/bounded work.

`PRODUCTION_DOMAIN_IMPLEMENTATION = BLOCKED_BY_ENGINE_PHONE_GATE`.

`ENGINE_PHONE_PROBE_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## World / shared spatial authorities

Root:
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`.

World front door:
`docs/10_world/README.md`.

Spatial front door:
`docs/10_world/spatial/README.md`.

Shared coordinate framework:
`docs/10_world/spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`.

Major coordinate registry:
`docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Selected shared facts:
- 1 unit = 1 meter;
- +X East / +Y Up / -Z North / +Z South;
- `space_settlement_01`, `space_frontier_01`, `space_region_01`;
- Settlement 01 200×260 m prototype envelope;
- Frontier ~80 m;
- seven Region 01 sector centers + eleven canonical route anchors;
- four encounter-footprint centers/envelopes.

## Settlement 01

Front door:
`docs/10_world/settlements/SETTLEMENT_01/README.md`.

Smith service:
`docs/10_world/settlements/SETTLEMENT_01/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT.md`.

Smith workbench prototype anchor:
`space_settlement_01 (-22,3,40)`.

## Region 01

Front door:
`docs/10_world/regions/REGION_01/README.md`.

Reusable Region owners:
- `REGION_TOPOLOGY.md`;
- `TRACKING_AND_ESCAPE.md`;
- `TERRAIN_ECOLOGY_MUTATION.md`;
- `ENCOUNTER_FOOTPRINTS.md`;
- `STREAMING_AND_PERFORMANCE.md`;
- `ACCEPTANCE_CHECKLIST.md`.

### Hunt-01 integrated proof

Rules:
`docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`.

Concrete spatial registry:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_PASS_2026-09-03.md`.

Proof:
`S00 -> S01 River Ford -> S03 Feeding Meadow -> EF02 -> Monster escape toward S05 -> reacquisition`.

Recorded:
- stable Hunt/Monster/encounter IDs;
- seven evidence anchors;
- 10 tactical nodes;
- physical cover;
- Monster clearance targets;
- escape/reacquisition coordinates;
- Persistence checkpoint application.

### Hunt-01 graybox geometry

Rules:
`docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`.

Concrete geometry registry:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION_PASS_2026-09-03.md`.

Selected prototype build targets:
- smoothed required route 285–315 m;
- sustained grade <=15%, short <=18%, required step <=0.25 m;
- S00->S01 player surface >=7 m / required Raker corridor >=9 m;
- Monster-route overhead >=4.5 m;
- S01 ford envelope 58×54 m;
- shallow-water patch 34×18 m, required depth 0.15–0.55 m;
- wallow mud 16×12 m;
- exit mud 20×12 m;
- S01->S03 hunter corridor >=6 m / Raker corridor >=9 m;
- EF02 working meadow 70×54 m;
- observation shelf 16×12 m;
- observation->N01 ramp 6–7 m / >=3.5 m wide;
- tactical link corridors >=3.5 m;
- boulder 5×4×3 m;
- tree 1.4 m trunk diameter + 4×3 m root base;
- Charge lane ~48 m / >=9 m clear;
- pivot radius 8 m;
- escape corridor >=9 m;
- camera/streaming debug volumes.

These remain design/build targets only.

## Gameplay authorities

Front door:
`docs/20_gameplay/README.md`.

Combat:
`docs/20_gameplay/combat/README.md`.

Harvest:
`docs/20_gameplay/harvest/README.md`.

Inventory:
`docs/20_gameplay/inventory/README.md`.

Crafting:
`docs/20_gameplay/crafting/README.md`.

Progression:
`docs/20_gameplay/progression/README.md`.

## Monster 01

Front door:
`docs/30_content/monsters/MONSTER_01/README.md`.

Mudcrest Raker prototype:
~6.6 m long / ~3.0 m shoulder-body height.

## Hunter reference

`docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md`.

Locked prototype height:
1.75 m.

## Persistence

Front door:
`docs/50_technical/persistence/README.md`.

Authority:
`docs/50_technical/persistence/FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT.md`.

Persistence consumes shared spatial `space ID + local XYZ + heading` plus Hunt-01 stable IDs/positions; it does not redefine geometry.

## Saved concept image

Google Drive folder `Unnamed Hunt RPG`:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
Drive ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only.

## Current sequence

Completed design/integration sequence through:
`Combat -> Monster 01 -> Defeat/Retreat -> Harvest -> Inventory -> One Recipe -> Physical Smith -> Persistence -> World Coordinates/Dimensions -> Region 01 Hunt-01 Tracking→Encounter Integration -> Hunt-01 Graybox Geometry Specification`.

Current active non-phone action:
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`.

That pass must turn the dimensioned geometry into an engine-neutral build/scene manifest and explicit validation-data/test ownership without expanding to final art/all seven sectors.

## Documentation placement law

- root README — human front door;
- `docs/README.md` — placement rules;
- local package README — local map;
- shared spatial files — common world axes/major geometry;
- Region-specific registries — local hunt/evidence/node/primitive geometry;
- gameplay files — reusable mechanics;
- technical persistence — save/reload ownership;
- content packages — species/hunter configuration;
- `docs/70_handoff/` — completed-pass continuity;
- dated project reports — review snapshots only;
- this index — cross-project discovery;
- `EVOLVE_ALIGNMENT.md` — exact operating/next-action state.
