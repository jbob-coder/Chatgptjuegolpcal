# Shooter RPG — Standalone New Game

Status: FOUNDATION DESIGN 001 LOCKED / PROJECT SCAFFOLD 001 STATIC VERIFIED / PLAYER-CAMERA GRAYBOX NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Project identity

`Shooter RPG` is a new standalone game.

It is NOT a visual branch, remake, migration, sequel, subsystem or continuation of Unnamed Hunt RPG, WorldLife RPG, or any other prior game in this repository.

Repository ancestry is not design inheritance.

Primary identity authority:
`SHOOTER_RPG_PROJECT_IDENTITY.md`.

## Current foundation

Primary gameplay owner:
`SHOOTER_RPG_FOUNDATION_DESIGN_001.md`.

First-prototype direction:
- single-player offline-first;
- third-person over-the-shoulder camera;
- real-time shooting;
- semi-automatic carbine first;
- good reticle placement produces real hits rather than hidden RPG random misses;
- physical environmental cover;
- compact connected spaces;
- one placeholder ranged Sentry Automaton enemy;
- compact Vigor / Handling / Mobility progression;
- one permanent upgrade choice after the first objective;
- pixel-styled real 3D world;
- low-resolution world render with separately readable UI;
- Android landscape-first;
- Godot `4.7.2-stable` selected independently for this game;
- independent runtime root: `shooter_game/`.

## Independent runtime scaffold

`shooter_game/` now exists and owns:
- standalone `project.godot`;
- minimal boot scene/script;
- Shooter RPG project identity/input contract;
- ten semantic first-slice input actions;
- runtime-local docs;
- version marker `0.0.0-scaffold.001`;
- no-cost static preflight;
- planned Godot headless smoke.

No combat, enemy AI, progression, save system, world content or final pixel pipeline is claimed implemented by Scaffold 001.

## Verification

Executed:

`python shooter_game/tests/scaffold_static_preflight.py`

Observed:

`SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`

Not yet executed:
- Godot 4.7.2 headless smoke;
- Android export;
- phone runtime;
- visual-quality acceptance;
- performance profiling.

Old project CI/APK evidence does not count.

## First playable loop

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

`SHOOTER_RPG_PLAYER_CAMERA_GRAYBOX_001`

Create one tiny 3D graybox scene with a `CharacterBody3D` player, gravity, camera-relative movement, third-person camera pivot/boom collision behavior and desktop keyboard/mouse debug bindings through the existing semantic input actions. Do not add shooting, enemies, RPG systems, mobile joystick UI or final pixel rendering in that slice.

For continuation, start with `START_HERE_NEW_CHAT.md` and current live branch evidence.
