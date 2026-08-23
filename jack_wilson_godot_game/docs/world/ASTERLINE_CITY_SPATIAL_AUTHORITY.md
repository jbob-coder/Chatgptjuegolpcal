# Asterline City Spatial Authority

ROLE: CONTROL_PLANE_SPATIAL_BRIDGE
AUTHORITATIVE: DERIVED_FROM_PINNED_DRIVE_SOURCES

## Active map

- City: `CITY_ASTERLINE_01`
- Active atlas: `CITY_ASTERLINE_MASTER_SPATIAL_ATLAS_V2`
- Authority: `ACTIVE_CANON_SPATIAL_REPAIR`
- World snapshot: `2670-08-31T06:00:00-04:00`
- Readiness: `READY_FULL_CITY`
- Coordinate system: `ASTERLINE_LOCAL_METRIC_V1`
- Units: metres
- Source axes: X east, Y north, Z up
- City bounds: 19,700 m × 17,500 m; 290.08 km²
- Population start state: 1,106,500

The source-axis tuple is `[east_m, north_m, up_m]`. Godot normally uses Y-up, so source Y must not be copied directly into Godot Y. The exact source-to-Godot transform and floating-origin policy are intentionally deferred to Piece 014; this piece reserves and documents source space without creating geometry.

## City theme

Layered functional post-war Crystal Era metropolis: repairable infrastructure, durable materials, engineered flood control, district specialization, civilian realism first and crystal-era systems second.

Anti-drift constraints:

- no medieval-fantasy bleed;
- no neon-cyberpunk default;
- no pristine utopia;
- no arbitrary block-scale changes;
- no room geometry changes after materialization.

## Full city structure

| Ward | Theme | Area km² | Blocks | Buildings | Neighborhoods |
|---|---:|---:|---:|---:|---|
| W01 Harbor Reclamation | `harbor_reclamation` | 36.270 | 800 | 2,363 | Tideworks; Reclamation Terrace; Breakwater Reach; Dockside Commons |
| W02 Civic Core | `civic_core` | 23.319 | 900 | 4,046 | Archive Heights; Council Quarter; Central Concourse; Meridian Exchange |
| W03 Eastbank Residential | `eastbank_residential` | 28.475 | 1,400 | 5,569 | Foundry Homes; Eastbank Commons; Canal Terrace; Riverbend |
| W04 Health and Learning | `health_learning` | 62.128 | 1,200 | 4,251 | North Clinic Gardens; Medica Campus; Research Crescent; Scholars Row |
| W05 South Logistics | `south_logistics` | 52.045 | 850 | 1,684 | Forge Yard; Warehouse Mile; Freight Basin; Southworks |
| W06 Upland Greenbelt | `upland_greenbelt` | 26.078 | 650 | 1,957 | Reservoir Heights; Orchard Belt; Terraced Farms; Ridge Homes |
| W07 Service Ward | `service_ward` | 61.764 | 1,200 | 3,610 | Trades Court; East Service Commons; Repair Basin; Mechanist Row |
| **Ward-record total** | — | **290.079** | **7,000** | **23,480** | **28** |

The active city boundary reports 290.08 km²; the displayed ward values sum to 290.079 km² because the source publishes ward areas to three decimal places.

Exact city, ward, and neighborhood polygons are embedded in `data/world/asterline/city_spatial_manifest.json`.

## Materialized scale

| Layer | Count/status |
|---|---:|
| Terrain cells at 100 m | 28,999 |
| Blocks | 7,000 |
| Building shells | 23,480 |
| Floors | 125,452 |
| Circulation records | 359,342 |
| Interior modules | 5,369,196 |
| Derived rooms | 15,134,905 |
| Derived fixture/equipment groups | 46,056,964 |
| Portals | 5,369,184 |
| Routes | 14,471 |
| Public-realm objects | 306,391 |
| Utility/service objects | 35,000 |

Private possessions, exact shop stock, occupants, schedules, locks, damage, and player knowledge remain runtime overlays rather than base geometry.

## Water and movement reservations

- Outer engineered coast: `WATER_ASTERLINE_OUTER_COAST_01`.
- Eastbank canal: `WATER_ASTERLINE_EASTBANK_CANAL_01`, 18 m water width plus 4 m bank service path.
- Harbor channel: `WATER_ASTERLINE_HARBOR_CHANNEL_01`, 85 m width.
- Two mapped upland reservoirs.
- Fourteen metro trunk routes, each with 22 m carriageway and 38 m total right of way.
- Physical street geometry comes from 7,000 Batch043 ROW zones, not the older centroid-to-centroid logical route hints.

## Active layer order

1. Batch040 base terrain, blocks, parcels, and building shells.
2. Batch041 interiors.
3. Batch042 semantic occupancy, addresses, establishments, destinations, and services.
4. Batch043 repairs, vertical strata, no-build easements, physical ROW, access portals, public free space, and utilities.
5. Runtime save/event overlays.

Batch043 changes only registered transforms, ground-Z, and public-space authority. Stable entity IDs persist.

## Integrity state

- 23,480 occupied building volumes.
- 0 true 3D building collisions after Batch043.
- 7 registered XY-overlapping/disjoint-Z legal pairs.
- 31 cross-ward overlap/easement records; unoccupied projection overlap is `NO_BUILD`.
- 7,000 physical ROW zones covering 38,581,994.423 m².
- 92,696,416.577 m² public free space after block/water exclusion.
- 28,000 access portals and 35,000 utility objects.

## Pinned source records

- [CITY_MASTER_SPATIAL_ATLAS_V2.json](https://drive.google.com/file/d/17HCxXGlrfFkkJSlIzqLPJGDYK1YjlKrH/view)
- [CITY_SPATIAL_COMPOSITE_MAP_INDEX_V2.json](https://drive.google.com/file/d/18N-IWEhEsjisdZc9IAWIKgXbmyj2W3gP/view)
- [CITY_SPATIAL_CONSTRUCTION_GUARD_V1.json](https://drive.google.com/file/d/1lm_Ggf81MRQ2WxuXV-finoM9KPgx41Wo/view)
- [CITY_SPATIAL_READINESS_INDEX_V2.json](https://drive.google.com/file/d/1uFRK3349ro4BVROX0bhcO2QLJtrkNtjL/view)

The file IDs, modified times, sizes, and semantic fingerprints are recorded in the runtime manifest. If any pin changes, source reconciliation must occur before geometry generation.
