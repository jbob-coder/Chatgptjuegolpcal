# Shooter RPG — Standalone Runtime Root

Status: SCAFFOLD 001 + PLAYER-CAMERA GRAYBOX 001 STATIC VERIFIED
Engine baseline: Godot 4.7.2-stable

This directory is the independent runtime root for Shooter RPG.

It must not depend on inherited previous-game runtime folders unless a future Shooter RPG authority explicitly imports a reviewed piece.

## Current contents

Foundation:
- `project.godot` — standalone Godot project and semantic input-action ownership.
- `scripts/core/project_contract.gd` — project identity and required action contract.
- `VERSION` — current early-development version marker.

Boot / graybox:
- `scenes/boot/boot.tscn` — entry scene that instances the active player-camera graybox.
- `scripts/boot/boot.gd` — boot status marker only.
- `scenes/graybox/player_camera_graybox.tscn` — tiny 3D movement/camera test space.
- `scripts/player/player_controller.gd` — provisional gravity, camera-relative locomotion and third-person mouse look.
- `scripts/input/debug_input_bindings.gd` — desktop-only debug mappings for the semantic actions.

Verification:
- `tests/scaffold_static_preflight.py` — structural/isolation preflight.
- `tests/player_camera_static_preflight.py` — graybox ownership/scope preflight.
- `tests/scaffold_smoke.gd` — Godot headless project/input/boot smoke; not yet executed.
- `docs/VERIFICATION.md` — exact verification boundary.

No shooting, enemy AI, RPG progression, mobile touch UI, save system or final pixel-render pipeline is claimed implemented by the graybox.

## Static verification

From repository root:

`python shooter_game/tests/scaffold_static_preflight.py`

Expected marker:

`SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`

Then:

`python shooter_game/tests/player_camera_static_preflight.py`

Expected marker:

`SHOOTER_RPG_PLAYER_CAMERA_STATIC_PASS`

Both static checks were executed successfully for Player-Camera Graybox 001.

## Desktop graybox controls — debug only

When a Godot runtime is available:
- `W/A/S/D` = movement;
- mouse = camera look while captured;
- `Esc` = release/capture mouse;
- right mouse = semantic AIM action reservation;
- left mouse = semantic FIRE action reservation;
- `R`, `Space`, `E` reserve reload/dodge/interact for later slices.

AIM/FIRE/RELOAD/DODGE/INTERACT gameplay behavior is intentionally not implemented yet.

## Godot headless smoke

Planned command with Godot 4.7.2-stable:

`godot --headless --path shooter_game --script res://tests/scaffold_smoke.gd`

Expected marker:

`SHOOTER_RPG_SCAFFOLD_SMOKE_PASS actions=10`

This remains unverified until the engine is actually executed and the result observed.
