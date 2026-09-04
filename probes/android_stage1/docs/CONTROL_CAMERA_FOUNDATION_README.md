# Stage 1 Control / Camera Foundation — Protected Behavior README

Status: USER-DIRECTED FOUNDATION CONTRACT / PHONE FEEDBACK RECEIVED / REPAIR IMPLEMENTED / FINAL GALAXY A03s RETEST REQUIRED
Last reconciled: 2026-09-04

## Why this file exists

This file protects the current user-approved control/camera direction from accidental later replacement or retuning.

The Stage 1 probe is disposable engine-evidence source, but the interaction lessons proven here are design evidence for the future production game.

**Do not silently replace, remove, substantially retune, or reinterpret the behaviors below.**

If a later implementation needs to change one of them:
1. state the reason before changing it;
2. identify which behavior is affected;
3. preserve the old value/behavior in the change record;
4. run the relevant static/Godot/APK tests;
5. run a Galaxy A03s phone regression test;
6. document the new evidence and whether the user accepted the change.

## Latest direct phone evidence — 2026-09-04

User reported that the current Stage-1 APK otherwise works correctly on phone with no clipping or other reported problems.

Two control/camera issues remain before Stage 1 may be considered closed:
1. after steering right, the player should not need to lift the joystick finger before pushing up/forward relative to the new heading;
2. first-person left/right turning feels too snappy and first-person FOV should be in the 110–120 degree range.

Selected repair:
- keep the movement basis frozen while the stick is held outside neutral;
- when the same finger passes back through the joystick deadzone, recapture the Hunter's latest heading once;
- the next non-neutral stick direction uses that new reference without requiring touch release;
- first-person turn response is damped relative to aerial mode only;
- first-person FOV is set to `115°`.

This is an explicit user-directed revision to the previous release-required recenter behavior. The old release-to-recenter behavior remains documented below as superseded history.

## Protected control contract

### Movement

Phone movement uses one **analog movement joystick** on the lower-left.

Required behavior:
- touch inside the joystick claims one touch pointer;
- dragging produces an analog movement vector;
- movement magnitude scales from deadzone to full travel;
- diagonal movement is supported;
- releasing the controlling touch resets movement to zero;
- opening Settings resets the joystick to zero;
- desktop WASD remains a development fallback;
- the joystick is movement input only and does not directly own authoritative world state.

Prototype deadzone:
`0.12` normalized stick radius.

### Heading-relative joystick reference — current rule

The joystick is **not permanently world-axis-relative** and the reference does **not continuously rotate** while the stick is held away from center.

Current behavior:
1. a new joystick touch captures Hunter forward/right;
2. while the stick remains outside the deadzone, that basis stays stable;
3. if the same finger returns through the deadzone/neutral, capture the Hunter's latest heading once;
4. pushing away from neutral again uses the newly captured heading;
5. releasing still resets touch ownership and movement to zero;
6. a later new touch also captures the latest Hunter heading.

Required example:
- Hunter starts north;
- player drags stick right and Hunter turns/moves east;
- without lifting the finger, player drags the stick back through center;
- the neutral crossing captures east as the new forward reference;
- player pushes stick up;
- Hunter continues east/forward.

While the player continues holding the stick right/off-center, the basis must remain frozen. This preserves the anti-circling behavior already validated conceptually.

### Superseded prototype rule

Previous Stage-1 behavior required full touch release before a new heading reference could be captured.

That rule solved the rotating-basis/circling problem but direct phone feedback showed it required an unnecessary finger lift. It is superseded by **neutral-crossing recenter**.

## Hunter facing

When movement is non-zero, the Hunter turns toward resolved world movement heading.

Movement direction remains authoritative input intent; visual facing/camera response is smoothed.

## Aerial camera

The aerial camera:
- follows Hunter world position;
- derives forward from Hunter heading rather than fixed world `-Z`;
- trails behind Hunter heading;
- looks slightly ahead of the Hunter;
- uses smoothed response rather than snapping around turns;
- remains synchronized while first-person is active so returning to aerial does not revive a stale camera position.

Prototype geometry remains:
- height: `8.6 m`;
- trail distance: `8.4 m`;
- look-ahead: `2.2 m`.

Direct phone feedback on 2026-09-04 did not request a change to aerial behavior, so this repair must not slow or retune aerial follow merely to fix first-person feel.

## First-person camera — current repair

First-person FOV:
`115°`.

User-requested acceptable range:
`110–120°`.

The 115° midpoint is the current Stage-1 retest value.

First-person turn response uses the existing Hunter turn-response calculation multiplied by:
`0.55`.

Aerial mode keeps the existing response unchanged.

Purpose:
reduce left/right first-person snapping while preserving the already-accepted aerial response.

This is still prototype phone tuning, not a final production accessibility/sensitivity contract.

## Look Speed setting

Settings contains a tabbed panel.

Current tabs:
- `Controls`;
- `Display` placeholder.

Controls contains:
`Look Speed`.

Range:
`0%` to `100%` in `5%` increments.

Default:
`35%`.

Look Speed does not increase movement speed.

Base response mapping remains:
- Hunter turn response: `lerp(2.0, 10.0, look_speed)`;
- aerial-camera follow response: `lerp(1.5, 9.0, look_speed)`.

When first-person is active, the Hunter turn response additionally uses the current `0.55` first-person damping multiplier.

Persistence:
`user://stage1_settings.cfg`

Key:
`controls/look_speed`.

## Settings interaction contract

A visible `SETTINGS` button opens/closes the overlay.

While Settings is open:
- movement input is zeroed;
- joystick touch state is reset;
- view-toggle input is ignored by the probe controller;
- underlying scene can continue rendering for Stage-1 performance observation;
- changing Look Speed applies immediately and saves automatically.

Closing Settings returns to the same physical Hunter state.

## What is NOT locked yet

Not final:
- final joystick art/size/placement;
- final production settings architecture;
- final first-person free-look/right-stick design;
- camera collision/occlusion system;
- final production FOV/accessibility sensitivity range;
- final camera distances.

## Current phone acceptance boundary

Direct user report already supports:
- app/game probe runs correctly on phone;
- no reported clipping problem;
- no reported additional general issue in the tested Stage-1 probe;
- aerial camera adjustment behavior is acceptable.

Still requires one corrected-APK retest:
1. turn right while holding joystick, pass through neutral, push up without lifting finger → continues along new forward heading;
2. first-person left/right movement/turning no longer feels excessively snappy;
3. 115° first-person FOV is acceptable on the Galaxy A03s;
4. no regression to collision, boundary, Settings, lifecycle, view toggle or performance behavior.

Stage 1 should only be marked fully accepted after that retest.

## Regression checklist

At minimum verify:
1. joystick starts movement;
2. release stops movement;
3. diagonal/partial movement works;
4. held off-center basis remains stable;
5. same-finger neutral crossing recaptures latest heading;
6. neutral→up follows newly faced heading without release;
7. Settings opening resets movement/touch ownership;
8. Look Speed changes response and persists;
9. aerial camera remains unchanged from accepted behavior;
10. first-person FOV reports 115°;
11. first-person turn response is calmer than aerial response at the same Look Speed;
12. aerial↔first-person toggle preserves position;
13. no stuck input;
14. no clipping or nausea-inducing snap/spin;
15. static/Godot/headless/APK build gates remain green;
16. Galaxy A03s final retest passes.

## Change-warning law

Any future assistant/developer changing joystick neutral-recenter behavior, Settings/Look Speed persistence, first-person FOV, first-person damping, or aerial response must state the change and reason before presenting it as the new baseline.
