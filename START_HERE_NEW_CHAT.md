# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Mandatory read order:
1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. this file
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. exact owning package/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## Current implementation state

Stage-1 shooter-style controls were accepted by the user on the Galaxy A03s: **PASS 100%**.

Production runtime root now exists at:
`game/`.

First production piece:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION` — IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Tested production source head:
`ef0db3b4dcbea32608228f99a8fffead5ad6c858`.

Workflow `33836865365`: SUCCESS.
Static/source: 29/29 PASS.
Headless integration: 23/23 PASS.

Production APK:
`UnnamedHuntRPG-Hunt01-Graybox-Retest.apk`
SHA-256 `7094b3046a6a35144b3d6c80bab8b6900a1fc33d9c04cbeca9d9a80e2361e36a`.
Drive ID `150Wot1owtIGrFWUG_BmfWWlXmlMUT02F`.

## What is playable in this APK

S00 -> River Ford -> Feeding Meadow -> N01 plus the S03→S05 escape corridor, using the accepted shooter-style controls.

Visible/physical proof content includes:
- Ford/water/mud graybox;
- 7 gold evidence markers;
- 10 cyan tactical nodes;
- physical boulder/tree cover;
- solid magenta Monster placeholder;
- Monster clearance debug geometry;
- aerial/first-person cameras and Settings.

Tracking interpretation, combat, harvesting, inventory, crafting, Settlement services and persistence are not yet complete gameplay runtime.

Raw construction route is `282.926 m`; final smoothed-path target remains `285–315 m`.
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`.

## Current gates

Phone test now:
`REGION01_HUNT01_PRODUCTION_GRAYBOX_GALAXY_A03S_RETEST`.

Next independent development:
`FIRST_SLICE_REGION01_HUNT01_TRACKING_EVIDENCE_RUNTIME_IMPLEMENTATION`.

`PERFORMANCE_VERIFIED = NO` until sustained Galaxy A03s soak evidence exists.
`FINAL_ENGINE_SELECTED = NO`.
