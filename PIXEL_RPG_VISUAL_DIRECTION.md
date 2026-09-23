# Pixel RPG — Selected Visual / Play Presentation Direction

Status: CREATOR-AUTHORITATIVE FIRST-PERSON PIXEL RPG DIRECTION / IMPLEMENTATION CHECKPOINT IN PROGRESS
Last reconciled: 2026-09-23
Branch: `pixel-rpg`
Recovery source: `7ac7e84a6b0e8249ea8c869cf96171b834b2363c`

## Creator supersession — 2026-09-23

The creator explicitly changed Pixel RPG exploration presentation to **FIRST-PERSON**. This supersedes every older Pixel RPG statement that makes third-person exploration/camera authoritative.

Historical third-person source, tests, handoffs and APKs remain evidence of what previously existed; they are not retroactively rewritten as first-person evidence.

This first-person decision does **not** import the abandoned standalone Shooter RPG. Firearm-first identity, wall-jump systems, Shooter-specific package/runtime assumptions and its old 115° HFOV contract remain non-authoritative.

The migration rule is presentation-first and minimal: preserve the current Pixel RPG Hunter/controller, collision, world, HUD, targeting, deterministic domain and save/state authorities; bypass the SpringArm chase offset in the active camera path rather than rewriting gameplay.

## Purpose

This file is the current visual and player-facing presentation authority for the Pixel RPG branch.

The separate standalone first-person Shooter RPG direction is rejected for this project and must not be imported into Pixel RPG.

When older documents conflict with this file about camera, visual style, exploration presentation, combat presentation, HUD layout, world readability, or asset appearance, this file wins until the older document is explicitly reconciled.

Historical implementation/build evidence remains historical evidence. A presentation pivot does not retroactively change what older builds actually implemented or verified.

## Core identity

Pixel RPG is an Android-first first-person monster-hunting RPG with:
- pixel-styled 3D presentation;
- a first-person exploration camera with no third-person body obstructing normal view;
- direct mobile movement and camera controls;
- physical exploration through compact connected spaces;
- body-part-focused monster combat;
- persistent NPC/world consequences;
- deterministic/testable simulation where practical.

The game should be deep, coherent and expandable, but not massive or overwhelming.

## Canonical visual references

Google Drive references:
- `Pixel RPG - Visual Reference ORIGINAL.png` — file ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- `Pixel RPG - Visual Reference.jpg` — file ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

The concept image defines direction/composition only. Names and exact text visible in it, including `Kael`, `Valmira`, `Mara`, quest wording, counts and labels, are placeholders unless separately approved.

## Perspective

Core exploration gameplay uses a first-person eye-height camera.

The player should be able to read:
- the player character and equipment;
- roads and terrain;
- settlement architecture;
- NPC movement;
- monster scale and anatomy;
- environmental clues;
- interactable objects;
- usable tactical terrain.

Pixel RPG uses first-person exploration but is not the abandoned standalone Shooter RPG and must not inherit that project's firearm/wall-jump identity or old camera constants.

## Controls

Mobile control law:
- left virtual stick = direct continuous movement;
- right side of screen = independent camera/look;
- movement and look can happen simultaneously;
- contextual actions live on the right side;
- landscape-first Android layout;
- no forced joystick release/center/rebase that interrupts continuous control.

First-person FOV, pitch limits, eye height and sensitivity remain prototype values until verified on device. Normal exploration must not depend on a SpringArm chase distance.

## Pixel presentation

Target: pixel-styled real 3D, not flat menus and not smooth 3D with a cosmetic pixel filter.

Preferred technical direction:
- real 3D world geometry/collision/navigation;
- pixel-authored or pixel-consistent textures;
- deliberate low-resolution internal rendering where useful;
- crisp nearest-neighbor or equivalent upscale where appropriate;
- restrained lighting/material complexity;
- strong silhouettes/value grouping;
- pixel-consistent UI icons, frames and typography;
- animation that remains readable on a phone screen.

Exact render scale, texture density, shadows, outlines and pixel size are prototype/profile decisions.

## World traversal

Normal exploration is physical.

Do not reduce the game to `Go to Forest`, `Go to Mine` or similar teleport buttons.

Use compact connected routes and world compression: lore distance can be larger than gameplay distance, but traversed space should contain meaningful terrain, NPC activity, resources, clues, hazards, decisions or encounters.

Fast travel may exist later as earned convenience; it must not replace initial discovery.

## Combat presentation

Combat remains in the same physical world. First-person presentation should remain continuous unless a later explicit creator directive authorizes another camera mode.

Do not switch combat into a separate legacy encounter scene merely to reuse older presentation code.

Preserve the monster-hunting identity:
- select/target meaningful anatomy;
- attack chosen body parts;
- reposition;
- dodge/evade;
- defend/block where equipment permits;
- use cover/terrain where relevant;
- use tools/items;
- observe/inspect behavior;
- withdraw when legal.

Terrain used during exploration remains tactically relevant.

Combat timing remains an implementation/prototype decision: existing deterministic tactical rules should be reused where compatible rather than discarded without evidence.

## Monster readability and harvesting

Monsters must be readable at phone scale.

Body-part damage, break and sever state must remain visible in the pixel style.

Harvest quantity/quality remains connected to authoritative body state, damage and extraction decisions. The visual style must not sever that mechanical relationship.

## Settlement presentation

Settlements are playable spaces, not only menus.

Desired composition:
- readable main route;
- functional buildings identified by silhouette;
- NPCs physically present;
- compact service/market activity;
- exits physically connecting to hunt routes;
- layered landscape depth;
- world danger visible beyond settlement safety when appropriate.

Prefer a small excellent settlement to a large empty city.

## NPC simulation / relationships

Important NPCs can preserve:
- stable identity;
- age/birth date;
- family/household links;
- profession/role;
- location/activity/schedule;
- selected needs/priorities;
- player relationship state;
- selected NPC-to-NPC relationship state;
- meaningful memories/flags;
- injury/status;
- settlement/faction membership.

Runtime generative AI is not required. Behavior should be state-driven, deterministic where practical and testable.

## Time and aging

Time advances through actual play/actions:
- movement/travel;
- conversations;
- harvesting;
- rest/sleep;
- hunts;
- crafting/processing where appropriate.

Schedules, calendar, aging and long-term world changes must derive from authoritative world time rather than arbitrary story skips.

## HUD direction

Use the concept image as composition inspiration, not as a literal screen layout.

Preferred zoning:
- upper-left: essential health/stamina/status;
- upper-right: compact map/compass plus time/date access;
- objective panel: collapsible;
- lower-left: quick items only when useful;
- lower-right: contextual touch actions;
- world markers only when relevant;
- Diamond Watch can host deeper information screens.

HUD requirements:
- safe-area aware;
- scalable across Android aspect ratios;
- large enough touch targets;
- minimal obstruction of player/monster visibility;
- no fixed-coordinate overlap traps;
- pixel-art styling without sacrificing legibility.

## Diamond Watch / world systems

Gradual supporting targets may include:
- time/date;
- map;
- contracts;
- hunter journal/bestiary;
- notes;
- relationship/settlement information;
- mining permissions/licenses;
- faction notices;
- discovered locations.

Energy-bearing crystal/diamond resources can connect mining, monsters, settlements, factions, economy and exploration. They should not exist only as an isolated crafting currency.

## Progression guardrail

Level is only one progression layer. Growth can also come from:
- attributes;
- weapon mastery;
- equipment;
- monster knowledge;
- relationships/access;
- crafting/harvesting skill;
- tactical options.

A normal human/species cap around level 20 remains provisional, not final balance. Difficult post-cap breakthroughs may require rare conditions/materials. Failure should prefer partial adaptation/knowledge/progress rather than total-loss punishment.

## Prototype-before-rewrite law

Do not convert the entire project at once.

First prove one bounded Pixel RPG prototype:
1. first-person presentation using the existing player controller;
2. one small settlement street/gate;
3. one NPC interaction target;
4. one short physical route outside settlement;
5. one visible monster/proxy at meaningful scale;
6. coherent pixel rendering/art treatment;
7. responsive safe-area HUD;
8. Android launch/build/runtime evidence;
9. user visual acceptance before broad migration.

## Superseded assumptions

On `pixel-rpg`, conflicting older assumptions are not authoritative:
- aerial/isometric exploration as the required primary camera;
- old mandatory separate first-person combat scenes/legacy coordinate presentation;
- smooth illustrated-realism as the selected final style;
- standalone first-person Shooter RPG mechanics/identity;
- teleport/menu travel as the normal exploration loop.

## Verification language

Keep these states separate:
- DESIGNED;
- IMPLEMENTED;
- STATIC_VERIFIED;
- HEADLESS_VERIFIED;
- ANDROID_BUILD_VERIFIED;
- PHONE_RUNTIME_VERIFIED;
- VISUAL_QUALITY_VERIFIED;
- PERFORMANCE_VERIFIED.

Current status: DESIGNED / VISUAL REFERENCE SAVED / NOT YET PIXEL-PROTOTYPE IMPLEMENTATION-VERIFIED.
