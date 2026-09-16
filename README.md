# Shooter RPG — Standalone New Game

Status: FOUNDATION DESIGN 001 LOCKED / INDEPENDENT GODOT PROJECT SCAFFOLD NEXT
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
- new implementation root: `shooter_game/`.

## First playable loop

Working structure:

`GATE DISTRICT → OUTER ROAD → BROKEN CHECKPOINT → SENTRY FIGHT → REWARD → RETURN → CHOOSE UPGRADE → SAVE/LOAD`

Working names are replaceable and not final lore.

The first vertical slice must prove movement, camera, aim/fire/reload, one enemy, physical cover, damage/healing, reward collection, one persistent RPG choice, save/load, Android packaging/runtime and readable pixel presentation on a phone.

## Canonical visual reference

Original PNG in Google Drive:
- `Shooter RPG - Pixel Visual Reference ORIGINAL.png`
- Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`

Working JPEG:
- `Shooter RPG - Pixel Visual Reference.jpg`
- Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`

The generated image provides art/composition inspiration only. Visible names, quests, NPCs, locations, item values and monster details are placeholders.

## Hard separation rule

Do not automatically reuse old-game:
- runtime code;
- mechanics;
- saves;
- characters/lore/world;
- progression;
- UI;
- tests;
- build evidence;
- Android artifacts;
- performance/storage budgets.

A specific old idea can enter Shooter RPG only through a new explicit Shooter RPG decision.

## Current verification status

- standalone identity: RECORDED;
- pixel reference: SAVED;
- Foundation Design 001: LOCKED;
- Shooter RPG source: NOT YET CREATED;
- build verified: NO;
- phone runtime verified: NO;
- visual quality verified: NO;
- performance verified: NO.

Old project CI/APK evidence does not count.

## Current next bounded piece

`SHOOTER_RPG_PROJECT_SCAFFOLD_001`

Create the independent `shooter_game/` Godot project skeleton, minimal boot scene, input ownership, Shooter-RPG-specific tests/docs and sanity verification. Do not implement the entire vertical slice in the scaffold pass.

For continuation, start with `START_HERE_NEW_CHAT.md` and current live branch evidence.
