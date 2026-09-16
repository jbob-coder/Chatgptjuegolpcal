# Shooter RPG — Documentation Index

Status: ACTIVE / STANDALONE NEW GAME / PIXEL REFERENCE SELECTED
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Mandatory read order

1. `README.md`
2. `EVOLVE_ALIGNMENT.md`
3. `PROJECT_HANDOFF.md`
4. `START_HERE_NEW_CHAT.md`
5. this index
6. `SHOOTER_RPG_VISUAL_DIRECTION.md`
7. newest Shooter RPG-specific handoff/document created after the standalone reset
8. exact Shooter RPG source/tests once implementation exists

## Critical separation rule

Shooter RPG is not a continuation of Unnamed Hunt RPG, WorldLife RPG, Hunt-01, or any previous game.

This branch contains inherited files because of Git ancestry. Unless a current Shooter RPG document explicitly imports a particular asset/system/file, inherited content is LEGACY / NON-AUTHORITATIVE for Shooter RPG.

That includes old:
- `game/` runtime;
- Hunt-01 combat/anatomy code;
- old bibles and roadmaps;
- old save rules;
- old maps and settlements;
- old progression systems;
- old Diamond Watch/mining/crystal concepts;
- old performance/storage caps;
- old CI workflows/APKs/tests.

Do not cite those as current Shooter RPG state.

## Current Shooter RPG authorities

- project identity / front door: `README.md`;
- operating law and next bounded piece: `EVOLVE_ALIGNMENT.md`;
- continuity/current state: `PROJECT_HANDOFF.md`;
- new-chat bootstrap: `START_HERE_NEW_CHAT.md`;
- visual direction: `SHOOTER_RPG_VISUAL_DIRECTION.md`;
- visual asset references: `VISUAL_REFERENCE_ASSETS.md` where present;
- current runtime truth: future Shooter RPG-specific source/tests/build/device evidence.

## Canonical visual reference

Primary original image:
- `Shooter RPG - Pixel Visual Reference ORIGINAL.png`;
- Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`.

Working JPEG:
- Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

The image controls visual inspiration only. Its names, quests, item counts, monsters and exact UI copy are placeholders.

## Current project state

`SHOOTER_RPG_STANDALONE_IDENTITY_RECORDED = YES`
`PIXEL_REFERENCE_SAVED = YES`
`SHOOTER_RPG_GAMEPLAY_FOUNDATION_DEFINED = NO`
`SHOOTER_RPG_SOURCE_IMPLEMENTED = NO`
`SHOOTER_RPG_BUILD_VERIFIED = NO`
`SHOOTER_RPG_PHONE_RUNTIME_VERIFIED = NO`

## Exact continuation

`SHOOTER_RPG_FOUNDATION_DESIGN_001`.

Design the game itself before implementation:
- player fantasy;
- perspective;
- movement;
- aiming/shooting;
- weapons;
- enemy baseline;
- damage/health;
- RPG layer;
- world/travel structure;
- mobile controls/HUD;
- pixel rendering pipeline;
- smallest complete vertical slice.

No old-game mechanic should enter this plan by accident.
