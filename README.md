# Unnamed Hunt RPG

Status: STAGE-1 ADAPTIVE JOYSTICK PHONE RETEST NEXT / HUNT-01 MANIFEST STATIC VERIFIED / FULL GAME RUNTIME NOT YET BUILT
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main game goal

Playable direction:
`SETTLEMENT -> FRONTIER -> AERIAL REGION TRACKING -> SAME-LOCATION FIRST-PERSON TACTICAL COMBAT -> BREAK/SEVER -> ESCAPE/DEFEAT -> REACQUIRE/HARVEST -> INVENTORY -> RETURN -> SMITH -> CRAFT/EQUIP -> NEXT HUNT`.

The game is the objective. Documentation exists to keep ownership, dimensions, coordinates, verification and continuation coherent.

## Current Stage-1 phone state

Direct user evidence from prior phone build:
- general runtime worked correctly;
- no reported clipping/general problem;
- aerial camera behavior acceptable.

Latest user requirement supersedes release/neutral recentering: joystick steering must adapt while the same finger remains down, without requiring a return to center/0.

Final tested adaptive head:
`e9b89912f1c80e90114a68a6de9de4ffbcdd6777`.

Current adaptive behavior:
- sustained movement is latched in world space;
- once Hunter facing aligns, the joystick frame can rebase without changing current movement;
- the same finger can slide from the old side direction toward UP and continue on the newly established heading;
- no release or center/deadzone crossing is required;
- unchanged off-center input does not cause continuous circling.

Arena enlarged for steering tests:
- floor `120×120 m`;
- Hunter-center bound `±56 m`;
- usable span approximately `112×112 m`.

First person:
- FOV `115°`;
- turn response scale `0.55`;
- aerial behavior unchanged.

Dedicated adaptive workflow `33833083005`: SUCCESS.
Full Android workflow `33833083007`: SUCCESS.

Fresh APK:
`UnnamedHuntRPG-Stage1-AdaptiveJoystick-Retest.apk`
`57,574,457 bytes`
SHA-256 `88b53cb20cac97751f30cc79033ed0e715544e8e26446b06e887e8ea894a5cf1`.

Google Drive ID:
`1anJ1sY4ajJuJsID62pvgNKZYBvyYi3QV`.

Latest phone handoff:
`docs/70_handoff/STAGE1_GALAXY_A03S_ADAPTIVE_JOYSTICK_REPAIR_2026-09-04.md`.

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

A full playable game APK does not yet exist. Combat, harvesting, inventory, crafting, Settlement services, Persistence and Hunt-01 are recorded primarily as design/build-spec authorities rather than production runtime code. The Stage-1 probe must not be mislabeled as the full game.

## Exact next action

`STAGE1_FINAL_GALAXY_A03S_ADAPTIVE_JOYSTICK_RETEST`.

If PASS:
`FIRST_SLICE_REGION01_HUNT01_MINIMAL_ENGINE_GRAYBOX_IMPLEMENTATION`.

Sustained `PERFORMANCE_VERIFIED` remains a separate evidence label until required device soak evidence exists.
