# EVOLVE ALIGNMENT — Shooter RPG

Status: STANDALONE GAME / FOUNDATION 001 LOCKED / PLAYER-CAMERA GRAYBOX 001 HEADLESS VERIFIED / INTERNAL 21+ MATURE TARGET / MOBILE TOUCH INPUT NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Operating law

Shooter RPG is a new standalone game. Repository ancestry does not imply design inheritance.

Development loop:
`READ CURRENT SHOOTER STATE → VERIFY → ONE BOUNDED PIECE → IMPLEMENT → TEST → RECORD → CONTINUE`.

Independent runtime root: `shooter_game/`.

## Audience / tone authority

Internal creative target: **21+ mature**.

Authority: `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`.

This is not an official ratings-board/storefront classification. Mature violence, blood/injury, strong language and adult themes may be used when they support gameplay/story. Any future romantic/sexual participant must be canonically at least 21 years old. Mature-content scope must not distract from proving the core shooter first.

## Locked foundation

Owner: `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`.

Locked for first prototype:
- single-player offline-first;
- third-person over-the-shoulder;
- real-time shooting in later combat slice;
- semi-automatic carbine first;
- reticle/hit geometry authoritative;
- physical cover;
- compact connected zones;
- placeholder ranged Sentry Automaton;
- Vigor / Handling / Mobility progression;
- pixel-styled real 3D;
- low-resolution world render + separate readable UI;
- Android landscape-first;
- Godot 4.7.2-stable;
- runtime root `shooter_game/`.

## Implemented foundation

Scaffold 001 and Player-Camera Graybox 001 are implemented under `shooter_game/`.

Current player-camera layer includes:
- tiny collision graybox;
- `CharacterBody3D` player;
- gravity;
- camera-relative horizontal locomotion;
- tunable speed/acceleration;
- `CameraYaw → CameraPitch → SpringArm3D → Camera3D`;
- player exclusion from spring-arm collision;
- desktop W/A/S/D + mouse debug input mapped through semantic actions;
- boot routing into graybox.

Not implemented yet:
- mobile touch input;
- actual aim/ADS behavior;
- firing/reload behavior;
- enemy AI;
- health/damage;
- dodge behavior;
- RPG progression runtime;
- save/load;
- final HUD;
- final pixel render pipeline;
- production world content.

## Verification boundary

`SHOOTER_RPG_STANDALONE_IDENTITY_RECORDED = YES`
`SHOOTER_RPG_MATURE_21_PLUS_TARGET_RECORDED = YES`
`PIXEL_REFERENCE_SAVED = YES`
`SHOOTER_RPG_FOUNDATION_DESIGN_001_LOCKED = YES`
`SHOOTER_RPG_SCAFFOLD_STATIC_VERIFIED = YES`
`SHOOTER_RPG_PLAYER_CAMERA_STATIC_VERIFIED = YES`
`SHOOTER_RPG_SCAFFOLD_HEADLESS_VERIFIED = YES`
`SHOOTER_RPG_PLAYER_CAMERA_HEADLESS_VERIFIED = YES`
`SHOOTER_RPG_ANDROID_BUILD_VERIFIED = NO`
`SHOOTER_RPG_PHONE_RUNTIME_VERIFIED = NO`
`SHOOTER_RPG_VISUAL_QUALITY_VERIFIED = NO`
`SHOOTER_RPG_PERFORMANCE_VERIFIED = NO`

Runtime evidence:
- source SHA `9d17874fd1c6f30ddff8cb9e870af33e3f297925`;
- workflow `Shooter RPG Graybox Runtime Gate`;
- run `35056360247` — SUCCESS;
- job `104667287029` — SUCCESS;
- Godot 4.7.2 download/version check — SUCCESS;
- project import/parse — SUCCESS;
- scaffold headless smoke — SUCCESS;
- player-camera headless smoke — SUCCESS.

Headless verification does not prove phone controls, subjective camera feel, visual quality or performance.

## Exact next bounded piece

`SHOOTER_RPG_MOBILE_TOUCH_INPUT_001`

Boundary:
1. keep all implementation inside `shooter_game/`;
2. preserve desktop debug controls;
3. introduce one mobile input adapter that feeds movement/look intent into the existing player-controller contract rather than duplicating locomotion logic;
4. add a left thumb movement joystick with a generous drift region;
5. add a right-side look surface supporting drag-to-look;
6. reserve safe, thumb-reachable action controls, but do not implement shooting/reload/dodge gameplay logic in this slice;
7. use anchors/containers/safe-area-aware layout rather than fixed one-device coordinates;
8. ensure simultaneous move + look input is structurally possible;
9. add static/headless verification for ownership, isolation and event plumbing;
10. do not claim phone ergonomics until real device testing.

NEXT THING: `SHOOTER_RPG_MOBILE_TOUCH_INPUT_001`.
