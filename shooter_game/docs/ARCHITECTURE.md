# Shooter RPG — Runtime Architecture

Status: SCAFFOLD 001
Last reconciled: 2026-09-16

## Isolation

`shooter_game/` is the standalone runtime root for Shooter RPG.

Do not import runtime code from inherited previous-game folders unless a future Shooter RPG authority explicitly reviews and imports a specific file/system.

## Current ownership

- `project.godot` owns engine/project settings and semantic input actions.
- `scenes/boot/boot.tscn` owns minimal startup presentation.
- `scripts/boot/boot.gd` owns the scaffold boot marker.
- `scripts/core/project_contract.gd` owns the stable project identity and required semantic actions.
- `tests/` owns Shooter-RPG-specific static/headless verification.
- `docs/` owns runtime-local architecture and verification notes.

## Planned structure

Next bounded slice may add:
- `scenes/graybox/player_camera_graybox.tscn`;
- `scripts/player/player_controller.gd`;
- `scripts/camera/third_person_camera.gd` or equivalent camera-rig ownership;
- bounded graybox tests.

Do not add shooting, enemy AI, progression, save systems or final pixel rendering until their own bounded slices.

## Content/tone separation

The internal 21+ mature target is owned at repository level by `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`.

Combat authority and presentation intensity should remain separable where practical so blood/gore presentation can be tuned without changing hit/damage truth.
