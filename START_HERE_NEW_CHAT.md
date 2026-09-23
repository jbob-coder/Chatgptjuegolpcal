# START HERE — Pixel RPG — New Chat Bootstrap

Status: ACTIVE PIXEL RPG BOOTSTRAP / FIRST-PERSON + BRIDGE 002 + BUILDIDENTITY V1 VERIFIED
Last reconciled: 2026-09-23

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
   6. newest relevant Pixel RPG handoff under `docs/70_handoff/`;
   7. root `README.md`;
   8. `game/README.md`;
   9. exact owning source/tests/workflows for the bounded task.
3. Re-check HEAD after reconstruction. If it changed materially, do not mix revisions.
4. Current source/tests/build/device evidence outranks Markdown labels and chat memory.
5. Conflict order: current explicit user instruction → current source/tests/build/device evidence → `PIXEL_RPG_VISUAL_DIRECTION.md` for presentation → EVOLVE/HANDOFF → narrow owner → package docs → older handoffs/chat.
6. Work one bounded piece at a time.
7. Never convert design documentation or CI/build success into phone/visual/performance proof.
8. Preserve reusable monster-hunting domain logic unless current evidence shows it is incompatible.

## Active identity

Pixel RPG target:
- first-person exploration using the existing Pixel RPG player/controller;
- pixel-styled real 3D world/UI;
- Android landscape-first;
- left-stick movement;
- independent right-side camera/look;
- simultaneous movement/look;
- physical compact exploration;
- same-world monster combat with first-person presentation unless superseded later;
- body-part targeting/break/sever/harvest identity;
- persistent NPC/world consequences;
- deep but deliberately bounded scope.

Do not import abandoned Shooter RPG firearm/wall-jump/runtime/package assumptions or its old 115° camera constant. Pixel RPG being first-person does not make Shooter RPG authoritative.

## Visual references

Google Drive:
- `Pixel RPG - Visual Reference ORIGINAL.png` — `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- `Pixel RPG - Visual Reference.jpg` — `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

Visible concept names/text are placeholders.

## Development law

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → COMMIT → READ BACK → CONTINUE`.

Never weaken legitimate gates to force success.

## First-person checkpoint — current exact build-verified baseline

Source: `0a6e54ecdbc1c81043b6db5dd0f35e429cbb4ee9`.
Workflow `35910688037`: SUCCESS.
Job `107349457171`: SUCCESS.
Godot: `4.7.2.stable.official.ed1daf0bf`.

APK: `PixelRPG-first-person-001-debug.apk`
Size: `58,023,057` bytes.
SHA-256: `d0ea93980e2e617d056a696183c6eced2d0df34cf3a6240e244f3524ced8e012`.
Drive APK ID: `1NwWuvKS_cXuz5o22r5taeTadnlgUiIYB`.
Drive build folder ID: `1REno22ZSIUQnKxOB6pcZRaYS6W0aXFa1`.

This supersedes the older third-person build as the current presentation/build baseline. It does not establish physical-phone runtime, visual-quality acceptance, sustained performance/heat, or installed-footprint compliance.

## Historical pre-first-person verified baseline

Current verified gameplay/presentation source:\n`47ade9413fe24f15453ee6fb0135b270b2d3ce8d`.

Workflow `35566025131`: SUCCESS.\nJob `106227900327`: SUCCESS.

Passed:
- Godot `4.7.2.stable` import/parse;
- AppShell smoke;
- Pixel RPG prototype scene smoke;
- Visual Pack 002 runtime/anatomy mapping gate: `24/24`;
- Visual Pack 003 HUD runtime gate: `19/19`;
- selected deterministic combat/anatomy/status regressions;
- Android debug export;
- `2,000,000,000`-byte package ceiling;
- APK and build-evidence uploads.

Artifacts:
- APK `10624410805` — `PixelRPG-prototype-001-debug`;
- evidence `10624027197` — `PixelRPG-prototype-001-build-evidence`.

Measured exported APK:
`57,993,451` bytes.

Implemented presentation includes the 800×360 nearest-upscaled 3D render path, SpringArm camera, safe-area HUD, Pack 001 world composition, Pack 002 hunter/Mudcrest readability, functional top-center Settings and a physical-world minimap. Bag/inventory remains deferred and absent.

This does not establish phone runtime, final visual quality, sustained performance or installed-footprint compliance.

## CI trigger policy

The Pixel RPG Android workflow runs for `game/**` changes or changes to the workflow itself. Documentation-only updates must not consume a full Android export run.

## Storage law

Player-required installed/runtime footprint cap: `2,000,000,000` bytes.

Required runtime downloads count. Dev-only repository/source/CI files do not. Package size and installed footprint remain separate evidence layers.

## Current verification boundary

`PIXEL_RPG_VISUAL_DIRECTION_DESIGNED = YES`
`PIXEL_RPG_REFERENCE_IMAGE_SAVED = YES`
`PIXEL_RPG_THIRD_PERSON_PROTOTYPE_001_IMPLEMENTED = YES`
`PIXEL_RPG_PIXEL_RENDER_PATH_IMPLEMENTED = YES`
`PIXEL_RPG_SPRING_ARM_CAMERA_COLLISION_IMPLEMENTED = YES`
`PIXEL_RPG_SAFE_AREA_HUD_LOGIC_IMPLEMENTED = YES`
`PIXEL_RPG_WORLD_COMPOSITION_PACK_001_VERIFIED = YES`
`PIXEL_RPG_VISUAL_PACK_002_VERIFIED = YES`
`PIXEL_RPG_VISUAL_PACK_003_HUD_VERIFIED = YES`\n`PIXEL_RPG_WORLD_PACK_004_ENTERABLE_SMITH_VERIFIED = YES`\n`PIXEL_RPG_COMBAT_BRIDGE_001_TARGETING_VERIFIED = YES`
`PIXEL_RPG_MUDCREST_ANATOMY_VISUAL_MAPPING_VERIFIED = YES`
`PIXEL_RPG_PROTOTYPE_HEADLESS_SMOKE_VERIFIED = YES`
`PIXEL_RPG_SELECTED_DOMAIN_REGRESSIONS_VERIFIED = YES`
`PIXEL_RPG_ANDROID_BUILD_VERIFIED = YES`
`PIXEL_RPG_PHONE_RUNTIME_VERIFIED = NO`
`PIXEL_RPG_VISUAL_QUALITY_VERIFIED = NO`
`PIXEL_RPG_PERFORMANCE_VERIFIED = NO`

## Current exact build-verified checkpoint

Latest exact verified source:
`160d12cfabde025a383dd50f9bfcbb0e51ae87c6`.

Workflow `35915818722`: SUCCESS.
Job `107366883423`: SUCCESS.
Godot `4.7.2.stable.official.ed1daf0bf`.

APK: `PixelRPG-combat-bridge-002-debug.apk`
Size: `58,039,909` bytes.
SHA-256: `515148bb8ed35076664ef612f6b678f086929e75ecb34709014f018e665e5a55`.

BuildIdentity v1 links exact source → workflow run → numeric job → immutable APK artifact → APK size/hash.

Canonical Drive build folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35915818722_buildidentity-v1/`
ID: `1zdvN-E1dJt8tgVV4c8g_tofS1eKaj172`.

Combat Bridge 002 is verified under first-person authority. Issues #8 and #5 are closed.

Physical-device install/runtime, touch feel, visual acceptance, sustained performance/heat and installed footprint remain NOT VERIFIED.

## Current bounded piece

`PIXEL_RPG_STATE_OWNERSHIP_CONTRACT_001` — issue #7.

Do not add a giant singleton. Keep deterministic combat state in existing gameplay-domain owners, classify future durable player/world state explicitly, keep camera/input/HUD/targeting presentation transient unless deliberately promoted, define the persistence boundary before broad save/load, and preserve all current first-person/Bridge 002 regressions.

Do not add hunter attack/damage or legacy Region-01 tactical coordinates in this slice.
