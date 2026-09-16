# Unnamed Hunt RPG / Shooter RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / THIRD-PERSON PIXEL VISUAL PIVOT SELECTED / NEW VISUAL PROTOTYPE NEXT
Last reconciled: 2026-09-15
Branch: `shooter-rpg`

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. this index
5. `SHOOTER_RPG_VISUAL_DIRECTION.md`
6. `GAME_EXPERIENCE_BIBLE.md`
7. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`
8. root `README.md`
9. `docs/README.md`
10. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
11. newest relevant `docs/70_handoff/`
12. `game/README.md`
13. exact owning package/source/data/tests/static gates/workflow.

Fetch live branch HEAD before reading and re-check it afterward. Distinguish live documentation HEAD from the last source SHA actually proven by build evidence.

## Current visual/presentation authority

`SHOOTER_RPG_VISUAL_DIRECTION.md` owns the selected player-facing direction:
- third-person behind-character camera;
- shooter-style mobile movement/look;
- pixel-styled 3D presentation;
- physical exploration through compact connected spaces;
- third-person same-world combat presentation;
- safe-area responsive Android HUD;
- deep but deliberately bounded scope.

When older docs still specify aerial/isometric-primary exploration, mandatory first-person combat or smooth illustrated-realism as the final style, those presentation passages are superseded on `shooter-rpg`.

Do not rewrite historical verification documents to pretend the older build used the new direction.

## Visual reference authority

Saved reference:
- Google Drive file: `Shooter RPG - Pixel Visual Reference.jpg`;
- file ID: `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

It is a visual/composition reference. Visible names, quest text and exact content are placeholders unless separately approved.

## Architecture / design ownership

- visual/camera/HUD/presentation: `SHOOTER_RPG_VISUAL_DIRECTION.md`;
- player-facing experience: `GAME_EXPERIENCE_BIBLE.md`;
- technical/domain/presentation architecture: `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`;
- world/settlement legacy planning: older map/settlement docs remain reference material only where compatible;
- visual/model legacy docs: `VISUAL_WORLD_BEHAVIOR_BIBLE.md` and `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md` remain useful for reusable anatomy, world-building and asset-production principles, but conflicting camera/style passages are subordinate to the new visual authority;
- storage/performance: `PERFORMANCE_BUDGETS_AND_CAPS.md`;
- project continuation: `PROJECT_HANDOFF.md` and newest handoff under `docs/70_handoff/`;
- authoritative runtime truth: current source/tests/build/device evidence.

## Runtime map

Existing generic combat/status/outcome logic remains under `game/scripts/gameplay/combat/`; Monster-01 anatomy/content/attacks remain under `game/scripts/gameplay/monsters/monster_01/` unless live source has since moved them.

The new visual branch should reuse proven domain logic where compatible instead of rewriting combat/anatomy solely because presentation changed.

## Storage authority

`PERFORMANCE_BUDGETS_AND_CAPS.md` owns the hard game-storage rule:
- total player-required installed/runtime footprint ≤ `2,000,000,000` bytes;
- mandatory runtime downloads count;
- development-only source/repo/CI files do not count;
- APK/AAB size is package evidence, not full installed-footprint proof.

## Historical verified baseline

Branch creation source:
`worldlife-reference-docs@7e36c136f68f89980bb29b5c2b8fed3ae3e9c89c`.

Previously recorded full production-verified gameplay source:
`01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

Recorded production evidence:
- workflow `34880096112`: SUCCESS;
- job `104096962757`: SUCCESS;
- artifact `10362706279`;
- `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`;
- 57,536,941 bytes;
- SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

This does not prove the new visual direction.

## Current branch verification boundary

`SHOOTER_RPG_VISUAL_DIRECTION_DESIGNED = YES`
`REFERENCE_IMAGE_SAVED = YES`
`THIRD_PERSON_PIXEL_PROTOTYPE_IMPLEMENTED = NO`
`THIRD_PERSON_PIXEL_ANDROID_BUILD_VERIFIED = NO`
`THIRD_PERSON_PIXEL_PHONE_RUNTIME_VERIFIED = NO`
`THIRD_PERSON_PIXEL_VISUAL_QUALITY_VERIFIED = NO`
`THIRD_PERSON_PIXEL_PERFORMANCE_VERIFIED = NO`
`INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`

## Exact continuation

`SHOOTER_RPG_PIXEL_THIRD_PERSON_VISUAL_PROTOTYPE`.

First prove:
- one small settlement gate/street;
- third-person player controller;
- protected left-stick movement + independent right-side look;
- one NPC interaction;
- one short physical route;
- one monster/proxy;
- pixel rendering/art treatment;
- safe-area HUD;
- Android launch/runtime evidence.

Do not migrate the whole project before this slice is accepted visually and technically.
