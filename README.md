# Unnamed Hunt RPG — Shooter RPG Visual Branch

Status: ACTIVE DESIGN/DEVELOPMENT BRANCH / THIRD-PERSON PIXEL DIRECTION SELECTED / NEW VISUAL PROTOTYPE NEXT
Last reconciled: 2026-09-15
Branch: `shooter-rpg`

Android-targeted monster-hunting RPG. WorldLife RPG is abandoned and is not the implementation base.

## Selected game presentation

The current player-facing target is:

**third-person pixel-styled 3D monster-hunting RPG with shooter-style mobile controls, physical exploration, persistent NPC/world consequences and body-part combat.**

Primary visual authority: `SHOOTER_RPG_VISUAL_DIRECTION.md`.

Saved concept reference:
- `Shooter RPG - Pixel Visual Reference.jpg`;
- Google Drive file ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

Names/text visible in that generated image are placeholders unless separately approved.

## Main loop target

`SETTLEMENT → PREPARE → PHYSICALLY LEAVE SETTLEMENT → EXPLORE/TRACK → OBSERVE/APPROACH → THIRD-PERSON SPATIAL COMBAT → TARGET ANATOMY → BREAK/SEVER/DEFEAT/ESCAPE → HARVEST → RETURN → NPC/SETTLEMENT CONSEQUENCES → PROCESS/CRAFT/EQUIP/LEARN → NEXT HUNT`

Normal traversal should not collapse into simple location buttons. Use compact connected spaces and world compression rather than a huge empty open world.

## Controls target

- landscape Android-first;
- left virtual stick = direct continuous movement;
- right side = independent camera/look;
- simultaneous movement/look;
- contextual action controls;
- safe-area responsive HUD.

Historical first-person camera values are not automatically valid for the new third-person camera and must be re-prototyped.

## Art target

Pixel-styled third-person 3D:
- real spatial world/collision/camera;
- pixel-authored/pixel-consistent textures and UI;
- controlled low-resolution rendering/upscale treatment where useful;
- strong silhouettes and readable monster anatomy;
- intentional lighting/material simplification;
- not a generic smooth 3D scene with a cosmetic pixel filter.

## Supporting systems being designed

Gradual, bounded additions include:
- Diamond Watch information device;
- hunter journal/bestiary knowledge progression;
- persistent NPC relationships/memories;
- NPC-to-NPC relationships;
- schedules, aging and generational continuity;
- difficult decisions affecting people and settlements;
- crystal/diamond mining and energy economy;
- mining licenses and factions/survivor settlements;
- multi-layer progression with difficult post-cap breakthroughs.

These are design targets, not claims of completed implementation.

## Hard storage ceiling

The user-selected total player-required game footprint cap remains exactly:
`2 GB = 2,000,000,000 bytes`.

Required split/downloaded runtime content counts toward the same cap. Development-only source/repository/CI files do not. Package-size evidence does not by itself prove installed-footprint compliance.

## Historical production evidence

This branch was created from:
`worldlife-reference-docs@7e36c136f68f89980bb29b5c2b8fed3ae3e9c89c`.

Previously recorded full production-verified gameplay source:
`01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

Recorded workflow `34880096112`: SUCCESS.
Recorded job `104096962757`: SUCCESS.
Recorded artifact `10362706279`: 57,536,941 bytes, SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

That evidence applies to the older presentation/build state. It does not prove the new third-person pixel direction is implemented, visually accepted or phone-verified.

## Current bounded piece

`SHOOTER_RPG_PIXEL_THIRD_PERSON_VISUAL_PROTOTYPE`.

First prove one bounded slice:
- one small settlement gate/street;
- one controllable third-person player;
- left-stick movement + right-side look;
- one NPC interaction;
- one short route outside town;
- one monster/proxy;
- pixel rendering/art treatment;
- responsive safe-area HUD;
- Android launch/runtime evidence.

Do not rewrite the entire game before this slice is accepted.

For continuation, begin with `START_HERE_NEW_CHAT.md` and reconstruct the live branch before implementation.
