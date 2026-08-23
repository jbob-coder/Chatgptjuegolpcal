# Asterline World Map

ROLE: CONTROL_PLANE_SPATIAL_BRIDGE
AUTHORITATIVE: DERIVED_FROM_PINNED_DRIVE_SOURCES

This folder explains where Asterline's world information lives and which record owns each kind of space. It prevents future terrain, buildings, roads, utilities, interiors, and public objects from being placed into already assigned volume.

## Read order

1. `ASTERLINE_CITY_SPATIAL_AUTHORITY.md` — full-city coordinate system, theme, wards, neighborhoods, counts, and authoritative source layer order.
2. `START_AREA_AND_NINE_BLOCK_RING.md` — the exact starting block, eight surrounding blocks, residence, interior spaces, and pickup curb.
3. `SPATIAL_PLACEMENT_AND_NO_OVERLAP.md` — mandatory ownership, reservation, containment, and collision rules.
4. `ASTERLINE_TO_GODOT_COORDINATES.md` — the one allowed source-to-Godot axis transform, origin cell, inverse, and rebase boundary.
5. `ASTERLINE_SPATIAL_LOADER_AND_CHUNKS.md` — the five-file fail-closed bundle, 7 ward chunks, 9 start-detail chunks, and exact query rules.
6. `project_control/ROADMAP.md` — the ordered construction sequence from source bridge to full-city runtime streaming.

## Folder and file ownership

| Location | Plane | Contains | Must not contain |
|---|---|---|---|
| `docs/world/` | CONTROL_PLANE | Readable spatial authority projections and construction rules | Runtime geometry or independently invented coordinates |
| `data/world/asterline/` | GAME_RUNTIME | Compact, machine-readable city/start-ring source projections and placement guard | The full 1.16 GB source corpus or unverified geometry |
| `scenes/world/` | GAME_RUNTIME, future | Generated/assembled terrain, block, building, and public-realm scenes | Source-of-truth ledgers or hand-placed geometry without manifests |
| `scripts/world/` | GAME_RUNTIME | Coordinate conversion now; future loading, chunking, streaming, and spatial queries | QA-only validators |
| `scripts/qa/` | VERIFICATION | Structure, source, containment, collision, and regression gates | Game runtime behavior |
| Google Drive active city folder | AUTHORITATIVE SOURCE | Full Batch040–043 atlas, interiors, occupancy, ROW, utilities, and repair overlay | Game-specific generated cache files |

## Compact bridge versus full source

The GitHub bridge deliberately does not duplicate the complete city corpus. It pins source file IDs, modified times, byte sizes, and semantic SHA-256 fingerprints; embeds the full city boundary, 7 wards, 28 neighborhoods, water features, 14 trunk routes, and the complete 9-block start ring; and points to large per-ward interiors and geometry in Drive.

The active large source remains the [Asterline city folder](https://drive.google.com/drive/folders/1b7VixGIloOqeont21zmo7QepuSOa4Id1). Batch043's [spatial integrity folder](https://drive.google.com/drive/folders/1Qul4Sd58bjRryEnXzIy0FmIe8_GXb1m6) is the newest geometry/reservation overlay.

## Non-overlap rule

Visual emptiness is never proof that space is free. Every proposed object must claim an owner and pass full XY polygon plus Z-interval checks against buildings, parcels/vertical strata, easements, physical ROW, utilities/services, block common space, public free space, and water exclusions before geometry is created.

All runtime placement must also pass through `data/world/asterline/coordinate_transform.json`. Absolute source coordinates remain authoritative; Godot-local coordinates are derived relative to a declared source-cell anchor and must never be stored without their anchor.
