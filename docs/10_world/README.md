# 10_world — World, Settlements, Spatial Framework and Hunting Regions

Status: ACTIVE WORLD PACKAGE MAP / HUNT-01 PHYSICAL TRACKING→ENCOUNTER INTEGRATION RECORDED / NO WORLD RUNTIME IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own spatial/playable-world packages and world-specific application of shared gameplay systems.

Belongs here:
- world spatial framework and coordinates;
- settlement/frontier packages;
- hunting-region packages;
- sector topology;
- camps/safe anchors;
- tracking/evidence routes;
- persistent Monster routes;
- encounter-footprint placement;
- graybox geometry specifications;
- local streaming adjacency/application.

Does not own generic combat/stat formulas, behavior-engine semantics, Crystal definitions, persistence implementation or final art standards.

## Current front doors

Shared spatial authority:
`spatial/README.md`.

Settlement packages:
`settlements/README.md`.

Settlement 01:
`settlements/SETTLEMENT_01/README.md`.

Region 01:
`regions/REGION_01/README.md`.

## Shared coordinate baseline

Framework:
`spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`.

Major registry:
`spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Selected:
- `1 world unit = 1 meter`;
- +X East / +Y Up / -Z North / +Z South;
- separate local spaces for Settlement 01, Frontier and Region 01;
- stable anchor mappings connect major spaces;
- Settlement/service, transition, sector, route and footprint coordinates are recorded;
- all unbuilt numeric positions remain prototype graybox targets unless explicitly locked.

## Region 01 Hunt-01 physical integration

Rules:
`regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`.

Concrete Hunt-01 registry:
`regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

Recorded proof:
`S00 -> S01 -> S03 -> R01_EF02 -> escape toward S05 -> reacquisition`.

It includes:
- seven evidence anchors;
- same persistent Mudcrest Raker anchors;
- route-choice points;
- observation/engagement coordinates;
- 10 EF02 tactical nodes;
- two physical cover objects;
- Charge/pivot/body-clearance targets;
- Monster escape/reacquisition anchors;
- Persistence checkpoint application.

`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_INTEGRATION_RECORDED = YES`
`REGION01_HUNT01_TACTICAL_NODES_RECORDED = YES`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`.

## Root authorities

- `/MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `/WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `/FIRST_SETTLEMENT_BLUEPRINT.md`;
- `/PERFORMANCE_BUDGETS_AND_CAPS.md`.

World packages apply shared owners rather than redefining them.

## Exact next world dependency

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION`

That pass should turn only the recorded S00→S01→S03 + EF02 route into build-ready primitive geometry dimensions, not expand to final art or the entire Region.