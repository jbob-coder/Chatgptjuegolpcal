# Unnamed Hunt RPG — Project Handoff

Status: STAGE-1 FUNCTIONAL PHONE GATE CLOSED / FIRST PRODUCTION HUNT-01 GRAYBOX BUILD VERIFIED / PHONE GRAYBOX RETEST NEXT
Last reconciled: 2026-09-04

## Current objective

Use the first production `game/` APK to verify Hunt-01 on the Galaxy A03s while continuing the next independent gameplay piece: physical tracking/evidence interaction.

## Stage-1 closure

The user reported the final shooter-style controls **PASS 100%**.

Accepted:
- left stick direct camera-relative movement;
- right-side independent look;
- no fixed-input turn accumulation;
- simultaneous move/look;
- first-person FOV 115° / pitch ±80°.

`STAGE1_SHOOTER_STYLE_CONTROLS_PHONE_ACCEPTED = YES`
`ENGINE_FUNCTIONAL_PHONE_PROBE_VERIFIED = YES`
`PERFORMANCE_VERIFIED = NO`.

Stage-1 remains evidence under `probes/android_stage1/`; production now lives under `game/`.

## First production game root

Created:
`game/`

Primary first-slice scene:
`game/scenes/regions/region_01_hunt01_graybox.tscn`.

Owning build authority:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`.

Derived runtime projection:
`game/content/regions/region_01/hunt01_graybox_build_manifest.json`.

The projection is CI-checked against the docs authority.

## Production graybox status

Implemented:
- S00 Trailhead/choice clearing;
- Hunt-01 route to S01 River Ford and S03 Feeding Meadow;
- S02 build-only wrong-route stub;
- water/mud visual zones;
- EF02 Meadow/open core/observation shelf;
- 7 evidence markers;
- 10 tactical nodes;
- physical boulder/tree cover;
- solid Mudcrest Raker placeholder;
- Monster pivot/Charge debug clearances;
- S03→S05 escape corridor;
- camera/stream debug volumes;
- accepted controls/cameras/Settings/reset.

Raw construction centerline: `282.926 m`.
Final smoothed route target remains `285–315 m` and has not been measured.

`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Verification

Tested production source head:
`ef0db3b4dcbea32608228f99a8fffead5ad6c858`.

Workflow:
`33836865365` SUCCESS.

- production projection/source: 29/29 PASS;
- Godot 4.7.2 parse: PASS;
- AppShell smoke: PASS;
- Region-01 smoke: PASS;
- production Hunt-01 headless integration: 23/23 PASS;
- Android export: PASS;
- APK integrity: PASS;
- artifact upload: PASS.

Production APK:
`UnnamedHuntRPG-Hunt01-Graybox-Retest.apk`
57,587,191 bytes
SHA-256 `7094b3046a6a35144b3d6c80bab8b6900a1fc33d9c04cbeca9d9a80e2361e36a`.

Artifact:
ID `9923580879`
ZIP 57,142,468 bytes
SHA-256 `184d158058df55f1b02dd92801c4af87376bc8f867d2bd77d29e6223368420db`.

Google Drive file ID:
`150Wot1owtIGrFWUG_BmfWWlXmlMUT02F`.

## Verification boundary

`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = YES`
`HUNT01_PRODUCTION_PROJECTION_STATIC_VERIFIED = YES / 29_OF_29`
`HUNT01_PRODUCTION_GRAYBOX_HEADLESS_VERIFIED = YES / 23_OF_23`
`HUNT01_PRODUCTION_ANDROID_BUILD_VERIFIED = YES`
`REGION01_HUNT01_PHONE_VERIFIED = NO / RETEST_REQUIRED`
`HUNT01_GRAYBOX_SCENE_STATIC_FULL_DIMENSION_GATE = NOT_EXECUTED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact next actions

External phone gate:
`REGION01_HUNT01_PRODUCTION_GRAYBOX_GALAXY_A03S_RETEST`.

Next independent development:
`FIRST_SLICE_REGION01_HUNT01_TRACKING_EVIDENCE_RUNTIME_IMPLEMENTATION`.

Do not confuse the existing colored evidence markers with implemented tracking semantics yet. Combat/harvest/inventory/crafting/Settlement/persistence are also not runtime-complete.
