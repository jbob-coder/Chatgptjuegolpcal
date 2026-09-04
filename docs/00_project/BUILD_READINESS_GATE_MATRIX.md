# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / HUNT-01 MANIFEST STATIC VERIFIED / STAGE-1 ADAPTIVE JOYSTICK PHONE RETEST NEXT
Last reconciled: 2026-09-04

## Primary law

An open question blocks only the earliest implementation gate that genuinely consumes it. Verification labels remain evidence-specific.

## Current gate summary

| Gate | Status | Meaning |
|---|---|---|
| ENGINE PROBE AUTOMATION | PASS | source/static/headless/APK pipeline green on adaptive source |
| GALAXY A03s GENERAL PHONE FUNCTION | USER-REPORTED PASS | previous build had no reported clipping/general issue |
| ADAPTIVE JOYSTICK AUTOMATION | PASS | no-release/no-center steering state machine verified headlessly |
| ADAPTIVE JOYSTICK PHONE FEEL | REQUIRED | final Galaxy A03s acceptance needed |
| HUNT-01 MANIFEST STATIC VALIDATION | PASS | executable validator 13/13 |
| ENGINE GRAYBOX IMPLEMENTATION | NOT STARTED | may begin after Stage-1 functional phone closure per user direction |
| FULL GAME RUNTIME | NOT BUILT | design/build-spec systems are not production runtime yet |
| SUSTAINED PERFORMANCE | NOT VERIFIED | separate target-device soak gate |

## Stage-1 adaptive build

Final tested source head:
`e9b89912f1c80e90114a68a6de9de4ffbcdd6777`.

Changes:
- adaptive steering without release/deadzone recenter;
- current world direction preserved while same finger straightens toward UP;
- enlarged `120×120 m` floor;
- `±56 m` movement bound / `~112×112 m` usable span;
- first-person response multiplier `0.55`;
- first-person FOV `115°`;
- aerial behavior preserved.

Dedicated adaptive workflow:
`33833083005` SUCCESS.

Full Android workflow:
`33833083007` SUCCESS.

Fresh APK:
`57,574,457 bytes`
SHA-256 `88b53cb20cac97751f30cc79033ed0e715544e8e26446b06e887e8ea894a5cf1`.

Drive ID:
`1anJ1sY4ajJuJsID62pvgNKZYBvyYi3QV`.

## Hunt-01 static build gate

Validator:
`tests/quality/hunt01/hunt01_graybox_manifest_validator.py`.

Workflow `33830978945`: SUCCESS.

Result:
- 13/13 static rules PASS;
- 0 errors;
- 0 warnings;
- negative mutation correctly rejected;
- observation ramp `6.607 m`;
- grades `15.2%` and `15.38%`.

`HUNT01_BUILD_SPEC_GATE_B0 = PASS`
`HUNT01_MANIFEST_STATIC_GATE_B1 = PASS`
`HUNT01_GRAYBOX_SCENE_STATIC_GATE = NOT_EXECUTED`
`HUNT01_RUNTIME_GATE = NOT_EXECUTED`.

## Production permission boundary

`PRODUCTION_DOMAIN_IMPLEMENTATION = PENDING_FINAL_STAGE1_ADAPTIVE_PHONE_RETEST`.

If the Galaxy A03s adaptive steering retest passes, the Stage-1 functional phone gate may close and the smallest production Hunt-01 graybox implementation may begin.

This does not convert sustained performance into PASS.

## Exact next

`STAGE1_FINAL_GALAXY_A03S_ADAPTIVE_JOYSTICK_RETEST`.

After PASS:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.
