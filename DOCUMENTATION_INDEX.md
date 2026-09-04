# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE-1 SHOOTER-STYLE CONTROLS PHONE RETEST NEXT / HUNT-01 MANIFEST STATIC VERIFIED
Last reconciled: 2026-09-04

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. this index
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. exact owning package/source/tests.

## Current Stage-1 Android authorities

- `probes/android_stage1/README.md`
- `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`
- `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`
- `probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`
- `.github/workflows/stage1-android-probe-apk.yml`
- `.github/workflows/stage1-control-camera-feedback.yml`
- `ci/stage1/control_camera_phone_feedback_test.gd`

Shooter-style runtime implementation:
`6079c95f90a6329b2685f4c078527ae4a0dc1523`.

Final tested source/UI head:
`5af416f48a7542b964084f83301de0a5f826bb46`.

Dedicated regression:
`33834916358` SUCCESS.

Full Android pipeline:
`33834916327` SUCCESS.

Final APK SHA-256:
`e45e854951ff8a3cca9c93a20575aa967f824d86981ce3ba268372a0b19f6a6f`.

Final artifact ZIP SHA-256:
`a9e61564d13d2be0ba84a052e990e9b9772a82d46a6070e0f9bdf551412ac873`.

Drive file ID:
`1r62HYqQkZGyAj8h7zPzFm68Au31dqxzy`.

Latest control handoff:
`docs/70_handoff/STAGE1_GALAXY_A03S_SHOOTER_STYLE_CONTROLS_REPAIR_2026-09-04.md`.

## Hunt-01 world/geometry authorities

Shared spatial:
- `docs/10_world/spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`
- `docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`

Region 01:
- `docs/10_world/regions/REGION_01/README.md`
- `FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`
- `FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`
- `FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`
- `FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.md`
- `FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`
- `FIRST_SLICE_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION.md`

Executable static QA:
- `tests/quality/hunt01/README.md`
- `tests/quality/hunt01/hunt01_graybox_manifest_validator.py`
- `tests/quality/hunt01/hunt01_stable_coordinate_fixture.json`
- `.github/workflows/hunt01-graybox-manifest-static.yml`.

Static validator workflow:
`33830978945` SUCCESS.

## Gameplay package map

- `docs/20_gameplay/combat/` — reusable combat/outcome contracts.
- `docs/20_gameplay/harvest/` — finite anatomy-linked harvesting.
- `docs/20_gameplay/inventory/` — Inventory/Recovery Bundle material ownership.
- `docs/20_gameplay/crafting/` — first recipe transaction.
- `docs/20_gameplay/progression/` — Field Poleblade refinement linkage.

Monster 01:
`docs/30_content/monsters/MONSTER_01/`.

Persistence:
`docs/50_technical/persistence/`.

Quality:
`docs/60_quality/`.

## Current verification boundary

`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`
`PHONE_GENERAL_RUNTIME_USER_REPORTED_PASS = YES`
`STAGE1_SHOOTER_STYLE_CONTROLS_AUTOMATED_VERIFIED = YES`
`STAGE1_SHOOTER_STYLE_CONTROLS_PHONE_ACCEPTED = NO / RETEST REQUIRED`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

Current:
`STAGE1_FINAL_GALAXY_A03S_SHOOTER_STYLE_CONTROLS_RETEST`.

If PASS:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

The Stage-1 probe is not the full game.
