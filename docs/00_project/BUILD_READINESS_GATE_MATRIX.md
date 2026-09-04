# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / HUNT-01 MANIFEST STATIC VERIFIED / STAGE-1 SHOOTER-STYLE CONTROLS PHONE RETEST NEXT
Last reconciled: 2026-09-04

## Primary law

An open question blocks only the earliest implementation gate that genuinely consumes it. Verification labels remain evidence-specific.

## Current gate summary

| Gate | Status | Meaning |
|---|---|---|
| ENGINE PROBE AUTOMATION | PASS | source/static/headless/APK pipeline green |
| GALAXY A03s GENERAL PHONE FUNCTION | USER-REPORTED PASS | no clipping/general issue reported in prior phone build |
| SHOOTER-STYLE CONTROL AUTOMATION | PASS | direct left-stick movement + independent right-side look regression green |
| SHOOTER-STYLE PHONE FEEL | REQUIRED | Galaxy A03s user acceptance still required |
| HUNT-01 MANIFEST STATIC VALIDATION | PASS | executable validator 13/13 |
| ENGINE GRAYBOX IMPLEMENTATION | NOT STARTED | begin after Stage-1 functional phone-control closure |
| FULL GAME RUNTIME | NOT BUILT | design/build-spec systems are not yet production runtime |
| SUSTAINED PERFORMANCE | NOT VERIFIED | separate target-device soak evidence gate |

## Stage-1 shooter-style control revision

Runtime implementation commit:
`6079c95f90a6329b2685f4c078527ae4a0dc1523`.

Final tested source/UI head:
`5af416f48a7542b964084f83301de0a5f826bb46`.

Architecture:
- left fixed joystick = direct camera-relative movement vector;
- fixed stick direction never accumulates camera yaw;
- right-side drag independently controls view yaw;
- first-person vertical look clamp ±80°;
- first-person FOV 115°;
- movement/look can operate simultaneously;
- no adaptive timer/alignment/latch/rebase runtime state.

Dedicated workflow:
`33834916358` SUCCESS.

Full Android workflow:
`33834916327` SUCCESS.

Final APK:
57,574,457 bytes
SHA-256 `e45e854951ff8a3cca9c93a20575aa967f824d86981ce3ba268372a0b19f6a6f`.

Artifact ZIP:
57,126,005 bytes
SHA-256 `a9e61564d13d2be0ba84a052e990e9b9772a82d46a6070e0f9bdf551412ac873`.

Drive ID:
`1r62HYqQkZGyAj8h7zPzFm68Au31dqxzy`.

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
- observation ramp 6.607 m;
- grades 15.2% and 15.38%.

`HUNT01_BUILD_SPEC_GATE_B0 = PASS`
`HUNT01_MANIFEST_STATIC_GATE_B1 = PASS`
`HUNT01_GRAYBOX_SCENE_STATIC_GATE = NOT_EXECUTED`
`HUNT01_RUNTIME_GATE = NOT_EXECUTED`.

## Production permission boundary

Current:
`PRODUCTION_DOMAIN_IMPLEMENTATION = PENDING_FINAL_STAGE1_PHONE_CONTROL_FEEL_RETEST`.

If the Galaxy A03s shooter-style control retest passes, Stage-1 functional phone-control may close and the smallest production Hunt-01 graybox implementation may begin.

This does not convert sustained performance into PASS.

## Exact next

`STAGE1_FINAL_GALAXY_A03S_SHOOTER_STYLE_CONTROLS_RETEST`.

After PASS:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.
