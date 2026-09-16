# EVOLVE ALIGNMENT — Shooter RPG

Status: NEW STANDALONE GAME / FOUNDATION DESIGN 001 LOCKED / PROJECT SCAFFOLD NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Operating law

Shooter RPG is a new standalone game.

Current explicit user instruction outranks inherited repository content. Repository ancestry does not imply game-design inheritance.

Development loop:
`READ CURRENT SHOOTER STATE → VERIFY → ONE BOUNDED PIECE → IMPLEMENT → TEST → RECORD → CONTINUE`.

Never claim Shooter RPG inherited a verified mechanic, build, performance result, save system, or gameplay foundation merely because this branch was created from another game's branch.

## Project isolation law

The following are NOT Shooter RPG authority unless explicitly imported later:
- Unnamed Hunt RPG or WorldLife design/source;
- prior monsters, combat, crafting, mining, progression, NPC simulation or lore;
- prior saves/schema;
- prior tests/build evidence;
- prior technical budgets or Android package identity.

Inherited files are repository history only.

Authoritative identity contract:
`SHOOTER_RPG_PROJECT_IDENTITY.md`.

## Confirmed Shooter RPG foundation

Foundation owner:
`SHOOTER_RPG_FOUNDATION_DESIGN_001.md`.

LOCKED FOR FIRST PROTOTYPE:
- standalone single-player offline-first Shooter RPG;
- third-person over-the-shoulder camera;
- real-time aiming/shooting;
- semi-automatic carbine as first firearm;
- reticle/hit geometry is authoritative; RPG stats do not arbitrarily invalidate visibly correct shots;
- physical environmental cover rather than sticky cover mode;
- compact connected zones instead of massive open world or menu-only travel;
- first hostile archetype: placeholder Sentry Automaton;
- shallow RPG foundation: Vigor / Handling / Mobility;
- one permanent upgrade choice after the first objective;
- pixel-styled real 3D world;
- low-resolution world rendering with separately readable UI;
- landscape Android-first controls;
- Godot `4.7.2-stable` selected independently for this project;
- new implementation root: `shooter_game/`.

PROVISIONAL / MUST BE TUNED BY PROTOTYPE:
- camera FOV, pitch, distance and shoulder offset;
- movement and dodge values;
- recoil/spread/damage;
- enemy ranges/timing;
- internal render dimensions;
- exact touch-control sizes/positions;
- final setting names, palette and lore.

## Canonical visual reference

Primary original reference:
- `Shooter RPG - Pixel Visual Reference ORIGINAL.png`
- Google Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`

Working JPEG:
- `Shooter RPG - Pixel Visual Reference.jpg`
- Google Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`

The image provides visual/composition inspiration only. Visible names, quests, NPCs, locations, inventory values and monster details are placeholders.

## First vertical-slice loop

`GATE DISTRICT → OUTER ROAD → BROKEN CHECKPOINT → SENTRY FIGHT → REWARD → RETURN → CHOOSE UPGRADE → SAVE/LOAD`

Working place/enemy names remain replaceable.

Vertical Slice 001 proves:
- mobile movement/camera;
- aim/fire/reload;
- one enemy;
- physical cover;
- damage/healing;
- reward pickup;
- one persistent RPG upgrade;
- save/load;
- Android packaging/runtime;
- pixel visual coherence on phone.

## Scope guardrail

Build the smallest strong game first.

Do not add multiplayer, large social simulation, crafting trees, open-world streaming, procedural world generation, multiple weapon families, companions, vehicles or live-service architecture before the first shooter loop is proven.

## Current verification boundary

`SHOOTER_RPG_STANDALONE_IDENTITY_RECORDED = YES`
`PIXEL_REFERENCE_SAVED = YES`
`SHOOTER_RPG_FOUNDATION_DESIGN_001_LOCKED = YES`
`GODOT_4_7_2_SELECTED = YES`
`SHOOTER_GAME_PROJECT_ROOT_CREATED = NO`
`SHOOTER_RPG_SOURCE_IMPLEMENTED = NO`
`SHOOTER_RPG_BUILD_VERIFIED = NO`
`SHOOTER_RPG_PHONE_RUNTIME_VERIFIED = NO`
`SHOOTER_RPG_VISUAL_QUALITY_VERIFIED = NO`
`SHOOTER_RPG_PERFORMANCE_VERIFIED = NO`

Old-game verification does not change these states.

## Exact next bounded piece

`SHOOTER_RPG_PROJECT_SCAFFOLD_001`

Boundary:
1. create independent `shooter_game/` root;
2. create Godot 4.7.2 project configuration;
3. establish minimal scene/script/test/docs directories;
4. define only the input actions needed by the first slice;
5. add a boot scene that can launch without depending on inherited runtime folders;
6. add basic project/readme/version ownership;
7. add new Shooter-RPG-specific static/headless sanity verification where practical;
8. do not implement full combat, progression or world content in this slice;
9. do not import old-game source as a shortcut.

NEXT THING: `SHOOTER_RPG_PROJECT_SCAFFOLD_001`.
