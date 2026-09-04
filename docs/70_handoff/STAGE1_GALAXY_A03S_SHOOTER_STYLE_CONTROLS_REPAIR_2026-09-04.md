# Handoff — Stage 1 Galaxy A03s Shooter-Style Mobile Controls Repair

Date: 2026-09-04
Status: USER FEEDBACK RECEIVED / APEX-LIKE CONTROL ARCHITECTURE IMPLEMENTED / AUTOMATED APK VERIFIED / GALAXY A03s FEEL RETEST REQUIRED

## Direct user evidence

The prior adaptive/latching joystick was reported as closer but still buggy/janky because hidden variables controlled when movement became the new reference.

The user clarified:
- continuing to hold one direction means the desired direction/extent has already been reached;
- unchanged side input must not keep accumulating turn;
- research Apex Legends Mobile and use a similar movement-control approach.

## Research result

Public descriptions of Apex Legends Mobile show the standard mobile-shooter split:
- left movement joystick;
- right-thumb/right-side camera control;
- fixed/free movement-control layout options.

No proprietary Apex source code was accessed. The project adopts the public control architecture, not source code.

## Implementation

Implementation commit:
`6079c95f90a6329b2685f4c078527ae4a0dc1523`.

New model:
- left joystick = direct camera-relative movement vector;
- right-side drag = independent view yaw;
- first-person right-side vertical drag = pitch, clamped ±80°;
- no adaptive hold timer;
- no alignment-dot threshold;
- no latch state;
- no forward-cone threshold;
- no rebase state;
- no movement-driven camera turn.

A fixed RIGHT input now remains one fixed movement vector until the player changes the stick or deliberately changes the camera.

The movement and look touches have independent touch IDs and can operate simultaneously.

## Camera / FOV

- first-person FOV remains `115°`;
- right-side Look Speed default remains `35%`;
- prototype sensitivity range `0.04–0.20°/pixel`;
- default 35% ≈ `0.096°/pixel`;
- aerial height `8.6 m`;
- aerial trail `8.4 m`;
- aerial look-ahead `2.2 m`.

The old first-person `0.55` movement-driven turn-response multiplier is removed because movement no longer rotates the view.

## Arena

- floor `120×120 m`;
- Hunter bound `±56 m` X/Z;
- usable span ~`112×112 m`.

## Dedicated regression

Workflow:
`33834546073`.

Result:
SUCCESS.

Verified:
- Godot parse;
- enlarged boundary static checks;
- 115° FOV;
- RIGHT maps directly to rightward movement;
- sustained RIGHT does not change view yaw;
- sustained RIGHT keeps the same world direction;
- diagonal/forward mapping is direct from stick angle;
- right-side look changes yaw independently;
- camera-relative movement follows deliberate view changes;
- movement stick alone never turns camera;
- first-person pitch clamp;
- independent movement/look touch ownership;
- transient reset clears both controls;
- unchanged side deflection stays the desired direction over sustained frames.

Gate:
`STAGE1_SHOOTER_STYLE_CONTROLS_RUNTIME_VERIFIED` — headless evidence only.

## Full Android pipeline

Workflow:
`33834546084`.

Result:
SUCCESS.

Passed:
- static probe preflight;
- Monster collision;
- enlarged world boundary;
- Godot import/parse;
- Boot smoke;
- ProbeWorld smoke;
- aerial↔first-person continuity;
- lifecycle transient-input regression;
- performance telemetry regression;
- Android export;
- APK integrity;
- artifact upload.

Build artifact ID:
`9922844781`.

Artifact ZIP:
`57,125,986 bytes`.

Artifact ZIP SHA-256:
`3c325b06d2bc76a7ee6a523ed124a7300245d04bd74c95c0451bff41aea7253b`.

Inner APK before final UI/documentation reconciliation:
`UnnamedHuntRPG-Stage1-ShooterStyle-Retest.apk`

Size:
`57,574,457 bytes`.

SHA-256:
`aa93221527c3a2e08543f403199144dc4611b2ac591201fdcfcc563c49a3a6b8`.

Google Drive temporary/final-retest file ID at this stage:
`1r62HYqQkZGyAj8h7zPzFm68Au31dqxzy`.

A later documentation/UI-help reconciliation may trigger a byte-different APK. If so, use the newest handoff/build identity, not this intermediate inner-APK hash.

## Required Galaxy A03s test

1. Hold LEFT or RIGHT without right-side look input.
2. Movement should remain on one stable direction; view yaw should not continue turning.
3. Move the left stick continuously through the circle; movement should follow it directly with no hidden latch/rebase sensation.
4. Hold movement while swiping on the right side; view should rotate independently and the movement basis should follow the deliberate camera change.
5. Test movement + look simultaneously.
6. Test first-person horizontal/vertical look and 115° FOV.
7. Verify the view-toggle and Settings buttons still receive taps.
8. Verify collision, outer boundary, lifecycle reset, and no stuck movement/look.

## Verification boundary

`STAGE1_SHOOTER_STYLE_CONTROLS_AUTOMATED_VERIFIED = YES`
`STAGE1_SHOOTER_STYLE_CONTROLS_PHONE_ACCEPTED = NO / RETEST REQUIRED`
`ENGINE_PHONE_PROBE_VERIFIED = NO / PENDING USER FEEL ACCEPTANCE`
`PERFORMANCE_VERIFIED = NO / SUSTAINED SOAK SEPARATE`
`FINAL_ENGINE_SELECTED = NO`.

If the user accepts this control feel, close the Stage-1 functional phone-control gate and begin the smallest production Hunt-01 graybox implementation.
