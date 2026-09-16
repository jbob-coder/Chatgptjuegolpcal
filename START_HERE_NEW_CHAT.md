# START HERE — Pixel RPG — New Chat Bootstrap

Status: ACTIVE PIXEL RPG BOOTSTRAP / THIRD-PERSON PIXEL DIRECTION / FIRST VISUAL PROTOTYPE NEXT
Last reconciled: 2026-09-16

Repository: `jbob-coder/Chatgptjuegolpcal`
Active branch: `pixel-rpg`

WorldLife is abandoned. The later standalone first-person Shooter RPG is also not the implementation/design authority for Pixel RPG.

## Mandatory bootstrap

1. Fetch live HEAD of `pixel-rpg` and record it.
2. Read, at that same revision:
   1. `EVOLVE_ALIGNMENT.md`;
   2. `PROJECT_HANDOFF.md`;
   3. `START_HERE_NEW_CHAT.md`;
   4. `DOCUMENTATION_INDEX.md`;
   5. `PIXEL_RPG_VISUAL_DIRECTION.md`;
   6. `GAME_EXPERIENCE_BIBLE.md`;
   7. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`;
   8. root `README.md`;
   9. newest relevant Pixel RPG handoff under `docs/70_handoff/`;
   10. `game/README.md`;
   11. exact owning source/tests/workflows for the bounded task.
3. Re-check HEAD after reconstruction. If it changed materially, do not mix revisions.
4. Current source/tests/build/device evidence outranks Markdown labels and chat memory.
5. Conflict order: current explicit user instruction → current source/tests/build/device evidence → `PIXEL_RPG_VISUAL_DIRECTION.md` for presentation → EVOLVE/HANDOFF → narrow owner → package docs → older handoffs/chat.
6. Work one bounded piece at a time.
7. Never convert design documentation or CI/build success into phone/visual/performance proof.
8. Preserve reusable monster-hunting domain logic unless current evidence shows it is incompatible.

## Active identity

Pixel RPG target:
- third-person behind-character gameplay;
- pixel-styled 3D world/UI;
- Android landscape-first;
- left-stick movement;
- independent right-side camera/look;
- simultaneous movement/look;
- physical compact exploration;
- same-world third-person monster combat;
- body-part targeting/break/sever/harvest identity;
- persistent NPC/world consequences;
- deep but deliberately bounded scope.

Do not import standalone Shooter RPG first-person camera/firearm/wall-jump/runtime/package assumptions.

## Visual references

Google Drive:
- `Pixel RPG - Visual Reference ORIGINAL.png` — `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- `Pixel RPG - Visual Reference.jpg` — `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

Visible concept names/text are placeholders.

## Development law

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → COMMIT → READ BACK → CONTINUE`.

Never weaken legitimate gates to force success.

## Historical evidence boundary

Previously recorded production-verified monster-hunting source:
`01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

Recorded workflow `34880096112`: SUCCESS.
Recorded job `104096962757`: SUCCESS.
Recorded artifact `10362706279`, 57,536,941 bytes, SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

This evidence predates the Pixel RPG visual prototype and does not verify that presentation.

## Storage law

Player-required installed/runtime footprint cap: `2,000,000,000` bytes.

Required runtime downloads count. Dev-only repository/source/CI files do not. Package size and installed footprint remain separate evidence layers.

## Current verification boundary

`PIXEL_RPG_VISUAL_DIRECTION_DESIGNED = YES`
`PIXEL_RPG_REFERENCE_IMAGE_SAVED = YES`
`PIXEL_RPG_THIRD_PERSON_PROTOTYPE_IMPLEMENTED = NO`
`PIXEL_RPG_ANDROID_BUILD_VERIFIED = NO`
`PIXEL_RPG_PHONE_RUNTIME_VERIFIED = NO`
`PIXEL_RPG_VISUAL_QUALITY_VERIFIED = NO`
`PIXEL_RPG_PERFORMANCE_VERIFIED = NO`

## Current bounded piece

`PIXEL_RPG_THIRD_PERSON_VISUAL_PROTOTYPE_001`.

Boundary:
- inspect current owning player/camera/HUD/presentation source first;
- one small settlement gate/street;
- one third-person player controller;
- left-stick move + independent right-side look;
- one NPC interaction;
- one short route outside town;
- one monster/proxy;
- coherent pixel-style treatment;
- safe-area responsive HUD;
- static/headless/build verification where available;
- no whole-project rewrite before the slice is accepted.
