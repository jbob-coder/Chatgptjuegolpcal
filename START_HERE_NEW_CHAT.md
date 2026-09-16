# START HERE — Shooter RPG — New Chat Bootstrap

Status: ACTIVE BOOTSTRAP / STANDALONE NEW GAME / FOUNDATION + SCAFFOLD RECORDED / INTERNAL 21+ MATURE TARGET / PLAYER-CAMERA GRAYBOX NEXT
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
   2. `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`;
   3. `README.md`;
   4. `EVOLVE_ALIGNMENT.md`;
   5. `PROJECT_HANDOFF.md`;
   6. `START_HERE_NEW_CHAT.md`;
   7. `DOCUMENTATION_INDEX.md`;
   8. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
   9. `SHOOTER_RPG_VISUAL_DIRECTION.md`;
   10. `shooter_game/README.md`;
   11. `shooter_game/docs/ARCHITECTURE.md`;
   12. `shooter_game/docs/VERIFICATION.md`;
   13. newest Shooter-RPG-specific handoff;
   14. exact Shooter-RPG-specific files for the bounded task.
4. Ignore inherited previous-game design/source as authority unless a current Shooter RPG authority explicitly imports a specific piece.
5. Re-check branch HEAD after reconstruction.
6. Work one bounded Shooter RPG piece at a time.
7. Never use old-game tests/builds as proof for Shooter RPG.

## Authority order

1. current explicit user instruction;
2. current Shooter-RPG-specific source/tests/build/device evidence;
3. `SHOOTER_RPG_PROJECT_IDENTITY.md`;
4. `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md` for audience/tone;
5. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md` for gameplay foundation;
6. `SHOOTER_RPG_VISUAL_DIRECTION.md` for visual/presentation direction;
7. `EVOLVE_ALIGNMENT.md` / `PROJECT_HANDOFF.md`;
8. Shooter-RPG-specific runtime-local docs under `shooter_game/`;
9. inherited previous-project material = legacy/reference only unless explicitly imported.

## Locked first-prototype foundation

- single-player offline-first;
- internal 21+ mature creative target;
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
- independent runtime root `shooter_game/`.

The 21+ target is an internal creative standard, not an official ratings-board/storefront classification. Strong violence, blood/injury, harsh language and adult themes may be used when they support the game. Any future romantic/sexual participant must be canonically at least 21 years old.

Prototype-tuned values such as camera FOV/distance, movement speed, recoil, damage, enemy timing, pixel resolution and exact control positions are not final.

## Current runtime scaffold

`shooter_game/` exists and currently contains only the standalone project scaffold, boot scene/script, project contract, semantic input actions, tests/docs and version ownership.

Executed verification:
`python shooter_game/tests/scaffold_static_preflight.py`

Observed:
`SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`

Godot headless smoke exists but has not yet been executed. Android, phone, visual-quality and performance verification remain open.

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
`MATURE_21_PLUS_TARGET = RECORDED`
`PIXEL_REFERENCE = SAVED`
`FOUNDATION_DESIGN_001 = LOCKED`
`SHOOTER_GAME_PROJECT_ROOT = CREATED`
`SCAFFOLD_STATIC_VERIFIED = YES`
`SCAFFOLD_HEADLESS_VERIFIED = NO`
`SOURCE_IMPLEMENTATION = SCAFFOLD_ONLY`
`BUILD_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`
`VISUAL_QUALITY_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`

## Current bounded piece

`SHOOTER_RPG_PLAYER_CAMERA_GRAYBOX_001`.

Create one tiny 3D graybox scene, one `CharacterBody3D` player with gravity and camera-relative locomotion, one third-person pivot/spring-arm camera rig, and desktop keyboard/mouse debug bindings through the existing semantic input actions. Do not add shooting, enemies, RPG progression, mobile joystick UI or final pixel rendering in this slice.
