# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PHONE GATE DEFERRED / HUNT-01 BUILD MANIFEST + VALIDATION CONTRACT RECORDED / STATIC VALIDATOR NEXT
Last reconciled: 2026-09-03

## Purpose

Map authority, ownership, verification boundaries and continuation order so the project can be reconstructed from repository evidence instead of chat memory.

Required answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. this index
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. exact owning package/README/source/tests.

## Stage-1 engine / Android

Authorities:
- `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`;
- `probes/android_stage1/`;
- `PERFORMANCE_BUDGETS_AND_CAPS.md`.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene target.

`ENGINE_PHONE_PROBE_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`PRODUCTION_DOMAIN_IMPLEMENTATION = BLOCKED_BY_ENGINE_PHONE_GATE`.

## Project status snapshot

User-requested dated report:
`docs/00_project/PROJECT_STATUS_REPORT_2026-09-03.md`.

Snapshot only; EVOLVE/current owners outrank it.

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
- local spaces for Settlement 01, Frontier and Region 01;
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

### Hunt-01 spatial/integration authority

Rules:
`docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`.

Spatial registry:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

### Hunt-01 geometry authority

Rules:
`docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`.

Primitive/volume registry:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`.

### Hunt-01 build/validation authority

Human build manifest:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.md`.

Machine build manifest:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`.

Validation contract:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION.md`.

Latest pass handoff:
`docs/70_handoff/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_VALIDATION_PASS_2026-09-03.md`.

## Hunt-01 current construction facts

Proof:
`S00 -> S01 -> S03 -> R01_EF02 -> escape via S03->S05 -> reacquisition`.

Selected build facts:
- navigable route target 285–315 m;
- Ford basin 58×54 m;
- water 34×18 m, required depth 0.15–0.55 m;
- wallow 16×12 m;
- exit mud 20×12 m;
- S01→S03 Raker corridor >=9 m;
- EF02 working floor 70×54 m;
- 10 tactical nodes / 14 legal links;
- boulder 5×4×3 m;
- tree 1.4 m trunk + 4×3 m root base;
- Charge lane ~48×>=9 m;
- pivot clearance radius 8 m;
- escape corridor >=9 m;
- camera + stream debug proxies.

Build-only ramp control:
`(-74.0,4.62,-237.5)`.

Not a gameplay/persistence anchor.

Machine manifest records 12 build groups and validation IDs `H01VAL001..030`.

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

Persistence consumes spatial identity/position but does not redefine geometry/build-manifest controls.

## Quality / validation

Front door:
`docs/60_quality/README.md`.

Hunt-01 package validation rules live with the Region manifest. The future executable manifest validator belongs to the quality/test layer and may verify only the MANIFEST_STATIC subset until a scene exists.

## Saved concept image

Google Drive folder `Unnamed Hunt RPG`:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
Drive ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only.

## Current sequence

Completed design/build-spec sequence through:
`Combat -> Monster 01 -> Defeat/Retreat -> Harvest -> Inventory -> One Recipe -> Physical Smith -> Persistence -> World Coordinates -> Hunt-01 Integration -> Hunt-01 Geometry -> Hunt-01 Build Manifest + Validation Contract`.

Current active non-phone action:
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`.

It must implement engine-independent manifest checks without claiming scene/runtime/device verification.

## Documentation placement law

- root README — human front door;
- `docs/README.md` — placement rules;
- local package README — local map;
- shared spatial files — common world axes/major geometry;
- Region package — Hunt-specific coordinates/geometry/build manifest;
- `docs/60_quality/` — executable validation/test ownership;
- gameplay files — reusable mechanics;
- technical persistence — save/reload ownership;
- content packages — species/hunter configuration;
- `docs/70_handoff/` — bounded-pass continuity;
- this index — cross-project discovery;
- `EVOLVE_ALIGNMENT.md` — exact operating/next-action state.
