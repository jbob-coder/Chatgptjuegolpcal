# Production Game Root

Status: FIRST PRODUCTION HUNT-01 GRAYBOX IMPLEMENTATION

This folder is the production Godot project for Unnamed Hunt RPG. It is separate from `probes/android_stage1/`, which remains disposable Stage-1 evidence source.

## Current playable scope

The current production slice contains only the physical Hunt-01 graybox and the phone-accepted shooter-style control foundation:

`S00 Trailhead -> S01 River Ford -> S03 Feeding Meadow -> EF02 -> escape corridor`.

It renders/builds:
- the documented required route and observation ramp;
- the open first 20-30 m S02 wrong-route stub as reversible build-only geometry;
- River Ford / shallow-water / mud visual patches;
- Feeding Meadow and observation shelf;
- seven evidence markers;
- ten tactical-node markers;
- physical boulder/tree cover;
- one solid Mudcrest Raker placeholder at MA01;
- Monster pivot/Charge clearance debug geometry;
- non-colliding camera and streaming debug volumes;
- the documented S03->S05 escape corridor.

Combat, harvesting, inventory, crafting, Settlement services and persistence are not implemented merely because their design contracts exist.

## Source ownership

- `project.godot` / `export_presets.cfg`: production shell/platform configuration.
- `scenes/app_shell.tscn`: application entry scene.
- `scenes/regions/region_01_hunt01_graybox.tscn`: first production region presentation scene.
- `scripts/presentation/exploration/region_01_hunt01_graybox.gd`: graybox presentation/input adapter only.
- `content/regions/region_01/hunt01_graybox_build_manifest.json`: generated runtime projection of the authoritative docs manifest; do not edit independently.
- `tests/region01_hunt01_graybox_runtime_test.gd`: headless production-slice integration evidence.

Authoritative dimensions/coordinates remain under `docs/10_world/regions/REGION_01/`.

## Control contract

The accepted Galaxy A03s control model is preserved:
- left fixed joystick = direct camera-relative movement;
- fixed stick direction never accumulates camera turn;
- right-side drag = independent view;
- simultaneous move/look supported;
- first-person FOV 115 degrees;
- first-person pitch clamp +/-80 degrees;
- Look Speed default 35%.

## Verification boundary

A successful CI/headless build verifies source/scene/build behavior only. The production Hunt-01 graybox is not phone-verified until the new production APK is run on the Galaxy A03s.
