# Start Area and Nine-Block Ring

ROLE: CONTROL_PLANE_SPATIAL_BRIDGE
AUTHORITATIVE: DERIVED_FROM_PINNED_DRIVE_SOURCES

Jack's start is in Riverbend, W03 Eastbank Residential. The complete compact ring covers the center block plus its eight surrounding blocks. Exact polygons, parcels, 36 building footprints, exterior dimensions, elevations, and source pointers are in `data/world/asterline/start_area_manifest.json`.

## Block ring

| Block | Centroid X,Y m | Elevation m | Area m² | Buildings | Role |
|---|---:|---:|---:|---:|---|
| `BLOCK_ASTERLINE_W03_RIVERBEND_START_01` | 1612.82, −1149.13 | 19.77 | 13,916.8 | 6 | center/start |
| `BLOCK_ASTERLINE_W03_0315` | 1598.14, −1288.80 | 19.41 | 13,916.8 | 3 | south |
| `BLOCK_ASTERLINE_W03_0269` | 1473.15, −1134.45 | 19.84 | 13,916.8 | 3 | west |
| `BLOCK_ASTERLINE_W03_0363` | 1752.49, −1163.81 | 19.66 | 13,916.8 | 4 | east |
| `BLOCK_ASTERLINE_W03_0317` | 1627.50, −1009.46 | 20.12 | 13,916.8 | 4 | north |
| `BLOCK_ASTERLINE_W03_0268` | 1458.47, −1274.12 | 19.48 | 13,916.8 | 5 | southwest |
| `BLOCK_ASTERLINE_W03_0362` | 1737.81, −1303.48 | 19.32 | 13,916.8 | 3 | southeast |
| `BLOCK_ASTERLINE_W03_0364` | 1767.17, −1024.14 | 20.01 | 13,916.8 | 3 | northeast |
| `BLOCK_ASTERLINE_W03_0270` | 1487.83, −994.78 | 20.21 | 13,916.8 | 5 | northwest |

All nine blocks use the `eastbank_residential` theme and local road frontage. No block polygon may be resized or shifted merely to make a later asset fit.

## Protected starting residence

- Building: `BUILDING_PREACADEMY_RESIDENCE_01`
- Parcel: `PARCEL_ASTERLINE_W03_RIVERBEND_START_01`
- Exterior: 12.4 × 9.8 m, 121.52 m² footprint, 2 storeys, 6.4 m height
- Ground elevation: 19.69 m
- Theme: older small lodging retained inside a later Eastbank courtyard block
- Materials: repaired masonry shell, reinforced concrete slab, utility raceways, weather-sealed windows

The residence footprint and parcel polygons are reserved in the start manifest. Future walls and exterior meshes must be generated inside those envelopes.

## Interior layout

Floor 1 uses a 2.8 m floor height:

| Space | Origin local m | Dimensions m |
|---|---:|---:|
| Common room | 0.5, 0.5, 0 | 4.0 × 3.6 × 2.6 |
| Shared kitchen | 4.7, 0.5, 0 | 3.0 × 3.0 × 2.6 |
| Stair/entry | 7.9, 0.5, 0 | 3.0 × 2.4 × 2.6 |
| Ground sleeping A | 0.5, 4.4, 0 | 3.4 × 3.0 × 2.6 |
| Ground sleeping B | 4.1, 4.4, 0 | 3.4 × 3.0 × 2.6 |
| Ground washroom | 7.7, 4.4, 0 | 2.2 × 2.4 × 2.6 |
| Utility storage | 10.1, 3.0, 0 | 1.6 × 3.4 × 2.6 |

Floor 2 uses a 2.7 m floor height:

| Stable ID | Origin local m | Dimensions m | Boundary |
|---|---:|---:|---|
| `ROOM_JACK_START_01` | 0, 0, 3 | 4.2 × 3.6 × 2.7 | reversible preserved start slice |
| `ROOM_NEIGHBOR_SOURCE_ANCHOR_01` | 0, 3.72, 3 | 4.2 × 3.6 × 2.7 | private contents undisclosed |
| `LOC_RESIDENCE_F2_CORRIDOR_01` | 4.2, 0, 3 | 8.0 × 1.6 × 2.7 | shared circulation |
| `LOC_RESIDENCE_SHARED_WASHROOM_01` | 4.2, 3, 3 | 2.4 × 2.2 × 2.7 | shared service room |
| `LOC_RESIDENCE_STAIR_01` | 9, 3, 0 | 3.0 × 2.4 × 6.0 | two-floor stair enclosure |

The 4.2 × 3.6 × 2.7 m Jack-room shell remains a gameplay reconstruction, not a claim that an original source fixed those measurements. The newer city source preserves the same already-promoted reconstruction; it does not change its provenance.

## Departure edge

- Ground entry anchor: `LOC_RESIDENCE_ENTRY_01`.
- Pickup curb: `LOC_PICKUP_CURB_01`, 24 × 4 m.
- Entry-to-curb distance: 18 m.
- Local street profile: 2.2 m sidewalks, 9.6 m carriageway, 0.14 m curb.
- Public realm: repaired masonry residential streetscape, visible drainage, practical services, 24 pinned street-furniture objects.

## Source

[START_AREA_FULL_MATERIALIZATION_V1.json](https://drive.google.com/file/d/1PQ5uIHNPateEUt4UFzG1i79-skVb-kBT/view) is the pinned full-detail source. The GitHub manifest is a compact projection, not a replacement.
