# EVOLVE ALIGNMENT — Pixel RPG

Status: ACTIVE PIXEL RPG / WORLD PACK 001 + VISUAL PACK 002 VERIFIED / HUD ALIGNMENT NEXT
Last reconciled: 2026-09-21
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

## Pixel RPG prototype 001 — current build-verified implementation

Current pixel/camera/HUD-polished gameplay source:
`88d19d733a579e326d7bdf3ebd8e002ef413d86a`.

Workflow `35062722630`: SUCCESS.
Job `104686283219`: SUCCESS.

Verified gates:
- Godot 4.7.2 import/parse;
- Pixel RPG AppShell smoke;
- Pixel RPG prototype scene smoke;
- selected deterministic combat-domain regressions;
- Android debug export;
- 2,000,000,000-byte package-size ceiling;
- APK artifact upload;
- build-evidence upload.

Artifacts:
- `PixelRPG-prototype-001-debug` — artifact ID `10432264323`;
- `PixelRPG-prototype-001-build-evidence` — artifact ID `10433305640`.

Implemented and verified presentation layer now includes:
- third-person visible hunter;
- mobile left-stick direct movement;
- independent right-side touch look;
- low-resolution 800×360 3D SubViewport stretched with nearest filtering for intentional pixel presentation;
- per-vertex/nearest material treatment for prototype primitives;
- SpringArm camera collision/occlusion behavior;
- responsive safe-area HUD positioning logic;
- compact settlement street/gate and physical trail;
- Gate Warden interaction;
- distant monster observation proxy;
- Diamond Watch prototype panel;
- preserved selected deterministic combat-domain regressions.

The visible environment and monster remain prototype geometry, not final art.

## CI cost/control decision

The Pixel RPG Android workflow now triggers only for `game/**` changes or changes to its own workflow file. Documentation-only EVOLVE/HANDOFF updates no longer start a full Android export, reducing unnecessary CI use.

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
`PIXEL_RPG_PIXEL_RENDER_PATH_IMPLEMENTED = YES`
`PIXEL_RPG_SPRING_ARM_CAMERA_COLLISION_IMPLEMENTED = YES`
`PIXEL_RPG_SAFE_AREA_HUD_LOGIC_IMPLEMENTED = YES`
`PIXEL_RPG_WORLD_COMPOSITION_PACK_001_VERIFIED = YES`
`PIXEL_RPG_VISUAL_PACK_002_VERIFIED = YES`
`PIXEL_RPG_MUDCREST_ANATOMY_VISUAL_MAPPING_VERIFIED = YES`
`PIXEL_RPG_PROTOTYPE_HEADLESS_SMOKE_VERIFIED = YES`
`PIXEL_RPG_SELECTED_DOMAIN_REGRESSIONS_VERIFIED = YES`
`PIXEL_RPG_ANDROID_BUILD_VERIFIED = YES`
`PIXEL_RPG_PACKAGE_2GB_CAP_GATE_PASSED = YES`
`PIXEL_RPG_PHONE_RUNTIME_VERIFIED = NO`
`PIXEL_RPG_VISUAL_QUALITY_VERIFIED = NO`
`PIXEL_RPG_PERFORMANCE_VERIFIED = NO`
`INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`

## Exact next bounded piece

`PIXEL_RPG_VISUAL_PACK_003_HUD_LAYOUT_ALIGNMENT`

Boundary:
1. preserve the verified controller, SpringArm camera, 800×360 pixel-render path, Pack 001 world composition and Pack 002 hunter/Mudcrest visuals;
2. keep objective/status presentation in the upper-left;
3. add a Settings control centered toward the top;
4. add a compact upper-right minimap/navigation presentation grounded in the physical prototype world;
5. keep the movement joystick lower-left and contextual action controls on the right;
6. keep Bag/inventory deferred and absent;
7. preserve safe-area handling and current gameplay/domain behavior;
8. add an explicit UI/runtime gate and rerun Godot parse/smokes, deterministic domain regressions and Android export/package verification.

NEXT THING: `PIXEL_RPG_VISUAL_PACK_003_HUD_LAYOUT_ALIGNMENT`.
