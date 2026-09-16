# START HERE — Shooter RPG — New Chat Bootstrap

Status: ACTIVE BOOTSTRAP / FOUNDATION DESIGN 001 LOCKED / PROJECT SCAFFOLD NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Project identity

Shooter RPG is a new standalone game.

Do not treat Unnamed Hunt RPG, WorldLife RPG, Hunt-01 or inherited files/code/build artifacts as Shooter RPG authority merely because this branch was created from older repository history.

## Mandatory bootstrap

1. Confirm repository `jbob-coder/Chatgptjuegolpcal` and branch `shooter-rpg`.
2. Fetch current branch HEAD and record it.
3. Read, in order:
   1. `SHOOTER_RPG_PROJECT_IDENTITY.md`;
   2. `README.md`;
   3. `EVOLVE_ALIGNMENT.md`;
   4. `PROJECT_HANDOFF.md`;
   5. `START_HERE_NEW_CHAT.md`;
   6. `DOCUMENTATION_INDEX.md`;
   7. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
   8. `SHOOTER_RPG_VISUAL_DIRECTION.md`;
   9. newest Shooter-RPG-specific handoff;
   10. exact Shooter-RPG-specific files for the bounded task.
4. Ignore inherited previous-game design/source as authority unless a current Shooter RPG authority explicitly imports a specific piece.
5. Re-check branch HEAD after reconstruction.
6. Work one bounded Shooter RPG piece at a time.
7. Never use old-game tests/builds as proof for Shooter RPG.

## Authority order

1. current explicit user instruction;
2. current Shooter-RPG-specific source/tests/build/device evidence;
3. `SHOOTER_RPG_PROJECT_IDENTITY.md`;
4. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md` for gameplay foundation;
5. `SHOOTER_RPG_VISUAL_DIRECTION.md` for visual/presentation direction;
6. `EVOLVE_ALIGNMENT.md` / `PROJECT_HANDOFF.md`;
7. Shooter-RPG-specific package/system docs created after the standalone reset;
8. inherited previous-project material = legacy/reference only unless explicitly imported.

## Locked first-prototype foundation

- single-player offline-first;
- third-person over-the-shoulder camera;
- real-time shooter loop;
- first firearm = semi-automatic carbine;
- reticle/hit geometry determines hits; no hidden random RPG miss on a visibly valid shot;
- physical environmental cover;
- compact connected zones;
- first hostile = placeholder ranged Sentry Automaton;
- compact Vigor / Handling / Mobility RPG layer;
- one permanent upgrade choice after first objective;
- pixel-styled real 3D world;
- low-resolution world render + separately readable UI;
- Android landscape-first;
- Godot `4.7.2-stable`;
- independent implementation root `shooter_game/`.

Prototype-tuned values such as camera FOV/distance, movement speed, recoil, damage, enemy timing, pixel resolution and exact control positions are not final.

## Visual reference

Primary original PNG:
- `Shooter RPG - Pixel Visual Reference ORIGINAL.png`
- Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`

Working JPEG:
- `Shooter RPG - Pixel Visual Reference.jpg`
- Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`

The image is visual inspiration, not canonical lore.

## Development law

`READ SHOOTER STATE → VERIFY → ONE BOUNDED PIECE → IMPLEMENT → TEST → RECORD → CONTINUE`.

Do not build the entire vertical slice in one uncontrolled rewrite.

## Current verification boundary

`STANDALONE_PROJECT_IDENTITY = RECORDED`
`PIXEL_REFERENCE = SAVED`
`FOUNDATION_DESIGN_001 = LOCKED`
`SHOOTER_GAME_PROJECT_ROOT = NOT_CREATED`
`SOURCE_IMPLEMENTATION = NOT_STARTED`
`BUILD_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`
`VISUAL_QUALITY_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`

## Current bounded piece

`SHOOTER_RPG_PROJECT_SCAFFOLD_001`.

Create the independent `shooter_game/` Godot 4.7.2 project skeleton, minimal boot scene, first-slice input ownership, Shooter-RPG-specific test/docs structure and sanity verification. Do not import old-game runtime code or implement the complete combat/world/progression loop in this scaffold pass.
