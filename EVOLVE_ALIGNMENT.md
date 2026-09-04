# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / HUNT-01 MANIFEST STATIC VERIFIED / STAGE-1 FINAL PHONE CONTROL-CAMERA RETEST NEXT
Last reconciled: 2026-09-04

## Mandatory rule

The game is the objective. Documentation/data/tests exist to preserve ownership, dimensions, coordinates, evidence, continuity and exact next action.

Before every bounded pass read:
1. this file;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. newest relevant `docs/70_handoff/`;
6. exact owning package/source/tests.

Current repository/source/build/device evidence outranks chat memory.

## Mandatory loop

`READ -> VERIFY -> ONE BOUNDED PIECE -> IDENTIFY OWNER/GATE -> IMPLEMENT/DOCUMENT -> TEST -> FIX SAME-PIECE FAILURES -> UPDATE OWNER/HANDOFF/README/INDEX -> SAVE/COMMIT -> READ BACK -> MARK EXACT STATUS -> RECORD NEXT PIECE`.

## Current Android / phone state

Candidate stack:
Godot 4.7 family / CI Godot 4.7.2 stable / GDScript / GL Compatibility/OpenGL3 / Galaxy A03s.

Direct user phone report on 2026-09-04:
- prior Stage-1 APK otherwise works correctly;
- no clipping or other reported general problem;
- aerial camera behavior is acceptable;
- remaining defects were joystick re-center ergonomics + first-person snappiness/FOV.

Repair commit:
`02459116216d3ac75ddd3d90c80f32bcbaa9662b`.

Current repair behavior:
- joystick basis remains frozen while outside deadzone;
- same finger crossing through neutral/deadzone recaptures latest Hunter heading;
- next push-up follows that new heading without finger release;
- aerial response unchanged;
- first-person turn response multiplier `0.55`;
- first-person FOV `115°`.

Dedicated control regression:
workflow `33831517381` SUCCESS.

Full Android pipeline:
workflow `33831517331` SUCCESS.

Fresh retest APK:
- `UnnamedHuntRPG-Stage1-Phone-Retest.apk`;
- `57,570,361 bytes`;
- SHA-256 `09b1faf49a4f7ca41d0a0926497e8c11469f5882bf6eba2f8799792f8e9d9c71`.

Google Drive:
file ID `1X86K00hKsvPorcUKXO4b-UIBHBHtwXoc` in folder `Unnamed Hunt RPG`.

Current phone truth:
`PHONE_GENERAL_RUNTIME_USER_REPORTED_PASS = YES`
`STAGE1_CONTROL_CAMERA_REPAIR_AUTOMATED_VERIFIED = YES`
`STAGE1_FINAL_PHONE_CONTROL_CAMERA_RETEST = REQUIRED`
`ENGINE_PHONE_PROBE_VERIFIED = NO / PENDING FINAL RETEST`
`PERFORMANCE_VERIFIED = NO / SUSTAINED PERFORMANCE EVIDENCE REMAINS SEPARATE`
`FINAL_ENGINE_SELECTED = NO / EXPECTED AFTER FUNCTIONAL STAGE1 CLOSURE`.

User direction:
if the corrected phone retest passes, Stage 1 functional gate may be closed and production Hunt-01 graybox work may begin. Sustained performance verification remains a separate evidence label and must not be invented.

## Hunt-01 static geometry QA

Build manifest:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`.

Validator:
`tests/quality/hunt01/hunt01_graybox_manifest_validator.py`.

Validation workflow:
`33830978945` SUCCESS.

Result:
`HUNT01_GRAYBOX_MANIFEST_STATIC_VALIDATOR_IMPLEMENTED = YES`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`
`HUNT01_GRAYBOX_SCENE_STATIC_VERIFIED = NO`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`.

Measured ramp:
`6.607 m`, segment grades `15.2%` and `15.38%`.

Negative self-test produced 5 intended errors and passed failure-detection proof.

## Current world/spatial baseline

Measurement: `1 unit = 1 meter`.
Axes: +X East / +Y Up / -Z North-outbound / +Z South-inbound.

Settlement 01 prototype envelope: `200×260 m`.
Frontier centerline: `~80 m`.
Region 01 proof route: S00 -> S01 -> S03 -> EF02 -> escape via S03→S05 -> same-Monster reacquisition.

Hunt-01 build targets include:
- route `285–315 m`;
- Ford basin `58×54 m`;
- water `34×18 m`, required depth `0.15–0.55 m`;
- wallow `16×12 m`;
- exit mud `20×12 m`;
- EF02 floor `70×54 m`;
- 10 tactical nodes / 14 links;
- boulder `5×4×3 m`;
- Charge corridor ~`48 m × >=9 m`;
- Monster pivot radius `8 m`.

## Recorded game-design chain

Recorded at design/build-spec level:
Combat/outcome -> Monster 01 -> Berserk -> Defeat/Retreat -> Harvest -> Inventory/Recovery Bundle -> one Poleblade refinement recipe -> physical Settlement Smith -> Persistence -> world dimensions/coordinates -> Hunt-01 tracking/integration -> geometry -> machine build manifest -> executable manifest-static validation.

These systems are not yet a full production runtime.

## Exact current action

`STAGE1_FINAL_GALAXY_A03S_CONTROL_CAMERA_RETEST`.

Minimum test:
1. hold right until Hunter faces right;
2. keep same finger down;
3. drag through center/deadzone;
4. push up;
5. Hunter should continue along newly faced heading;
6. confirm first-person left/right is no longer too snappy;
7. confirm 115° FOV is acceptable;
8. confirm no regression to collision, boundary, Settings, view toggle or stuck input.

## After successful retest

Close Stage-1 functional phone gate per user direction, select/finalize the production engine baseline, and begin exactly one smallest production world piece:

`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

That future piece should build only the validated first Hunt-01 primitive route/encounter geometry required to start testing the actual game. Do not jump directly to broad content expansion.

## Full-game APK truth

A playable full-game APK does not exist yet. Current combat, harvest, inventory, crafting, Settlement and Hunt-01 systems are primarily design/build-spec authorities, not production runtime code.

Do not rename the Stage-1 probe as the full game. The first broader playable development APK should be produced only after the final Stage-1 phone retest clears the functional gate.
