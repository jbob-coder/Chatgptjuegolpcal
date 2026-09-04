# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / LAYER 2 TRACKING VERIFIED / PHONE VALIDATION BATCHED
Last reconciled: 2026-09-04

## Operating law

The game is the objective. Documentation preserves ownership, evidence, dimensions, coordinates and continuation.

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → CONTINUE`.

Current repository/build evidence outranks chat memory.

## User validation policy

`USER_PHONE_VALIDATION_POLICY = DEFERRED_BATCH`
`PHONE_ACCEPTANCE_DOES_NOT_BLOCK_INDEPENDENT_LAYER_DEVELOPMENT = YES`

Do not stop after each APK waiting for phone feedback. Continue independent layers after automated QA. Still never convert missing device evidence into a false phone/performance PASS.

## Accepted controls

`STAGE1_SHOOTER_STYLE_CONTROLS_PHONE_ACCEPTED = YES`
`ENGINE_FUNCTIONAL_PHONE_PROBE_VERIFIED = YES`

Protected production behavior:
- left joystick = direct camera-relative analog movement;
- fixed stick direction does not accumulate turning;
- right-side drag = independent look;
- simultaneous movement/look;
- first-person FOV 115°;
- first-person pitch ±80°.

## Production world Layer 1

Initial production graybox visual phone result: `FAIL / SUPERSEDED`.

Current flat-themed foundation:
- one continuous 440×440 m physical surface;
- 6.25 m/s Hunter movement;
- themed Hunter/Mudcrest/environment asset kit;
- River Ford, mud/water, Feeding Meadow, cover and escape route layered over one collision foundation;
- physical evidence triggers disappear on collection;
- audio not required.

`HUNT01_FLAT_THEMED_FOUNDATION_IMPLEMENTED = YES`
`HUNT01_FLAT_THEMED_FOUNDATION_HEADLESS_VERIFIED = YES`
`HUNT01_FLAT_THEMED_FOUNDATION_ANDROID_BUILD_VERIFIED = YES`
`HUNT01_FLAT_THEMED_FOUNDATION_PHONE_ACCEPTANCE = DEFERRED`

## Production Layer 2 — tracking/evidence

Tested source head:
`0df278eba2d9265ed84483265957d9f8c2d7f415`

Workflow:
`33845109063` SUCCESS.

Automated evidence:
- source/projection: `49/49 PASS`;
- production tracking/headless integration: `66/66 PASS`;
- Godot parse/AppShell/Region smoke: PASS;
- Android export/APK integrity/artifact upload: PASS.

Tracking runtime:
- 7 physical evidence types;
- freshness/confidence/activity interpretation;
- deterministic clue history;
- fresh S03 water-exit evidence outweighs old/weak S02 Rootwood evidence;
- rough route reasoning without Monster GPS;
- final clue reaches `OBSERVATION_READY`;
- evidence disappears after investigation and cannot duplicate;
- audio is optional.

APK:
`UnnamedHuntRPG-Hunt01-Layer2-Tracking.apk`
57,633,529 bytes
SHA-256 `8cecb327cba3e8a21ac7bb54b281d2e3e9b76616963985acf4512819b31204fe`
Drive ID `13c3SGmTxlj8BldnRvIErWvQGizj7VYbt`.
Artifact ID `9926241504`.

`HUNT01_TRACKING_EVIDENCE_RUNTIME_IMPLEMENTED = YES`
`HUNT01_TRACKING_EVIDENCE_HEADLESS_VERIFIED = YES / 66_OF_66`
`HUNT01_TRACKING_EVIDENCE_ANDROID_BUILD_VERIFIED = YES`
`HUNT01_TRACKING_EVIDENCE_PHONE_ACCEPTANCE = DEFERRED`

## Still unverified

`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

## Exact next independent layer

`FIRST_SLICE_REGION01_HUNT01_OBSERVATION_AND_ENCOUNTER_TRIGGER_RUNTIME_IMPLEMENTATION`

Bounded scope:
1. consume `OBSERVATION_READY` from tracking;
2. establish a physical observation/engagement zone at the existing Meadow coordinates;
3. preserve the same Hunter and `monster_r01_m01_0001` world transforms;
4. require explicit engage/approach authority rather than auto-starting combat from clue pickup;
5. transition aerial → first-person at the same physical encounter;
6. reveal/activate the existing tactical-node graph only after encounter entry;
7. create an encounter state/ID without implementing attacks yet;
8. ensure retreat/escape corridor remains physically available;
9. add static/headless/build verification;
10. do not wait for phone acceptance before the next independent layer.
