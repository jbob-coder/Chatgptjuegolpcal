# Shooter RPG — Standalone New Game

Status: FOUNDATION 001 LOCKED / SCAFFOLD 001 STATIC VERIFIED / PLAYER-CAMERA GRAYBOX 001 STATIC VERIFIED / ENGINE RUNTIME GATE NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Project identity

`Shooter RPG` is a new standalone game.

It is NOT a visual branch, remake, migration, sequel, subsystem or continuation of Unnamed Hunt RPG, WorldLife RPG or any prior game in this repository.

Repository ancestry is not design inheritance.

Primary identity authority:
`SHOOTER_RPG_PROJECT_IDENTITY.md`.

## Locked first-prototype foundation

Gameplay owner:
`SHOOTER_RPG_FOUNDATION_DESIGN_001.md`.

Selected direction:
- single-player offline-first;
- third-person over-the-shoulder camera;
- real-time shooting in later combat slice;
- semi-automatic carbine first;
- valid reticle/hit geometry is not invalidated by hidden RPG random misses;
- physical environmental cover;
- compact connected spaces;
- placeholder ranged Sentry Automaton first hostile;
- compact Vigor / Handling / Mobility progression;
- one permanent upgrade choice after first objective;
- pixel-styled real 3D world;
- low-resolution world render with separately readable UI;
- Android landscape-first;
- Godot `4.7.2-stable`;
- independent runtime root `shooter_game/`.

## Current implementation

Scaffold 001 exists and is statically verified.

Player-Camera Graybox 001 now adds:
- a tiny 3D test environment;
- `CharacterBody3D` player;
- gravity;
- camera-relative horizontal movement;
- provisional acceleration/speed tuning;
- yaw/pitch third-person camera rig;
- `SpringArm3D` camera collision structure;
- desktop-only W/A/S/D + mouse debug input mappings;
- boot routing into the graybox;
- dedicated static and prepared Godot smoke tests.

No shooting, enemy AI, damage, RPG progression, save/load, mobile touch controls, final HUD or final pixel-render pipeline is implemented yet.

## Verification

Executed:
- `python shooter_game/tests/scaffold_static_preflight.py`
  → `SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`
- `python shooter_game/tests/player_camera_static_preflight.py`
  → `SHOOTER_RPG_PLAYER_CAMERA_STATIC_PASS`

Prepared but NOT executed because Godot 4.7.2 is unavailable in the current execution environment:
- `godot --headless --path shooter_game --script res://tests/scaffold_smoke.gd`
- `godot --headless --path shooter_game --script res://tests/player_camera_smoke.gd`

Therefore:
- GDScript/scene engine parse: NOT VERIFIED;
- graybox runtime: NOT VERIFIED;
- Android build: NOT VERIFIED;
- phone runtime: NOT VERIFIED;
- visual quality: NOT VERIFIED;
- performance: NOT VERIFIED.

Old project CI/APK evidence does not count.

## First playable loop target

Working structure:

`GATE DISTRICT → OUTER ROAD → BROKEN CHECKPOINT → SENTRY FIGHT → REWARD → RETURN → CHOOSE UPGRADE → SAVE/LOAD`

Working names are replaceable and not final lore.

## Canonical visual reference

Original PNG in Google Drive:
- `Shooter RPG - Pixel Visual Reference ORIGINAL.png`
- Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`

Working JPEG:
- `Shooter RPG - Pixel Visual Reference.jpg`
- Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`

The generated image provides art/composition inspiration only. Visible names, quests, NPCs, locations, item values and monster details are placeholders.

## Hard separation rule

Do not automatically reuse old-game runtime code, mechanics, saves, characters/lore/world, progression, UI, tests, build evidence, Android artifacts or technical budgets.

A specific old idea can enter Shooter RPG only through a new explicit Shooter RPG decision.

## Current next bounded piece

`SHOOTER_RPG_GRAYBOX_RUNTIME_GATE_001`

Run Godot 4.7.2 against the current standalone project, execute the prepared headless smokes, fix only same-layer parse/resource/runtime defects, and record the observed result. Do not add another gameplay layer before the player-camera foundation passes real engine validation.

After that gate passes, the intended next implementation layer is `SHOOTER_RPG_MOBILE_TOUCH_INPUT_001`.

For continuation, start with `START_HERE_NEW_CHAT.md` and current live branch evidence.
