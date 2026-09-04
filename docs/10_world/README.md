# 10_world — World, Settlements, Spatial Framework and Hunting Regions

Status: ACTIVE WORLD PACKAGE MAP / FIRST-SLICE COORDINATE-DIMENSION FRAMEWORK RECORDED / NO WORLD GRAYBOX IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own spatial/playable-world packages and world-specific application of global systems.

Belongs here:
- world-atlas packages;
- settlement packages;
- shared coordinate/dimension framework;
- frontier/gate packages;
- hunting-region packages;
- sector topology;
- camps/safe anchors;
- local tracking routes;
- monster territory/escape routes;
- encounter-footprint placement;
- local streaming adjacency/application.

Does not own generic combat/stat formulas, behavior-engine semantics, Crystal definitions, persistence implementation or model-art standards.

## Current front doors

Shared spatial authority:
`spatial/README.md`.

Settlement packages:
`settlements/README.md`.

Settlement 01:
`settlements/SETTLEMENT_01/README.md`.

Region 01:
`regions/REGION_01/README.md`.

## Coordinate/dimension baseline

Framework:
`spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`.

Registry:
`spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Selected:
- `1 world unit = 1 meter`;
- +X East, +Y Up, -Z North/outbound, +Z South/inbound;
- separate local spaces for Settlement 01, Frontier and Region 01;
- stable anchor mappings connect major spaces;
- concrete prototype Settlement/service, transition, sector, route and encounter coordinates are recorded;
- all unbuilt numeric positions remain prototype graybox targets unless explicitly locked.

`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_RECORDED = YES`
`WORLD_SPATIAL_GRAYBOX_IMPLEMENTED = NO`.

## Root authorities

- `/MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `/WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `/FIRST_SETTLEMENT_BLUEPRINT.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/PERFORMANCE_BUDGETS_AND_CAPS.md`.

World packages reference generic owning authorities instead of redefining them.

## Exact next world dependency

`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`

That pass should use the recorded spatial registry to define one representative physical tracking→engagement→escape/reacquisition graybox chain.