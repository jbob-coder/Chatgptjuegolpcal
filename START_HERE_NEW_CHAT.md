# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-04

## Active project

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

## Current phone state

User-reported prior Stage-1 phone result:
- otherwise works correctly;
- no reported clipping/general problem;
- aerial behavior acceptable.

Current repair:
- same-finger neutral-crossing joystick recenter;
- first-person turn damping 0.55;
- first-person FOV 115°.

Repair commit:
`02459116216d3ac75ddd3d90c80f32bcbaa9662b`.

Dedicated control regression:
`33831517381` SUCCESS.

Full Android build:
`33831517331` SUCCESS.

Retest APK SHA-256:
`09b1faf49a4f7ca41d0a0926497e8c11469f5882bf6eba2f8799792f8e9d9c71`.

Google Drive file ID:
`1X86K00hKsvPorcUKXO4b-UIBHBHtwXoc`.

Exact next action:
`STAGE1_FINAL_GALAXY_A03S_CONTROL_CAMERA_RETEST`.

## Hunt-01 static geometry state

Validator source:
`tests/quality/hunt01/`.

Workflow `33830978945`: SUCCESS.

`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`.

No engine graybox exists yet.

Current Hunt-01 chain:
S00 -> S01 River Ford -> S03 Feeding Meadow -> EF02 -> Monster escape via S03→S05 -> same-Monster reacquisition.

Key targets:
- 285–315 m route;
- 58×54 m Ford basin;
- 34×18 m water;
- 70×54 m Meadow floor;
- 10 tactical nodes / 14 links;
- Charge corridor ~48×>=9 m;
- pivot radius 8 m.

## After phone PASS

Per user direction, close Stage-1 functional phone gate and begin:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

The current APK is still a Stage-1 probe. A full-game APK does not yet exist because combat/harvest/inventory/crafting/Settlement/Hunt-01 production runtime has not been implemented yet.
