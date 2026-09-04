# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / PRODUCTION GAME ROOT + HUNT-01 GRAYBOX BUILD VERIFIED
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

## Production runtime map

Production root:
- `game/README.md`
- `game/project.godot`
- `game/export_presets.cfg`
- `game/scenes/app_shell.tscn`
- `game/scenes/regions/region_01_hunt01_graybox.tscn`
- `game/scripts/presentation/exploration/region_01_hunt01_graybox.gd`
- `game/content/regions/region_01/README.md`
- `game/content/regions/region_01/hunt01_graybox_build_manifest.json`
- `game/tests/region01_hunt01_graybox_runtime_test.gd`
- `.github/workflows/production-hunt01-graybox-android.yml`.

Runtime projection/source QA:
`tests/quality/hunt01/hunt01_production_projection_preflight.py`.

Production tested source head:
`ef0db3b4dcbea32608228f99a8fffead5ad6c858`.

Production workflow `33836865365`: SUCCESS.
29/29 source/projection PASS; 23/23 headless integration PASS; Android export/integrity PASS.

Production APK SHA-256:
`7094b3046a6a35144b3d6c80bab8b6900a1fc33d9c04cbeca9d9a80e2361e36a`.
Drive ID `150Wot1owtIGrFWUG_BmfWWlXmlMUT02F`.

Latest production handoff:
`docs/70_handoff/HUNT01_PRODUCTION_GRAYBOX_IMPLEMENTATION_PASS_2026-09-04.md`.

## Stage-1 evidence map

`probes/android_stage1/` is retained as disposable evidence source, not production architecture.

Primary control owner:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

The user accepted the shooter-style Galaxy A03s controls 100%.

`STAGE1_SHOOTER_STYLE_CONTROLS_PHONE_ACCEPTED = YES`
`ENGINE_FUNCTIONAL_PHONE_PROBE_VERIFIED = YES`
`PERFORMANCE_VERIFIED = NO`.

## Hunt-01 world/geometry authorities

Shared spatial:
- `docs/10_world/spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`
- `docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Region 01:
- `docs/10_world/regions/REGION_01/README.md`
- `FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`
- `FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`
- `FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`
- `FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`
- `FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.md`
- `FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`
- `FIRST_SLICE_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION.md`.

Authoritative manifest static QA:
- `tests/quality/hunt01/README.md`
- `tests/quality/hunt01/hunt01_graybox_manifest_validator.py`
- `tests/quality/hunt01/hunt01_stable_coordinate_fixture.json`
- `.github/workflows/hunt01-graybox-manifest-static.yml`.

Manifest static workflow `33830978945`: SUCCESS / 13/13.

## Gameplay package map

- `docs/20_gameplay/combat/` — reusable combat/outcome contracts.
- `docs/20_gameplay/harvest/` — anatomy-linked harvesting.
- `docs/20_gameplay/inventory/` — Inventory/Recovery Bundle.
- `docs/20_gameplay/crafting/` — crafting transaction contracts.
- `docs/20_gameplay/progression/` — Field Poleblade refinement.
- `docs/30_content/monsters/MONSTER_01/` — Monster 01 species/content.
- `docs/50_technical/persistence/` — persistence contracts.
- `docs/60_quality/` — quality ownership.

## Verification boundary

`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = YES`
`HUNT01_PRODUCTION_PROJECTION_STATIC_VERIFIED = YES / 29_OF_29`
`HUNT01_PRODUCTION_GRAYBOX_HEADLESS_VERIFIED = YES / 23_OF_23`
`HUNT01_PRODUCTION_ANDROID_BUILD_VERIFIED = YES`
`REGION01_HUNT01_PHONE_VERIFIED = NO / RETEST_REQUIRED`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

External:
`REGION01_HUNT01_PRODUCTION_GRAYBOX_GALAXY_A03S_RETEST`.

Independent development:
`FIRST_SLICE_REGION01_HUNT01_TRACKING_EVIDENCE_RUNTIME_IMPLEMENTATION`.
