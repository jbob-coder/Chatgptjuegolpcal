# Asset Generation / Lineage Pass — 2026-09-02

Status: ACTIVE HANDOFF / HUNTER H02 v001 REVIEWED / REVISION REQUIRED / GAMEPLAY IMPLEMENTATION STILL NOT AUTHORIZED

## Current objective

Correct the earliest broken visual-production dependency before reviewing or generating additional downstream sheets.

Hunter H02 v001 has now been reviewed against the asset QA gates.

Decision:
**`REVISE`**.

Current bounded next action:
**create Hunter H02 v002 only from `docs/40_art/reviews/HUNTER_BASE_01_H02_v001_QA.md`, then review v002 before advancing to H04 or Monster 01.**

Reference-image generation remains authorized. Gameplay code, engine project, scenes, APK and final game-ready 3D implementation remain not authorized.

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

Review archive:
- `docs/40_art/reviews/README.md`
- `docs/40_art/reviews/HUNTER_BASE_01_H02_v001_QA.md`

## Lineage law

The manifest, not folder or filename, determines:
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

# Hunter H02 v001 QA result

Reviewed file:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_REFERENCE.png`
Drive file ID: `1U9vm0y7YSSGnEiPYO8C7M8QAq43FyibV`

Decision: `REVISE`.
Review state: `REVIEWED_WITH_ISSUES`.
Permitted use: `DISCUSSION_ONLY`.

Do not use v001 as:
- technical modeling authority;
- detail reference;
- image-to-3D conversion input;
- runtime 2D asset.

Primary defects:
- useful figure detail is far lower than the large composed canvas suggests;
- face/hands/boots/gear seams lack trustworthy native detail;
- front/side/back armor/harness construction changes across views;
- no clean 3/4 confirmation;
- views are illustrative rather than conversion-safe orthographic/multiview references;
- neutral reusable base is too close to a fixed armored male-ranger identity;
- metal coverage is heavier than desired for the neutral base.

Directions worth preserving:
- grounded frontier tone;
- realistic adult overall proportion;
- readable shoulder/boot/layered-garment silhouette;
- restrained practical material family;
- 1.75 m Markdown scale authority.

Upscaled H02 derivative:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_UPSCALED_REFERENCE.png`
Drive file ID: `1hcxXoOH6xsy-CXh2EoyhnjgIH_etizOc`
Disposition: `DISCUSSION_ONLY`; preserve for inspection/provenance, never treat enlarged pixels as recovered technical information.

## Required H02 v002

Planned filename:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_REF_v002.png`

Required:
- front orthographic-like neutral view;
- left side neutral view;
- back neutral view;
- right side when practical;
- separate clean 3/4 confirmation;
- consistent pose/body/gear across views;
- arms slightly separated from torso;
- hands and boots unobstructed;
- no held weapon;
- layered cloth/leather foundation;
- limited removable protection;
- explicit modular equipment boundaries;
- less identity-specific face/hair;
- no generated labels touching figure;
- plain/transparent background;
- enough native figure pixels to inspect hands, boots, harness and shoulder attachments without relying on upscale invention.

If one image cannot provide adequate close details, create separate detail references later rather than overloading the turnaround.

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

Monster 01 visual review remains downstream of the corrected Hunter H02 dependency for the current bounded sequence.

---

# Current reconciled sheet state

## Hunter H02 v001 source
`REVIEWED_WITH_ISSUES / REVISE / DRIVE_VERIFIED`

## Hunter H02 upscaled derivative
`REVIEWED_WITH_ISSUES / DISCUSSION_ONLY / DRIVE_VERIFIED`

## Hunter H02 v002
`PLANNED REVISION`

## Hunter H04 silhouette reference
`GENERATED_UNREVIEWED / DRIVE_VERIFIED`

Do not review/promote H04 until v002 establishes the corrected neutral base.

## Monster M01/M02 hero + turnaround
`GENERATED_UNREVIEWED / DRIVE_VERIFIED`

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

H02 v001 demonstrates why this matters: a large composed PNG can still contain a low-detail embedded figure source.

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

# Current gates

`ASSET_DRIVE_STRUCTURE_CREATED = YES`
`ASSET_MANIFEST_FOLDER_CREATED = YES`
`ASSET_LINEAGE_AUTHORITY_RECORDED = YES`
`DRIVE_REFERENCE_CONTENTS_RECONCILED = YES`
`RASTER_ZOOM_POLICY_RECORDED = YES`
`RUNTIME_2D_POLICY_RECORDED = YES`
`PNG_TO_3D_PIPELINE_RECORDED = YES`
`ASSET_QA_GATES_RECORDED = YES`
`ASSET_REVIEW_ARCHIVE_CREATED = YES`
`HUNTER_BASE_01_DESIGNED = YES`
`MONSTER_01_DESIGNED = YES`
`HUNTER_H02_V001 = REVIEWED_WITH_ISSUES`
`HUNTER_H02_V001_DECISION = REVISE`
`HUNTER_H02_V001_MODELING_USE = NOT PERMITTED`
`HUNTER_H02_V001_CONVERSION_USE = NOT PERMITTED`
`HUNTER_H02_V002 = PLANNED REVISION`
`REFERENCE_SHEET_GENERATION = PAUSED_AT_REVISION_GATE`
`SELECTED_REFERENCE_PROMOTIONS = NONE`
`APPROVED_RUNTIME_2D = NONE`
`GAME_READY_3D = NONE`
`GAMEPLAY_SOURCE = NOT CREATED`
`ENGINE = NOT SELECTED`
`PHONE_RUNTIME = NOT VERIFIED`

## Exact next action

**Generate Hunter H02 v002 only from the QA revision request, then review that revision before touching H04 or Monster 01.**