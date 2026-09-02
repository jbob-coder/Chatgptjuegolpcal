# Asset Generation / Lineage Pass — 2026-09-02

Status: ACTIVE HANDOFF / REFERENCE GENERATION PAUSED FOR QA / GAMEPLAY IMPLEMENTATION STILL NOT AUTHORIZED

## Current objective

Control the first Hunter Base 01 and Monster 01 asset set through explicit lineage, review and promotion rather than continuing to generate quantity without review.

Current bounded next action:
**review Hunter H02 turnaround/scale v001 against `ASSET_QA_GATES.md`, then SELECT / REVISE / REJECT.**

Reference-image generation remains allowed by user instruction, but the quality pipeline currently pauses additional generation until existing sheets are reconciled/reviewed.

Gameplay code, engine project, scenes, APK and final game-ready 3D implementation remain not authorized.

---

# Drive root

`Unnamed Hunt RPG`
ID: `1N3FbZhLE9ZfEy1Og-iNiB2B7nyyfangt`

## Asset manifests
`00_Asset_Manifests` — `1cg-zesn5QTcSIm63pnt1FeH7TYvxKlfo`

## Modeling references
`01_Modeling_References` — `1qsF_JUYBs9ZQ-1lZPHsTCwWn87W46VIs`
- Hunter — `1XM-kcLfxD3Af-HAPRu4zlO691RgDJLlE`
- Monster_01 — `1klaz1KEefbWZ2cMMH3N6m--lbQqf9CUe`

## Runtime 2D working
`02_2D_Runtime_Assets` — `1PJ7uzt8oZBE5jFPXoBeldGVVv9Dy1Ko_`
- UI_Icons — `1lB-X102Z804LpQw5SBuDMibHHqtWVQzR`
- Bestiary_Portraits_Illustrations — `1Qz3XZYmsYP-BtXmmdVHnMxBe_-lk7h2Q`
- Decals_VFX_Sprites — `1oAkamHy_0AZtDksTOAyA_BrNHpdOmiMY`
- Maps_Billboards_Impostors — `1d14laLOIaHoL9ydx75IBWGfh0i_xqYbe`

## 3D conversion inputs
`03_3D_Conversion_Inputs` — `1hs-qJiiF6R-1NLBmlChvSK4rlQilONLz`
- Hunter — `1fbVPHHyVmGuqAxaKsUXSKAYdYk-BeJy4`
- Monster_01 — `19iD9tQXEtQEL-Io8Y5MD5h-WPRVKYjEa`

## Approved exports
`04_Approved_Exports` — `1yrS6vXQElSahDUtFJjjst25gq8RIGm2P`
- 2D_Runtime — `1S7q8hBrcFoI2iPSJqWXPWJrGmxfPu3A_`
- 3D_Game_Ready — `1rA4FTPUfX1VXdU3QlhVMEShr5gzn7Z_g`

Never mix these lanes implicitly.

---

# Asset pipeline authorities

Primary:
- `docs/40_art/asset_pipeline/README.md`
- `ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`
- `GENERATED_SHEET_REGISTRY.md`
- `ASSET_QA_GATES.md`
- `RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
- `RUNTIME_2D_ASSET_GUIDE.md`
- `PNG_TO_3D_AUTOMATION_PIPELINE.md`
- `EXTERNAL_3D_TOOL_EVALUATION.md`

## New lineage law

The manifest, not the folder or filename, determines:
- stable asset identity;
- master/parent lineage;
- class;
- review state;
- permitted use;
- verification gates;
- supersession/rejection state.

Uploading does not approve.
Upscaling does not create technical truth.
Approved/runtime/conversion copies require explicit derived records.

---

# Hunter Base 01 selected design

Production/modeling base only; not final protagonist identity.

- prototype height: 1.75 m;
- realistic adult humanoid proportions;
- practical frontier layered cloth/leather/limited protective plate;
- modular harness/pouches/boots/field tools;
- no giant fantasy armor;
- three art/loadout silhouette variants: light tracking, balanced hunt, reinforced dangerous-hunt;
- final weapon family remains OPEN;
- final protagonist face/identity remains OPEN.

---

# Monster 01 selected design

Working name: **Mudcrest Raker**.

- technical package `MONSTER_01`;
- provisional species ID `species_r01_mudcrest_raker`;
- Region 01 territorial root-foraging/omnivorous quadruped;
- approx. 6.6 m nose-to-tail;
- approx. 3.0 m shoulder/main-body height;
- front-heavy body;
- paired mineral horn crest;
- breakable dorsal plates;
- broad mud-adapted feet;
- long muscular tail with legal distal sever zone;
- internal forward-torso crystal core;
- provisional Mineral/Earth-type expression;
- horn/leg/plate/tail damage changes actual capabilities;
- berserk consumes crystal life-force and cannot restore destroyed anatomy;
- mutation candidates: Mirestep Pads, Bastion Plates, Deep-Scent Crest, Resonant Core Veins.

---

# Current reconciled sheet state

## Drive-verified Hunter files

### Hunter H02 source reference
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_REFERENCE.png`
Drive file ID: `1U9vm0y7YSSGnEiPYO8C7M8QAq43FyibV`
State: `GENERATED_UNREVIEWED`

### Hunter H02 inspection upscale
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_UPSCALED_REFERENCE.png`
Drive file ID: `1hcxXoOH6xsy-CXh2EoyhnjgIH_etizOc`
State: `GENERATED_UNREVIEWED / REFERENCE_DERIVATIVE`

### Hunter H04 silhouette reference
`HUNTER_BASE_01_H04_MODULAR_SILHOUETTES_v001_DRAFT_REFERENCE.png`
Drive file ID: `1j2eQCUfUzc-kgt4egH15dzPK-5Gv6OAF`
State: `GENERATED_UNREVIEWED`

## Drive-verified Monster file

### Monster M01/M02 hero + turnaround
`MONSTER_01_M01_M02_HERO_TURNAROUND_v001_VISUAL_CANDIDATE.png`
Drive file ID: `1yMLP6lcO4Us4uJO2CMNUCusiXlWpwI2m`
State: `GENERATED_UNREVIEWED`

## Generated but current Drive persistence not verified

- `MONSTER_01_M03_ANATOMY_v001_TECHNICAL_OVERLAY.png`
- `MONSTER_01_M04_DAMAGE_STATES_v001_DRAFT_REFERENCE.png`
- `MONSTER_01_M05_CRYSTAL_MUTATION_VARIANTS_v001_TECHNICAL_CONCEPT.png`
- `MONSTER_01_M08_THREE_DISTANCE_v001_VISUAL_CANDIDATE.png`

Do not report those four as safely persisted in Drive until upload/readback succeeds.

---

# Zoom-quality rule

Do not rely on unlimited zoom into a crowded raster sheet.

Use:
- high-resolution masters;
- dedicated close-detail sheets;
- vector/SDF source for scalable symbols where appropriate;
- master→independent derivative export chain;
- mip/LOD strategy later in engine;
- AI upscaling only as reference enhancement, not technical truth.

The H02 upscaled copy is therefore a child reference derivative, not the authoritative master.

---

# PNG → 3D rule

A one-click service may generate only a candidate mesh.

`GAME_READY_3D` still requires:
- reconstruction review;
- world-scale normalization;
- topology QA/retopo;
- anatomy binding;
- break/sever setup;
- rigging/deformation tests;
- animation;
- LOD;
- collision/hit proxies;
- engine import;
- authoritative state binding;
- Android runtime/performance verification.

Current researched reconstruction candidates remain:
- Meshy;
- Tripo;
- Rodin/Hyper3D;
- Blender as likely free technical cleanup/orchestration DCC.

No 3D reconstruction service has been invoked.

---

# Current quality gate

The correct next step is review, not more generation.

For Hunter H02:
1. verify source file/ID;
2. inspect native pixels;
3. inspect critical close-detail areas;
4. reconcile body height/proportion against 1.75 m authority;
5. check front/side/back consistency;
6. identify generated artifacts or contradictions;
7. classify result:
   - SELECT;
   - REVISE;
   - REJECT;
8. update manifest and registry;
9. only if SELECTED, consider creating a separate clean conversion-input derivative.

Do not evaluate several sheets and silently promote all of them in one pass.

---

# Current gates

`ASSET_DRIVE_STRUCTURE_CREATED = YES`
`ASSET_MANIFEST_FOLDER_CREATED = YES`
`ASSET_LINEAGE_AUTHORITY_RECORDED = YES`
`DRIVE_REFERENCE_CONTENTS_RECONCILED = YES`
`RASTER_ZOOM_POLICY_RECORDED = YES`
`RUNTIME_2D_POLICY_RECORDED = YES`
`PNG_TO_3D_PIPELINE_RECORDED = YES`
`ASSET_QA_GATES_RECORDED = YES`
`HUNTER_BASE_01_DESIGNED = YES`
`MONSTER_01_DESIGNED = YES`
`REFERENCE_SHEET_GENERATION = PAUSED_FOR_QA`
`SELECTED_REFERENCE_PROMOTIONS = NONE THIS LINEAGE PASS`
`APPROVED_RUNTIME_2D = NONE`
`GAME_READY_3D = NONE`
`GAMEPLAY_SOURCE = NOT CREATED`
`ENGINE = NOT SELECTED`
`PHONE_RUNTIME = NOT VERIFIED`

## Exact next action

**Review Hunter H02 only.**

After that one sheet is resolved, choose the next bounded piece from its actual result rather than following a stale batch plan.
