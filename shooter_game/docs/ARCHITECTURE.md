# Shooter RPG — Runtime Architecture

Status: FIRST-PERSON + MOVEMENT TECHNIQUES + MOBILE TOUCH FOUNDATION
Last reconciled: 2026-09-16

## Ownership

`shooter_game/` is the only active runtime root for Shooter RPG.

Inherited root-level game folders are not dependencies.

## Directory ownership

- `scenes/` owns Shooter-RPG-specific Godot scenes.
- `scripts/` owns Shooter-RPG-specific GDScript.
- `tests/` owns Shooter-RPG-specific automated checks.
- `docs/` owns runtime-local technical documentation.

## Semantic input contract

Current required actions:
- `move_left`
- `move_right`
- `move_forward`
- `move_back`
- `jump`
- `aim`
- `fire`
- `reload`
- `dodge`
- `interact`
- `pause_game`

Device adapters feed this contract. Gameplay logic must not be duplicated separately for desktop and touch.

## First-person player/camera ownership

`scenes/graybox/player_camera_graybox.tscn` owns the current movement/camera test space.

`Player` is a `CharacterBody3D` using `scripts/player/player_controller.gd`.

Camera composition:
`Player → CameraYaw → CameraPitch → Camera3D`.

The player controller owns:
- gravity;
- camera-relative locomotion;
- ground/air acceleration;
- ground jump;
- wall jump using the wall normal reported by `CharacterBody3D`;
- short post-wall-jump steering lock;
- shared look-delta application;
- pitch clamp;
- target horizontal FOV conversion.

## FOV architecture

Player-facing target is `115° horizontal`.

Godot `Camera3D.fov` is driven as vertical FOV with `KEEP_HEIGHT`, so the controller converts the horizontal target using the current viewport aspect ratio. At 16:9, 115 horizontal degrees is approximately `82.8857` vertical degrees.

The conversion runs initially and again when viewport size changes.

## Input adapters

Desktop adapter:
`scripts/input/debug_input_bindings.gd`.

Mobile adapter:
`scripts/input/mobile_touch_input.gd`.

Mobile semantic button adapter:
`scripts/input/mobile_action_button.gd`.

Mobile control scene:
`scenes/ui/mobile_controls.tscn`.

Current mobile behavior:
- dynamic left-side movement touch;
- right-side drag look;
- safe-area-aware control root;
- JUMP action button;
- AIM/FIRE/DODGE action reservations.

The mobile adapter converts movement touch into InputMap action strengths, so the same player movement code handles keyboard and touch.

## Scene flow

`project.godot`
→ `scenes/boot/boot.tscn`
→ `scenes/graybox/player_camera_graybox.tscn`
→ `scenes/ui/mobile_controls.tscn`.

## Current boundary

Not yet implemented:
- firearm firing/reload behavior;
- ADS mechanics;
- enemies/damage;
- actual dodge behavior;
- advanced techniques beyond current jump/wall jump;
- RPG progression runtime;
- save/load;
- final HUD;
- final pixel render pipeline;
- production world content.

New movement techniques must be added one bounded/tested mechanic at a time.
