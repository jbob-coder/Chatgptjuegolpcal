# Unnamed Hunt RPG — Project Handoff

Status: STAGE-1 FINAL PHONE RETEST NEXT / HUNT-01 MANIFEST STATIC VERIFIED
Last reconciled: 2026-09-04

## Current objective

Finish the one remaining Stage-1 Galaxy A03s control/camera retest, then begin the smallest production Hunt-01 graybox implementation if the user confirms the corrected behavior.

The game is primary. Documentation/data/tests exist to preserve what exists, where it lives, what owns it, what is verified, what is not verified, and what happens next.

## Current direct phone evidence

User reports the previous Stage-1 APK otherwise works correctly with no clipping or other reported general problem.

Repair commit:
`02459116216d3ac75ddd3d90c80f32bcbaa9662b`.

Changed behavior:
- neutral-crossing joystick recenter without finger release;
- first-person turn-response multiplier `0.55`;
- first-person FOV `115°`;
- aerial response intentionally unchanged.

Automated evidence:
- dedicated control workflow `33831517381`: SUCCESS;
- full Android pipeline `33831517331`: SUCCESS.

Retest APK:
`UnnamedHuntRPG-Stage1-Phone-Retest.apk`
57,570,361 bytes
SHA-256 `09b1faf49a4f7ca41d0a0926497e8c11469f5882bf6eba2f8799792f8e9d9c71`.

Drive file ID:
`1X86K00hKsvPorcUKXO4b-UIBHBHtwXoc`.

Exact final phone check:
right turn -> same finger through neutral -> up follows new heading; first-person feel calmer; 115° FOV acceptable; no regression.

## Hunt-01 static validator

Source:
`tests/quality/hunt01/`.

Workflow:
`33830978945` SUCCESS.

Result:
13/13 MANIFEST_STATIC rules PASS, 0 errors, 0 warnings.

Observation ramp measurement:
6.607 m; 15.2% and 15.38% segment grades.

Negative self-test correctly generated 5 errors and passed failure detection.

`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`.

No engine scene/runtime/phone graybox verification exists yet.

## Current game/design state

Recorded chain:
Combat/outcome -> Monster 01 -> Berserk -> Defeat/Retreat -> Harvest -> Inventory -> one Poleblade refinement recipe -> physical Smith -> Persistence -> world coordinates/dimensions -> Hunt-01 tracking/encounter integration -> Hunt-01 geometry -> machine build manifest -> static manifest verification.

Production runtime for the full game does not yet exist.

## Current Hunt-01 build facts

- route target 285–315 m;
- River Ford basin 58×54 m;
- water 34×18 m at 0.15–0.55 m required depth;
- wallow 16×12 m;
- exit mud 20×12 m;
- EF02 floor 70×54 m;
- 10 tactical nodes / 14 links;
- boulder 5×4×3 m;
- Charge corridor ~48×>=9 m;
- Monster pivot radius 8 m;
- same persistent Monster escapes via S03→S05 and is reacquired.

## Current verification truth

`PHONE_GENERAL_RUNTIME_USER_REPORTED_PASS = YES`
`STAGE1_CONTROL_CAMERA_REPAIR_AUTOMATED_VERIFIED = YES`
`ENGINE_PHONE_PROBE_VERIFIED = NO / FINAL RETEST REQUIRED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`.

## Exact next action

`STAGE1_FINAL_GALAXY_A03S_CONTROL_CAMERA_RETEST`.

If user reports PASS, close Stage-1 functional phone gate and begin:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

Do not call the current Stage-1 probe a full-game APK. The first broader playable APK must come from actual production graybox/game runtime work after this retest.
