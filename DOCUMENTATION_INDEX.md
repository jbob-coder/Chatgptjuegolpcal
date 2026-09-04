# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE-1 ADAPTIVE JOYSTICK PHONE RETEST NEXT / HUNT-01 MANIFEST STATIC VERIFIED
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

Latest adaptive source head:
`e9b89912f1c80e90114a68a6de9de4ffbcdd6777`.

Adaptive regression:
workflow `33833083005` SUCCESS.

Full Android build:
workflow `33833083007` SUCCESS.

Adaptive retest APK:
`57,574,457 bytes`
SHA-256 `88b53cb20cac97751f30cc79033ed0e715544e8e26446b06e887e8ea894a5cf1`.

Drive ID:
`1anJ1sY4ajJuJsID62pvgNKZYBvyYi3QV`.

Latest phone handoff:
`docs/70_handoff/STAGE1_GALAXY_A03S_ADAPTIVE_JOYSTICK_REPAIR_2026-09-04.md`.

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

Static validator workflow `33830978945`: SUCCESS.
Latest static QA handoff:
`docs/70_handoff/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_PASS_2026-09-04.md`.

## Gameplay package map

- `docs/20_gameplay/combat/` — combat/outcome contracts.
- `docs/20_gameplay/harvest/` — anatomy-linked harvesting.
- `docs/20_gameplay/inventory/` — Inventory/Recovery Bundle ownership.
- `docs/20_gameplay/crafting/` — first recipe transaction.
- `docs/20_gameplay/progression/` — Field Poleblade refinement.
- `docs/30_content/monsters/MONSTER_01/` — Mudcrest Raker.
- `docs/50_technical/persistence/` — save/reload ownership.
- `docs/60_quality/` — QA ownership.

## Verification boundary

`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`
`PHONE_GENERAL_RUNTIME_USER_REPORTED_PASS = YES`
`STAGE1_ADAPTIVE_JOYSTICK_AUTOMATED_VERIFIED = YES`
`STAGE1_ADAPTIVE_JOYSTICK_PHONE_ACCEPTED = NO / FINAL RETEST REQUIRED`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

Current:
`STAGE1_FINAL_GALAXY_A03S_ADAPTIVE_JOYSTICK_RETEST`.

If PASS:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

The Stage-1 probe is not the full game.
