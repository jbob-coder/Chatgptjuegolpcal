# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project

Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Working name: `Unnamed Hunt RPG`.

## Mandatory first read

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. this file
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## Main rule

The game is the objective.

Documentation/data must preserve:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## Engine truth

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`PRODUCTION_DOMAIN_IMPLEMENTATION = BLOCKED_BY_ENGINE_PHONE_GATE`.

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Current owner map

Shared spatial:
`docs/10_world/spatial/README.md`.

Region 01:
`docs/10_world/regions/REGION_01/README.md`.

Hunt-01 coordinate/geometry/build sequence:
1. `FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`;
2. `FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`;
3. `FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`;
4. `FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.md`;
5. `FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`;
6. `FIRST_SLICE_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION.md`.

Quality front door:
`docs/60_quality/README.md`.

## Hunt-01 physical proof

Scenario:
`R01_HUNT01_M01_TRACK_TO_MEADOW`.

Stable Monster:
`monster_r01_m01_0001`.

Path:
`S00 -> S01 -> S03 -> EF02 -> escape via S03→S05 -> reacquisition`.

Current blockout targets:
- required route 285–315 m;
- Ford basin 58×54 m;
- water 34×18 m at 0.15–0.55 m required depth;
- wallow 16×12 m;
- exit mud 20×12 m;
- EF02 floor 70×54 m;
- 10 nodes / 14 links;
- boulder 5×4×3 m;
- scarred tree/root cover;
- Charge corridor ~48×>=9 m;
- pivot radius 8 m;
- escape corridor >=9 m.

Build-only ramp midpoint:
`(-74.0,4.62,-237.5)`.

It is not a gameplay/persistence anchor.

## Build manifest truth

Manifest:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`.

It is machine-readable authoring/validation data, not save/runtime authority.

Validation contract defines 30 rule IDs and four evidence levels:
`MANIFEST_STATIC`, `SCENE_STATIC_FUTURE`, `RUNTIME_FUTURE`, `PHONE_FUTURE`.

Current:
`HUNT01_GRAYBOX_MANIFEST_STATIC_VALIDATOR_IMPLEMENTED = NO`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = NO`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`.

## Exact continuation

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`.

Read `CONTENT_DATA_GUIDE.md`, `CODE_GUIDE.md`, `docs/60_quality/README.md`, the manifest JSON and validation specification first.

Implement only engine-independent manifest validation. Do not start production world/gameplay source or claim scene/runtime/phone PASS.

## Saved finished-game concept

Google Drive:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.
Visual intent only.

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.
