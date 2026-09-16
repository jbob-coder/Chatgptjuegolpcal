# START HERE — Unnamed Hunt RPG / Shooter RPG Branch — New Chat Bootstrap

Status: ACTIVE BOOTSTRAP / THIRD-PERSON PIXEL VISUAL PIVOT SELECTED / NEW VISUAL PROTOTYPE NEXT
Last reconciled: 2026-09-15

Android-targeted monster-hunting RPG. WorldLife RPG is abandoned and must not be used as the implementation base.

Active visual-development branch: `shooter-rpg`.

## Mandatory bootstrap

1. Confirm repository `jbob-coder/Chatgptjuegolpcal` and branch `shooter-rpg`.
2. Fetch live branch HEAD and record it.
3. Read at that same revision, in order:
   1. `EVOLVE_ALIGNMENT.md`;
   2. `PROJECT_HANDOFF.md`;
   3. `START_HERE_NEW_CHAT.md`;
   4. `DOCUMENTATION_INDEX.md`;
   5. `SHOOTER_RPG_VISUAL_DIRECTION.md`;
   6. `GAME_EXPERIENCE_BIBLE.md`;
   7. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`;
   8. root `README.md`;
   9. newest relevant `docs/70_handoff/`;
   10. exact owning source/tests/workflows for the bounded task.
4. Re-check HEAD after reading; restart relevant reconstruction if it changed.
5. Current source/tests/build/device evidence outranks Markdown labels and old chat memory.
6. Conflict order: current explicit user instruction → current source/tests/build/device evidence → `SHOOTER_RPG_VISUAL_DIRECTION.md` for visual/presentation decisions → EVOLVE/HANDOFF → narrow owner → package docs → older handoffs/chat.
7. Work one bounded piece at a time.
8. Never claim a visual/runtime state is implemented or phone-verified only because design documents exist.
9. Preserve reusable proven domain logic unless current evidence shows it is incompatible with the new presentation.

## Selected presentation direction

The branch target is:
- third-person behind-the-character gameplay;
- shooter-style mobile control language;
- direct left-stick movement;
- independent right-side look;
- simultaneous movement/look;
- pixel-styled 3D world and UI;
- physical exploration through compact connected spaces;
- combat in the same third-person spatial world;
- Android-first safe-area responsive HUD;
- small, coherent, expandable scope rather than a massive open world.

Older aerial/isometric-primary and mandatory first-person-combat guidance is superseded where it conflicts with `SHOOTER_RPG_VISUAL_DIRECTION.md`.

## Visual reference

Saved Google Drive reference:
- `Shooter RPG - Pixel Visual Reference.jpg`;
- file ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

Treat visible concept-image names/text as placeholders unless separately approved.

## Development law

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → COMMIT → READ BACK → CONTINUE`.

Use normal fast-forward updates only. Never weaken gates. Never convert CI/headless/APK evidence into phone, sustained-performance, installed-footprint or visual-quality proof.

## Historical baseline — evidence only

The `shooter-rpg` branch was created from `worldlife-reference-docs` revision:
`7e36c136f68f89980bb29b5c2b8fed3ae3e9c89c`.

Previously recorded fully production-verified source:
`01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

Recorded production workflow:
- workflow `34880096112`: SUCCESS;
- job `104096962757`: SUCCESS;
- artifact `10362706279`;
- size `57,536,941` bytes;
- SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

That evidence does not validate the new third-person pixel direction.

## Storage law

Total player-required installed/runtime game footprint cap remains:
`2 GB = 2,000,000,000 bytes`.

Required runtime downloads count. Development-only repository/CI/source files do not. Package size and installed footprint remain separate evidence layers.

## Current branch verification boundary

`SHOOTER_RPG_VISUAL_DIRECTION_DESIGNED = YES`
`REFERENCE_IMAGE_SAVED = YES`
`THIRD_PERSON_PIXEL_PROTOTYPE_IMPLEMENTED = NO`
`THIRD_PERSON_PIXEL_ANDROID_BUILD_VERIFIED = NO`
`THIRD_PERSON_PIXEL_PHONE_RUNTIME_VERIFIED = NO`
`THIRD_PERSON_PIXEL_VISUAL_QUALITY_VERIFIED = NO`
`THIRD_PERSON_PIXEL_PERFORMANCE_VERIFIED = NO`

## Current bounded piece

`SHOOTER_RPG_PIXEL_THIRD_PERSON_VISUAL_PROTOTYPE`.

Boundary:
- one small settlement gate/street;
- one third-person player controller;
- left-stick move + independent right-side look;
- one NPC interaction;
- one short route outside town;
- one monster/proxy;
- pixel-style rendering/art treatment;
- safe-area responsive HUD based on the selected concept direction;
- Android launch/runtime verification;
- no whole-project rewrite before this slice is visually and technically accepted.

A new chat is bootstrapped only after current branch state and exact owners are reconstructed from live files.
