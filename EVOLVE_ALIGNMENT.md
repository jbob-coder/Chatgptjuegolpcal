# EVOLVE ALIGNMENT — Shooter RPG

Status: NEW STANDALONE GAME / FOUNDATION DESIGN 001 LOCKED / PROJECT SCAFFOLD 001 STATIC VERIFIED / PLAYER-CAMERA GRAYBOX NEXT
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
- new runtime root `shooter_game/`.

## Current implementation state

`SHOOTER_RPG_PROJECT_SCAFFOLD_001` has been created under `shooter_game/`.

Current scaffold owns:
- standalone `project.godot`;
- mobile renderer baseline;
- 1280×720 design viewport with expand stretch behavior;
- semantic actions: move_left/right/forward/back, aim, fire, reload, dodge, interact, pause_game;
- minimal independent boot scene/script;
- project identity contract;
- standalone runtime README/architecture/verification docs;
- version marker `0.0.0-scaffold.001`;
- no-cost static preflight;
- planned Godot headless smoke.

No combat, enemy AI, progression, save system, world content or final pixel rendering pipeline is implemented by the scaffold.

## Verification boundary

`SHOOTER_RPG_STANDALONE_IDENTITY_RECORDED = YES`
`PIXEL_REFERENCE_SAVED = YES`
`SHOOTER_RPG_FOUNDATION_DESIGN_001_LOCKED = YES`
`GODOT_4_7_2_SELECTED = YES`
`SHOOTER_GAME_PROJECT_ROOT_CREATED = YES`
`SHOOTER_RPG_SCAFFOLD_STATIC_VERIFIED = YES`
`SHOOTER_RPG_SCAFFOLD_HEADLESS_VERIFIED = NO`
`SHOOTER_RPG_SOURCE_IMPLEMENTED = SCAFFOLD_ONLY`
`SHOOTER_RPG_BUILD_VERIFIED = NO`
`SHOOTER_RPG_PHONE_RUNTIME_VERIFIED = NO`
`SHOOTER_RPG_VISUAL_QUALITY_VERIFIED = NO`
`SHOOTER_RPG_PERFORMANCE_VERIFIED = NO`

Static command executed during Scaffold 001:
`python shooter_game/tests/scaffold_static_preflight.py`

Observed result:
`SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`

Godot headless smoke exists but was not executed in this pass because no Godot executable was available in the local execution environment. Do not promote it to verified until actually run.

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

`SHOOTER_RPG_PLAYER_CAMERA_GRAYBOX_001`

Boundary:
1. keep all implementation inside `shooter_game/`;
2. create one tiny 3D graybox test scene, not the final settlement;
3. add a `CharacterBody3D` player controller with gravity and camera-relative horizontal movement;
4. add a third-person camera rig with pivot + collision-safe boom/spring arm;
5. add desktop keyboard/mouse debug bindings to the existing semantic actions so development is testable before touch UI exists;
6. implement mouse-look/debug camera input through the same controller contract that mobile look will later feed;
7. keep camera distance, pitch limits, FOV and move speed clearly provisional/tunable;
8. add static/headless ownership tests where practical;
9. do NOT implement shooting, enemy AI, RPG progression, mobile joystick UI or final pixel rendering in this slice;
10. record exactly what is static-verified vs headless/runtime-verified.

NEXT THING: `SHOOTER_RPG_PLAYER_CAMERA_GRAYBOX_001`.
