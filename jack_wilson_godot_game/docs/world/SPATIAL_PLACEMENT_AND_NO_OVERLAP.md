# Spatial Placement and No-Overlap Contract

ROLE: CONTROL_PLANE_SPATIAL_BRIDGE
AUTHORITATIVE: DERIVED_FROM_PINNED_DRIVE_SOURCES

The fail-closed runtime projection is `data/world/asterline/spatial_construction_guard.json`. These rules apply before terrain, building, road, utility, interior, fixture, or public-realm placement.

## Ownership precedence

1. Protected start anchor.
2. Occupied building 3D volume.
3. Exclusive parcel or registered vertical stratum.
4. No-build easement.
5. Physical right of way.
6. Utility or service reservation.
7. Block common space.
8. Public free space.

An object is unassigned until it resolves to a ward and one legal owner in this chain. A center point inside an apparently empty area is insufficient.

## Mandatory geometry rules

1. Evaluate the entire proposed XY polygon and Z interval.
2. Reject same-Z building overlap. XY overlap is legal only when Z intervals are disjoint and the pair is registered in the vertical-strata source.
3. Resolve every object to ward plus block/parcel, vertical stratum, ROW/service reservation, block-common space, or public-free-space owner.
4. Treat every cross-ward overlap record as reserved `NO_BUILD`, not vacant land.
5. Use Batch043 physical ROW polygons. Older centroid polylines are logical connectivity hints only.
6. Keep utility/service reservations accessible and outside block, building, and water geometry.
7. Let mapped water, canal, coast, and reservoir exclusions override ordinary land placement.
8. Keep interior floors, modules, rooms, and fixtures inside their structural envelopes and preserve circulation and portal clearance.
9. Preserve stable IDs, addresses, households/resident slots, establishments, and deterministic interior seeds during repair.
10. Reject geometry that fits physically but violates the ward's use, material, or theme constraints.
11. Promote geometry, lookup/reservations, documentation, validation, checksums, and registry changes in one transaction.

## Construction transaction

`LOAD ACTIVE INDEX → RESOLVE OWNER → CHECK XY POLYGON + Z RANGE → CHECK ENVELOPE/ACCESS/THEME → ALLOCATE OR PRESERVE ID → UPDATE LOOKUPS → RUN GLOBAL VALIDATION → UPDATE DOCS/CHECKSUMS/REGISTRY → PUBLISH`

If any check fails: `DO_NOT_PUBLISH_OR_NARRATE_AS_ESTABLISHED; replan first.`

## Required dimensions by object type

| Object | Minimum spatial contract |
|---|---|
| Terrain/chunk | source polygon or cell bounds; elevation range; coordinate transform; neighbor seam |
| Building | footprint polygon; ground Z; top Z/height; owning parcel; entrances; theme/use |
| Road/ROW | physical polygon; width; Z interval; intersection/shared-ROW rule; access portals |
| Utility | footprint/clearance; service owner; access path; water/building exclusion |
| Interior space | local origin; width/length/height; floor/module/building owner; circulation clearance |
| Fixture/object | full dimensions; local transform; containing room/space; access/use clearance |

## Change rule

Never overwrite occupied space to make a new idea fit. Redesign the new idea, use a registered vertical stratum, or select a genuinely unassigned owner. Any future scene generator must consume the guard and manifests rather than hand-place world geometry from visual judgment.
