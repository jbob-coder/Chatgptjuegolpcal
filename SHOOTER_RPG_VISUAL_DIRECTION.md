# Shooter RPG — Visual Direction

Status: SELECTED VISUAL AUTHORITY / STANDALONE NEW GAME / IMPLEMENTATION NOT YET CLAIMED
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Project separation

Shooter RPG is a new standalone game.

This visual direction is not a re-skin or migration of Unnamed Hunt RPG or any previous project. Old combat, monster, mining, progression, NPC, save and world rules do not carry into this game automatically.

## Canonical visual reference

Primary reference:
- `Shooter RPG - Pixel Visual Reference ORIGINAL.png`
- Google Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`

Working JPEG:
- Google Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`

The reference is visual inspiration, not canonical lore or a literal implementation screenshot.

Visible names such as `Kael`, `Valmira`, `Mara`, quest text, item quantities, monster identity and exact button labels are placeholders.

## Selected visual language

Current direction:
- pixel-styled 3D world;
- third-person behind-the-character presentation based on the selected Option C/reference composition;
- readable player silhouette;
- strong depth and environmental scale;
- crisp pixel treatment rather than blurry low-resolution output;
- pixel-consistent HUD/icons/typography;
- intentionally simplified materials and lighting;
- landscape phone composition;
- dense, readable environments rather than huge empty spaces.

The game should feel like a modern 3D game deliberately authored through a pixel-art lens, not like a smooth 3D game with a cheap full-screen pixel filter.

## Camera target

Initial prototype target:
- third-person follow camera;
- player visible at all times during normal gameplay;
- enough forward visibility for navigation and shooting;
- camera collision so walls do not hide the player;
- mobile-friendly look sensitivity;
- optional aim/ADS camera shift can be evaluated later;
- exact FOV, distance, pitch, shoulder offset and zoom remain prototype variables.

No previous game's first-person or aerial camera rules apply.

## Shooter readability

Because this is Shooter RPG, the visual prototype must reserve clear screen space for:
- aiming reticle;
- weapon state/ammo if the selected weapon system needs it;
- enemy/threat readability;
- hit feedback;
- movement and cover readability;
- interaction prompts;
- health/status information;
- RPG information only when it matters.

Do not cover the center of the screen with oversized quest panels or permanent menus.

## Mobile control composition

Initial control layout to prototype:
- left side: movement joystick;
- right side: free camera/aim surface;
- contextual right-side action buttons;
- dedicated fire/attack input if required by the selected combat model;
- aim/ADS, reload, interact, dodge/jump/crouch only if the final first-slice design needs them;
- all touch targets safe-area aware and thumb reachable.

Do not lock every button before the core combat loop is selected.

## Pixel rendering principles

Preferred direction:
- real 3D geometry and collision;
- low-resolution/pixel-authored textures or controlled texture density;
- nearest-neighbor treatment where appropriate;
- coherent pixel density across characters, props and world surfaces;
- restrained anti-aliasing that does not smear the intended pixel structure;
- low-resolution internal rendering may be tested, but only if it remains legible on the target phone;
- lighting should preserve broad shapes and silhouettes;
- particles/VFX should use a compatible pixel scale.

Exact internal resolution, render scale and texture budgets remain unverified until device testing.

## Environment direction from the reference

The image supports these visual ideas without making them mandatory lore:
- layered settlement streets;
- practical architecture;
- strong foreground/midground/background composition;
- mountain/forest horizon depth;
- readable roads and landmarks;
- NPC activity;
- a world beyond the immediate hub;
- large threats visible at distance where appropriate.

Those are composition principles, not proof that Shooter RPG must be a monster-hunting game.

## HUD direction

Use the reference for composition, then simplify for actual phone play.

Candidate HUD family:
- upper-left: health and only essential player state;
- upper-right: compact navigation/minimap if the game design needs it;
- center: clean aiming space;
- lower-left: movement area and optional quick items;
- lower-right: shooting/aiming/actions;
- objectives collapse when not actively needed;
- menus never permanently obscure core play space.

Avoid:
- large opaque panels;
- tiny PC-sized touch controls;
- hard-coded coordinates that overlap on different aspect ratios;
- excessive ornamental borders;
- unreadable micro-pixel fonts.

## Asset principles

- silhouette first;
- clear weapon profile;
- enemies recognizable quickly;
- strong value separation from background;
- modular/reusable environment kits;
- consistent pixel density;
- animation readable at phone scale;
- distant detail cheaper than hero assets;
- use atlases/instancing/LOD when useful after profiling.

## What this document does NOT decide yet

Still open:
- setting and lore;
- weapon families;
- firearm vs fantasy projectile mix;
- enemy types;
- combat lethality;
- RPG stat/progression structure;
- inventory depth;
- quest structure;
- NPC simulation depth;
- open-world vs hub/mission structure;
- online/multiplayer;
- final engine and performance budgets.

Those decisions must be made for Shooter RPG itself, not imported from previous games.

## First visual proof

After the foundation design is approved internally, the first bounded prototype should prove only:
1. a third-person player;
2. movement and camera/aim on mobile;
3. one weapon/shooting interaction;
4. one target/enemy proxy;
5. one compact environment inspired by the reference;
6. pixel rendering coherence;
7. HUD safe-area behavior;
8. stable Android launch and acceptable frame pacing.

Current status: **DESIGNED / REFERENCE SAVED / NOT IMPLEMENTED / NOT BUILD-VERIFIED / NOT PHONE-VERIFIED**.
