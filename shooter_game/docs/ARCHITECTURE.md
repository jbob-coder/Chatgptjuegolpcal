# Shooter RPG — Runtime Architecture

Status: SCAFFOLD 001 + PLAYER-CAMERA GRAYBOX 001
Last reconciled: 2026-09-16

## Ownership

`shooter_game/` is the only runtime root for Shooter RPG at this stage.

Inherited root-level project folders are not dependencies.

## Directory ownership

- `scenes/` owns Shooter-RPG-specific Godot scenes.
- `scripts/` owns Shooter-RPG-specific GDScript.
- `tests/` owns Shooter-RPG-specific automated checks.
- `docs/` owns runtime-local technical documentation.

## Semantic input contract

Reserved actions:
- `move_left`
- `move_right`
- `move_forward`
- `move_back`
- `aim`
- `fire`
- `reload`
- `dodge`
- `interact`
- `pause_game`

Gameplay code should consume these actions rather than device-specific keys/buttons.

Desktop keyboard/mouse mappings in `scripts/input/debug_input_bindings.gd` exist only to make development testable before mobile touch controls are implemented. Future touch controls should feed the same semantic gameplay contract.

## Player-camera graybox ownership

`scenes/graybox/player_camera_graybox.tscn` owns only the small test environment and node composition required to prove the first third-person controller/camera layer.

`Player` is a `CharacterBody3D` using `scripts/player/player_controller.gd`.

The controller currently owns:
- gravity;
- horizontal camera-relative movement;
- acceleration toward desired horizontal velocity;
- desktop mouse capture/release;
- yaw/pitch look;
- provisional camera pitch limits;
- exclusion of the player collider from the `SpringArm3D` camera collision test.

Camera composition:
`Player → CameraYaw → CameraPitch → SpringArm3D → Camera3D`.

`SpringArm3D` is responsible for shortening camera distance around graybox collision geometry. The exact camera FOV, spring length, pitch range, sensitivity and movement speeds are explicitly provisional.

## Current scene flow

`project.godot`
→ `scenes/boot/boot.tscn`
→ instances `scenes/graybox/player_camera_graybox.tscn`.

This is an early proof path, not the final game-shell architecture.

## Current boundary

Player-Camera Graybox 001 intentionally does NOT implement:
- firearm firing/reload behavior;
- aim/ADS behavior beyond reserving the semantic action;
- enemy AI;
- player/enemy damage;
- dodge gameplay;
- RPG progression;
- save/load;
- mobile joystick/look controls;
- final HUD;
- final pixel render pipeline;
- production world content.

Those belong to later bounded slices.
