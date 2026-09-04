# Stage 1 Control / Camera Foundation — Protected Behavior README

Status: USER-DIRECTED FOUNDATION CONTRACT / ADAPTIVE-JOYSTICK REVISION IMPLEMENTED / GALAXY A03s RETEST REQUIRED
Last reconciled: 2026-09-04

## Why this file exists

This file protects the current user-approved control/camera direction from silent later replacement or retuning.

If a future implementation changes the joystick interaction model, Settings/Look Speed persistence, aerial behavior, first-person FOV, or first-person damping, the change and reason must be stated before it is presented as the new baseline, then re-tested through source/Godot/APK and Galaxy A03s evidence.

## Latest direct phone evidence — 2026-09-04

User reported:
- the Stage-1 probe otherwise works correctly;
- no clipping or other general problem was observed;
- aerial camera behavior is acceptable;
- the neutral-crossing repair still required an unwanted control gesture;
- the player should not have to release the finger **or return the joystick to 0/center** just so the control recognizes the new direction as forward;
- the test arena is too small for meaningful sustained steering tests.

This feedback explicitly supersedes both older recenter models:
1. release-to-recenter — superseded;
2. neutral/deadzone-crossing-to-recenter — superseded.

## Current protected movement contract — adaptive continuous steering

Phone movement uses one analog joystick on the lower-left.

Core behavior:
1. touch claims one pointer;
2. analog magnitude controls movement magnitude;
3. diagonal input is legal;
4. initial input resolves relative to Hunter heading captured at touch start;
5. current world movement is latched while the same physical direction is held;
6. once Hunter facing has aligned with a sustained movement direction, the joystick reference may rebase to that heading **without changing the current world movement**;
7. the player can then straighten/rotate the same held stick toward screen-up/forward and continue along the already-established world heading;
8. no finger release is required;
9. no deadzone/center crossing is required;
10. holding the same off-center input after a rebase must not cause continuous circling;
11. a deliberate stick movement away from the straightening path is interpreted as a new steering request;
12. release, Settings, pause/focus transitions still clear transient movement/touch ownership.

Prototype deadzone remains:
`0.12` normalized stick radius.

### Adaptive steering thresholds

Prototype values:
- alignment hold: `0.18 s`;
- Hunter/movement alignment dot: `0.985`;
- raw-direction meaningful-change dot: `0.985`;
- strength meaningful-change threshold: `0.12`;
- screen-forward completion dot: `0.90`.

These are Stage-1 tuning values and may change after phone feel evidence.

### Required behavior example

- Hunter starts north;
- player pushes joystick right;
- Hunter/camera turns and moves east;
- player keeps the same finger down;
- after the eastward motion has stabilized, the control commits east as the updated forward frame while keeping the current eastward motion unchanged;
- player slides the same joystick from right toward up;
- Hunter continues east while the stick is straightened;
- once the stick is up, up now means east/forward;
- at no point was finger release or center/deadzone entry required.

The same pattern must work again for later turns in the same touch gesture.

## Enlarged Stage-1 steering arena

Direct phone feedback found the previous arena too small.

Current probe floor:
`120 m × 120 m`.

Current horizontal Hunter bound:
`±56 m` on X and Z.

Usable bounded span:
approximately `112 m × 112 m`.

The floor extends 4 m beyond the Hunter-center bound on each outer side, preserving collision margin.

This larger arena exists only for Stage-1 movement/camera testing. It is not production Region 01 geometry and does not override the documented Hunt-01 world dimensions.

## Hunter facing

When movement is non-zero, Hunter facing turns toward authoritative world movement intent.

The adaptive joystick may change the reference used for a future input sample, but it must never silently alter the already-latched current world movement merely because the camera/Hunter finished turning.

## Aerial camera

Aerial behavior remains accepted and unchanged in principle:
- follows Hunter position;
- trails Hunter heading;
- looks ahead;
- smooth response;
- remains synchronized while first-person is active.

Prototype geometry:
- height `8.6 m`;
- trail `8.4 m`;
- look-ahead `2.2 m`.

## First-person camera

Current Stage-1 FOV:
`115°`.

User-requested acceptable range:
`110–120°`.

Current first-person Hunter turn-response multiplier:
`0.55`.

Aerial turn/follow tuning is not reduced by this multiplier.

## Look Speed

Settings → Controls → Look Speed.

Range:
`0–100%` in `5%` increments.

Default:
`35%`.

Persistence:
`user://stage1_settings.cfg`

Key:
`controls/look_speed`.

Look Speed controls turn/camera response, not movement speed.

## Settings / lifecycle safety

Opening Settings:
- zeroes movement;
- releases joystick touch ownership;
- leaves authoritative Hunter world position intact.

Android pause/resume/focus transitions also clear transient joystick state so movement cannot remain stuck after interruption.

## Current Galaxy A03s acceptance test

Minimum phone retest:
1. start north and hold joystick right until movement/facing stabilizes east;
2. keep the same finger down;
3. **do not return through center**;
4. slide the joystick gradually from right toward up;
5. Hunter should continue east rather than turning away or stopping;
6. once up, up should remain east/forward;
7. repeat with another turn in the same touch gesture;
8. verify no circular drift while simply holding one off-center direction;
9. verify first-person FOV/turn feel remains acceptable;
10. use the larger arena for long straight and repeated steering paths;
11. verify collision, boundary, Settings, view toggle and lifecycle input did not regress.

## Verification boundary

Automated/headless validation can prove the steering-state transitions and enlarged source geometry, but only the Galaxy A03s retest can establish phone feel/acceptance.
