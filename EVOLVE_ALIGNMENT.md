# EVOLVE ALIGNMENT — Shooter RPG

Status: NEW STANDALONE GAME / DESIGN RESET / PIXEL REFERENCE SELECTED / IMPLEMENTATION NOT YET AUTHORIZED BY DESIGN
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Operating law

`Shooter RPG` is a new standalone game.

Current explicit user instruction outranks inherited repository content. Repository ancestry does not imply game-design inheritance.

Development loop:
`READ CURRENT SHOOTER STATE → VERIFY → ONE BOUNDED PIECE → IMPLEMENT → TEST → RECORD → CONTINUE`.

Never claim Shooter RPG inherited a verified mechanic, build, performance result, save system, or gameplay foundation merely because this branch was created from another game's branch.

## Project isolation law

The following are NOT Shooter RPG authority unless explicitly imported later:
- Unnamed Hunt RPG design documents and source;
- WorldLife RPG design documents and source;
- Hunt-01 source/tests/build evidence;
- previous monsters, anatomy, body-part combat, harvesting or crafting;
- previous settlements, factions, mining/crystal economy or lore;
- previous progression/level-cap rules;
- Diamond Watch;
- previous NPC relationship/aging/generation systems;
- previous save schemas;
- previous storage caps/performance budgets;
- previous APK/workflow verification.

Inherited files remain historical repository material only.

## Confirmed Shooter RPG facts

CONFIRMED:
- new standalone project;
- branch: `shooter-rpg`;
- pixel visual direction;
- the generated pixel reference image is the current visual inspiration;
- this game must receive its own design, implementation, tests, builds and verification.

NOT YET CONFIRMED:
- exact setting/lore;
- exact shooter mechanics;
- firearm vs other projectile/weapon mix;
- camera perspective and distance;
- real-time vs hybrid combat timing;
- RPG stat/progression model;
- world scale;
- NPC simulation depth;
- multiplayer/online requirements;
- final engine/project folder;
- storage/performance caps;
- exact Android control layout.

Do not resolve those by copying the old game.

## Canonical visual reference

Primary original reference:
- `Shooter RPG - Pixel Visual Reference ORIGINAL.png`
- Google Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`

Working JPEG reference:
- `Shooter RPG - Pixel Visual Reference.jpg`
- Google Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`

The image establishes visual mood, pixel treatment, camera/composition ideas and UI inspiration only. Visible names, quests, characters, locations, inventory values and monster details are placeholders.

## Architecture separation

When implementation begins, Shooter RPG should use a separate root such as:
`shooter_game/`

Do not build the new game inside inherited previous-game runtime folders unless the user explicitly approves reuse after a file-level review.

Shooter RPG needs its own:
- project configuration;
- source tree;
- asset pipeline;
- save lineage;
- tests;
- CI/build evidence;
- documentation authority;
- Android package/application identity when packaging begins.

## Scope principle

Build the smallest strong game first.

Use:
**clear core loop → strong controls → readable combat → good pixel presentation → one complete playable slice → expand**.

Avoid adding broad simulation/lore systems before the shooter loop and presentation are proven.

## Current verification boundary

`SHOOTER_RPG_STANDALONE_IDENTITY_RECORDED = YES`
`PIXEL_REFERENCE_SAVED = YES`
`CORE_GAMEPLAY_DESIGN_LOCKED = NO`
`SHOOTER_RPG_SOURCE_IMPLEMENTED = NO`
`SHOOTER_RPG_BUILD_VERIFIED = NO`
`SHOOTER_RPG_PHONE_RUNTIME_VERIFIED = NO`
`SHOOTER_RPG_VISUAL_QUALITY_VERIFIED = NO`
`SHOOTER_RPG_PERFORMANCE_VERIFIED = NO`

Old game verification does not change these states.

## Exact next bounded piece

`SHOOTER_RPG_FOUNDATION_DESIGN_001`

Before coding, define only:
1. core player fantasy;
2. camera/perspective;
3. movement;
4. aiming/shooting;
5. damage/health baseline;
6. weapon categories for the first slice;
7. basic enemy interaction;
8. RPG progression depth for the first slice;
9. world/travel structure;
10. mobile HUD/control layout;
11. pixel-art/rendering approach;
12. exact smallest playable vertical slice.

Do not import old-game systems as defaults.

NEXT THING: `SHOOTER_RPG_FOUNDATION_DESIGN_001`.
