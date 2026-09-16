# EVOLVE ALIGNMENT — Unnamed Hunt RPG / Shooter RPG Branch

Status: ACTIVE DESIGN PIVOT / THIRD-PERSON PIXEL DIRECTION SELECTED / HISTORICAL HUNT-01 ANDROID BUILD EVIDENCE PRESERVED / NEW VISUAL PROTOTYPE NOT YET VERIFIED
Last reconciled: 2026-09-15
Branch: `shooter-rpg`

## Operating law

The game is the objective. Documentation preserves ownership, evidence and continuation.

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → CONTINUE`.

Current source/tests/build/device evidence outranks chat memory and older handoffs.

## Current user direction

The user rejected the current visual quality and selected a new presentation direction:
- third-person behind-the-character gameplay;
- shooter-style mobile movement/look controls;
- pixel-style visual presentation;
- physical exploration rather than menu-only travel;
- combat in the same third-person spatial world;
- small, dense, expandable world scope rather than a massive open world.

Primary authority: `SHOOTER_RPG_VISUAL_DIRECTION.md`.

Primary visual reference is saved in Google Drive as `Shooter RPG - Pixel Visual Reference.jpg`, file ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

The visible names/text in the concept image are placeholders unless separately approved.

## Autonomous design authorization

The assistant may make normal game-development/design decisions involving gameplay, UI/UX, world structure, story flow, relationships, NPC simulation, mining, factions, progression, equipment, monsters, economy and supporting rules without pausing for approval.

Constraint: **deep, coherent, expandable — not massive or overwhelming.**

## Selected presentation law

Core presentation target:
- third-person player-visible camera;
- direct continuous left-stick movement;
- independent right-side look;
- simultaneous movement/look;
- landscape Android-first ergonomics;
- pixel-styled 3D world and UI;
- responsive safe-area-aware HUD;
- exploration and combat share the same spatial world/perspective family.

Older aerial/isometric-primary and mandatory first-person-combat guidance is superseded on `shooter-rpg` where it conflicts with the new visual authority.

## User-selected storage law

`TOTAL_PLAYER_REQUIRED_GAME_STORAGE_CAP = 2 GB`
`TOTAL_PLAYER_REQUIRED_GAME_STORAGE_CAP_BYTES = 2000000000`
`TOTAL_GAME_STORAGE_CAP_SELECTED = YES`

The complete player-required installed/runtime base-game footprint must stay at or below 2,000,000,000 bytes. Mandatory split/downloaded runtime content counts toward the same ceiling. Development-only source masters, repository history, CI artifacts and debug-only files that never ship do not count. APK/AAB size is necessary package evidence but is not proof of installed footprint.

## Protected controls foundation

The existing protected shooter-style control principle remains useful:
- direct continuous analog left-stick movement;
- independent right-side look;
- simultaneous movement/look;
- no forced joystick release/center/rebase.

Historical first-person values such as ~115° FOV are not automatically authoritative for the new third-person camera. Third-person FOV, pitch, distance, shoulder offset and collision behavior must be re-prototyped.

## Historical verified production baseline

The branch was created from `worldlife-reference-docs` revision:
`7e36c136f68f89980bb29b5c2b8fed3ae3e9c89c`.

The latest previously recorded fully production-verified gameplay source remains:
`01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

Recorded production verification:
- workflow `34880096112` — SUCCESS;
- job `104096962757` — SUCCESS;
- artifact ID `10362706279`;
- artifact name `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`;
- artifact size `57,536,941` bytes;
- SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

That evidence proves the older production pipeline/build at that revision. It does **not** prove the new pixel third-person direction works or looks good on a phone.

## Existing gameplay systems worth preserving unless later evidence rejects them

- deterministic combat foundation;
- body-part/anatomy ownership;
- break/sever/harvest design direction;
- monster wound/status handling;
- persistent world-state principles;
- stable IDs/data-driven content;
- Android-first storage/performance constraints;
- physical tracking/engagement foundation where reusable;
- verification-only autorun/test infrastructure.

Presentation may change without discarding mechanically useful domain logic.

## New design additions to integrate gradually

- Diamond Watch as diegetic information interface;
- crystal/diamond mining and energy economy;
- mining licenses and territorial permissions;
- survivor groups/factions and small defended settlements;
- persistent NPC relationships and selected memories;
- NPC-to-NPC relationships;
- schedules, aging and generational continuity;
- difficult decisions affecting characters and settlements;
- multi-layer progression with earned post-cap breakthroughs;
- hunter journal/bestiary knowledge progression.

These are design targets, not implementation claims.

## Current verification boundary

`SHOOTER_RPG_VISUAL_DIRECTION_DESIGNED = YES`
`REFERENCE_IMAGE_SAVED = YES`
`THIRD_PERSON_PIXEL_PROTOTYPE_IMPLEMENTED = NO`
`THIRD_PERSON_PIXEL_PROTOTYPE_ANDROID_BUILD_VERIFIED = NO`
`THIRD_PERSON_PIXEL_PROTOTYPE_PHONE_RUNTIME_VERIFIED = NO`
`THIRD_PERSON_PIXEL_VISUAL_QUALITY_VERIFIED = NO`
`THIRD_PERSON_PIXEL_PERFORMANCE_VERIFIED = NO`
`INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`

Historical Hunt-01 verification remains historical evidence only.

## Exact next bounded piece for this branch

`SHOOTER_RPG_PIXEL_THIRD_PERSON_VISUAL_PROTOTYPE`

Required boundary:
1. do not rewrite the entire game;
2. reuse authoritative gameplay/domain code where it remains compatible;
3. prototype one small settlement gate/street area;
4. add one controllable third-person player using the protected mobile movement/look scheme;
5. add one NPC interaction target;
6. add one short physical route outside the settlement;
7. add one monster/proxy at meaningful scale;
8. apply the selected pixel rendering/art treatment;
9. build a responsive safe-area HUD inspired by the saved visual reference;
10. prove Android launch/runtime before broader migration;
11. record visual/runtime/performance evidence separately.

## Quality gate

The new direction is not accepted merely because it compiles.

Promotion requires evidence for:
- launch reliability;
- control feel;
- camera readability;
- no HUD overlap;
- pixel-style coherence;
- monster/player readability;
- Android performance;
- user visual acceptance.

NEXT THING FOR THIS BRANCH: `SHOOTER_RPG_PIXEL_THIRD_PERSON_VISUAL_PROTOTYPE`.
