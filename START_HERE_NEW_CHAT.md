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

Latest user direction:
- no joystick release required after a turn;
- no forced return to center/0;
- steering should adapt automatically after sustained movement;
- larger arena required for sustained testing.

Current tested source head:
`e9b89912f1c80e90114a68a6de9de4ffbcdd6777`.

Adaptive joystick:
held movement -> Hunter aligns -> reference rebases without changing current world intent -> same finger may slide toward UP and keep the established heading.

Arena:
`120×120 m`; bound `±56 m`; usable `~112×112 m`.

First person:
FOV `115°`; turn scale `0.55`.

Adaptive regression:
`33833083005` SUCCESS.

Full Android build:
`33833083007` SUCCESS.

APK:
`UnnamedHuntRPG-Stage1-AdaptiveJoystick-Retest.apk`
SHA-256 `88b53cb20cac97751f30cc79033ed0e715544e8e26446b06e887e8ea894a5cf1`.

Google Drive:
ID `1anJ1sY4ajJuJsID62pvgNKZYBvyYi3QV`.

Phone handoff:
`docs/70_handoff/STAGE1_GALAXY_A03S_ADAPTIVE_JOYSTICK_REPAIR_2026-09-04.md`.

Exact next action:
`STAGE1_FINAL_GALAXY_A03S_ADAPTIVE_JOYSTICK_RETEST`.

## Hunt-01 static geometry

`tests/quality/hunt01/` owns executable manifest-static QA.
Workflow `33830978945`: SUCCESS.
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`.

No engine graybox exists yet.

Current Hunt-01 chain:
`S00 -> S01 River Ford -> S03 Feeding Meadow -> EF02 -> escape S03→S05 -> same-Monster reacquisition`.

Key targets:
- route 285–315 m;
- Ford 58×54 m;
- water 34×18 m;
- Meadow 70×54 m;
- 10 tactical nodes / 14 links;
- Charge corridor ~48×>=9 m;
- pivot radius 8 m.

## After phone PASS

Close Stage-1 functional phone gate and begin:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

A full-game APK does not yet exist; current Stage-1 APK is still an engine/control probe.
