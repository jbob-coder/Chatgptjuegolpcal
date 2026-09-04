# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Working name: `Unnamed Hunt RPG`.

## Mandatory first read

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. this file
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## Main rule

The game is the objective.

Documentation must preserve:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## Current engine truth

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated Stage-1 foundation is advanced.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Recorded loop owners

World:
`docs/10_world/README.md`.

Spatial coordinates/dimensions:
`docs/10_world/spatial/README.md`
-> `FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`
-> `FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Settlement 01:
`docs/10_world/settlements/SETTLEMENT_01/README.md`.

Region 01:
`docs/10_world/regions/REGION_01/README.md`.

Combat/Harvest/Inventory/Crafting:
`docs/20_gameplay/` package front doors.

Monster 01:
`docs/30_content/monsters/MONSTER_01/README.md`.

Persistence:
`docs/50_technical/persistence/README.md`.

## Current spatial baseline

Measurement:
`1 world unit = 1 meter`.

World/map axes:
+X East / +Y Up / -Z North-outbound / +Z South-inbound.

Major local spaces:
- `space_settlement_01`;
- `space_frontier_01`;
- `space_region_01`.

Settlement prototype:
- 200×260 m planning envelope;
- Hunter Gate inner origin `(0,0,0)`;
- Smith workbench `(-22,3,40)`;
- primary walkable elevation roughly 0..14 m.

Frontier:
~80 m centerline to Region handoff.

Region:
seven sector centers and eleven canonical connection anchors recorded; connected sector-center spacing ~117–165 m; deepest center ~402 m from entry.

Encounter footprints:
EF01/EF02/EF03/EF04 centers/envelopes recorded; exact tactical nodes not yet selected.

All unbuilt numeric coordinates are `PROTOTYPE TARGETS`, not production/runtime/phone-verified facts.

## Persistence linkage

Persistence stores `space ID + local XYZ in meters + heading + stable sector/anchor refs` and therefore consumes the shared spatial registry rather than inventing separate coordinates.

## Current exact continuation

`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`

Before that pass read:
- spatial framework + registry;
- Region 01 topology/tracking/encounter/streaming/acceptance;
- Monster 01 behavior/anatomy/attacks;
- terrain/combat/defeat-retreat owners;
- Persistence.

That pass must define one physical pursuit chain, evidence anchors, same-Monster movement anchors, engagement/footprint transition, first tactical-node plan, escape/reacquisition mapping and graybox acceptance metrics.

Do not turn it into production art/runtime code while the implementation gate is still blocked.

## Saved concept

Google Drive:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only.

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.