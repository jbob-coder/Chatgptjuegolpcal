# Unnamed Hunt RPG

Status: PRODUCTION GAME ROOT EXISTS / HUNT-01 GRAYBOX BUILD VERIFIED / PHONE GRAYBOX RETEST NEXT
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main game loop

`SETTLEMENT -> FRONTIER -> AERIAL REGION TRACKING -> SAME-LOCATION FIRST-PERSON TACTICAL COMBAT -> BREAK/SEVER -> ESCAPE/DEFEAT -> REACQUIRE/HARVEST -> INVENTORY -> RETURN -> SMITH -> CRAFT/EQUIP -> NEXT HUNT`.

The game is the objective. Documentation exists to preserve ownership, dimensions, coordinates, verification and continuation.

## Production runtime

Production Godot project:
`game/`

The Stage-1 probe remains under `probes/android_stage1/` as disposable evidence source only.

The user reported the final Galaxy A03s shooter-style controls **PASS 100%**. Those controls are preserved in production:
- left joystick = direct camera-relative movement;
- fixed stick direction does not accumulate camera turn;
- right-side drag = independent look;
- simultaneous movement/look;
- first-person FOV 115° / pitch ±80°.

## First production world slice

Implemented Hunt-01 physical proof:
`S00 -> S01 River Ford -> S03 Feeding Meadow -> EF02 -> S03→S05 escape corridor`.

Production scene includes the documented route, River Ford/water/mud, Feeding Meadow, observation shelf, 7 evidence markers, 10 tactical nodes, physical boulder/tree cover, solid Mudcrest Raker placeholder, Monster pivot/Charge clearances, escape corridor and camera/stream debug volumes.

World/build authority remains:
`docs/10_world/regions/REGION_01/`.

Runtime manifest projection:
`game/content/regions/region_01/hunt01_graybox_build_manifest.json`.

## Verification

Tested production source head:
`ef0db3b4dcbea32608228f99a8fffead5ad6c858`.

Production workflow `33836865365`: SUCCESS.

- production source/projection: 29/29 PASS;
- Hunt-01 headless integration: 23/23 PASS;
- Godot parse/AppShell/Region smoke: PASS;
- Android export/APK integrity/upload: PASS.

Production APK:
`UnnamedHuntRPG-Hunt01-Graybox-Retest.apk`
`57,587,191 bytes`
SHA-256 `7094b3046a6a35144b3d6c80bab8b6900a1fc33d9c04cbeca9d9a80e2361e36a`.

Drive ID:
`150Wot1owtIGrFWUG_BmfWWlXmlMUT02F`.

Artifact ID `9923580879`.
Artifact ZIP SHA-256 `184d158058df55f1b02dd92801c4af87376bc8f867d2bd77d29e6223368420db`.

## Route evidence boundary

Raw construction-anchor polyline: `282.926 m`.
Future final/smoothed navigable route target: `285–315 m`.

`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Current implementation truth

`STAGE1_SHOOTER_STYLE_CONTROLS_PHONE_ACCEPTED = YES`
`ENGINE_FUNCTIONAL_PHONE_PROBE_VERIFIED = YES`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = YES`
`HUNT01_PRODUCTION_PROJECTION_STATIC_VERIFIED = YES / 29_OF_29`
`HUNT01_PRODUCTION_GRAYBOX_HEADLESS_VERIFIED = YES / 23_OF_23`
`HUNT01_PRODUCTION_ANDROID_BUILD_VERIFIED = YES`
`REGION01_HUNT01_PHONE_VERIFIED = NO / RETEST_REQUIRED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## What is not yet full runtime

The production root exists, but tracking interpretation, tactical combat, harvesting, inventory, crafting, Settlement services and persistence still require incremental implementation and verification. Colored evidence/tactical markers do not mean those systems are already implemented.

## Next

External phone gate:
`REGION01_HUNT01_PRODUCTION_GRAYBOX_GALAXY_A03S_RETEST`.

Next independent development piece:
`FIRST_SLICE_REGION01_HUNT01_TRACKING_EVIDENCE_RUNTIME_IMPLEMENTATION`.
