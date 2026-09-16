# Shooter RPG — Documentation Index

Status: ACTIVE / FOUNDATION 001 LOCKED / SCAFFOLD 001 STATIC VERIFIED / PLAYER-CAMERA GRAYBOX 001 STATIC VERIFIED / ENGINE RUNTIME GATE NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Mandatory read order

1. `SHOOTER_RPG_PROJECT_IDENTITY.md`
2. `README.md`
3. `EVOLVE_ALIGNMENT.md`
4. `PROJECT_HANDOFF.md`
5. `START_HERE_NEW_CHAT.md`
6. this index
7. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`
8. `SHOOTER_RPG_VISUAL_DIRECTION.md`
9. `VISUAL_REFERENCE_ASSETS.md`
10. `shooter_game/README.md`
11. `shooter_game/docs/ARCHITECTURE.md`
12. `shooter_game/docs/VERIFICATION.md`
13. exact Shooter RPG source/tests for the current bounded piece

## Critical separation rule

Shooter RPG is not a continuation of Unnamed Hunt RPG, WorldLife RPG, Hunt-01 or any previous game.

Inherited repository files are LEGACY / NON-AUTHORITATIVE for Shooter RPG unless a current Shooter RPG authority explicitly imports a specific piece.

Old `game/`, old workflows, old builds/APKs, old saves, old mechanics and old design bibles must not be used as current Shooter RPG evidence.

## Current Shooter RPG authorities

- project identity/isolation: `SHOOTER_RPG_PROJECT_IDENTITY.md`;
- front door: `README.md`;
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

## Locked gameplay foundation

Foundation 001 establishes:
- single-player offline-first;
- third-person over-shoulder;
- real-time shooting later;
- semi-auto carbine first;
- physical cover;
- compact connected zones;
- placeholder ranged Sentry Automaton first;
- Vigor / Handling / Mobility progression;
- one persistent upgrade choice after first objective;
- real 3D pixel presentation;
- separate low-resolution world render and readable UI;
- Android landscape-first;
- Godot `4.7.2-stable`;
- independent root `shooter_game/`.

## Current runtime layers

### Scaffold 001

Owns standalone project config, boot ownership, semantic input actions, project contract, tests/docs and version marker.

Static result:
`SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`.

### Player-Camera Graybox 001

Owns:
- `shooter_game/scenes/graybox/player_camera_graybox.tscn`;
- `shooter_game/scripts/player/player_controller.gd`;
- `shooter_game/scripts/input/debug_input_bindings.gd`;
- graybox boot routing;
- `player_camera_static_preflight.py`;
- `player_camera_smoke.gd`.

Static result:
`SHOOTER_RPG_PLAYER_CAMERA_STATIC_PASS`.

Runtime/headless result: NOT EXECUTED.

## Canonical visual reference

Primary original image:
- `Shooter RPG - Pixel Visual Reference ORIGINAL.png`;
- Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`.

Working JPEG:
- Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

The image controls visual inspiration only. Its names, quests, item counts, characters and exact UI copy remain placeholders unless separately adopted.

## Current project state

`SHOOTER_RPG_STANDALONE_IDENTITY_RECORDED = YES`
`PIXEL_REFERENCE_SAVED = YES`
`SHOOTER_RPG_FOUNDATION_DESIGN_001_LOCKED = YES`
`SHOOTER_GAME_PROJECT_ROOT_CREATED = YES`
`SHOOTER_RPG_SCAFFOLD_STATIC_VERIFIED = YES`
`SHOOTER_RPG_PLAYER_CAMERA_GRAYBOX_IMPLEMENTED = YES`
`SHOOTER_RPG_PLAYER_CAMERA_STATIC_VERIFIED = YES`
`SHOOTER_RPG_SCAFFOLD_HEADLESS_VERIFIED = NO`
`SHOOTER_RPG_PLAYER_CAMERA_HEADLESS_VERIFIED = NO`
`SHOOTER_RPG_BUILD_VERIFIED = NO`
`SHOOTER_RPG_PHONE_RUNTIME_VERIFIED = NO`
`SHOOTER_RPG_VISUAL_QUALITY_VERIFIED = NO`
`SHOOTER_RPG_PERFORMANCE_VERIFIED = NO`

## Exact continuation

`SHOOTER_RPG_GRAYBOX_RUNTIME_GATE_001`.

Execute the standalone project under Godot 4.7.2-stable, run both prepared headless smoke tests and fix only same-layer parse/resource/runtime defects. Do not add mobile touch or shooting before this gate passes. After successful runtime verification, intended next implementation layer is `SHOOTER_RPG_MOBILE_TOUCH_INPUT_001`.
