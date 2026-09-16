# Unnamed Hunt RPG / Shooter RPG — New Chat Continuation Prompt

Use the prompt below in a new ChatGPT conversation when continuing this project.

This file is only a launcher. The live repository state and `START_HERE_NEW_CHAT.md` remain authoritative.

---

@GitHub

You are continuing active development of my Android monster-hunting RPG.

Repository:
`jbob-coder/Chatgptjuegolpcal`

Active branch:
`shooter-rpg`

WorldLife is abandoned. Do not resurrect old WorldLife gameplay architecture, saves, coordinates, NPC systems or source unless the CURRENT live repository explicitly preserves a specific item.

## FIRST ACTION — MANDATORY

Do not begin coding, asset production, balance work or architecture changes immediately.

First reconstruct the REAL CURRENT PROJECT STATE from the live branch.

1. Fetch live HEAD of `shooter-rpg` and record the SHA.
2. Read `EVOLVE_ALIGNMENT.md`.
3. Read `PROJECT_HANDOFF.md`.
4. Read `START_HERE_NEW_CHAT.md` and follow it completely.
5. Read `DOCUMENTATION_INDEX.md`.
6. Read `SHOOTER_RPG_VISUAL_DIRECTION.md`.
7. Read `GAME_EXPERIENCE_BIBLE.md`.
8. Read `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`.
9. Read root `README.md`.
10. Read the newest relevant file under `docs/70_handoff/`, especially `SHOOTER_RPG_PIXEL_VISUAL_PIVOT_2026-09-15.md` when still current.
11. Read the exact owning source/tests/workflows for the bounded piece.
12. Re-fetch branch HEAD. If it changed materially while reconstructing, restart from the new HEAD rather than mixing revisions.

## AUTHORITY ORDER

When files disagree:
1. current explicit user instruction;
2. current source/tests/build/device evidence;
3. `SHOOTER_RPG_VISUAL_DIRECTION.md` for current visual/presentation decisions;
4. `EVOLVE_ALIGNMENT.md` / `PROJECT_HANDOFF.md` and narrow owning docs;
5. package/local docs;
6. older handoffs, stale visual bibles, old chat summaries and memory.

Do not rewrite historical evidence to pretend an older build already used the new presentation.

## SELECTED DIRECTION

Current target:
- third-person behind-character gameplay;
- shooter-style Android controls;
- left stick movement;
- independent right-side look;
- pixel-styled 3D world/UI;
- physical exploration through compact connected spaces;
- combat in the same third-person spatial world;
- responsive safe-area HUD;
- deep, coherent, expandable scope rather than a massive open world.

Older aerial/isometric-primary and mandatory first-person-combat visual guidance is superseded when conflicting.

## VISUAL REFERENCE

Saved Google Drive file:
`Shooter RPG - Pixel Visual Reference.jpg`
File ID: `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`

Treat visible names/text in the concept image as placeholders unless current authority says otherwise.

## CURRENT EXPECTED NEXT BOUNDED PIECE

Unless live EVOLVE has changed, expect:
`SHOOTER_RPG_PIXEL_THIRD_PERSON_VISUAL_PROTOTYPE`.

Prototype should be deliberately small:
- one settlement gate/street;
- one third-person player controller;
- left-stick move + right-side look;
- one NPC interaction;
- one short route outside town;
- one monster/proxy;
- pixel rendering/art treatment;
- safe-area HUD;
- Android launch/runtime proof.

Do not rewrite the entire project before this visual/play slice is accepted.

## VERIFICATION DISCIPLINE

Keep these statuses separate:
- DESIGNED;
- IMPLEMENTED;
- STATIC_VERIFIED;
- HEADLESS_VERIFIED;
- ANDROID_BUILD_VERIFIED;
- PHONE_RUNTIME_VERIFIED;
- VISUAL_QUALITY_VERIFIED;
- PERFORMANCE_VERIFIED.

Never claim phone, visual-quality or performance verification from CI/build success alone.

## PRESERVE USEFUL DOMAIN WORK

Do not discard working deterministic combat, anatomy/body-part, wounds/statuses, break/sever/harvest, stable-ID, data-driven or verification infrastructure solely because camera/art direction changed.

Presentation can be rebuilt around authoritative domain logic.

## PROJECT CONSTRAINTS

- total player-required installed/runtime footprint hard cap remains `2,000,000,000` bytes;
- prefer small reversible changes;
- protect current working systems outside the bounded slice;
- add/adjust tests when behavior changes;
- do not weaken tests to force green CI;
- do not claim tests passed unless executed and observed;
- record durable project state in repository docs rather than relying on chat memory.

## REQUIRED PRE-START REPORT

Before modifications, report:

`LIVE_REPOSITORY_HEAD:`
`LAST_VERIFIED_SOURCE_BASELINE:`
`CURRENT_OBJECTIVE:`
`CURRENT_VERIFIED_STATE:`
`EXACT_NEXT_BOUNDED_PIECE:`
`OWNING_FILES:`
`TESTS_AND_GATES:`
`BLOCKERS:`
`OPEN_QUESTIONS:`
`FILES_EXPECTED_TO_CHANGE:`
`PROTECTED_BEHAVIOR:`
`CONTRADICTIONS_FOUND:`

If I already told you to continue and there is no genuine blocker, proceed after reconstruction without asking me for permission again.
