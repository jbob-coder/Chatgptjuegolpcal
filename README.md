# Unnamed Hunt RPG

Status: STAGE-1 SHOOTER-STYLE CONTROLS PHONE RETEST NEXT / HUNT-01 MANIFEST STATIC VERIFIED / FULL GAME RUNTIME NOT YET BUILT
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main game goal

`SETTLEMENT -> FRONTIER -> AERIAL REGION TRACKING -> SAME-LOCATION FIRST-PERSON TACTICAL COMBAT -> BREAK/SEVER -> ESCAPE/DEFEAT -> REACQUIRE/HARVEST -> INVENTORY -> RETURN -> SMITH -> CRAFT/EQUIP -> NEXT HUNT`.

The game is the objective. Documentation exists to keep ownership, dimensions, coordinates, verification, and continuation coherent.

## Current Stage-1 phone control state

Latest user feedback rejected the adaptive/latching joystick as too janky and requested an Apex Legends Mobile-like control structure.

Current implementation commit:
`6079c95f90a6329b2685f4c078527ae4a0dc1523`.

Current control architecture:
- left joystick = direct camera-relative movement vector;
- fixed stick direction stays fixed and does not accumulate camera turn;
- right-side drag = independent camera/view control;
- movement and look can operate simultaneously;
- first-person FOV = `115°`;
- first-person pitch clamp = `±80°`;
- no adaptive hold/alignment/latch/rebase variables remain in runtime steering.

Dedicated shooter-style workflow:
`33834546073` SUCCESS.

Full Android pipeline:
`33834546084` SUCCESS.

Pre-reconciliation retest APK:
`UnnamedHuntRPG-Stage1-ShooterStyle-Retest.apk`
57,574,457 bytes
SHA-256 `aa93221527c3a2e08543f403199144dc4611b2ac591201fdcfcc563c49a3a6b8`.

Google Drive ID:
`1r62HYqQkZGyAj8h7zPzFm68Au31dqxzy`.

A final UI/help reconciliation may create a newer byte identity; newest handoff/build evidence wins.

## Hunt-01 world/build status

Shared units: `1 world unit = 1 meter`.

Settlement 01 prototype: `200×260 m`.
Frontier: `~80 m`.
Region 01 first proof:
`S00 -> S01 -> S03 -> EF02 -> S03→S05 escape/reacquisition`.

Key graybox targets:
- route `285–315 m`;
- River Ford `58×54 m`;
- water `34×18 m`, depth `0.15–0.55 m`;
- wallow `16×12 m`;
- exit mud `20×12 m`;
- EF02 floor `70×54 m`;
- 10 tactical nodes / 14 links;
- boulder `5×4×3 m`;
- Charge corridor `~48×>=9 m`;
- pivot radius `8 m`.

Machine build manifest:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`.

Static validator:
`tests/quality/hunt01/hunt01_graybox_manifest_validator.py`.

Workflow `33830978945`: SUCCESS.

`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`.

Scene/runtime graybox verification remains NO.

## Full-game APK truth

A full playable game APK does not yet exist. Combat, harvesting, inventory, crafting, Settlement services, Persistence, and Hunt-01 are largely recorded as design/build-spec authorities rather than full production runtime code.

After the shooter-style phone retest passes, begin the first production Hunt-01 engine graybox slice.

## Exact next action

`STAGE1_FINAL_GALAXY_A03S_SHOOTER_STYLE_CONTROLS_RETEST`.

If PASS:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

Sustained `PERFORMANCE_VERIFIED` remains separate until actual target-device soak evidence exists.
