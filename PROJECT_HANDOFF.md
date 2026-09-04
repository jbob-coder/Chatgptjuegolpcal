# Unnamed Hunt RPG — Project Handoff

Status: STAGE-1 SHOOTER-STYLE CONTROLS PHONE RETEST NEXT / HUNT-01 MANIFEST STATIC VERIFIED
Last reconciled: 2026-09-04

## Current objective

Finish one Galaxy A03s feel retest of the shooter-style mobile controls. If accepted, close the Stage-1 functional phone-control gate and begin the smallest production Hunt-01 graybox implementation.

## Current control implementation

Runtime implementation commit:
`6079c95f90a6329b2685f4c078527ae4a0dc1523`.

Final tested source/UI head:
`5af416f48a7542b964084f83301de0a5f826bb46`.

Protected owner:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Current model:
- left stick = direct camera-relative movement;
- right-side drag = independent view;
- fixed side input never accumulates camera yaw;
- movement and view can be used simultaneously;
- no adaptive timing/alignment/latch/rebase state;
- first-person FOV `115°`;
- first-person pitch `±80°`.

Dedicated workflow `33834916358`: SUCCESS.
Full Android workflow `33834916327`: SUCCESS.

Final APK:
`UnnamedHuntRPG-Stage1-ShooterStyle-FinalRetest.apk`
57,574,457 bytes
SHA-256 `e45e854951ff8a3cca9c93a20575aa967f824d86981ce3ba268372a0b19f6a6f`.

Artifact ZIP:
57,126,005 bytes
SHA-256 `a9e61564d13d2be0ba84a052e990e9b9772a82d46a6070e0f9bdf551412ac873`.

Drive file ID:
`1r62HYqQkZGyAj8h7zPzFm68Au31dqxzy`.

## Hunt-01 static validator

Workflow `33830978945`: SUCCESS.
Result: 13/13 MANIFEST_STATIC rules PASS, 0 errors, 0 warnings.
Observation ramp: 6.607 m; 15.2% and 15.38% segment grades.
Negative self-test generated 5 intended errors.

`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`.
No engine scene/runtime/phone graybox verification exists yet.

## Current game/design state

Recorded chain:
Combat/outcome -> Monster 01 -> Berserk -> Defeat/Retreat -> Harvest -> Inventory -> one Poleblade refinement -> physical Smith -> Persistence -> world coordinates/dimensions -> Hunt-01 tracking/encounter -> Hunt-01 geometry -> machine build manifest -> static verification.

Production runtime for the full game does not yet exist.

## Key Hunt-01 geometry

- route target 285–315 m;
- River Ford 58×54 m;
- water 34×18 m at 0.15–0.55 m depth;
- wallow 16×12 m;
- exit mud 20×12 m;
- EF02 floor 70×54 m;
- 10 tactical nodes / 14 links;
- boulder 5×4×3 m;
- Charge corridor ~48×>=9 m;
- Monster pivot radius 8 m.

## Current verification truth

`PHONE_GENERAL_RUNTIME_USER_REPORTED_PASS = YES`
`STAGE1_SHOOTER_STYLE_CONTROLS_AUTOMATED_VERIFIED = YES`
`STAGE1_SHOOTER_STYLE_CONTROLS_PHONE_ACCEPTED = NO / RETEST REQUIRED`
`ENGINE_PHONE_PROBE_VERIFIED = NO / FINAL CONTROL FEEL RETEST REQUIRED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`.

## Exact next action

`STAGE1_FINAL_GALAXY_A03S_SHOOTER_STYLE_CONTROLS_RETEST`.

If PASS:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

Do not call the Stage-1 probe a full-game APK.
