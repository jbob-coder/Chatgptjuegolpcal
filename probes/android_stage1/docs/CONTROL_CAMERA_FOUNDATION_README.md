# Stage 1 Control / Camera Foundation — Protected Behavior README

Status: USER-DIRECTED FOUNDATION CONTRACT / IMPLEMENTED / PHONE RETEST REQUIRED
Last reconciled: 2026-09-03

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

A refactor is not permission to change the player-facing contract.

## User-approved direction

Direct target-device feedback established:
- the prior camera-follow repair worked conceptually but turned too aggressively;
- four directional touch buttons are less desirable than an analog joystick;
- the game needs a Settings button;
- Settings should use tabs;
- a Controls tab should expose `Look Speed`;
- the chosen Look Speed should be saved;
- the joystick should reset its forward reference after the player changes heading so the player does not have to keep holding a world-fixed direction such as east just to continue walking forward;
- these decisions should be documented so later work does not undo them without warning.

## Protected control contract

### Movement

Phone movement uses one **analog movement joystick** on the lower-left.

It replaces the four discrete directional buttons.

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

The exact visual art of the stick is not locked by this document. Its interaction model is.

### Heading-relative joystick reference

The joystick is **not permanently world-axis-relative**.

Each new joystick touch gesture captures the Hunter's current horizontal heading as a stable movement reference for that gesture.

Required behavior:
1. when a new touch claims the joystick, snapshot Hunter forward/right;
2. interpret stick directions relative to that captured heading during the active touch;
3. do not continuously rotate the control basis underneath the player's finger while that touch remains active;
4. on release, reset the stick to center;
5. the next new touch captures the Hunter's latest heading again.

Example:
- Hunter initially faces north;
- player pushes joystick right and Hunter turns/moves east;
- player releases the joystick;
- next touch begins with east as the new forward reference;
- pushing joystick **up** now continues east/forward.

This solves the target-device complaint that the player otherwise had to keep holding an absolute east direction just to walk straight after turning east.

The per-touch frozen reference is intentional. A continuously rotating reference can cause curved/circling movement because the movement basis changes while the same directional input is still held.

### Hunter facing

When movement is non-zero, the Hunter turns toward the resolved world movement heading.

Movement direction remains authoritative input intent; visual facing/camera response is smoothed.

### Aerial camera

The aerial camera:
- follows Hunter world position;
- derives forward from Hunter heading rather than fixed world `-Z`;
- trails behind the Hunter heading;
- looks slightly ahead of the Hunter;
- uses smoothed response rather than snapping around turns;
- remains synchronized while first-person is active so returning to aerial does not revive a stale camera position.

Prototype geometry remains:
- height: `8.6 m`;
- trail distance: `8.4 m`;
- look-ahead: `2.2 m`.

These are Stage-1 tuning values, not final production-camera constants.

## Look Speed setting

Settings contains a tabbed panel.

Current tabs:
- `Controls`;
- `Display` placeholder only until an evidence-based display setting is needed.

The `Controls` tab contains:
`Look Speed`.

Range:
`0%` to `100%` in `5%` increments.

Default:
`35%`.

Reason for the reduced default:
target-device feedback found the previous camera turn response too aggressive.

`Look Speed` controls the smoothed Hunter-heading and aerial-camera-follow response. It does not increase movement speed.

Current response mapping:
- Hunter turn response: `lerp(2.0, 10.0, look_speed)`;
- camera follow response: `lerp(1.5, 9.0, look_speed)`.

The player-selected value is persisted through Godot `ConfigFile` at:
`user://stage1_settings.cfg`

Key:
`controls/look_speed`

Opening/closing Settings must not teleport the Hunter or change authoritative position.

## Settings interaction contract

A visible `SETTINGS` button opens/closes the overlay.

While Settings is open:
- movement input is zeroed;
- the joystick is reset;
- view-toggle input is ignored by the probe controller;
- the underlying scene can continue rendering for Stage-1 performance observation;
- changing Look Speed applies immediately and is saved automatically.

Closing Settings returns to the same physical Hunter state.

## What is NOT locked yet

Not yet final:
- final joystick art;
- final joystick size/placement after accessibility testing;
- final menu art/theme;
- final production settings architecture;
- separate first-person free-look/right-stick design;
- camera collision/occlusion system;
- final camera distances/FOV;
- final accessibility sensitivity ranges.

Do not infer those decisions from this probe.

## Current known separate defect

The brown Monster placeholder still lacks trustworthy solid collision and the Hunter can penetrate it.

That is a separate bounded repair:
`MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR`.

Do not fold combat, Monster AI, damage, navigation, harvesting, or production physics into that repair.

## Regression checklist for any future control/camera change

At minimum verify:
1. joystick starts movement;
2. joystick release stops movement;
3. diagonal/partial movement works;
4. turn east, release, touch again, push up → Hunter continues east/forward;
5. the active-touch movement basis does not rotate underneath the finger into a circular path;
6. Settings opening resets movement;
7. Look Speed changes turn response visibly;
8. Look Speed persists after app restart;
9. low Look Speed is calm enough on Galaxy A03s;
10. high Look Speed remains controllable;
11. aerial camera follows Hunter heading without fixed-world bias;
12. aerial ↔ first-person toggle preserves position;
13. no repeatable stuck input;
14. no severe camera snapping or nausea-inducing spin;
15. static preflight/Godot parse/smoke/APK build remain green.

## Change-warning law

**Any future assistant or developer changing the joystick interaction model, heading-reference reset behavior, Settings/Look Speed control, persistence key, or camera response must warn the user first or explicitly state the change and reason in the same work pass before presenting it as the new baseline.**

This README is the durable warning/continuity authority for the Stage-1 control-camera foundation.
