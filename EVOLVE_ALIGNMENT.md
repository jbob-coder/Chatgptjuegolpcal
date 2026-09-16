# EVOLVE ALIGNMENT — Pixel RPG

Status: ACTIVE PIXEL RPG / THIRD-PERSON PROTOTYPE IMPLEMENTED + ANDROID BUILD VERIFIED / PIXEL-CAMERA-HUD POLISH NEXT
Last reconciled: 2026-09-16
Branch: `pixel-rpg`

## Operating law

The game is the objective. Documentation preserves ownership, evidence and continuation.

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → CONTINUE`.

Current source/tests/build/device evidence outranks chat memory and older handoffs.

## Current user direction

The active game is **Pixel RPG**, not the separate standalone Shooter RPG.

Selected direction:
- third-person behind-character gameplay;
- pixel-styled real 3D presentation;
- Android landscape-first;
- direct left-stick movement;
- independent right-side camera/look;
- physical exploration through compact connected spaces;
- monster-hunting combat in the same third-person spatial world;
- body-part damage/break/sever/harvest identity preserved;
- small, coherent, expandable scope rather than a massive open world.

Primary visual/presentation authority: `PIXEL_RPG_VISUAL_DIRECTION.md`.

## Visual reference authority

Google Drive:
- `Pixel RPG - Visual Reference ORIGINAL.png` — ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- `Pixel RPG - Visual Reference.jpg` — ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

Visible names/text in the concept image are placeholders unless separately approved.

## Shooter separation law

The later standalone first-person Shooter RPG direction is rejected for this project.

Do not import its first-person 115° HFOV contract, firearm-first identity, wall-jump progression, `shooter_game/` runtime root, package identity, or shooter-specific build evidence into Pixel RPG.

The `pixel-rpg` branch was recovered to revision `7ac7e84a6b0e8249ea8c869cf96171b834b2363c`, before the later standalone Shooter rewrite, then received Pixel RPG authority updates.

The obsolete `shooter-rpg` ref remains physically present only because the currently exposed GitHub connector does not provide branch-ref deletion. It is non-authoritative.

## Autonomous design authorization

The assistant may make normal game-development decisions involving gameplay, UI/UX, world structure, story flow, relationships, NPC simulation, mining, factions, progression, equipment, monsters, economy and supporting rules without pausing for approval.

Constraint: **deep, coherent, expandable — not massive or overwhelming.**

## Storage law

`TOTAL_PLAYER_REQUIRED_GAME_STORAGE_CAP = 2 GB`
`TOTAL_PLAYER_REQUIRED_GAME_STORAGE_CAP_BYTES = 2000000000`

Required runtime downloads count toward the same ceiling. Development-only source/repository/CI files do not. Package size evidence does not prove installed-footprint compliance.

## Reusable verified domain foundations

Preserve where compatible:
- deterministic combat foundation;
- monster anatomy/body-part ownership;
- wound/status handling;
- break/sever/harvest direction;
- stable IDs/data-driven content;
- physical tracking/engagement concepts;
- Android build/test infrastructure;
- verification-only autorun/regression infrastructure.

Historical full production-verified gameplay source:
`01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

Historical workflow `34880096112`: SUCCESS.
Historical job `104096962757`: SUCCESS.
Historical artifact `10362706279`, 57,536,941 bytes, SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

This historical evidence does not prove the Pixel RPG presentation.

## Pixel RPG prototype 001 — verified implementation

Android-build-verified source:
`8d0c21018c396ec1943d0930a867273e4753ba6c`.

Workflow `35062091768`: SUCCESS.
Job `104684371733`: SUCCESS.

Verified gates in that run:
- Godot 4.7.2 import/parse;
- Pixel RPG AppShell smoke;
- Pixel RPG prototype scene smoke;
- selected deterministic combat-domain regressions;
- Android debug export;
- 2,000,000,000-byte package-size ceiling;
- APK artifact upload;
- build-evidence upload.

Artifacts:
- `PixelRPG-prototype-001-debug` — artifact ID `10432014296`;
- `PixelRPG-prototype-001-build-evidence` — artifact ID `10433105552`.

Implemented prototype content:
- third-person player-visible controller;
- camera-relative movement;
- mobile left-stick movement;
- independent right-side touch look;
- compact settlement street and north gate;
- short physical trail beyond settlement;
- one NPC interaction target;
- one distant monster proxy/observation interaction;
- Diamond Watch prototype panel;
- basic contextual objective/journal feedback;
- Android export metadata renamed to Pixel RPG.

## Supporting design targets

Gradually integrate only where they reinforce the core loop:
- Diamond Watch diegetic information interface;
- hunter journal/bestiary knowledge progression;
- crystal/diamond mining and energy economy;
- mining licenses/territorial permissions;
- small survivor settlements/factions;
- persistent NPC relationships and selected memories;
- NPC-to-NPC relationships;
- schedules, aging and generational continuity;
- meaningful decisions affecting people/settlements;
- multi-layer progression with difficult post-cap breakthroughs.

These remain design targets unless current source proves implementation.

## Current verification boundary

`PIXEL_RPG_VISUAL_DIRECTION_DESIGNED = YES`
`PIXEL_RPG_REFERENCE_IMAGE_SAVED = YES`
`PIXEL_RPG_THIRD_PERSON_PROTOTYPE_001_IMPLEMENTED = YES`
`PIXEL_RPG_THIRD_PERSON_PROTOTYPE_001_HEADLESS_SMOKE_VERIFIED = YES`
`PIXEL_RPG_SELECTED_DOMAIN_REGRESSIONS_VERIFIED = YES`
`PIXEL_RPG_ANDROID_BUILD_VERIFIED = YES`
`PIXEL_RPG_PACKAGE_2GB_CAP_GATE_PASSED = YES`
`PIXEL_RPG_PHONE_RUNTIME_VERIFIED = NO`
`PIXEL_RPG_VISUAL_QUALITY_VERIFIED = NO`
`PIXEL_RPG_PERFORMANCE_VERIFIED = NO`
`INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`

## Exact next bounded piece

`PIXEL_RPG_PROTOTYPE_001_PIXEL_RENDER_CAMERA_UI_POLISH`

Boundary:
1. keep prototype gameplay/domain behavior unchanged unless a same-layer defect requires correction;
2. establish an intentional pixel render/upscale path rather than relying on smooth default rendering;
3. improve third-person camera collision/occlusion behavior around settlement walls/gate;
4. replace remaining brittle fixed HUD offsets with anchored/safe-area responsive layout behavior;
5. keep left-stick movement + independent right-side look semantics intact;
6. preserve NPC/monster prototype interactions;
7. preserve selected deterministic combat-domain regressions;
8. rerun Godot parse/smokes and Android export/package gate;
9. do not claim phone visual quality/performance until actual device evidence exists.

NEXT THING: `PIXEL_RPG_PROTOTYPE_001_PIXEL_RENDER_CAMERA_UI_POLISH`.
