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

## Current phone control state

The adaptive/latching joystick is superseded.

Current implementation:
`6079c95f90a6329b2685f4c078527ae4a0dc1523`.

Current controls:
- left fixed joystick = direct camera-relative movement;
- right-side drag = independent view yaw;
- first-person vertical right-drag = pitch ±80°;
- unchanged movement-stick direction does not accumulate camera turn;
- no adaptive hold/alignment/latch/rebase state;
- first-person FOV 115°.

Dedicated regression:
`33834546073` SUCCESS.

Full Android build:
`33834546084` SUCCESS.

Intermediate retest APK SHA-256:
`aa93221527c3a2e08543f403199144dc4611b2ac591201fdcfcc563c49a3a6b8`.

Drive file ID:
`1r62HYqQkZGyAj8h7zPzFm68Au31dqxzy`.

Exact next action:
`STAGE1_FINAL_GALAXY_A03S_SHOOTER_STYLE_CONTROLS_RETEST`.

## Hunt-01 static geometry state

Validator:
`tests/quality/hunt01/`.

Workflow `33830978945`: SUCCESS.

`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`.

No engine graybox exists yet.

Hunt path:
S00 -> S01 River Ford -> S03 Feeding Meadow -> EF02 -> Monster escape via S03→S05 -> same-Monster reacquisition.

Key targets:
- route 285–315 m;
- Ford 58×54 m;
- water 34×18 m;
- Meadow 70×54 m;
- 10 tactical nodes / 14 links;
- Charge corridor ~48×>=9 m;
- pivot radius 8 m.

## After phone PASS

Close the Stage-1 functional phone-control gate and begin:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

The current APK is still a Stage-1 probe. A full-game APK does not yet exist.
