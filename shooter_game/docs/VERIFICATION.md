# Shooter RPG — Verification Record

Status: FIRST-PERSON 115 HFOV / WALL-JUMP + MOBILE TOUCH HEADLESS VERIFIED
Last reconciled: 2026-09-16

## Current verified runtime slice

Verified source SHA:
`393ff872f2623f98f07c6216d6d29dc5ed64e5fb`

Workflow:
`.github/workflows/shooter-rpg-graybox-runtime.yml`

GitHub Actions run:
`35056976187`

Job:
`104669095724`

Result: **SUCCESS**.

Successful steps:
- scaffold static preflight;
- first-person player-camera/movement static preflight;
- mobile-touch static preflight;
- official Godot 4.7.2-stable download + SHA-256 check;
- Godot version check;
- project import/parse;
- scaffold headless smoke;
- first-person camera/movement headless smoke;
- mobile-touch headless smoke.

## Static markers

Expected current markers include:
- `SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=11 version=0.0.0-scaffold.001`;
- `SHOOTER_RPG_PLAYER_CAMERA_STATIC_PASS perspective=first_person hfov=115 wall_jump=yes`;
- `SHOOTER_RPG_MOBILE_TOUCH_STATIC_PASS move_look_jump=yes`.

## Headless markers

Expected current markers include:
- `SHOOTER_RPG_SCAFFOLD_SMOKE_PASS actions=11`;
- `SHOOTER_RPG_PLAYER_CAMERA_SMOKE_PASS perspective=first_person hfov=115 wall_jump=yes`;
- `SHOOTER_RPG_MOBILE_TOUCH_SMOKE_PASS move_look_jump=yes`.

## What this proves

Current evidence proves that Godot 4.7.2 can parse/import the project and instantiate/check the current first-person movement/mobile-input foundation under headless execution.

It also verifies the configured presence/ownership of:
- first-person camera hierarchy;
- 115-HFOV target data;
- jump semantic action;
- wall-jump tuning/state path;
- mobile movement/look plumbing;
- mobile JUMP semantic button.

## What this does NOT prove

Headless success does not prove:
- wall jump feels good under real play;
- 115 horizontal FOV is comfortable on the target phone;
- touch sensitivity is correct;
- move/look/jump are ergonomically reachable simultaneously;
- Android export/install succeeds;
- frame pacing/performance;
- final pixel visual quality;
- camera motion sickness/accessibility comfort.

## Next verification gate

`SHOOTER_RPG_ANDROID_CONTROL_FEEL_GATE_001`:
- export current slice to Android;
- install on real hardware;
- verify launch/orientation;
- test move + look + jump/wall jump;
- inspect safe areas/control overlap;
- evaluate 115 HFOV;
- capture only evidence-backed tuning changes.
