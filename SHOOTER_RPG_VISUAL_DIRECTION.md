# Shooter RPG — Selected Visual / Play Presentation Direction

Status: SELECTED DESIGN AUTHORITY / VISUAL PIVOT / IMPLEMENTATION NOT YET CLAIMED
Last reconciled: 2026-09-15
Branch: `shooter-rpg`
Base branch at creation: `worldlife-reference-docs`
Base revision: `7e36c136f68f89980bb29b5c2b8fed3ae3e9c89c`

## Why this document exists

The previous presentation proposals did not meet the user's quality target. The user selected the third-person direction (previously discussed as option C) and then explicitly selected a pixel-style presentation based on the generated concept image.

This file is the current visual/presentation authority for the `shooter-rpg` branch. When an older document conflicts with this file about camera, visual style, exploration presentation, combat presentation, HUD layout, world readability, or asset appearance, this file wins until the older document is explicitly reconciled.

Historical implementation evidence remains historical evidence. This visual pivot does not retroactively change what older builds actually implemented or verified.

## User authorization / scope law

The assistant has broad permission to design, add, revise, and organize game systems, story flow, UI/UX, progression, relationships, NPC simulation, world structure, mining, factions, monsters, equipment, and supporting rules without stopping for normal design approval.

The governing scope constraint is:

**deep, coherent, expandable — not massive or overwhelming.**

Prefer a small number of strong, interconnected systems and locations over a huge quantity of shallow content.

## Canonical visual reference

Primary visual reference file saved in Google Drive:

- file: `Shooter RPG - Pixel Visual Reference.jpg`
- Drive file ID: `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`
- reference URL: `https://drive.google.com/file/d/1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b/view?usp=drivesdk`

The image is a **visual direction reference**, not a literal final screenshot and not proof that the game currently renders this way.

Names/text visible in the concept image such as `Kael`, `Valmira`, `Mara`, quest copy, item counts, button labels, and exact monster/settlement details are PLACEHOLDER CONCEPT CONTENT unless separately approved by current project authority.

## Selected player-facing direction

### 1. Perspective

Core gameplay uses a **third-person behind-the-character camera**.

The player should see:
- the playable character;
- nearby terrain and paths;
- settlement architecture;
- NPCs moving through the world;
- monsters at meaningful scale;
- interactable objects and environmental clues;
- enough forward visibility to make exploration and hunting readable.

This is not a top-down map game, not a fixed isometric game, and not a first-person-only game.

### 2. Controls

Retain the protected mobile shooter-style control philosophy:
- left virtual stick = direct continuous movement;
- right side of screen = independent camera/look input;
- movement and look can happen simultaneously;
- contextual interaction/action controls on the right;
- no forced joystick recenter/release behavior that breaks continuous control.

`shooter-rpg` refers primarily to this direct third-person control language. It does not require the game to become a gun-focused shooter.

### 3. Pixel presentation

The target is **pixel-styled third-person 3D**, not a flat collection of pre-rendered menu screens.

Preferred technical direction:
- real 3D world geometry, collision, characters, monsters, navigation and camera;
- deliberately low-resolution/pixel-authored textures and readable silhouettes;
- controlled low-resolution internal render where useful;
- crisp nearest-neighbor/upscale treatment where technically appropriate;
- pixel-consistent UI icons, frames and typography;
- restrained lighting and material complexity so the result looks intentional rather than like blurred 3D with a pixel filter;
- preserve depth, scale, animation, camera movement and spatial combat.

Exact internal rendering resolution, texture density, shadow method, outline method and pixel size remain prototype/profile decisions. Do not lock them without device evidence.

### 4. World traversal

The player physically moves through local spaces.

Do not reduce normal exploration to a button such as `Go to Forest` or `Go to Mine` followed by a teleport.

Locations should be connected through compact playable routes. Use world compression: lore distance may be longer than gameplay distance, but the playable path should contain meaningful terrain, encounters, decisions, resources, NPC movement, clues or hazards rather than empty travel time.

Fast travel can exist later as an earned convenience, but it must not replace the initial discovery/exploration experience.

### 5. Combat presentation

Combat remains in the same third-person world and camera family.

Do not switch core combat to a separate first-person scene merely because combat begins.

Combat should support the existing tactical/body-part identity through third-person interaction:
- target or cycle major anatomy parts;
- attack chosen anatomy;
- reposition;
- dodge/evade;
- defend/block where equipment permits;
- use cover or terrain when relevant;
- use items/tools;
- observe/scan behavior;
- withdraw/escape when rules permit.

The terrain used during exploration remains relevant in combat. A rock, bridge, ledge, tree, ruin, narrow path or building edge can become tactical geometry rather than decorative background.

Whether combat remains fully turn-based, uses tactical pause, or evolves toward another timing model must be decided from the current combat authority and prototype evidence. This document selects presentation, not an unverified combat rewrite.

### 6. Monster readability

Large monsters should feel physically present in the same world as the player.

The player may detect them through:
- distant silhouettes;
- tracks;
- broken vegetation;
- sound;
- carcasses;
- territorial marks;
- crystal traces;
- NPC reports;
- environmental damage.

Body-part damage/break/sever state must remain visually readable in the pixel style without requiring photoreal gore.

### 7. Settlement presentation

Settlements are playable spaces, not only menus.

The visual reference establishes the desired feeling:
- dense but readable main path;
- functional buildings recognizable by silhouette;
- market/service activity;
- vertical depth and distant landscape;
- NPCs physically present;
- exits/roads visibly leading toward hunt regions;
- monster/world threat visible beyond the safety of the settlement when appropriate.

First settlement scope should remain compact. A small excellent settlement is preferred over a large empty city.

### 8. NPC / SIM integration

NPCs should exist in the world with lightweight persistent simulation rather than AI-generated behavior being required at runtime.

Important NPC state may include:
- identity and stable ID;
- age/birth date;
- household/family links;
- profession/role;
- current location/activity;
- schedule;
- needs/priorities where useful;
- relationship state with the player;
- relationship state with selected other NPCs;
- meaningful memories/flags;
- injuries/status;
- settlement/faction membership.

NPC behavior should be state-driven and testable. Generative AI is not required for the phone build.

### 9. Time and aging

World time advances through play.

Examples:
- walking consumes time;
- conversations consume time;
- harvesting consumes time;
- travel consumes time;
- rest/sleep consumes time;
- hunts can consume hours or days.

The calendar supports schedules, time-sensitive events, monster activity patterns, settlement routines and long-term aging.

Do not arbitrarily compress short active exploration into story summaries. Long inactive periods may be simulated in coarse steps when required for performance, but results must remain consistent with authoritative world state.

### 10. HUD direction

Use the generated reference as composition inspiration, but simplify it for real phone ergonomics.

Preferred layout family:
- upper-left: player health/stamina and only essential status;
- upper-right: mini-map/compass plus time/date access;
- quest/objective panel: collapsible, not permanently consuming a large block;
- lower-left: small quick-item slots only when needed;
- lower-right: contextual mobile actions;
- interaction marker anchored to world objects/NPCs only when relevant;
- menus opened through a compact control, including the Diamond Watch concept where appropriate.

UI requirements:
- landscape-first;
- safe-area aware;
- no overlap with gameplay-critical character/monster readability;
- anchors/containers instead of hard-coded absolute placement;
- scalable across supported Android aspect ratios;
- touch targets large enough for actual fingers;
- no giant opaque panels during normal exploration;
- pixel-art styling without sacrificing legibility.

### 11. Diamond Watch integration

The recurring Diamond Watch concept may become the player's diegetic information device.

Potential functions:
- time/date;
- map;
- contracts;
- hunter journal/bestiary;
- notes;
- relationship/settlement information presented indirectly;
- mining licenses/permissions;
- faction notices;
- discovered locations.

It should be recognizable across projects without forcing every project to share the same universe.

### 12. Crystals / diamonds / mining world connection

The game may include energy-bearing crystal/diamond resources found:
- in geological veins/mines;
- in or around certain monsters depending on species/ecology;
- through rare environmental formations.

Mining rights/licenses, factions, survivor groups and protected settlements can create conflict and economy around the resource.

The system should connect hunting, settlement survival, mining, politics/economy and exploration rather than existing as isolated crafting currency.

### 13. Progression guardrail

Power growth must be earned and must not destroy the hunting ecosystem.

Level is only one progression layer. Other growth can come from:
- attributes;
- weapon mastery;
- equipment;
- monster knowledge;
- relationships/access;
- crafting/harvesting skill;
- tactical options.

A normal racial/species level cap may exist (human provisional target previously discussed around level 20), followed by difficult limit-break/ascension-style progression using rare conditions/materials. Exact cap and post-cap rules remain tunable and must not be treated as final balance until tested.

Failure at a difficult breakthrough should not erase core progression. Partial adaptation/knowledge/bonus progress is preferred over a total-loss punishment.

### 14. Relationship / consequence guardrail

Important choices should affect:
- people;
- relationships;
- settlement state;
- access to information/resources;
- future scenes;
- faction opinions;
- survival outcomes.

Most relationship numbers should remain internal. The player experiences consequences through changed behavior, dialogue, availability, assistance, conflict, memory and world state rather than through a visible `+5 friendship` notification.

## Pixel asset production principles

- readable silhouette first;
- strong value grouping;
- restrained texture noise;
- consistent pixel density by asset class;
- no smooth high-resolution material next to intentionally pixel-authored material without a deliberate transition;
- animation must remain readable at phone scale;
- NPC/monster identity should survive reduced detail;
- important equipment and anatomy require distinct silhouettes;
- distant environment detail can be cheaper than hero assets;
- use atlas/instancing/reuse strategies where they improve Android performance.

## Prototype before rewrite rule

Do not rewrite the entire game around this direction in one pass.

First build a bounded visual/play prototype proving:
1. one third-person player controller using the protected mobile movement/look scheme;
2. one small settlement street or gate area;
3. one NPC with interaction marker;
4. one route leading outside the settlement;
5. one visible monster or monster proxy at meaningful scale;
6. pixel rendering/art treatment;
7. safe-area responsive HUD based on this document;
8. stable Android launch and device performance evidence.

Only after that prototype is visually accepted should the broader world/content pipeline be migrated.

## Superseded visual assumptions

On branch `shooter-rpg`, the following older visual assumptions are NOT authoritative when they conflict with this file:
- aerial/isometric exploration as the primary core perspective;
- first-person combat as the mandatory combat presentation;
- illustrated-realism / smooth 3D as the selected final art style;
- UI designed around desktop-like fixed coordinates;
- teleport/menu travel as the normal exploration loop.

Relevant older documents remain useful for architecture, simulation, mechanics, performance, data and historical evidence, but their conflicting presentation sections are superseded.

## Verification language

Do not claim the visual pivot is implemented because this document exists.

Allowed states remain distinct:
- DESIGNED;
- IMPLEMENTED;
- STATIC_VERIFIED;
- HEADLESS_VERIFIED;
- ANDROID_BUILD_VERIFIED;
- PHONE_RUNTIME_VERIFIED;
- VISUAL_QUALITY_VERIFIED;
- PERFORMANCE_VERIFIED.

Current status of this visual direction: **DESIGNED / REFERENCE IMAGE SAVED / NOT YET IMPLEMENTATION-VERIFIED**.
