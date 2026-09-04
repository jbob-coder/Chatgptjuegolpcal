# 10_world/spatial — Coordinate and Dimension Authority

Status: ACTIVE FIRST-SLICE SPATIAL DESIGN PACKAGE / MAJOR COORDINATES + HUNT-01 GEOMETRY APPLICATION RECORDED / NO GRAYBOX RUNTIME IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own the shared meter-based reference used to build Settlement 01, Frontier, Region 01 and encounter footprints without incompatible local scale/axis assumptions.

Primary law:

**All first-slice world geometry uses one documented measurement/axis vocabulary, while each major streamed area owns a stable local coordinate space.**

## Local authorities

- `FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md` — shared coordinate-system/origin/dimension rules;
- `FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md` — major spaces, Settlement/Frontier/Region sector and footprint coordinates.

## Region-specific concrete coordinates / geometry

Content-specific evidence/tactical-node/primitive geometry does not belong in the global registry when it is owned by one Region/hunt proof.

Current Region 01 Hunt-01 application:
- `/docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`;
- `/docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`;
- `/docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`;
- `/docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`.

This keeps:
- shared world/sector/footprint coordinates global;
- hunt-specific evidence, Monster, tactical-node and primitive geometry local to Region 01.

## Selected spatial model

Measurement:
`1 world unit = 1 meter`.

World-map axes:
- `+X = EAST`;
- `+Y = UP`;
- `-Z = NORTH / outbound wilderness`;
- `+Z = SOUTH / settlement-interior`.

Heading:
0° North / 90° East / 180° South / 270° West.

Major local spaces:
- `space_settlement_01`;
- `space_frontier_01`;
- `space_region_01`.

Persistence stores space ID + local XYZ + orientation + stable anchor/sector references.

## Current dimension references

- Hunter Base 01 = 1.75 m `LOCKED/CURRENT`;
- Monster 01 = ~6.6 m long / ~3.0 m shoulder-body `PROTOTYPE TARGET`;
- Settlement 01 = 200×260 m prototype planning envelope;
- Frontier = ~80 m centerline;
- Region 01 linked sector centers = ~117–165 m apart;
- first encounter envelopes = 30–90 m class.

Hunt-01 geometry now adds prototype:
- smoothed required path 285–315 m;
- sustained grade <=15%, short <=18%, step <=0.25 m;
- required Raker corridors >=9 m / overhead >=4.5 m;
- ford working envelope 58×54 m;
- shallow water 34×18 m at 0.15–0.55 m required depth;
- wallow mud 16×12 m and exit mud 20×12 m;
- EF02 meadow floor 70×54 m;
- observation shelf 16×12 m;
- tactical link corridors >=3.5 m;
- boulder 5×4×3 m;
- tree trunk 1.4 m + 4×3 m root base;
- Charge lane ~48 m / >=9 m clear;
- pivot clear radius 8 m;
- camera/streaming debug volumes.

## Precision/status rule

Unbuilt layout coordinates are normally rounded to the nearest meter. Decimals are reserved for meaningful dimensional requirements such as Hunter height, Monster length, water depth or primitive sizes.

`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_RECORDED = YES`
`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_INTEGRATION_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION_RECORDED = YES`
`WORLD_SPATIAL_GRAYBOX_IMPLEMENTED = NO`
`WORLD_SPATIAL_RUNTIME_VERIFIED = NO`
`SPATIAL_COORDINATES_PHONE_VERIFIED = NO`.

## Exact downstream dependency

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`

Next should map the Region-specific geometry registry into an engine-neutral build/scene hierarchy and validation-data/test plan without changing the shared coordinate system or claiming runtime/phone verification.
