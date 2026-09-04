# Production Game Root

Status: FIRST PRODUCTION HUNT-01 GRAYBOX IMPLEMENTED / STATIC + HEADLESS + ANDROID BUILD VERIFIED / PHONE RETEST REQUIRED
Last reconciled: 2026-09-04

This folder is the production Godot project for Unnamed Hunt RPG. It is separate from `probes/android_stage1/`, which remains disposable Stage-1 evidence source.

## Current playable scope

The current production slice contains the physical Hunt-01 graybox and the Galaxy A03s-accepted shooter-style control foundation:

`S00 Trailhead -> S01 River Ford -> S03 Feeding Meadow -> EF02 -> S03→S05 escape corridor`.

It builds:
- the documented required route and observation ramp;
- first 20–30 m S02 wrong-route stub as reversible build-only geometry;
- River Ford / shallow-water / mud visual patches;
- Feeding Meadow and observation shelf;
- seven evidence markers;
- ten tactical-node markers;
- physical boulder/tree cover;
- one solid Mudcrest Raker placeholder at MA01;
- Monster pivot/Charge clearance debug geometry;
- non-colliding camera and streaming debug volumes;
- documented escape corridor.

Combat, evidence investigation semantics, harvesting, inventory, crafting, Settlement services and persistence are not implemented merely because their design contracts exist.

## Source ownership

- `project.godot` / `export_presets.cfg`: production shell/platform configuration.
- `scenes/app_shell.tscn`: application entry scene.
- `scenes/regions/region_01_hunt01_graybox.tscn`: first production Region presentation scene.
- `scripts/presentation/exploration/region_01_hunt01_graybox.gd`: graybox presentation/input adapter only.
- `content/regions/region_01/hunt01_graybox_build_manifest.json`: generated runtime projection of authoritative docs manifest; do not edit independently.
- `tests/region01_hunt01_graybox_runtime_test.gd`: headless production-slice integration evidence.

Authoritative dimensions/coordinates remain under `docs/10_world/regions/REGION_01/`.

## Accepted control contract

- left fixed joystick = direct camera-relative movement;
- fixed stick direction never accumulates view turn;
- right-side drag = independent look;
- simultaneous move/look;
- first-person FOV 115°;
- pitch ±80°;
- Look Speed default 35%.

User phone result for the Stage-1 implementation: **PASS 100%**.

## Production verification

Tested source head:
`ef0db3b4dcbea32608228f99a8fffead5ad6c858`.

Workflow:
`33836865365` SUCCESS.

Production projection/source:
29/29 PASS.

Headless integration:
23/23 PASS.

Android export/integrity/upload:
PASS.

APK:
`UnnamedHuntRPG-Hunt01-Graybox-Retest.apk`
57,587,191 bytes
SHA-256 `7094b3046a6a35144b3d6c80bab8b6900a1fc33d9c04cbeca9d9a80e2361e36a`.

Drive ID:
`150Wot1owtIGrFWUG_BmfWWlXmlMUT02F`.

## Evidence boundary

Raw construction-anchor centerline: 282.926 m.
Final smoothed route target: 285–315 m.

`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

CI/headless verification does not imply Galaxy A03s production-world traversal, visual quality, complete scene dimensional tolerances or sustained performance.

## Next

External phone test:
`REGION01_HUNT01_PRODUCTION_GRAYBOX_GALAXY_A03S_RETEST`.

Next independent production system:
`FIRST_SLICE_REGION01_HUNT01_TRACKING_EVIDENCE_RUNTIME_IMPLEMENTATION`.
