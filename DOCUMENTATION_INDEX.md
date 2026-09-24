# Pixel RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / FIRST-PERSON + VISUAL PACK 011 DIRECT CONCEPT-PHOTO PNG BUILDIDENTITY AUTHORITY
Last reconciled: 2026-09-23
Branch: `pixel-rpg`

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. this index
5. `PIXEL_RPG_VISUAL_DIRECTION.md`
6. newest relevant Pixel RPG handoff under `docs/70_handoff/`
7. root `README.md`
8. `game/README.md`
9. exact owning package/source/data/tests/static gates/workflow.

Fetch live branch HEAD before reading and re-check it afterward. Keep documentation HEAD distinct from the last source SHA actually proven by build evidence.

## Current visual/presentation authority

`PIXEL_RPG_VISUAL_DIRECTION.md` owns:
- first-person eye-height exploration camera;
- pixel-styled 3D presentation;
- Android left-stick + independent right-look control layout without turning the game into a firearm shooter;
- physical exploration through compact connected spaces;
- same-world monster combat without legacy camera/coordinate resurrection;
- safe-area responsive HUD target;
- bounded, expandable world scope.

Conflicting older third-person, aerial/isometric-primary, smooth illustrated-realism, and standalone Shooter RPG passages are subordinate for current presentation decisions. Historical evidence remains historical.

## Visual reference authority

Google Drive:
- `Pixel RPG - Visual Reference ORIGINAL.png` — ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- `Pixel RPG - Visual Reference.jpg` — ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

The image is a direction/composition reference and a runtime art source. Visual Pack 010 derives material textures from its pixels; current Visual Pack 011 stores seven concrete pictured-object assets as standalone PNG files derived from exact source-image crop pixels and loads those files directly in live Sprite3D nodes. The earlier in-memory palette/row reconstruction is historical. Visible names, quest text, counts and labels remain placeholders unless separately approved.

## Visual Pack 011 Direct Concept-Photo PNG Assets — latest build-verified checkpoint

See `docs/40_art/PIXEL_RPG_VISUAL_PACK_011_DIRECT_PHOTO_ASSETS.md`.

## Latest verified checkpoint — Visual Pack 011 Direct Concept-Photo PNG Assets

- exact build source SHA: `93978e1947fe8cffaeb0876574d8d761dcad90b2`;
- workflow run: `35947488962` — SUCCESS;
- job: `107468585038` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.19-visual-pack-011-direct-photo-assets`;
- APK: `PixelRPG-visual-pack-011-direct-photo-assets-debug.apk`;
- APK size: `58,290,596` bytes;
- APK SHA-256: `bec6ba206a293edab5ab6b5220090e444b110a3521f7f8a48c6e9b6cade40c7b`;
- APK artifact ID: `10787297932`;
- APK artifact digest: `f8392f06f850c459a8465c7e977e661c68b3230ac87a7f34be796d537db1b741`;
- build-evidence artifact ID: `10787163398`;
- build-evidence digest: `558dc4dd6b961db45d683ca4b6abbbf61374c314c811dcb85bba0cbf4805775c`.

Concept source authority:
- `voxel_fantasy_village_gate.png`, 1672 × 941;
- source SHA-256 `766e16c7992699553842c7205eeef060a483e7c758f1ed3c3193c63ba0373b2b`;
- seven standalone RGBA PNG game assets are now stored under `game/assets/environment/starting_area/concept_photo_sprites_011/`;
- the live `ConceptPhotoReconstruction011` loads those files directly with `load(res://...png)`; Pack 011 no longer reconstructs their pixels from palette/row arrays in GDScript;
- the Pack 011 CI gate checks each PNG path, imported dimensions, exact original-file SHA-256 bytes, live Sprite3D resource paths, nearest filtering, presentation-only ownership, first-person camera and hidden third-person body.

Direct live PNG assets:
- left gate banner;
- right gate banner;
- smith hanging banner;
- smith forge panel;
- direction signpost;
- water trough;
- fence segment.

Preserved:
- authoritative existing world/collision geometry;
- first-person camera/input and Pack 009 viewmodel;
- smith entry/roof/UseAnchor behavior;
- Gate Warden interaction;
- Mudcrest targeting/anatomy;
- no-attack combat bootstrap;
- State Ownership 001 and deterministic combat/status gates.

Drive archival:
- folder: `Pixel RPG/Builds/First Person/2026-09-23_run-35947488962_visual-pack-011-direct-photo-assets/`;
- folder ID: `1wQEJac7nM8ym79w-KRTZ_chrsmPb5FPn`;
- BuildIdentity Markdown, raw CI evidence and device checklist are verified present;
- direct APK and BuildIdentity JSON Drive copies are NOT YET VERIFIED because the local-container handoff expired. Do not claim them present until a file-reference upload succeeds.

Physical Android visual acceptance, billboard angle quality, touch feel, sustained FPS/heat and installed footprint remain NOT VERIFIED.

## Historical Visual Pack 011 Concept Photo Sprites

See `docs/40_art/PIXEL_RPG_VISUAL_PACK_011_CONCEPT_PHOTO_SPRITES.md` for the superseded in-memory implementation.

## Historical verified checkpoint — Visual Pack 011 Concept Photo Sprites

- exact build source SHA: `444bae4da21c93fcaf975f93c6f09e29a65db3bf`;
- workflow run: `35941955332` — SUCCESS;
- job: `107451563407` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.18-visual-pack-011-concept-photo-sprites`;
- APK: `PixelRPG-visual-pack-011-concept-photo-sprites-debug.apk`;
- APK size: `58,276,380` bytes;
- APK SHA-256: `5a5b736801c076178df73aa40cf083e67a8b658d9bdba47968dc89df86fdbd7b`;
- APK artifact ID: `10785097119`;
- APK artifact digest: `6374b38aa78757a39626fffe47bc5f95756ede79e2aeba77286bd15723d5d76c`;
- build-evidence artifact ID: `10785690463`;
- build-evidence digest: `e452c016616ec53e8e3224bfcb5343c8cec9e3e6749befde3d14b60798d69c02`.

Concept source authority:
- generated image: `voxel_fantasy_village_gate.png`;
- dimensions: `1672 × 941`;
- SHA-256: `766e16c7992699553842c7205eeef060a483e7c758f1ed3c3193c63ba0373b2b`;
- Pack 010 sampled concept pixels into repeatable material textures only;
- Pack 011 is the first checkpoint that reconstructs and renders concrete pictured objects from the concept pixel data.

Applied live photo-derived objects:
- left gate banner;
- right gate banner;
- smith hanging banner;
- smith forge panel;
- direction signpost;
- water trough;
- fence segment.

Implementation boundary:
- the photo-derived objects are runtime-generated `Sprite3D` presentation assets using palette-indexed pixel data derived from exact source-image crops;
- they are instantiated under `WorldGeometry/ConceptPhotoReconstruction011`;
- they own no collision, input, interaction, targeting, combat, save state or durable world state;
- existing geometry/collision remains authoritative underneath so gameplay behavior is preserved;
- this is a 2.5D concept-object reconstruction, not a claim that every pictured object has already become a full 3D mesh.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35941955332_visual-pack-011-concept-photo-sprites/`
- folder ID: `1PqJNvEhIJkIlV23Y64MdWw_LwfEFGftK`;
- APK ID: `1j5ZzFk81tHO8E28w1V4lFZNlCZXks2h1`;
- BuildIdentity JSON ID: `1iBthD8jjScWp-jUEQZqBTmFEPE7R55_H`;
- BuildIdentity Markdown ID: `1CyEJl8YNhsC2a0BULQIPLZx7TpTDhW2M`;
- raw CI evidence ID: `1qZ9yHMwUrYfim1RH7AT9-glFYer9L0Q8`;
- device checklist ID: `1RZEHACTSrlKenha4ziRAaC2soPnXdqu9`.

Verification:
- Pack 011 exact concept-photo sprite gate PASS;
- all prior first-person, viewmodel, image-derived material, Mudcrest, HUD, smith, targeting/combat, State Ownership, world-base and Starting Area Pack gates PASS;
- deterministic combat/anatomy/status regressions PASS;
- Android export and package-size ceiling PASS.

Physical Android visual acceptance, sprite alignment/occlusion quality, touch feel, sustained FPS/heat and installed footprint remain NOT VERIFIED.

## Visual Pack 010 Image-Derived Assets — latest build-verified checkpoint

## Latest verified checkpoint — Visual Pack 010 Image-Derived Assets

- exact source SHA: `5d6c26359f3fc69fbc787c05fce693e9a5492f45`;
- workflow run: `35940008044` — SUCCESS;
- job: `107445603048` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.17-visual-pack-010-image-derived-assets`;
- APK: `PixelRPG-visual-pack-010-image-derived-assets-debug.apk`;
- APK size: `58,259,273` bytes;
- APK SHA-256: `6fcf9db2d7dcbfdad6b08185a951e8e3a15d7ec86faa6eece26b13c0c2f83b91`;
- APK artifact ID: `10784433455`;
- APK artifact digest: `a2d83a4eba660cd7dbf151abb3a584dbf1ed23963d4c43ef83b66f4e674a0891`;
- build-evidence artifact ID: `10785025141`;
- build-evidence digest: `3c2b5b794396d767b3948de13575d21ee2e0e7cbaa36d8c89b8c354585365809`.

Concept source authority:
- generated concept: `voxel_fantasy_village_gate.png`;
- source dimensions: `1672 × 941`;
- source SHA-256: `766e16c7992699553842c7205eeef060a483e7c758f1ed3c3193c63ba0373b2b`;
- runtime textures are sampled from actual concept pixels for wood, stone, dirt, foliage, roof, banner cloth and metal;
- `game/assets/textures/concept_derived/image_derived_asset_manifest.gd` records the exact source identity and crop regions;
- Pack 010 runtime gate proves representative gate/smith/path/pine/rock/lantern materials reference those image-derived texture resources.

Preserved:
- first-person camera/controller and hidden third-person body;
- world positions and collision ownership;
- smith doorway/roof/UseAnchor contracts;
- Gate Warden interaction;
- Mudcrest targeting/anatomy;
- no-attack combat bootstrap;
- State Ownership 001 and deterministic combat/status regressions.

Drive archival status:
- immutable folder exists: `Pixel RPG/Builds/First Person/2026-09-23_run-35940008044_visual-pack-010-image-derived-assets/`;
- folder ID: `137B3IVmt9A3WFRKUiMd4FfKctU_g1cEo`;
- BuildIdentity Markdown, raw CI evidence and device checklist are uploaded;
- direct APK and BuildIdentity JSON Drive copies are not yet verified because their file-handoff upload expired. Do not claim them present until verified.

Physical Android visual acceptance, touch feel, sustained FPS/heat and installed footprint remain NOT VERIFIED.

## Visual Pack 009 First-Person Viewmodel — historical build-verified checkpoint

## Latest verified checkpoint — Visual Pack 009 First-Person Viewmodel

- exact source SHA: `6e68a33df91b9d429d5c2fb1c913c3feb398c029`;
- workflow run: `35929499121` — SUCCESS;
- job: `107412442606` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.16-visual-pack-009-first-person-viewmodel`;
- APK: `PixelRPG-visual-pack-009-first-person-viewmodel-debug.apk`;
- APK size: `58,240,674` bytes;
- APK SHA-256: `67bc2e044ae85bc30036aba3c2cc50dd65d8e8d169f4aa4b28fd38f2d46141b3`;
- APK artifact ID: `10780781356`;
- APK artifact digest: `544acafcd06a081c2383d02e6b2bdcbe0ddf9a053df73d7f1076debb232d1982`;
- build-evidence artifact ID: `10780218824`;
- build-evidence digest: `b06945809304fa1c1f74d59d343e49e90ae4d4cb188d003d3d4666e7bdce6891`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35929499121_visual-pack-009-first-person-viewmodel/`
- folder ID: `1Vgq-4_4Qj4WEpZg3NL89mP0fItT3PhN2`;
- APK ID: `1kgYjaxiRJLUqL7iFH58fHR1L0OXdcHM2`;
- BuildIdentity JSON ID: `1KBV8O_KpQoPmYB0BntdVByBgDwH9paen`;
- BuildIdentity Markdown ID: `1IP1Vi4vG9XhteHOoGuF18tsOF1zzVxTe`;
- raw CI evidence ID: `10jycXz76JRKgi76-dCitTv4JOg9VTY1o`;
- device checklist ID: `1LG4B8xRlPp4GDlf7Le5a20SnHS_Rni1b`.

Implemented and verified:
- reusable `first_person_viewmodel_01.tscn` is a direct child of the active `Camera3D`;
- visible lower-frame left/right forearms and hands plus a bounded poleblade shaft/head/hook;
- viewmodel owns no scripts, Control nodes, physics, collision, input, targeting, damage, AP/Stamina or durable state;
- active camera path remains unchanged, camera local transform remains identity, FOV `70`, near `0.04`, far `180`;
- legacy SpringArm remains camera-free and third-person Hunter body remains hidden;
- camera-relative movement, target-count contract and no-attack combat-domain state remain unchanged;
- all prior asset/world/Mudcrest/combat/state/deterministic gates passed;
- Android export and package-size ceiling passed.

Physical-device viewmodel obstruction/readability, clipping, touch feel, sustained performance/heat and installed footprint remain NOT VERIFIED.

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

## Starting Area Asset Pack 001 — latest build-verified presentation checkpoint

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

Latest specialized handoff:
- `docs/70_handoff/PIXEL_RPG_STARTING_AREA_ASSET_PACK_001_2026-09-23.md`.

## Starting Area Asset Pack 007 Path Surface Details — latest build-verified checkpoint

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

## Starting Area Asset Pack 006 Settlement Building Details — latest build-verified checkpoint

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

## Starting Area Asset Pack 005 Gate Warden Visual — latest build-verified checkpoint

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

## Starting Area Asset Pack 003 Environment Dressing — latest build-verified checkpoint

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

## Starting Area Asset Pack 002 Smith Visual — latest build-verified checkpoint

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

Latest specialized handoff:
- `docs/70_handoff/PIXEL_RPG_STARTING_AREA_ASSET_PACK_002_SMITH_2026-09-23.md`.

## Current Pixel RPG implementation map

Prototype presentation:
- scene: `game/scenes/prototypes/pixel_rpg_prototype_001.tscn`;
- controller/world script: `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
- app entry: `game/scripts/app_shell.gd`;
- project config: `game/project.godot`;
- Android export: `game/export_presets.cfg`;
- CI: `.github/workflows/pixel-rpg-prototype-android.yml`.

Implemented presentation layer includes:
- 800×360 low-resolution 3D SubViewport + nearest stretch;
- per-vertex/nearest primitive material treatment;
- legacy SpringArm chase camera exists in older evidence; creator-authoritative current work bypasses it for active first-person camera;
- responsive safe-area HUD positioning;
- settlement gate/street/trail prototype;
- Gate Warden interaction;
- distant monster observation proxy;
- Diamond Watch prototype panel.

Current state/persistence ownership authority:
- `game/scripts/state/pixel_rpg_state_ownership_contract.gd`;
- `docs/50_technical/persistence/PIXEL_RPG_STATE_OWNERSHIP_CONTRACT.md`.

Existing reusable monster-hunting runtime remains primarily under `game/`:
- generic combat/status/outcome under `game/scripts/gameplay/combat/`;
- encounter logic under `game/scripts/gameplay/encounter/`;
- Monster-01 anatomy/content under `game/scripts/gameplay/monsters/monster_01/`;
- tracking under `game/scripts/gameplay/tracking/`;
- tests under `game/tests/` and `tests/quality/hunt01/`.

## Shooter separation

The later standalone first-person Shooter RPG is not Pixel RPG authority. Its `shooter_game/` runtime, first-person 115° camera, firearm-first progression, wall-jump implementation and shooter APK evidence must not be merged into Pixel RPG unless the user explicitly chooses a specific reusable element later.

The `shooter-rpg` ref is still physically present because the connected GitHub actions do not expose branch deletion. It is non-authoritative.

## Storage authority

Hard player-required installed/runtime footprint: ≤ `2,000,000,000` bytes.

Required runtime downloads count. Development-only repo/source/CI files do not. APK/AAB size is package evidence only.

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

Source:\n`977d4004625631d077856b5a49246fbf08313b64`.

Workflow `35566594002`: SUCCESS.\nJob `106229556552`: SUCCESS.

Artifacts:
- APK `10624343272`;
- evidence `10623919419`.

Passed:
- Godot `4.7.2.stable` import/parse;
- AppShell smoke;
- prototype scene smoke;
- Pack 002 runtime/anatomy-mapping gate `24/24`;
- Pack 003 HUD runtime gate `19/19`;
- Pack 004 enterable-smith runtime gate `19/19`;
- Combat Bridge 001 targeting gate `32/32`;
- selected deterministic combat/anatomy/status regressions;
- Android debug export;
- package-size ceiling;
- artifact uploads.

Latest specialized handoff:
- `docs/70_handoff/PIXEL_RPG_FIRST_PERSON_REALIGNMENT_2026-09-23.md`.

Historical Bridge 001 handoff remains evidence for targeting behavior but its third-person presentation wording is superseded.

Master work register:
- `docs/00_project/PIXEL_RPG_MASTER_WORK_REGISTER_2026-09-21.md`;
- GitHub master tracker: issue #27.

## CI trigger policy

Pixel RPG Android CI runs for `game/**` changes or workflow-file changes. Documentation-only updates should not trigger a full Android export.

## Verification boundary

`PIXEL_RPG_VISUAL_DIRECTION_DESIGNED = YES`
`PIXEL_RPG_REFERENCE_IMAGE_SAVED = YES`
`PIXEL_RPG_THIRD_PERSON_PROTOTYPE_001_IMPLEMENTED = YES`
`PIXEL_RPG_PIXEL_RENDER_PATH_IMPLEMENTED = YES`
`PIXEL_RPG_SPRING_ARM_CAMERA_COLLISION_IMPLEMENTED = YES`
`PIXEL_RPG_SAFE_AREA_HUD_LOGIC_IMPLEMENTED = YES`
`PIXEL_RPG_WORLD_COMPOSITION_PACK_001_VERIFIED = YES`
`PIXEL_RPG_VISUAL_PACK_002_VERIFIED = YES`
`PIXEL_RPG_VISUAL_PACK_003_HUD_VERIFIED = YES`
`PIXEL_RPG_WORLD_PACK_004_ENTERABLE_SMITH_VERIFIED = YES`
`PIXEL_RPG_COMBAT_BRIDGE_001_TARGETING_VERIFIED = YES`
`PIXEL_RPG_STATE_OWNERSHIP_CONTRACT_001_VERIFIED = YES`
`PIXEL_RPG_MUDCREST_ANATOMY_VISUAL_MAPPING_VERIFIED = YES`
`PIXEL_RPG_PROTOTYPE_HEADLESS_SMOKE_VERIFIED = YES`
`PIXEL_RPG_SELECTED_DOMAIN_REGRESSIONS_VERIFIED = YES`
`PIXEL_RPG_ANDROID_BUILD_VERIFIED = YES`
`PIXEL_RPG_PHONE_RUNTIME_VERIFIED = NO`
`PIXEL_RPG_VISUAL_QUALITY_VERIFIED = NO`
`PIXEL_RPG_PERFORMANCE_VERIFIED = NO`
`INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`

## Exact continuation

`PIXEL_RPG_COMBAT_BRIDGE_002_DOMAIN_BOOTSTRAP_NO_ATTACK`.

First-person presentation now has exact-source Android evidence. Bridge 002 must preserve the first-person camera and current-world actor transforms while bootstrapping only the approved combat/anatomy domain authorities.

## Current exact verification checkpoint

Latest Android-build-verified source is `9b84000ca343dff0d4baa86accb024b9ebac4fb8`.  
Workflow/job: `35917375696` / `107372326343` — SUCCESS.  
Godot: `4.7.2.stable.official.ed1daf0bf`.  
APK: `PixelRPG-state-ownership-001-debug.apk`, `58,052,621` bytes, SHA-256 `531498c45c6d2293d5d38d646ca277ca7d0968b43caedb390ed3d3806578c532`.  
State Ownership Contract gate: `70/70` PASS.  
BuildIdentity v1 is present in the evidence artifact.  
Current immutable Drive revision ID: `1PODIl1OXJ5Rpz5CqjmueEfau-HLXasci`.

Latest specialized handoff:
- `docs/70_handoff/PIXEL_RPG_STATE_OWNERSHIP_CONTRACT_001_2026-09-23.md`.

## Continuation

Next bounded slice: `PIXEL_RPG_VISUAL_PACK_011_CONCEPT_OBJECT_RECONSTRUCTION`.

Add presentation-only first-person hands/poleblade beneath the existing active Camera3D. Preserve all camera/controller/collision, targeting/combat, anatomy/domain and state-ownership authority. The viewmodel must not own attack or collision behavior.

Object-reconstruction priority: Pack 010 proves real concept pixels are used. Pack 011 must now reconstruct the major pictured gate/smith/building/prop forms as reusable runtime assets; lighting/atmosphere comes only after this visual-source application is materially complete.
