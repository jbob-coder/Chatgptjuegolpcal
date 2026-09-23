# START HERE — Pixel RPG — New Chat Bootstrap

Status: ACTIVE PIXEL RPG BOOTSTRAP / FIRST-PERSON + VISUAL PACK 008 MUDCREST BUILDIDENTITY VERIFIED
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

## Latest verified checkpoint — Visual Pack 008 Mudcrest Refinement

- implementation source: `7da40b2b0e8d1d1c68a2a6144221c8a36628c4b8`;
- first failed run: `35928797541` — failed only because the new Pack 008 test referenced loop-local variables outside their scope; Mudcrest resource import, prototype smoke, first-person and Visual Pack 002 had already passed;
- corrected exact build source: `d280c2da7f434450930cf5950feb598a0f4f7462`;
- corrected workflow run: `35928948805` — SUCCESS;
- corrected job: `107410680490` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.15-visual-pack-008-mudcrest-refinement`;
- APK: `PixelRPG-visual-pack-008-mudcrest-refinement-debug.apk`;
- APK size: `58,227,894` bytes;
- APK SHA-256: `7e980ed1a3e3d2de8c2f429c31b9ba1874c74273b0de839f4eaee1ffb28626d6`;
- APK artifact ID: `10779319853`;
- APK artifact digest: `085b812c198597cca68e57029c8c226e1b2d6eed3fa7bb1dbb974513d5276c4a`;
- build-evidence artifact ID: `10780361021`;
- build-evidence digest: `428cca2e20129acf995897a2121418e49f8332eff0039a63d3da91c6e9b5bba0`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35928948805_visual-pack-008-mudcrest-refinement/`
- folder ID: `1dRhP6bwobMMIRhyCMSsUkORJwW-bbW_Z`;
- APK ID: `1UGYE1JuYN3EGD4wzdZQYvAOKH8_5YpXj`;
- BuildIdentity JSON ID: `10Eg_TJU0pAl0BXGthhOB5qGXKfznFvRG`;
- BuildIdentity Markdown ID: `1ukZ9pfcih7jRTzOqqoM63KyKDXaDRF-X`;
- canonical raw CI evidence ID: `1SGAhV_U4thFqI8-N3FN17UzSPEtAEUhj`;
- device checklist ID: `1YnINOvGYd0mfkoDT5zqrfI_emxs_g_Sq`;
- a duplicate same-byte raw evidence ZIP exists from concurrent archival activity and is intentionally left intact.

Implemented and verified:
- visible Mudcrest eyes/jaw/tusks, reinforced horn bases, shoulder/torso breakup, extra dorsal plates, claws and tail detail;
- all existing target roots remain unchanged: `HEAD`, `HORN_CREST`, four leg roots, `DORSAL_PLATES`, `TAIL`, and `GENERAL_TORSO`;
- Mudcrest visual remains presentation-only with no physics;
- recursive target highlighting reaches new detail and clears correctly;
- MonsterProxy remains exactly at `Vector3(0, 0, -49)` and domain-body alias remains co-located;
- first-person camera, targeting/combat bootstrap, deterministic combat/anatomy/status systems, State Ownership 001 and all prior asset gates remain preserved;
- Android export and package-size ceiling passed.

Physical-device visual acceptance, touch feel, sustained performance/heat and installed footprint remain NOT VERIFIED.

## Latest verified checkpoint — Starting Area Asset Pack 007 Path Surface Details

- source SHA: `8a2b061acd71f02ffecc2a7b738cd821ac4e6371`;
- first failed test run: `35928162750` — failed only because the new gate incorrectly cast the historical Street/Trail holder nodes as MeshInstance3D; no APK exported;
- corrected workflow run: `35928283662` — SUCCESS;
- corrected job: `107408524350` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.14-starting-area-assets-007-path-surfaces`;
- APK: `PixelRPG-starting-area-assets-007-path-surfaces-debug.apk`;
- APK size: `58,219,471` bytes;
- APK SHA-256: `42cb74a4500650db9167cd133c2aa3e8588c956c2052387b28a0e7b7ba472e44`;
- APK artifact ID: `10779618297`;
- APK artifact digest: `a226513cbd52ac0412d95c85320c2d34de1299a1200930d8d9be14d3c2eb0f7a`;
- build-evidence artifact ID: `10779413781`;
- build-evidence digest: `fec2740f4cb5f4ce7d9e3496acbd189c6a14d9ef4300b09ff7b1bf816f7bbaad`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35928283662_starting-area-assets-007-path-surfaces/`
- folder ID: `1yz7_68oPoOMQnMHXnQzGqiSNDtsR7Nwo`;
- APK ID: `1Vuae8OIZNpjhR8ihv2hXfX6_uA6J4-Dv`;
- BuildIdentity JSON ID: `1VUSLYSb2hWX_EKpuiBxf6cB1e_NSdm2Z`;
- BuildIdentity Markdown ID: `1SqJOqCS1sF1DPEvT6oDwlz5niFyv991o`;
- raw CI evidence ID: `1AVNLQnGlode8AvGJt1f5EL4WXKaXSNQ4`;
- device checklist ID: `1-qxdzstoLVoZ68UxVFqLZfMDTgjN0B_S`.

Implemented and verified:
- reusable `street_surface_details_01.tscn` and `trail_surface_details_01.tscn`;
- existing Street holder remains at `Vector3(0, 0.03, 2)` with BoxMesh size `Vector3(6.2, 0.10, 34)`;
- existing Trail holder remains at `Vector3(0, 0.04, -31)` with BoxMesh size `Vector3(4.2, 0.11, 34)`;
- new rut/dirt/stone/moss detail is presentation-only and adds no physics;
- Ground remains physical floor authority;
- all prior asset/runtime/domain gates, Android export and package-size ceiling passed on the corrected exact source.

Physical-device visual acceptance, touch feel, sustained performance/heat and installed footprint remain NOT VERIFIED.

## Latest verified checkpoint — Starting Area Asset Pack 006 Settlement Building Details

- source SHA: `d050799380bdad814673d2752c3768f12bef0718`;
- workflow run: `35927524386` — SUCCESS;
- job: `107406042641` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.13-starting-area-assets-006-buildings`;
- APK: `PixelRPG-starting-area-assets-006-buildings-debug.apk`;
- APK size: `58,202,290` bytes;
- APK SHA-256: `073e2e0122e61028587291bd60791ca181083ab99c7fe5b6ed979798cac6f9bb`;
- APK artifact ID: `10779503582`;
- APK artifact digest: `f51fe0b945a9af18b3d7ccc2e8083deaaebe825e98de2a5f742a0b7d24e7fa3e`;
- build-evidence artifact ID: `10780001656`;
- build-evidence digest: `09671608f298e95deda0a20fcb65cc99735cb17d898ad0cd1e7b6382f1ba853f`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35927524386_starting-area-assets-006-buildings/`
- folder ID: `1UzFo9xaWmKaGjcw0iFOgHVFwmJeXVS6Y`;
- APK ID: `1mgS1RkhKnlv-c2hfcdCxogwga21ZSOa2`;
- BuildIdentity JSON ID: `1Po6sAmm2RCM3kDiZVZaM3u9rOKSLytDO`;
- BuildIdentity Markdown ID: `1mAJmbJMiiUL_xQDZFUU0U6EmuTnfIFj6`;
- raw CI evidence ID: `1NyMNUDUa6KcCoA-7LfNMI0dQoplPAhIL`;
- device checklist ID: `1rCZrglRxJgGuiBY1utaCUuM9e3ZAeIqx`.

Implemented and verified:
- reusable `settlement_building_details_01.tscn`;
- exactly two presentation-only detail layers are attached to the two existing generic settlement buildings;
- original colliding `Building` StaticBody3D nodes remain at `(-7.0, 1.7, 8.5)` / size `(7.0, 3.4, 7.0)` and `(7.5, 1.6, -3.0)` / size `(6.8, 3.2, 6.4)`;
- facade details add door/frame, windows, structural beams, eaves and chimney without adding gameplay collision;
- Gate Warden, first-person camera, smith, Mudcrest anchor, targeting/combat and State Ownership 001 remain preserved;
- all prior asset/runtime/domain gates, Android export and package-size ceiling passed.

Physical-device visual acceptance, touch feel, sustained performance/heat and installed footprint remain NOT VERIFIED.

## Latest verified checkpoint — Starting Area Asset Pack 005 Gate Warden Visual

- source SHA: `7c27495eec5ddc53d42d596bbe1c3a48dad799a8`;
- workflow run: `35926969130` — SUCCESS;
- job: `107404261711` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.12-starting-area-assets-005-gate-warden`;
- APK: `PixelRPG-starting-area-assets-005-gate-warden-debug.apk`;
- APK size: `58,189,449` bytes;
- APK SHA-256: `cb215fc88ddb76f15f0fae6edb34243d220b9b387e56063019d67fa0437e9699`;
- APK artifact ID: `10779836686`;
- APK artifact digest: `855c1657bb5f714d60d127474ae3963da8b6123a148c31548513799a5ee68d5f`;
- build-evidence artifact ID: `10779642325`;
- build-evidence digest: `ee47cd37f6e7ebf242024bb41a06aa8b3244b602673097aaeee5acfd8a7a6df4`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35926969130_starting-area-assets-005-gate-warden/`
- folder ID: `13M9eiLedJQ5es3NGJd6XdmckLmdrWooJ`;
- APK ID: `1GFItfyM2yala4xYQaifqLyX8aQxtgQOb`;
- BuildIdentity JSON ID: `1C5j-RovCh_c9RXqcEvuOk2Fvu05gXQzj`;
- BuildIdentity Markdown ID: `10ARaoO7Sb2C944U_BumGYDHIvoQDpw_S`;
- raw CI evidence ID: `18wSmXn6u3EDzQ9aj2NQEGkd_mbFP5dMy`;
- canonical device checklist ID: `1pdPQexPApcqv681dGR6AtiQfxlqO2nsQ`.
- Note: Drive contains a second same-named checklist from concurrent archival activity; it was not deleted.

Implemented and verified:
- reusable `gate_warden_visual_01.tscn`;
- visual is presentation-only and adds no NPC collision/AI authority;
- `GateWarden` anchor remains exactly `Vector3(-2.6, 0.0, -6.2)`;
- TALK button/prompt and existing tracks/north-gate field-note result remain unchanged;
- first-person camera, Pack 004 smith, Mudcrest anchor, targeting/combat bootstrap and State Ownership 001 remain preserved;
- all prior asset/runtime/domain gates, Android export and package-size ceiling passed.

Physical-device visual acceptance, touch feel, sustained performance/heat and installed footprint remain NOT VERIFIED.

## Latest verified checkpoint — Starting Area Asset Pack 004 Host Environment Reuse

- source SHA: `8d896285c04b3a55da5836b4e38d55684788ab1e`;
- workflow run: `35926481868` — SUCCESS;
- job: `107402676378` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.11-starting-area-assets-004-host-environment`;
- APK: `PixelRPG-starting-area-assets-004-host-environment-debug.apk`;
- APK size: `58,176,659` bytes;
- APK SHA-256: `55e67fbca0ebc1956b05074a956e8baaf707bcfe0350e37aab635aaae707f12f`;
- APK artifact ID: `10779695702`;
- APK artifact digest: `0eae02f2bb571cbc890c7a911ae9f5f46da27e439549037da90fcc5d01a237eb`;
- build-evidence artifact ID: `10778982480`;
- build-evidence digest: `17bdd7971311185157b14b24365d0a928c12ee327c3f400bba547c50338e2367`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35926481868_starting-area-assets-004-host-environment/`
- folder ID: `1AgOfPLPerQ-lWeMDQczJgAhdQQlOerr5`;
- APK ID: `1krztuQZnmioc2a_e8gFwWAT6JR-yn8cI`;
- BuildIdentity JSON ID: `1qsGypUWP_CFg7SwHWKbm1Kdjlm-WgyAK`;
- BuildIdentity Markdown ID: `1eWw8OL2bo4K63-qXN2UYZfJWvMapCt5D`;
- raw CI evidence ID: `11a_fWLfY3aLOfAOY9y5S-JclmQ5BY2fi`;
- canonical device checklist ID: `1dnZsFBehlj0FxAaw4mhQXXcXy-hHW3iB`.

Implemented and verified:
- the ten host-built trail trees now instantiate the reusable `trail_pine_01.tscn` visual while keeping their exact world positions;
- `TrailRockL` keeps its `StaticBody3D`, collision layer/mask and exact `2.4 × 1.5 × 2.0` `BoxShape3D`, while its visible mesh is replaced by `trail_rock_visual_01.tscn`;
- first-person camera, Pack 004 smith, Mudcrest anchor, targeting/combat bootstrap and State Ownership 001 remain preserved;
- all prior runtime gates, deterministic combat/anatomy/status regressions, Android export and package-size ceiling passed.

Physical-device install, visual acceptance, touch feel, sustained FPS/heat and installed footprint remain NOT VERIFIED.

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

`PIXEL_RPG_VISUAL_PACK_009_FIRST_PERSON_VIEWMODEL`.

Add a reusable presentation-only first-person hands/poleblade scene as a child of the existing active Camera3D. Preserve the Camera3D node/path/transform/FOV/near/far values, Hunter collision/controller, left-stick/right-look behavior, targeting controls, current no-attack combat bootstrap, damage/AP/Stamina ownership and State Ownership 001. The viewmodel must contain no CollisionObject3D/CollisionShape3D and must not become weapon/combat authority. Physical-device obstruction/visual acceptance remains separate evidence.
