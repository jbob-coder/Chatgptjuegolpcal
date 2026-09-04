# Unnamed Hunt RPG

Status: STAGE-1 FINAL PHONE RETEST NEXT / HUNT-01 MANIFEST STATIC VERIFIED / FULL GAME RUNTIME NOT YET BUILT
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main game goal

Playable direction:
`SETTLEMENT -> FRONTIER -> AERIAL REGION TRACKING -> SAME-LOCATION FIRST-PERSON TACTICAL COMBAT -> BREAK/SEVER -> ESCAPE/DEFEAT -> REACQUIRE/HARVEST -> INVENTORY -> RETURN -> SMITH -> CRAFT/EQUIP -> NEXT HUNT`.

The game is the objective. Documentation exists to keep it coherent and verifiable.

## Current Stage-1 phone state

Direct user report:
- prior APK otherwise works correctly;
- no reported clipping/general problem;
- aerial camera behavior acceptable.

Current repair commit:
`02459116216d3ac75ddd3d90c80f32bcbaa9662b`.

Repair:
- joystick recaptures latest heading when the same finger passes back through neutral/deadzone;
- no finger release required before pushing up along the new heading;
- first-person turn response multiplier 0.55;
- first-person FOV 115°;
- aerial response unchanged.

Automated control regression `33831517381`: SUCCESS.
Full Android pipeline `33831517331`: SUCCESS.

Fresh retest APK:
`UnnamedHuntRPG-Stage1-Phone-Retest.apk`
57,570,361 bytes
SHA-256 `09b1faf49a4f7ca41d0a0926497e8c11469f5882bf6eba2f8799792f8e9d9c71`.

Google Drive ID:
`1X86K00hKsvPorcUKXO4b-UIBHBHtwXoc`.

## Hunt-01 world/build status

Shared units: `1 world unit = 1 meter`.

Settlement 01 prototype: 200×260 m.
Frontier: ~80 m.
Region 01 first proof:
S00 -> S01 -> S03 -> EF02 -> S03→S05 escape/reacquisition.

Key graybox targets:
- route 285–315 m;
- River Ford 58×54 m;
- water 34×18 m at 0.15–0.55 m required depth;
- wallow 16×12 m;
- exit mud 20×12 m;
- EF02 floor 70×54 m;
- 10 tactical nodes / 14 links;
- boulder 5×4×3 m;
- Charge corridor ~48×>=9 m;
- pivot radius 8 m.

Machine build manifest:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`.

Static validator:
`tests/quality/hunt01/hunt01_graybox_manifest_validator.py`.

Workflow `33830978945`: SUCCESS.

`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = YES / 13_OF_13`.

Scene/runtime graybox verification remains NO.

## Full-game APK truth

A full playable game APK does not yet exist.

Combat, harvesting, inventory, crafting, Settlement services, Persistence and Hunt-01 are currently recorded primarily as design/build-spec authorities rather than production runtime code. The Stage-1 APK must not be mislabeled as the full game.

After the corrected phone retest passes, the next development move is to start the first real production Hunt-01 engine graybox slice and produce broader playable development APKs from that implementation.

## Exact next action

`STAGE1_FINAL_GALAXY_A03S_CONTROL_CAMERA_RETEST`.

If PASS:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

Sustained `PERFORMANCE_VERIFIED` remains a separate evidence label until the required device soak evidence exists.
