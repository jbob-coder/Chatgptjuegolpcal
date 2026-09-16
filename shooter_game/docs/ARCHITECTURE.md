# Shooter RPG — Scaffold Architecture

Status: SCAFFOLD 001

## Ownership

`shooter_game/` is the only runtime root for Shooter RPG at this stage.

Inherited root-level project folders are not dependencies.

## Initial directories

- `scenes/` owns Godot scenes.
- `scripts/` owns Shooter-RPG-specific GDScript.
- `tests/` owns Shooter-RPG-specific automated checks.
- `docs/` owns runtime-local technical documentation.

## First-slice input contract

Actions reserved now:
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

These are semantic actions. Touch controls, keyboard/mouse debug bindings and gamepad bindings may map to them later without changing gameplay code ownership.

## Scaffold boundary

Scaffold 001 must not contain:
- combat implementation;
- enemy AI;
- progression;
- save system;
- world content;
- final pixel render pipeline.

Those belong to later bounded slices.
