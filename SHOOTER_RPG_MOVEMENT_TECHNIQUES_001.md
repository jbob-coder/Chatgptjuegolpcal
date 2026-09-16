# Shooter RPG — Movement Techniques 001

Status: ACTIVE FOUNDATION
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Player-facing movement direction

Shooter RPG uses first-person movement that is responsive and technique-driven rather than heavy or animation-locked.

Current baseline:
- normal camera-relative movement;
- ground jump;
- air steering;
- wall jump;
- first-person look;
- 115-degree target horizontal FOV.

## 115 FOV rule

`115` means **115 degrees horizontal FOV** from the player's perspective.

Godot `Camera3D.fov` is used as a vertical FOV when `KEEP_HEIGHT` is active, so the runtime converts 115 horizontal degrees to the matching vertical value for the current phone/display aspect ratio. At 16:9 this is approximately `82.8857` vertical degrees.

This avoids accidentally using 115 as vertical FOV, which would be much wider and heavily distorted.

## Implemented movement technique: wall jump

Wall jump is a real movement mechanic, not a scripted animation.

Rules:
- player must be airborne and contacting a valid wall;
- pressing JUMP launches the player away from the wall normal and upward;
- a short steering-lock window preserves the launch impulse so ordinary air steering cannot instantly cancel it;
- air control returns quickly after the launch;
- wall jump parameters are exported/tunable rather than hardcoded into multiple systems.

Initial provisional tuning:
- ground jump: `6.4 m/s` vertical;
- wall jump: `6.6 m/s` vertical;
- wall push: `7.4 m/s` horizontal;
- steering lock: `0.16 s`;
- steering multiplier during lock: `0.30`.

These are prototype values, not balance commitments.

## Movement-technique philosophy

Techniques should reward execution and route knowledge without turning traversal into uncontrolled speed exploits.

Future techniques may include, one bounded slice at a time:
- mantle / vault;
- crouch-slide;
- slide-jump momentum carry;
- ledge catch;
- wall-run only if level design proves it adds value;
- directional dodge only if combat needs it;
- movement chaining with explicit momentum caps.

Do not implement all techniques at once. Each technique must be independently testable and must not break collision reliability, mobile controls, combat readability or level boundaries.

## Mobile input

Current intended mobile scheme:
- left thumb: movement;
- right-side drag: camera look;
- dedicated JUMP button for ground/wall jump;
- FIRE/AIM/action controls remain on the right side as their gameplay layers become real.

Simultaneous move + look + jump must remain possible.

## Competitive / exploit guardrails

Even in a single-player foundation, movement physics should remain deterministic enough to test. Avoid frame-rate-dependent jump height, uncapped acceleration, wall-jump spam with zero separation, and collision bypasses.

## Authority

This document controls movement-technique intent for Shooter RPG. It supersedes earlier assumptions that the game would use only basic walking or third-person traversal.
