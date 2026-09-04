# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 LAYER 2 TRACKING BUILD VERIFIED
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → FRONTIER → AERIAL TRACKING → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → SMITH → CRAFT/EQUIP → NEXT HUNT`.

The game is the objective. Documentation records ownership, dimensions, coordinates, verification and continuation.

## Production root

`game/`

The Stage-1 probe under `probes/android_stage1/` is evidence only.

## Current production layers

### Layer 1 — flat themed Hunt-01 world

- one continuous 440×440 m physical foundation;
- 6.25 m/s Hunter movement;
- shooter-style controls accepted 100% on Galaxy A03s;
- stylized Hunter / Mudcrest Raker / forest asset kit;
- River Ford, water/mud, Feeding Meadow, physical cover, escape corridor;
- initial disconnected/ugly graybox presentation is rejected and superseded.

### Layer 2 — tracking/evidence

Implemented:
- seven physical clue types;
- walk-over investigation + disappearance;
- no duplicate clue collection;
- freshness/confidence/activity interpretation;
- deterministic clue history;
- old weak S02 Rootwood clue versus fresher S03 evidence;
- rough directional reasoning without exact Monster GPS;
- audio-independent completion;
- final state `OBSERVATION_READY`.

Tested source: `0df278eba2d9265ed84483265957d9f8c2d7f415`.
Workflow `33845109063`: SUCCESS.

`49/49` source/static PASS.
`66/66` production/headless tracking integration PASS.
Android export/APK integrity PASS.

APK: `UnnamedHuntRPG-Hunt01-Layer2-Tracking.apk`
SHA-256 `8cecb327cba3e8a21ac7bb54b281d2e3e9b76616963985acf4512819b31204fe`
Drive ID `13c3SGmTxlj8BldnRvIErWvQGizj7VYbt`.

## Development cadence

Phone/user acceptance is now **deferred and batched**. Independent layers continue after automated verification instead of waiting for a phone test after every APK.

This does not change evidence language:
`PHONE ACCEPTANCE DEFERRED ≠ PHONE PASS`.

## Next

`FIRST_SLICE_REGION01_HUNT01_OBSERVATION_AND_ENCOUNTER_TRIGGER_RUNTIME_IMPLEMENTATION`

This next layer connects the completed trail to a physical observation/engagement state and same-location first-person encounter entry. Attack/combat resolution remains a later bounded layer.

`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.
