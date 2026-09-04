# 10_world — World, Settlements, Spatial Framework and Hunting Regions

Status: ACTIVE WORLD PACKAGE MAP / HUNT-01 PHYSICAL INTEGRATION + GRAYBOX GEOMETRY SPECIFICATIONS RECORDED / NO WORLD RUNTIME IMPLEMENTATION
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
- graybox geometry specifications/registries;
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

Concrete Hunt-01 spatial registry:
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
- Monster clearance targets;
- escape/reacquisition anchors;
- Persistence checkpoint application.

## Region 01 Hunt-01 graybox geometry

Rules:
`regions/REGION_01/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`.

Concrete geometry registry:
`regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`.

Selected prototype build targets include:
- required route 285–315 m after smoothing;
- sustained grade <=15%, short <=18%, step <=0.25 m;
- required Raker corridors >=9 m with >=4.5 m overhead;
- S01 ford/water/mud dimensions;
- S01->S03 ascent/visibility breaks;
- EF02 meadow/observation dimensions;
- tactical-node/link authoring dimensions;
- physical cover primitives;
- Charge/pivot/escape clearances;
- camera/streaming debug volumes.

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION_RECORDED = YES`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`.

## Root authorities

- `/MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `/WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `/FIRST_SETTLEMENT_BLUEPRINT.md`;
- `/PERFORMANCE_BUDGETS_AND_CAPS.md`.

World packages apply shared owners rather than redefining them.

## Exact next world dependency

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`

That pass should map the now-dimensioned Hunt-01 geometry into an engine-neutral build/scene manifest plus validation ownership, without expanding to final art or the entire Region.
