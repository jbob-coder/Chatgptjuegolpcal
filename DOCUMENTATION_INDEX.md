# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / PRODUCTION LAYERS 1–2 BUILD VERIFIED / LAYER 3 NEXT
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
- `game/scripts/gameplay/tracking/README.md`
- `game/scripts/gameplay/tracking/hunt01_tracking_runtime.gd`
- `game/content/regions/region_01/hunt01_graybox_build_manifest.json`
- `game/content/regions/region_01/hunt01_tracking_evidence.json`
- `game/tests/region01_hunt01_graybox_runtime_test.gd`
- `.github/workflows/production-hunt01-graybox-android.yml`.

Runtime projection/source QA:
`tests/quality/hunt01/hunt01_production_projection_preflight.py`.

Latest tested production source head:
`0df278eba2d9265ed84483265957d9f8c2d7f415`.

Workflow `33845109063`: SUCCESS.
49/49 source/projection PASS.
66/66 production/headless tracking integration PASS.
Godot parse/AppShell/Region smoke PASS.
Android export/integrity/upload PASS.

Layer-2 APK:
`UnnamedHuntRPG-Hunt01-Layer2-Tracking.apk`
SHA-256 `8cecb327cba3e8a21ac7bb54b281d2e3e9b76616963985acf4512819b31204fe`.
Drive ID `13c3SGmTxlj8BldnRvIErWvQGizj7VYbt`.
Artifact ID `9926241504`.

Latest handoff:
`docs/70_handoff/HUNT01_TRACKING_EVIDENCE_RUNTIME_PASS_2026-09-04.md`.

## Layer ownership

Layer 1 — world foundation/presentation:
- `game/scripts/presentation/exploration/region_01_hunt01_graybox.gd`
- `game/scenes/regions/region_01_hunt01_graybox.tscn`
- region/world docs under `docs/10_world/regions/REGION_01/`.

Layer 2 — tracking/evidence runtime:
- `game/scripts/gameplay/tracking/`
- `game/content/regions/region_01/hunt01_tracking_evidence.json`
- tracking/escape world authority under `docs/10_world/regions/REGION_01/TRACKING_AND_ESCAPE.md`.

Layer 3 next — observation/encounter trigger runtime:
- must consume Layer-2 `OBSERVATION_READY`;
- must preserve existing physical Hunter/Monster encounter location;
- must not implement attacks in the same piece.

## Stage-1 evidence map

`probes/android_stage1/` is retained as evidence source, not production architecture.
Primary control owner:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

`STAGE1_SHOOTER_STYLE_CONTROLS_PHONE_ACCEPTED = YES`
`ENGINE_FUNCTIONAL_PHONE_PROBE_VERIFIED = YES`.

## Validation policy

`USER_PHONE_VALIDATION_POLICY = DEFERRED_BATCH`.
Independent development continues after automated verification. Phone/runtime/performance claims remain separate and must not be fabricated.

## Verification boundary

`HUNT01_FLAT_THEMED_FOUNDATION_IMPLEMENTED = YES`
`HUNT01_TRACKING_EVIDENCE_RUNTIME_IMPLEMENTED = YES`
`HUNT01_TRACKING_EVIDENCE_HEADLESS_VERIFIED = YES / 66_OF_66`
`HUNT01_TRACKING_EVIDENCE_ANDROID_BUILD_VERIFIED = YES`
`HUNT01_TRACKING_EVIDENCE_PHONE_ACCEPTANCE = DEFERRED`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_REGION01_HUNT01_OBSERVATION_AND_ENCOUNTER_TRIGGER_RUNTIME_IMPLEMENTATION`.
