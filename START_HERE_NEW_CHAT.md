# START HERE — Pixel RPG — New Chat Bootstrap

Status: ACTIVE PIXEL RPG BOOTSTRAP / FIRST-PERSON + STARTING AREA ASSET PACK 003 ENVIRONMENT BUILDIDENTITY VERIFIED
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

## Current exact build-verified baseline

## Latest verified checkpoint — Starting Area Asset Pack 003 Environment Dressing

- source SHA: `3b36ec42556d5603dc02ee1b07080c10670c2648`;
- workflow run: `35925800678` — SUCCESS;
- job: `107400485383` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.10-starting-area-assets-003-environment`;
- APK: `PixelRPG-starting-area-assets-003-environment-debug.apk`;
- APK size: `58,159,506` bytes;
- APK SHA-256: `cfbeb649b1f7cc62279aef647c15cba924501f1a0edf4398242a66c19b0897b7`;
- APK artifact ID: `10778896861`;
- APK artifact digest: `c0ad67e554be95efa43cb8d2be1b8296d05be9b1e9cf130e7a631fc6b0ad904e`;
- build-evidence artifact ID: `10779325700`;
- build-evidence digest: `fd9a27fa2a2c1313495885a49d1e3e0fde4705ed1b7cb5f3b4392b12a40c8274`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35925800678_starting-area-assets-003-environment/`
- folder ID: `1MroMvgM8a0j0bK1VvRH-6yehMqkYblnh`;
- APK ID: `17Bq6x2mzuFlLssUIdvSRWCChINe-DUpq`;
- BuildIdentity JSON ID: `1JnFgmM0VA9B9Cp7DQskNGVYjRlMrkqNE`;
- BuildIdentity Markdown ID: `1gArFsYoKXecWHGrzSUM_rSvmz02aoGQ8`;
- raw CI evidence ID: `1m6gKgn11Y28ji5f6LeBLJMy8QjbheYXu`;
- device checklist ID: `1E-TJJCBb5kqd-OhFk49PR4tB-X_lU5g8`.

Implemented:
- reusable fence asset scene;
- reusable banner-post asset scene;
- reusable vegetation-cluster asset scene;
- reusable rock-cluster asset scene;
- existing WorldPack001 builder names/caller transforms preserved;
- assets remain presentation-only with no new gameplay collision.

Verified:
- import/parse and app/prototype smoke;
- first-person and HUD gates;
- Pack 004 smith physics/interaction and Smith Visual Pack 002;
- Combat Bridge 001/002;
- State Ownership 001;
- world-base decomposition parity;
- Starting Area Asset Packs 001/002/003;
- deterministic combat/anatomy/status regressions;
- Android export and package-size ceiling.

Physical-device visual acceptance, touch feel, sustained performance/heat and installed footprint remain NOT VERIFIED.

## Latest verified checkpoint — Starting Area Asset Pack 002 Smith Visual

- source SHA: `efd16b123ac41c2bcb1faf081e11dcb9f808f510`;
- workflow run: `35925218965` — SUCCESS;
- job: `107398569689` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.9-starting-area-assets-002-smith`;
- APK: `PixelRPG-starting-area-assets-002-smith-debug.apk`;
- APK size: `58,129,579` bytes;
- APK SHA-256: `f037aa4a0f945d500b8dbfd91a1ce4437884ddbc604f7c83a5aef8271088d498`;
- APK artifact ID: `10779151178`;
- APK artifact digest: `b31c3bc97e13d2b0e79506394fdb5c4ab4afcf107db4f8c2236db573e26e929f`;
- build-evidence artifact ID: `10778454296`;
- build-evidence digest: `7cde1fa37fb76def892f746de2d8d572e78f6c915d8f7310c50324e5ba66fe2e`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35925218965_starting-area-assets-002-smith/`
- folder ID: `1Ql4bDhi1_mAbF714IhwKo4NNGs-Y4uIf`;
- APK ID: `1iVq0udFb7e3mNCO5o5GqZhITdVwtObES`;
- BuildIdentity JSON ID: `1HfaM_mCTK5iFf4LODQ99BsYZ_fZdkk8h`;
- BuildIdentity Markdown ID: `1jVQLtb6NLppR2Eprh39kxlKSv8cONFGC`;
- raw CI evidence ID: `16ddWis1BIHdxZ9bB_JCceECkpaDReUyk`;
- device checklist ID: `1pE_7nwDa8i6gds-Tjc-IluX9_TKGKOCn`.

Implemented:
- reusable forge detail scene;
- reusable anvil/workstation detail scene;
- reusable bench/tool detail scene;
- reusable smith frontage detail scene;
- Pack 004 keeps its proven structural, collision, doorway, anchor and roof nodes;
- new details are presentation-only under `SmithVisualDetails`.

Verified:
- import/parse and app/prototype smoke;
- original Pack 004 doorway/physics/interaction gate;
- new Asset Pack 002 smith visual gate;
- first-person, Packs 001/002/003, Combat Bridge 001/002, State Ownership 001 and world-base decomposition parity;
- deterministic combat/anatomy/status regressions;
- Android export and package-size ceiling.

Physical-device install, visual acceptance, touch feel, sustained performance/heat and installed footprint remain NOT VERIFIED.

This is the newest exact-source Android-build-verified presentation checkpoint.


## Latest verified checkpoint — Starting Area Asset Pack 001

- source SHA: `51b7262264f3460842021f0a9edf874413d301ae`;
- workflow run: `35924324641` — SUCCESS;
- job: `107395641354` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.8-starting-area-assets-001`;
- APK: `PixelRPG-starting-area-assets-001-debug.apk`;
- APK size: `58,099,610` bytes;
- APK SHA-256: `f1320e91d1a0163e74f8ca0924be9dd741a33c1f2bde3110d1b187a598baf6fa`;
- APK artifact ID: `10777838822`;
- APK artifact digest: `40d17d92ef8eec4baf287b6dca5bb3bb5d2194ac7738cb7925cb03242fdae6eb`;
- build-evidence artifact ID: `10777694345`;
- build-evidence artifact digest: `c785004b82d847bbca5a8145fa56d459fe831cf7c6124e929de2e15ee21f56dd`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35924324641_starting-area-assets-001/`
- folder ID: `10uXMDW0Jy13ExHyI86oxbuoNaYHGdzGI`;
- APK ID: `1wTTuw7NAfyB92eFv0COIj8btLg-_iwz8`;
- BuildIdentity JSON ID: `1gz_bTBWwz_T2hBcCvY73CGtexCbbX8zc`;
- BuildIdentity Markdown ID: `1g6BLUFATiYb9xSG0LcdGKyMqRv8unPLz`;
- raw CI evidence ID: `1wzSVCxClGP1Z1ie851X4uUe1RcrQ4cPC`;
- device checklist ID: `1fgNcnQqr0bjae9jEMOiJcfLRcNbh_jXV`.

Implemented in this checkpoint:
- reusable `settlement_gate_01.tscn`;
- reusable `market_stall_01.tscn`;
- reusable `service_clutter_01.tscn`;
- reusable `signpost_01.tscn`;
- reusable `lantern_post_01.tscn`;
- `WorldPack001` now instantiates those assets behind the existing builder API;
- existing world placement/collision ownership remains in the host;
- first-person camera, smith, targeting, combat bootstrap and state ownership were not moved.

Verification:
- import/parse PASS;
- AppShell/prototype smoke PASS;
- first-person gate PASS;
- Visual Pack 002/003 PASS;
- enterable smith gate PASS;
- Combat Bridge 001/002 PASS;
- State Ownership 001 PASS;
- world-base decomposition parity PASS;
- Starting Area Asset Pack 001 gate PASS;
- deterministic combat/anatomy/status regression set PASS;
- Android debug export and package-size ceiling PASS.

Physical phone install, touch feel, visual acceptance, sustained FPS/heat and installed footprint remain NOT VERIFIED.

This checkpoint supersedes older state-ownership/decomposition APKs as the newest Android-build-verified presentation baseline. State Ownership 001 remains authoritative; broad persistence is still NOT IMPLEMENTED.

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
`PIXEL_RPG_STATE_OWNERSHIP_CONTRACT_001_VERIFIED = YES`
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

`PIXEL_RPG_STARTING_AREA_ASSET_PACK_004_HOST_ENVIRONMENT_REUSE`.

Replace only remaining host-built standalone trail-tree visuals and decorative TrailRockL mesh with reusable presentation assets. Preserve exact tree/rock placements, TrailRockL gameplay collision, walkable trail width, first-person camera/input, smith contracts, targeting/combat bootstrap and State Ownership 001.
