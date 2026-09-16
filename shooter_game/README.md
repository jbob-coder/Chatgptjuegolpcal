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
- `tests/scaffold_static_preflight.py` — no-cost structural/isolation preflight.
- `tests/scaffold_smoke.gd` — Godot headless project/input/boot smoke.
- `docs/ARCHITECTURE.md` — scaffold ownership rules.

No gameplay system is claimed implemented by this scaffold.

## Static preflight

From repository root:

`python shooter_game/tests/scaffold_static_preflight.py`

Expected marker:

`SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`

## Godot headless smoke

From a Godot 4.7.2-stable executable:

`godot --headless --path shooter_game --script res://tests/scaffold_smoke.gd`

Expected marker:

`SHOOTER_RPG_SCAFFOLD_SMOKE_PASS actions=10`

The static preflight has been executed during Scaffold 001. The Godot headless smoke remains unverified until a Godot 4.7.2 runtime is available in the execution environment or the project is run locally/device-side.
