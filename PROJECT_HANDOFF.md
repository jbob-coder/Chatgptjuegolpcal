# Unnamed Hunt RPG — Project Handoff

Status: STAGE-1 ADAPTIVE JOYSTICK PHONE RETEST NEXT / HUNT-01 MANIFEST STATIC VERIFIED
Last reconciled: 2026-09-04

## Current objective

Validate the final adaptive joystick feel on Galaxy A03s. If the user accepts it, close the Stage-1 functional phone gate and begin the smallest production Hunt-01 graybox implementation.

The game is primary. Documentation/data/tests preserve what exists, where it lives, ownership, verification state and next action.

## Latest direct phone direction

User rejected any requirement to release the joystick or return it to center/0 merely to continue forward after a turn. User also reported the previous test arena was too small.

Current tested source head:
`e9b89912f1c80e90114a68a6de9de4ffbcdd6777`.

Adaptive behavior:
- current world movement remains latched while held;
- after sustained Hunter alignment, the joystick frame rebases without altering that movement;
- same finger can slide side->diagonal-up->up while retaining the established world heading;
- no release/deadzone crossing required;
- unchanged held input cannot continuously circle.

Arena:
`120×120 m`, bound `±56 m`, usable span `~112×112 m`.

First person:
FOV `115°`; turn-response scale `0.55`; aerial behavior unchanged.

Automated evidence:
- adaptive workflow `33833083005`: SUCCESS;
- full Android workflow `33833083007`: SUCCESS.

Adaptive retest APK:
`UnnamedHuntRPG-Stage1-AdaptiveJoystick-Retest.apk`
`57,574,457 bytes`
SHA-256 `88b53cb20cac97751f30cc79033ed0e715544e8e26446b06e887e8ea894a5cf1`.

Drive file ID:
`1anJ1sY4ajJuJsID62pvgNKZYBvyYi3QV`.

Detailed handoff:
`docs/70_handoff/STAGE1_GALAXY_A03S_ADAPTIVE_JOYSTICK_REPAIR_2026-09-04.md`.

## Hunt-01 static geometry state

Validator:
`tests/quality/hunt01/hunt01_graybox_manifest_validator.py`.

Workflow `33830978945`: SUCCESS.
13/13 MANIFEST_STATIC rules PASS, 0 errors, 0 warnings.

Observation ramp: `6.607 m`; grades `15.2%` and `15.38%`.
Negative self-test correctly generated five errors and proved failure detection.

No engine scene/runtime/phone graybox verification exists yet.

## Current game/design state

Recorded chain:
Combat/outcome -> Monster 01 -> Berserk -> Defeat/Retreat -> Harvest -> Inventory -> one Poleblade refinement -> physical Smith -> Persistence -> world coordinates/dimensions -> Hunt-01 tracking/encounter -> geometry -> machine manifest -> static manifest verification.

Production runtime for the full game does not yet exist.

## Verification truth

`PHONE_GENERAL_RUNTIME_USER_REPORTED_PASS = YES`
`STAGE1_ADAPTIVE_JOYSTICK_AUTOMATED_VERIFIED = YES`
`STAGE1_ENLARGED_ARENA_AUTOMATED_VERIFIED = YES`
`STAGE1_ADAPTIVE_JOYSTICK_PHONE_ACCEPTED = NO / FINAL RETEST REQUIRED`
`ENGINE_PHONE_PROBE_VERIFIED = NO / PENDING ADAPTIVE FEEL RETEST`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`.

## Exact next action

`STAGE1_FINAL_GALAXY_A03S_ADAPTIVE_JOYSTICK_RETEST`.

If PASS:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

Do not call the Stage-1 probe a full-game APK.
