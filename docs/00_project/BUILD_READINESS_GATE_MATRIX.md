# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / HUNT-01 MANIFEST STATIC VERIFIED / STAGE-1 FINAL PHONE RETEST NEXT
Last reconciled: 2026-09-04

## Primary law

An open question blocks only the earliest implementation gate that genuinely consumes it. Verification labels remain evidence-specific.

## Current gate summary

| Gate | Status | Meaning |
|---|---|---|
| ENGINE PROBE AUTOMATION | PASS | source/static/headless/APK pipeline green |
| GALAXY A03s GENERAL PHONE FUNCTION | USER-REPORTED PASS | no clipping/general issue reported in prior build |
| CONTROL/CAMERA FINAL RETEST | REQUIRED | corrected neutral-recenter + first-person tuning must be accepted |
| HUNT-01 MANIFEST STATIC VALIDATION | PASS | executable validator 13/13 |
| ENGINE GRAYBOX IMPLEMENTATION | NOT STARTED | may begin after Stage-1 functional phone closure per user direction |
| FULL GAME RUNTIME | NOT BUILT | design/build-spec systems are not yet production runtime |
| SUSTAINED PERFORMANCE | NOT VERIFIED | remains separate target-device evidence gate |

## Stage-1 corrected build

Repair commit:
`02459116216d3ac75ddd3d90c80f32bcbaa9662b`.

Changes:
- same-finger neutral-crossing joystick recenter;
- first-person response multiplier 0.55;
- first-person FOV 115°;
- aerial behavior preserved.

Dedicated control workflow:
`33831517381` SUCCESS.

Full Android build workflow:
`33831517331` SUCCESS.

Fresh APK:
57,570,361 bytes
SHA-256 `09b1faf49a4f7ca41d0a0926497e8c11469f5882bf6eba2f8799792f8e9d9c71`.

Drive ID:
`1X86K00hKsvPorcUKXO4b-UIBHBHtwXoc`.

## Hunt-01 static build gate

Validator:
`tests/quality/hunt01/hunt01_graybox_manifest_validator.py`.

Workflow:
`33830978945` SUCCESS.

Result:
- 13/13 static rules PASS;
- 0 errors;
- 0 warnings;
- negative mutation correctly rejected;
- measured observation ramp 6.607 m;
- grades 15.2% and 15.38%.

`HUNT01_BUILD_SPEC_GATE_B0 = PASS`
`HUNT01_MANIFEST_STATIC_GATE_B1 = PASS`
`HUNT01_GRAYBOX_SCENE_STATIC_GATE = NOT_EXECUTED`
`HUNT01_RUNTIME_GATE = NOT_EXECUTED`.

## Production permission boundary

Current:
`PRODUCTION_DOMAIN_IMPLEMENTATION = PENDING_FINAL_STAGE1_PHONE_RETEST`.

Per current user direction, if the corrected Galaxy A03s control/camera retest passes, the Stage-1 functional phone gate may be closed and the smallest production Hunt-01 graybox implementation may begin.

This does not convert sustained performance into PASS. `PERFORMANCE_VERIFIED` remains separate until actual soak evidence exists.

## Exact next

`STAGE1_FINAL_GALAXY_A03S_CONTROL_CAMERA_RETEST`.

After PASS:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.
