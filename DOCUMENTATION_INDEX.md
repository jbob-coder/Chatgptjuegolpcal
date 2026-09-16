# Shooter RPG — Documentation Index

Status: ACTIVE / FOUNDATION DESIGN 001 LOCKED / PROJECT SCAFFOLD NEXT
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
10. newest Shooter-RPG-specific handoff/document created after the standalone reset
11. exact Shooter RPG source/tests under `shooter_game/` once implementation exists

## Critical separation rule

Shooter RPG is not a continuation of Unnamed Hunt RPG, WorldLife RPG, Hunt-01 or any previous game.

Inherited repository files are LEGACY / NON-AUTHORITATIVE for Shooter RPG unless a current Shooter RPG authority explicitly imports a specific piece.

Old `game/`, old workflows, old builds/APKs, old saves, old mechanics and old design bibles must not be used as current Shooter RPG evidence.

## Current Shooter RPG authorities

- project identity/isolation: `SHOOTER_RPG_PROJECT_IDENTITY.md`;
- project front door: `README.md`;
- operating law + exact next slice: `EVOLVE_ALIGNMENT.md`;
- continuity/status: `PROJECT_HANDOFF.md`;
- bootstrap: `START_HERE_NEW_CHAT.md`;
- gameplay foundation: `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
- visual direction: `SHOOTER_RPG_VISUAL_DIRECTION.md`;
- visual references: `VISUAL_REFERENCE_ASSETS.md`;
- future runtime truth: Shooter-RPG-specific source/tests/build/device evidence under the new project lineage.

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

See `SHOOTER_RPG_FOUNDATION_DESIGN_001.md` for exact scope and deferred systems.

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
`SHOOTER_GAME_PROJECT_ROOT_CREATED = NO`
`SHOOTER_RPG_SOURCE_IMPLEMENTED = NO`
`SHOOTER_RPG_BUILD_VERIFIED = NO`
`SHOOTER_RPG_PHONE_RUNTIME_VERIFIED = NO`
`SHOOTER_RPG_VISUAL_QUALITY_VERIFIED = NO`
`SHOOTER_RPG_PERFORMANCE_VERIFIED = NO`

## Exact continuation

`SHOOTER_RPG_PROJECT_SCAFFOLD_001`.

Create only the independent `shooter_game/` Godot project skeleton, minimal boot scene, first-slice input map, Shooter-RPG-specific docs/tests and sanity verification. Do not build the full vertical slice or import inherited old-game runtime code in the scaffold pass.
