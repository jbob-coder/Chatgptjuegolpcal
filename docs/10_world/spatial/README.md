# 10_world/spatial — Coordinate and Dimension Authority

Status: ACTIVE FIRST-SLICE SPATIAL DESIGN PACKAGE / PROTOTYPE COORDINATES RECORDED / NO GRAYBOX IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own the shared meter-based spatial reference used to build Settlement 01, its frontier transition, Region 01 and first encounter footprints without allowing individual scenes/assets to invent incompatible scales or coordinates.

Primary law:

**All first-slice world geometry is authored against one documented measurement/axis vocabulary, while each major streamed area uses its own stable local coordinate space.**

## Local authorities

- `README.md` — this package front door.
- `FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md` — coordinate-system, origin, dimensional and ownership rules.
- `FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md` — concrete first-slice prototype spaces, bounds, anchors, sector centers, route anchors and encounter-footprint coordinates.

## Upstream authorities

- `/WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md` — `1 world unit = 1 meter`, scale ranges and streamed-area architecture.
- `/MAP_WORLD_SETTLEMENT_STRUCTURE.md` — world hierarchy and encounter continuity.
- `/FIRST_SETTLEMENT_BLUEPRINT.md` — Settlement 01 physical organization/size ranges.
- `/docs/10_world/settlements/SETTLEMENT_01/` — local Smith/service application.
- `/docs/10_world/regions/REGION_01/` — canonical sector topology/terrain/tracking/encounter/streaming rules.
- `/docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md` — 1.75 m Hunter reference.
- `/docs/30_content/monsters/MONSTER_01/README.md` — ~6.6 m × ~3.0 m Monster 01 body target.
- `/docs/50_technical/persistence/` — saved positions consume this framework as `space ID + local position`.

## Selected first-slice spatial model

Measurement:
`1 world unit = 1 meter`.

World-map axes:
- `+X = EAST`;
- `+Y = UP`;
- `-Z = NORTH / outbound wilderness direction`;
- `+Z = SOUTH / settlement-interior direction`.

Heading vocabulary:
- `0° = North (-Z)`;
- `90° = East (+X)`;
- `180° = South (+Z)`;
- `270° = West (-X)`.

The frame is right-handed: `+X × +Y = +Z`.

Major local spaces:
- `space_settlement_01`;
- `space_frontier_01`;
- `space_region_01`.

Each space uses the same axis orientation but an independent local origin. Major transitions map stable source anchors to destination anchors instead of requiring enormous shared coordinates.

## Coordinate precision rule

World-layout design coordinates are normally rounded to the nearest meter.

Use decimals only where a real dimensional requirement needs them, such as:
- Hunter height `1.75 m`;
- Monster length `6.6 m`.

Do not invent centimeter precision for unbuilt graybox landmarks.

## Status boundary

`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_RECORDED = YES`
`WORLD_SPATIAL_GRAYBOX_IMPLEMENTED = NO`
`WORLD_SPATIAL_RUNTIME_VERIFIED = NO`
`SPATIAL_COORDINATES_PHONE_VERIFIED = NO`.

Every coordinate in the registry is a `PROTOTYPE TARGET` unless explicitly labeled `LOCKED/CURRENT`.

## Exact downstream dependency

`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`

That next pass should use these anchors to specify one coherent graybox pursuit path from Region entry/tracks to a real encounter footprint, Monster escape/reacquisition and return continuity without adding production art or bypassing the Stage-1 phone gate.