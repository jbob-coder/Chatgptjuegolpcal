# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE-1 FUNCTIONAL PHONE GATE CLOSED / FIRST PRODUCTION HUNT-01 GRAYBOX BUILT
Last reconciled: 2026-09-04

## Mandatory rule

The game is the objective. Documentation/data/tests preserve ownership, dimensions, coordinates, evidence, continuity, and the exact next action.

Before every bounded pass read:
1. this file;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. newest relevant `docs/70_handoff/`;
6. exact owning package/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

Mandatory loop:
`READ -> VERIFY -> ONE BOUNDED PIECE -> IDENTIFY OWNER/GATE -> IMPLEMENT/DOCUMENT -> TEST -> FIX SAME-PIECE FAILURES -> UPDATE OWNER/HANDOFF/README/INDEX -> SAVE/COMMIT -> READ BACK -> MARK EXACT STATUS -> RECORD NEXT PIECE`.

## Stage-1 phone gate

User reported the final shooter-style Galaxy A03s controls **PASS 100%**.

Accepted control architecture:
- left fixed joystick = direct camera-relative movement;
- fixed stick direction does not accumulate camera yaw;
- right-side drag = independent view;
- simultaneous movement/look;
- first-person FOV `115°`;
- first-person pitch `±80°`;
- no adaptive timer/alignment/latch/rebase steering state.

Stage-1 tested source/UI head:
`5af416f48a7542b964084f83301de0a5f826bb46`.

Dedicated control workflow `33834916358`: SUCCESS.
Full Stage-1 Android workflow `33834916327`: SUCCESS.

`STAGE1_SHOOTER_STYLE_CONTROLS_PHONE_ACCEPTED = YES`
`ENGINE_FUNCTIONAL_PHONE_PROBE_VERIFIED = YES`
`PERFORMANCE_VERIFIED = NO / SUSTAINED_A03S_SOAK_SEPARATE`
`FINAL_ENGINE_SELECTED = NO`.

`probes/android_stage1/` remains disposable evidence source and is not production architecture.

## Production game root

Production Godot project:
`game/`

First production piece completed:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

Tested source head:
`ef0db3b4dcbea32608228f99a8fffead5ad6c858`.

Production workflow:
`33836865365` SUCCESS.

Static/projection/source:
`29/29 PASS`.

Headless production integration:
`23/23 PASS`.

Android debug export/integrity/upload:
PASS.

Production APK:
`UnnamedHuntRPG-Hunt01-Graybox-Retest.apk`
`57,587,191 bytes`
SHA-256 `7094b3046a6a35144b3d6c80bab8b6900a1fc33d9c04cbeca9d9a80e2361e36a`.

Artifact ID `9923580879`.
Artifact ZIP `57,142,468 bytes`; SHA-256 `184d158058df55f1b02dd92801c4af87376bc8f867d2bd77d29e6223368420db`.

Google Drive:
file ID `150Wot1owtIGrFWUG_BmfWWlXmlMUT02F`.

## Hunt-01 physical implementation

The production scene now contains:
- S00 departure/choice area;
- required route through River Ford and Feeding Meadow;
- reversible S02 wrong-route stub;
- Ford/water/mud visual zones;
- EF02 Meadow/open core/observation shelf;
- physical boulder/tree cover;
- 7 evidence markers;
- 10 tactical nodes;
- solid Monster placeholder;
- pivot/Charge clearance debug geometry;
- S03→S05 escape corridor;
- camera/stream debug volumes;
- production shooter-style controls, cameras, Settings and S00 reset.

Authority remains under:
`docs/10_world/regions/REGION_01/`.

Runtime projection:
`game/content/regions/region_01/hunt01_graybox_build_manifest.json`
must remain equal to the authoritative docs manifest.

Raw construction-anchor route = `282.926 m`.
Future finished/smoothed navigable route target = `285–315 m`.

`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.
Do not alter valid coordinates merely to force the raw construction polyline into the future smoothed-path target.

## Current verification truth

`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = YES`
`HUNT01_PRODUCTION_PROJECTION_STATIC_VERIFIED = YES / 29_OF_29`
`HUNT01_PRODUCTION_GRAYBOX_HEADLESS_VERIFIED = YES / 23_OF_23`
`HUNT01_PRODUCTION_ANDROID_BUILD_VERIFIED = YES`
`REGION01_HUNT01_PHONE_VERIFIED = NO / RETEST_REQUIRED`
`HUNT01_GRAYBOX_SCENE_STATIC_FULL_DIMENSION_GATE = NOT_EXECUTED`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Current external device gate

`REGION01_HUNT01_PRODUCTION_GRAYBOX_GALAXY_A03S_RETEST`.

Phone test should verify real-world traversal, no gaps/softlocks, Ford/Meadow readability, evidence/node visibility, solid cover/Monster, escape path, aerial/first-person continuity, Settings, pause/resume and quick FPS behavior.

## Exact next independent game-development piece

Do not stop valid development while phone evidence is pending.

`FIRST_SLICE_REGION01_HUNT01_TRACKING_EVIDENCE_RUNTIME_IMPLEMENTATION`.

Bounded scope:
1. reread Region tracking/integration authorities and seven evidence anchors;
2. implement interactable evidence state on the real production map;
3. preserve exact stable evidence IDs/coordinates;
4. implement deterministic evidence freshness/confidence/activity interpretation for the first proof;
5. preserve the physically legal S02 inference-error route;
6. make normal player presentation communicate rough direction/confidence/activity rather than exact Monster GPS coordinates;
7. add static/headless tests and Android build verification;
8. do not implement combat, harvesting, crafting, persistence expansion or additional Monsters in the same piece.

## Full-game truth

A production game root now exists, but the complete gameplay loop is not yet runtime-complete. Combat, tracking semantics, harvesting, inventory, crafting, Settlement services and persistence must be implemented and verified incrementally on `game/`.
