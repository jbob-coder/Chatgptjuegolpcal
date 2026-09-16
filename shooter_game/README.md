# Shooter RPG — Standalone Runtime Root

Status: SCAFFOLD 001
Engine baseline: Godot 4.7.2-stable

This directory is the independent runtime root for Shooter RPG.

It must not depend on inherited previous-game runtime folders unless a future Shooter RPG authority explicitly imports a reviewed piece.

## Current contents

- `project.godot` — standalone Godot project and first-slice input-action ownership.
- `scenes/boot/boot.tscn` — minimal boot scene only.
- `scripts/boot/boot.gd` — scaffold boot marker.
- `scripts/core/project_contract.gd` — project identity and required action contract.
- `tests/scaffold_smoke.gd` — headless project-ownership/input/boot smoke.
- `docs/ARCHITECTURE.md` — scaffold ownership rules.

No gameplay system is claimed implemented by this scaffold.

## Headless smoke

From a Godot 4.7.2-stable executable:

`godot --headless --path shooter_game --script res://tests/scaffold_smoke.gd`

Expected success marker:

`SHOOTER_RPG_SCAFFOLD_SMOKE_PASS actions=10`
