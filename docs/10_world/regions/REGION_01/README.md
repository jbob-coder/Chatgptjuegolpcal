# REGION_01 — First Hunting Region

Status: DESIGN/BUILD-SPEC READY / MANIFEST STATIC VERIFIED / ENGINE GRAYBOX NOT STARTED
Last reconciled: 2026-09-04

Technical package ID: `REGION_01`.

## Purpose

Own the first continuous hunting Region beyond Settlement 01 while applying shared world/combat/terrain/persistence authorities without redefining them.

## Canonical sectors

S00 Trailhead / S01 River Ford / S02 Rootwood / S03 Feeding Meadow / S04 Rocky Rise / S05 Deepwood Basin / S06 Nesting Shelf.

Topology remains owned by `REGION_TOPOLOGY.md`.

## Hunt-01 proof

Scenario:
`R01_HUNT01_M01_TRACK_TO_MEADOW`.

Stable Monster:
`monster_r01_m01_0001`.

Encounter:
`enc_r01_ef02_m01_0001`.

Physical chain:
`S00 -> S01 -> S03 -> R01_EF02 -> escape via S03→S05 -> same-Monster reacquisition`.

## Current build authorities

- `FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`
- `FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`
- `FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`
- `FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.md`
- `FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`
- `FIRST_SLICE_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION.md`

Executable validator:
`../../../../tests/quality/hunt01/hunt01_graybox_manifest_validator.py`.

## Current dimensions

- route target 285–315 m;
- Ford basin 58×54 m;
- water 34×18 m at 0.15–0.55 m required depth;
- wallow 16×12 m;
- exit mud 20×12 m;
- S01→S03 Raker corridor >=9 m;
- EF02 floor 70×54 m;
- 10 tactical nodes / 14 links;
- boulder 5×4×3 m;
- scarred tree 1.4 m trunk / 4×3 m root base;
- Charge corridor ~48×>=9 m;
- Monster pivot radius 8 m;
- escape corridor >=9 m.

Build-only ramp midpoint:
`(-74.0,4.62,-237.5)` — not gameplay/persistence authority.

## Static validation result

Workflow:
`33830978945` SUCCESS.

`HUNT01_GRAYBOX_MANIFEST_STATIC_VALIDATOR_IMPLEMENTED = YES`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`.

Measured ramp:
6.607 m, segment grades 15.2% and 15.38%.

Negative self-test correctly failed the intentionally corrupted manifest.

## Not yet verified

`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`HUNT01_GRAYBOX_SCENE_STATIC_VERIFIED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`
`REGION01_HUNT01_PHONE_VERIFIED = NO`.

## Exact next package dependency

The Region package is ready for the smallest engine graybox slice once the current Stage-1 phone control/camera retest closes successfully.

Next production piece after that gate:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.
