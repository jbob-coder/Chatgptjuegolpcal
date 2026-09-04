# 10_world/spatial — Coordinate and Dimension Authority

Status: ACTIVE FIRST-SLICE SPATIAL DESIGN PACKAGE / MAJOR COORDINATES + HUNT-01 APPLICATION RECORDED / NO GRAYBOX RUNTIME IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own the shared meter-based reference used to build Settlement 01, Frontier, Region 01 and encounter footprints without incompatible local scale/axis assumptions.

Primary law:

**All first-slice world geometry uses one documented measurement/axis vocabulary, while each major streamed area owns a stable local coordinate space.**

## Local authorities

- `FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md` — shared coordinate-system/origin/dimension rules;
- `FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md` — major spaces, Settlement/Frontier/Region sector and footprint coordinates.

## Region-specific concrete coordinates

Content-specific evidence/tactical-node coordinates do not belong in the global registry when they are owned by one Region/hunt proof.

Current Region 01 Hunt-01 application:
- `/docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`;
- `/docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

This keeps:
- shared world/sector/footprint coordinates global;
- hunt-specific evidence, Monster and tactical-node coordinates local to Region 01.

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

Hunt-01 EF02 adds prototype:
- 10 tactical nodes;
- legal links ~14.0–18.5 m;
- boulder ~5×4×3 m;
- Charge lane ~48×9 m clearance target;
- Monster pivot-clearance radius ~8 m.

## Precision/status rule

Unbuilt layout coordinates are normally rounded to the nearest meter. Decimals are reserved for real dimensional requirements such as Hunter height or Monster length.

`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_RECORDED = YES`
`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_INTEGRATION_RECORDED = YES`
`WORLD_SPATIAL_GRAYBOX_IMPLEMENTED = NO`
`WORLD_SPATIAL_RUNTIME_VERIFIED = NO`
`SPATIAL_COORDINATES_PHONE_VERIFIED = NO`.

## Exact downstream dependency

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION`

Next should specify build-ready primitive blockout geometry for only S00→S01→S03 + EF02, preserving all current coordinates/topology unless that pass documents a measured design correction.