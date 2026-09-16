# Shooter RPG — Standalone New Game

Status: FIRST-PERSON / 115 HFOV / WALL-JUMP + MOBILE TOUCH FOUNDATION HEADLESS VERIFIED
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Project identity

`Shooter RPG` is a new standalone game.

It is NOT a continuation, remake, visual branch or subsystem of Unnamed Hunt RPG, WorldLife RPG or any prior game in this repository.

Repository ancestry is not design inheritance.

Primary identity authority:
`SHOOTER_RPG_PROJECT_IDENTITY.md`.

## Audience / tone

Internal creative target: **21+ mature**.

Authority:
`SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`.

This is not an official ESRB/PEGI/store rating claim.

## Current perspective authority

Shooter RPG is **first-person**.

Authority:
`SHOOTER_RPG_PERSPECTIVE_DECISION_002.md`.

Current camera target:
- 115 degrees **horizontal** FOV;
- runtime aspect-aware conversion to Godot vertical FOV;
- first-person yaw/pitch camera;
- no third-person spring arm;
- hidden graybox player body mesh;
- future first-person weapon/arms view model belongs to a later slice.

Earlier third-person wording in Foundation Design 001 is superseded only for perspective/camera behavior.

## Movement foundation

Authority:
`SHOOTER_RPG_MOVEMENT_TECHNIQUES_001.md`.

Implemented foundation:
- camera-relative movement;
- gravity;
- ground jump;
- air steering;
- wall jump;
- short wall-jump steering lock;
- mobile JUMP action;
- desktop `Space` jump;
- desktop `Shift` reserved for dodge.

Current wall-jump values are provisional and tunable.

## Mobile control foundation

Implemented:
- left-side dynamic movement touch region / joystick;
- right-side drag-to-look surface;
- safe-area-aware control root;
- semantic action buttons including JUMP, AIM, FIRE and DODGE reservation;
- shared look contract for mouse and touch;
- simultaneous movement/look structure.

AIM/FIRE/DODGE gameplay behavior is still reserved, not implemented as combat mechanics.

## Current runtime root

All active Shooter RPG runtime work lives under:
`shooter_game/`.

Engine baseline:
`Godot 4.7.2-stable`.

## Verification

Most recent verified runtime source SHA:
`393ff872f2623f98f07c6216d6d29dc5ed64e5fb`.

GitHub Actions run:
`35056976187`.

Result: **SUCCESS**.

Verified in that run:
- static scaffold preflight;
- first-person/player-camera static preflight;
- mobile touch static preflight;
- official Godot 4.7.2 download/version gate;
- Godot project import/parse;
- scaffold headless smoke;
- first-person camera/movement headless smoke;
- mobile touch headless smoke.

Not yet verified:
- Android export;
- APK installation;
- real-phone touch feel;
- wall-jump feel under human play;
- 115-HFOV comfort on target phones;
- visual-quality acceptance;
- performance/frame pacing.

## Gameplay foundation still planned

Foundation Design 001 still provides the non-camera gameplay direction unless superseded later:
- single-player offline-first;
- real-time shooter;
- semi-automatic carbine first;
- valid reticle/hit geometry should not be invalidated by hidden RPG random misses;
- physical environmental cover;
- compact connected spaces;
- bounded RPG progression;
- pixel-styled real 3D world;
- Android landscape-first.

## Current next bounded piece

Before implementing full combat, the next practical gate is an Android/device control-feel slice: export the current first-person graybox, install it on a phone, verify 115 HFOV, movement, look, jump/wall-jump and touch-region ergonomics, then tune only what device evidence shows is wrong.

Do not claim mobile feel or performance from headless success alone.
