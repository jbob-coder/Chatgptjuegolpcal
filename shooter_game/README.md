# Shooter RPG — Standalone Runtime Root

Status: FIRST-PERSON 115 HFOV / WALL-JUMP + MOBILE TOUCH HEADLESS VERIFIED
Engine baseline: Godot 4.7.2-stable

`shooter_game/` is the independent runtime root for Shooter RPG.

## Active runtime foundation

Camera:
- first-person;
- `Player → CameraYaw → CameraPitch → Camera3D`;
- target horizontal FOV = `115°`;
- aspect-aware conversion to Godot vertical FOV;
- no `SpringArm3D` in the active camera.

Movement:
- camera-relative movement;
- gravity;
- ground jump;
- air steering;
- wall jump;
- short steering lock after wall-jump impulse.

Input:
- desktop `W/A/S/D` movement;
- desktop mouse look;
- `Space` jump;
- `Shift` reserved for dodge;
- left-side mobile movement region;
- right-side mobile drag look;
- mobile JUMP button;
- AIM/FIRE/DODGE buttons reserved for later gameplay slices.

## Semantic input contract

Current required actions: 11.

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

## Verification

Most recent runtime-gate evidence:
- source SHA `393ff872f2623f98f07c6216d6d29dc5ed64e5fb`;
- GitHub Actions run `35056976187`;
- job `104669095724`;
- result: SUCCESS.

Executed successfully in that gate:
- `python shooter_game/tests/scaffold_static_preflight.py`;
- `python shooter_game/tests/player_camera_static_preflight.py`;
- `python shooter_game/tests/mobile_touch_static_preflight.py`;
- Godot 4.7.2 project import/parse;
- `res://tests/scaffold_smoke.gd`;
- `res://tests/player_camera_smoke.gd`;
- `res://tests/mobile_touch_smoke.gd`.

Headless/runtime verification does NOT yet prove Android export, phone ergonomics, wall-jump feel, FOV comfort, final visuals or performance.

## Current boundary

Still not implemented:
- firearm firing/reload behavior;
- ADS behavior;
- enemy AI;
- damage/health;
- actual dodge behavior;
- RPG progression runtime;
- save/load;
- final HUD;
- final pixel-render pipeline;
- production world content.

Next gate: real Android control-feel verification before adding firearm mechanics.
