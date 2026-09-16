# Pixel RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / PIXEL RPG AUTHORITY / THIRD-PERSON VISUAL PROTOTYPE NEXT
Last reconciled: 2026-09-16
Branch: `pixel-rpg`

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. this index
5. `PIXEL_RPG_VISUAL_DIRECTION.md`
6. `GAME_EXPERIENCE_BIBLE.md`
7. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`
8. root `README.md`
9. `docs/README.md`
10. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
11. newest relevant Pixel RPG handoff under `docs/70_handoff/`
12. `game/README.md`
13. exact owning package/source/data/tests/static gates/workflow.

Fetch live branch HEAD before reading and re-check it afterward. Keep documentation HEAD distinct from the last source SHA actually proven by build evidence.

## Current visual/presentation authority

`PIXEL_RPG_VISUAL_DIRECTION.md` owns:
- third-person behind-character camera;
- pixel-styled 3D presentation;
- Android shooter-style move/look control layout without turning the game into a firearm shooter;
- physical exploration through compact connected spaces;
- same-world third-person monster combat;
- safe-area responsive HUD;
- bounded, expandable world scope.

Conflicting older aerial/isometric-primary, mandatory first-person-combat, smooth illustrated-realism, and standalone Shooter RPG passages are subordinate for current presentation decisions.

Historical documents remain historical evidence; do not rewrite them to claim an older build used Pixel RPG presentation.

## Visual reference authority

Google Drive:
- `Pixel RPG - Visual Reference ORIGINAL.png` — ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- `Pixel RPG - Visual Reference.jpg` — ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

The image is a direction/composition reference. Visible names, quest text, counts and labels are placeholders unless separately approved.

## Architecture/design ownership

- visual/camera/HUD/presentation: `PIXEL_RPG_VISUAL_DIRECTION.md`;
- player-facing experience: `GAME_EXPERIENCE_BIBLE.md`;
- technical/domain/presentation architecture: `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`;
- storage/performance: `PERFORMANCE_BUDGETS_AND_CAPS.md`;
- gameplay contracts: `docs/20_gameplay/`;
- world/settlement references: `docs/10_world/` plus root settlement/world guides where compatible;
- continuation: `PROJECT_HANDOFF.md` + newest Pixel RPG handoff;
- runtime truth: current source/tests/build/device evidence.

## Runtime map

Existing monster-hunting runtime remains primarily under `game/`.

Useful domain areas include:
- generic combat/status/outcome under `game/scripts/gameplay/combat/`;
- encounter logic under `game/scripts/gameplay/encounter/`;
- Monster-01 anatomy/content under `game/scripts/gameplay/monsters/monster_01/`;
- tracking under `game/scripts/gameplay/tracking/`;
- presentation under `game/scripts/presentation/`;
- tests under `game/tests/` and `tests/quality/hunt01/`.

Reuse compatible domain logic instead of rewriting it solely because presentation changed.

## Shooter separation

The later standalone first-person Shooter RPG is not Pixel RPG authority. Its `shooter_game/` runtime, first-person 115° camera, firearm-first progression, wall-jump implementation and shooter APK evidence must not be merged into Pixel RPG unless the user explicitly chooses a specific reusable element later.

## Storage authority

Hard player-required installed/runtime footprint: ≤ `2,000,000,000` bytes.

Required runtime downloads count. Development-only repo/source/CI files do not. APK/AAB size is package evidence only.

## Historical verified baseline

Previously recorded full production-verified monster-hunting source:
`01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

Workflow `34880096112`: SUCCESS.
Job `104096962757`: SUCCESS.
Artifact `10362706279`, 57,536,941 bytes, SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

This does not prove the current Pixel RPG presentation.

## Current verification boundary

`PIXEL_RPG_VISUAL_DIRECTION_DESIGNED = YES`
`PIXEL_RPG_REFERENCE_IMAGE_SAVED = YES`
`PIXEL_RPG_THIRD_PERSON_PROTOTYPE_IMPLEMENTED = NO`
`PIXEL_RPG_ANDROID_BUILD_VERIFIED = NO`
`PIXEL_RPG_PHONE_RUNTIME_VERIFIED = NO`
`PIXEL_RPG_VISUAL_QUALITY_VERIFIED = NO`
`PIXEL_RPG_PERFORMANCE_VERIFIED = NO`

## Exact continuation

`PIXEL_RPG_THIRD_PERSON_VISUAL_PROTOTYPE_001`.

First prove one small settlement gate/street, third-person controller, mobile move/look, one NPC interaction, short route, one monster/proxy, coherent pixel treatment, responsive HUD, and available Android build/runtime evidence before broad migration.
