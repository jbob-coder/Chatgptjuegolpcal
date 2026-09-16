# START HERE — Shooter RPG — New Chat Bootstrap

Status: ACTIVE BOOTSTRAP / FOUNDATION 001 LOCKED / SCAFFOLD 001 STATIC VERIFIED / PLAYER-CAMERA GRAYBOX 001 STATIC VERIFIED / ENGINE RUNTIME GATE NEXT
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
   9. `shooter_game/README.md`;
   10. `shooter_game/docs/ARCHITECTURE.md`;
   11. `shooter_game/docs/VERIFICATION.md`;
   12. `shooter_game/scripts/player/player_controller.gd`;
   13. `shooter_game/scenes/graybox/player_camera_graybox.tscn`;
   14. exact tests/files for the bounded task.
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
7. Shooter-RPG runtime-local docs under `shooter_game/`;
8. inherited previous-project material = legacy/reference only unless explicitly imported.

## Locked first-prototype foundation

- single-player offline-first;
- third-person over-the-shoulder;
- real-time shooter loop;
- first firearm = semi-automatic carbine;
- reticle/hit geometry determines hits;
- physical cover;
- compact connected zones;
- first hostile = placeholder ranged Sentry Automaton;
- Vigor / Handling / Mobility RPG layer;
- one permanent upgrade choice after first objective;
- pixel-styled real 3D world;
- low-resolution world render + separately readable UI;
- Android landscape-first;
- Godot `4.7.2-stable`;
- independent runtime root `shooter_game/`.

## Current implemented layer

Player-Camera Graybox 001 currently includes:
- small 3D collision graybox;
- `CharacterBody3D` player;
- gravity + camera-relative movement;
- tunable movement acceleration/speed;
- yaw/pitch + `SpringArm3D` + `Camera3D` hierarchy;
- player collider exclusion from the spring arm;
- desktop W/A/S/D + mouse debug mappings;
- boot connection to the graybox;
- static and prepared Godot smoke verification.

It does NOT yet include shooter behavior, enemy AI, mobile touch UI, RPG systems, saves or final pixel rendering.

## Verification boundary

Executed:
- scaffold static preflight → PASS;
- player-camera static preflight → PASS.

Not executed:
- Godot 4.7.2 parse/import;
- scaffold headless smoke;
- player-camera headless smoke;
- interactive runtime;
- Android export;
- phone runtime;
- performance/visual-quality acceptance.

Do not infer engine/runtime success from the static checks.

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

Do not stack new runtime systems on top of an unparsed layer when a real engine verification gate is pending.

## Current bounded piece

`SHOOTER_RPG_GRAYBOX_RUNTIME_GATE_001`.

Use Godot 4.7.2-stable to parse/import/start the project and execute:
- `res://tests/scaffold_smoke.gd`;
- `res://tests/player_camera_smoke.gd`.

Fix only same-layer parse/resource/runtime ownership defects. If graphical execution is available, inspect movement/gravity/camera collision without treating tuning as final. Do not add mobile touch or shooting until this runtime gate passes.

Current environment blocker: no executable Godot 4.7.2 runtime is available here.
