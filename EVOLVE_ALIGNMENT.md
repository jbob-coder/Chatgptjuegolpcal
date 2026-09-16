# EVOLVE ALIGNMENT — Shooter RPG

Status: STANDALONE GAME / FOUNDATION DESIGN 001 LOCKED / SCAFFOLD 001 STATIC VERIFIED / PLAYER-CAMERA GRAYBOX 001 STATIC VERIFIED / ENGINE RUNTIME GATE NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Operating law

Shooter RPG is a new standalone game.

Current explicit user instruction outranks inherited repository content. Repository ancestry does not imply game-design inheritance.

Development loop:
`READ CURRENT SHOOTER STATE → VERIFY → ONE BOUNDED PIECE → IMPLEMENT → TEST → RECORD → CONTINUE`.

Never claim Shooter RPG inherited a verified mechanic, build, performance result, save system or gameplay foundation merely because this branch was created from another game's branch.

## Project isolation law

Previous-game source/design/tests/build evidence remain legacy unless explicitly imported by current Shooter RPG authority.

Authoritative identity contract:
`SHOOTER_RPG_PROJECT_IDENTITY.md`.

Independent runtime root:
`shooter_game/`.

## Confirmed Shooter RPG foundation

Owner:
`SHOOTER_RPG_FOUNDATION_DESIGN_001.md`.

LOCKED FOR FIRST PROTOTYPE:
- single-player offline-first;
- third-person over-the-shoulder camera;
- real-time shooting;
- semi-automatic carbine first;
- reticle/hit geometry is authoritative;
- physical environmental cover;
- compact connected zones;
- placeholder ranged Sentry Automaton first;
- Vigor / Handling / Mobility progression;
- one permanent upgrade choice after the first objective;
- pixel-styled real 3D world;
- low-resolution world rendering with separately readable UI;
- landscape Android-first controls;
- Godot `4.7.2-stable`;
- runtime root `shooter_game/`.

## Current implementation state

### Scaffold 001

Implemented under `shooter_game/`:
- standalone Godot project config;
- mobile renderer baseline;
- 1280×720 design viewport with expand stretch behavior;
- ten semantic first-slice input actions;
- independent boot path;
- project identity/input contract;
- runtime-local docs/tests/version marker.

### Player-Camera Graybox 001

Implemented:
- tiny 3D graybox test scene with ground, obstacle and wall collision geometry;
- `CharacterBody3D` player capsule;
- gravity and camera-relative horizontal locomotion;
- provisional movement acceleration/speed parameters;
- third-person hierarchy `CameraYaw → CameraPitch → SpringArm3D → Camera3D`;
- spring-arm exclusion of the player collider;
- provisional camera distance/FOV/pitch/sensitivity parameters;
- desktop-only debug mappings for W/A/S/D, mouse look, Esc capture toggle and reserved semantic action keys/buttons;
- boot scene now instantiates the graybox;
- dedicated static and prepared Godot smoke verification.

Explicitly NOT implemented yet:
- firing/reload behavior;
- aim/ADS behavior;
- enemy AI;
- damage/health;
- dodge behavior;
- RPG progression;
- save/load;
- mobile touch controls;
- final HUD;
- final pixel rendering;
- production world content.

## Verification boundary

`SHOOTER_RPG_STANDALONE_IDENTITY_RECORDED = YES`
`PIXEL_REFERENCE_SAVED = YES`
`SHOOTER_RPG_FOUNDATION_DESIGN_001_LOCKED = YES`
`GODOT_4_7_2_SELECTED = YES`
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

Executed static commands:
- `python shooter_game/tests/scaffold_static_preflight.py`
  → `SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`
- `python shooter_game/tests/player_camera_static_preflight.py`
  → `SHOOTER_RPG_PLAYER_CAMERA_STATIC_PASS`

Prepared Godot smoke tests:
- `godot --headless --path shooter_game --script res://tests/scaffold_smoke.gd`
- `godot --headless --path shooter_game --script res://tests/player_camera_smoke.gd`

They are NOT executed. A Godot 4.7.2 executable was not available in the local execution environment, and attempts to obtain the official binary were blocked by that environment's network/download restrictions.

Static verification does not prove GDScript parse, scene import, physics behavior, camera collision, camera feel or runtime stability.

## Canonical visual reference

Primary original reference:
- `Shooter RPG - Pixel Visual Reference ORIGINAL.png`
- Google Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`

Working JPEG:
- Google Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`

The image provides visual/composition inspiration only; visible names/content remain placeholders.

## First vertical-slice loop

`GATE DISTRICT → OUTER ROAD → BROKEN CHECKPOINT → SENTRY FIGHT → REWARD → RETURN → CHOOSE UPGRADE → SAVE/LOAD`

Working names remain replaceable.

## Scope guardrail

Build the smallest strong game first. Do not add multiplayer, large social simulation, crafting trees, open-world streaming, procedural generation, multiple weapon families, companions, vehicles or live-service architecture before the core shooter loop is proven.

## Exact next bounded piece

`SHOOTER_RPG_GRAYBOX_RUNTIME_GATE_001`

Boundary:
1. add no new gameplay system;
2. execute Godot 4.7.2-stable against `shooter_game/`;
3. run project parse/import/headless startup checks;
4. execute `scaffold_smoke.gd`;
5. execute `player_camera_smoke.gd`;
6. fix only parse/resource/runtime ownership failures in the scaffold/player-camera layer;
7. if an interactive desktop run is available, inspect movement, gravity, mouse capture, camera pitch/yaw and spring-arm collision without treating subjective tuning as final;
8. record exact observed output;
9. do not claim phone/control-feel/performance/visual-quality verification from headless success;
10. only after the runtime gate passes move to `SHOOTER_RPG_MOBILE_TOUCH_INPUT_001`.

BLOCKER IN CURRENT EXECUTION ENVIRONMENT: Godot 4.7.2 binary unavailable.

NEXT THING: `SHOOTER_RPG_GRAYBOX_RUNTIME_GATE_001`.
