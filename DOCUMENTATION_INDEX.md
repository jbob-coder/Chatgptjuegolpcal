# Shooter RPG — Documentation Index

Status: ACTIVE / FOUNDATION DESIGN 001 LOCKED / PROJECT SCAFFOLD 001 STATIC VERIFIED / INTERNAL 21+ MATURE TARGET / PLAYER-CAMERA GRAYBOX NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Mandatory read order

1. `SHOOTER_RPG_PROJECT_IDENTITY.md`
2. `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`
3. `README.md`
4. `EVOLVE_ALIGNMENT.md`
5. `PROJECT_HANDOFF.md`
6. `START_HERE_NEW_CHAT.md`
7. this index
8. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`
9. `SHOOTER_RPG_VISUAL_DIRECTION.md`
10. `VISUAL_REFERENCE_ASSETS.md`
11. `shooter_game/README.md`
12. `shooter_game/docs/ARCHITECTURE.md`
13. `shooter_game/docs/VERIFICATION.md`
14. newest Shooter-RPG-specific handoff/document created after the standalone reset
15. exact Shooter RPG source/tests for the current bounded piece

## Critical separation rule

Shooter RPG is not a continuation of Unnamed Hunt RPG, WorldLife RPG, Hunt-01 or any previous game.

Inherited repository files are LEGACY / NON-AUTHORITATIVE for Shooter RPG unless a current Shooter RPG authority explicitly imports a specific piece.

Old `game/`, old workflows, old builds/APKs, old saves, old mechanics and old design bibles must not be used as current Shooter RPG evidence.

## Current Shooter RPG authorities

- project identity/isolation: `SHOOTER_RPG_PROJECT_IDENTITY.md`;
- adult audience/tone: `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`;
- project front door: `README.md`;
- operating law + exact next slice: `EVOLVE_ALIGNMENT.md`;
- continuity/status: `PROJECT_HANDOFF.md`;
- bootstrap: `START_HERE_NEW_CHAT.md`;
- gameplay foundation: `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
- visual direction: `SHOOTER_RPG_VISUAL_DIRECTION.md`;
- visual references: `VISUAL_REFERENCE_ASSETS.md`;
- runtime root: `shooter_game/`;
- runtime-local architecture: `shooter_game/docs/ARCHITECTURE.md`;
- verification boundary: `shooter_game/docs/VERIFICATION.md`;
- runtime truth: Shooter-RPG-specific source/tests/build/device evidence under `shooter_game/`.

## Mature content target

Internal creative target: **21+ mature**.

This is not an official ESRB/PEGI/store rating claim. Strong firearm violence, blood/injury, harsh language, adult themes and difficult consequences are permitted when they support the game. Any future romantic/sexual participant must be canonically at least 21 years old.

## Locked gameplay foundation

Foundation Design 001 establishes:
- single-player offline-first;
- third-person over-shoulder camera;
- real-time shooting;
- semi-auto carbine first;
- physical cover;
- compact connected zones;
- placeholder ranged Sentry Automaton first;
- Vigor / Handling / Mobility progression;
- one persistent upgrade choice after the first objective;
- real 3D pixel presentation;
- separate low-resolution world render and readable UI;
- Android landscape-first;
- Godot `4.7.2-stable`;
- independent root `shooter_game/`.

## Current runtime scaffold

Scaffold 001 currently contains:
- standalone Godot project config;
- minimal boot scene/script;
- semantic input actions;
- project identity contract;
- version marker `0.0.0-scaffold.001`;
- generated-file ignore rules;
- static preflight;
- Godot headless smoke;
- runtime-local README/architecture/verification docs.

Static verification executed and passed:
`SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`.

Godot headless/runtime, Android, phone, visual and performance verification remain open.

## Canonical visual reference

Primary original image:
- `Shooter RPG - Pixel Visual Reference ORIGINAL.png`;
- Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`.

Working JPEG:
- Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

The image controls visual inspiration only. Its names, quests, item counts, characters and exact UI copy remain placeholders unless separately adopted.

## Current project state

`SHOOTER_RPG_STANDALONE_IDENTITY_RECORDED = YES`
`SHOOTER_RPG_MATURE_21_PLUS_TARGET_RECORDED = YES`
`PIXEL_REFERENCE_SAVED = YES`
`SHOOTER_RPG_FOUNDATION_DESIGN_001_LOCKED = YES`
`SHOOTER_GAME_PROJECT_ROOT_CREATED = YES`
`SHOOTER_RPG_SCAFFOLD_STATIC_VERIFIED = YES`
`SHOOTER_RPG_SCAFFOLD_HEADLESS_VERIFIED = NO`
`SHOOTER_RPG_SOURCE_IMPLEMENTED = SCAFFOLD_ONLY`
`SHOOTER_RPG_BUILD_VERIFIED = NO`
`SHOOTER_RPG_PHONE_RUNTIME_VERIFIED = NO`
`SHOOTER_RPG_VISUAL_QUALITY_VERIFIED = NO`
`SHOOTER_RPG_PERFORMANCE_VERIFIED = NO`

## Exact continuation

`SHOOTER_RPG_PLAYER_CAMERA_GRAYBOX_001`.

Create one tiny 3D graybox scene, one `CharacterBody3D` player, gravity and camera-relative movement, one third-person pivot/spring-arm camera rig, and desktop keyboard/mouse debug bindings through the existing semantic actions. Do not add shooting, enemies, RPG progression, mobile joystick UI or final pixel rendering in this slice.
