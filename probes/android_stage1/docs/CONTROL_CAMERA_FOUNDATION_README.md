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
- these decisions should be documented so later work does not undo them without warning.

## Protected control contract

### Movement

Phone movement uses one **analog movement joystick** on the lower-left.

It replaces the four discrete directional buttons.

Required behavior:
- touch inside the joystick claims one touch pointer;
- dragging produces a normalized analog movement vector;
- movement magnitude scales from deadzone to full travel;
- diagonal movement is supported;
- releasing the controlling touch resets movement to zero;
- opening Settings resets the joystick to zero;
- desktop WASD remains a development fallback;
- the joystick is movement input only and does not directly own authoritative world state.

Prototype deadzone:
`0.12` normalized stick radius.

The exact visual art of the stick is not locked by this document. Its interaction model is.

### Hunter facing

When movement is non-zero, the Hunter turns toward the movement heading.

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
4. Settings opening resets movement;
5. Look Speed changes turn response visibly;
6. Look Speed persists after app restart;
7. low Look Speed is calm enough on Galaxy A03s;
8. high Look Speed remains controllable;
9. aerial camera follows Hunter heading without fixed-world bias;
10. aerial ↔ first-person toggle preserves position;
11. no repeatable stuck input;
12. no severe camera snapping or nausea-inducing spin;
13. static preflight/Godot parse/smoke/APK build remain green.

## Change-warning law

**Any future assistant or developer changing the joystick interaction model, removing the Settings/Look Speed control, changing the persistence key, or materially changing camera response must warn the user first or explicitly state the change and reason in the same work pass before presenting it as the new baseline.**

This README is the durable warning/continuity authority for the Stage-1 control-camera foundation.
