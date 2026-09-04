# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN THROUGH SPATIAL COORDINATES RECORDED / REGION TRACKING->ENCOUNTER GRAYBOX INTEGRATION NEXT
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

## Stage-1 engine / Android

Primary authorities:
- `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`;
- `probes/android_stage1/`;
- `PERFORMANCE_BUDGETS_AND_CAPS.md`.

Current candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS target.

`ENGINE_PHONE_PROBE_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## World / spatial authorities

Root:
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`.

World front door:
`docs/10_world/README.md`.

Spatial front door:
`docs/10_world/spatial/README.md`.

Coordinate framework:
`docs/10_world/spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`.

Coordinate registry:
`docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Spatial handoff:
`docs/70_handoff/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_PASS_2026-09-03.md`.

Selected:
- 1 unit = 1 meter;
- +X East / +Y Up / -Z North / +Z South;
- `space_settlement_01`, `space_frontier_01`, `space_region_01`;
- Settlement 01 200×260 m prototype planning envelope;
- concrete service/gate anchors;
- ~80 m Frontier transition;
- seven Region 01 sector centers + eleven canonical route anchors;
- four encounter-footprint centers/envelopes;
- all unbuilt values remain prototype targets.

## Settlement 01

Front door:
`docs/10_world/settlements/SETTLEMENT_01/README.md`.

Smith service:
`docs/10_world/settlements/SETTLEMENT_01/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT.md`.

Smith workbench prototype anchor:
`space_settlement_01 (-22,3,40) m`.

## Region 01

Front door:
`docs/10_world/regions/REGION_01/README.md`.

Detailed owners:
- `REGION_TOPOLOGY.md`;
- `TRACKING_AND_ESCAPE.md`;
- `TERRAIN_ECOLOGY_MUTATION.md`;
- `ENCOUNTER_FOOTPRINTS.md`;
- `STREAMING_AND_PERFORMANCE.md`;
- `ACCEPTANCE_CHECKLIST.md`.

Region coordinates now consume the shared spatial registry; canonical topology remains unchanged.

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

Mudcrest Raker prototype body:
~6.6 m long / ~3.0 m shoulder-body height.

## Hunter reference

`docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md`.

Locked prototype body height:
`1.75 m`.

## Persistence

Front door:
`docs/50_technical/persistence/README.md`.

Authority:
`docs/50_technical/persistence/FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_PASS_2026-09-03.md`.

Persistence consumes shared spatial `space ID + local XYZ + heading`; it does not redefine coordinates.

## Saved concept image

Google Drive folder `Unnamed Hunt RPG`:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
Drive ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only.

## Current sequence

Completed design sequence through:
`Combat -> Monster 01 -> Defeat/Retreat -> Harvest -> Inventory -> One Recipe -> Physical Smith -> Persistence -> World Coordinate/Dimension Framework`.

Current active non-phone action:
`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`.

The next pass must consume the coordinate registry to define one real pursuit/engagement/escape chain before broader content expansion.

## Documentation placement law

- root README — human front door;
- `docs/README.md` — placement rules;
- local package README — local map;
- world/spatial files — geometry/coordinate ownership;
- gameplay files — reusable mechanics;
- technical persistence files — save/reload ownership;
- content package — species/hunter configuration;
- `docs/70_handoff/` — completed-pass continuity;
- this index — cross-project discovery;
- `EVOLVE_ALIGNMENT.md` — exact operating/next-action state.