# Asset Generation Pass — 2026-09-02

Status: ACTIVE HANDOFF / REFERENCE GENERATION AUTHORIZED / GAMEPLAY IMPLEMENTATION STILL NOT AUTHORIZED

## Current objective

Generate the first stable hunter/monster reference sheets from recorded designs while preserving strict separation between:
- modeling references;
- runtime 2D assets;
- 3D conversion inputs;
- approved exports.

## Drive root

`Unnamed Hunt RPG`
ID: `1N3FbZhLE9ZfEy1Og-iNiB2B7nyyfangt`

### Modeling references
`01_Modeling_References` — `1qsF_JUYBs9ZQ-1lZPHsTCwWn87W46VIs`
- Hunter — `1XM-kcLfxD3Af-HAPRu4zlO691RgDJLlE`
- Monster_01 — `1klaz1KEefbWZ2cMMH3N6m--lbQqf9CUe`

### Runtime 2D
`02_2D_Runtime_Assets` — `1PJ7uzt8oZBE5jFPXoBeldGVVv9Dy1Ko_`
- UI_Icons — `1lB-X102Z804LpQw5SBuDMibHHqtWVQzR`
- Bestiary_Portraits_Illustrations — `1Qz3XZYmsYP-BtXmmdVHnMxBe_-lk7h2Q`
- Decals_VFX_Sprites — `1oAkamHy_0AZtDksTOAyA_BrNHpdOmiMY`
- Maps_Billboards_Impostors — `1d14laLOIaHoL9ydx75IBWGfh0i_xqYbe`

### 3D conversion inputs
`03_3D_Conversion_Inputs` — `1hs-qJiiF6R-1NLBmlChvSK4rlQilONLz`
- Hunter — `1fbVPHHyVmGuqAxaKsUXSKAYdYk-BeJy4`
- Monster_01 — `19iD9tQXEtQEL-Io8Y5MD5h-WPRVKYjEa`

### Approved exports
`04_Approved_Exports` — `1yrS6vXQElSahDUtFJjjst25gq8RIGm2P`
- 2D_Runtime — `1S7q8hBrcFoI2iPSJqWXPWJrGmxfPu3A_`
- 3D_Game_Ready — `1rA4FTPUfX1VXdU3QlhVMEShr5gzn7Z_g`

## New/updated authorities

Art pipeline:
- `docs/40_art/asset_pipeline/README.md`
- `docs/40_art/asset_pipeline/RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
- `docs/40_art/asset_pipeline/RUNTIME_2D_ASSET_GUIDE.md`
- `docs/40_art/asset_pipeline/PNG_TO_3D_AUTOMATION_PIPELINE.md`
- `docs/40_art/asset_pipeline/GENERATED_SHEET_REGISTRY.md`
- `docs/40_art/asset_pipeline/ASSET_QA_GATES.md`

Hunter:
- `docs/30_content/hunters/HUNTER_BASE_01/README.md`

Monster:
- `docs/30_content/monsters/MONSTER_01/README.md`
- `ANATOMY_AND_DAMAGE.md`
- `CRYSTAL_AND_MUTATION.md`
- `BEHAVIOR_AND_REGION.md`

## Hunter Base 01 selected design

Production/modeling base only; not final protagonist identity.

- prototype height: 1.75 m;
- realistic adult humanoid proportions;
- practical frontier layered cloth/leather/limited protective plate;
- modular harness/pouches/boots/field tools;
- no giant fantasy armor;
- three art/loadout silhouette variants: light tracking, balanced hunt, reinforced dangerous-hunt;
- final weapon family remains OPEN.

## Monster 01 selected design

Working name: **Mudcrest Raker**.

- technical package `MONSTER_01`;
- provisional species ID `species_r01_mudcrest_raker`;
- territorial root-foraging/omnivorous quadruped;
- Region 01 native;
- approx. 6.6 m nose-to-tail;
- approx. 3.0 m shoulder/body height;
- front-heavy body;
- paired mineral horn crest;
- large dorsal plates;
- mud-adapted feet;
- long muscular tail with legal distal sever zone;
- horn break, leg impairment, plate break, tail sever all change capabilities;
- provisional Mineral/Earth-type crystal expression;
- internal forward-torso crystal core;
- berserk consumes life-force reserve and cannot restore destroyed anatomy;
- mutation candidates: Mirestep Pads, Bastion Plates, Deep-Scent Crest, Resonant Core Veins.

## Sheet generation order

1. `HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001.png`
2. `HUNTER_BASE_01_H04_MODULAR_SILHOUETTES_v001.png`
3. `MONSTER_01_M01_M02_HERO_TURNAROUND_v001.png`
4. `MONSTER_01_M03_ANATOMY_v001.png`
5. `MONSTER_01_M04_DAMAGE_STATES_v001.png`
6. `MONSTER_01_M05_CRYSTAL_MUTATION_VARIANTS_v001.png`
7. `MONSTER_01_M08_THREE_DISTANCE_v001.png`

Generation limits may stop the pass only at completed-sheet boundaries.

## Zoom-quality rule

Do not rely on unlimited zoom into one crowded raster sheet.

Use:
- high-resolution masters;
- dedicated close-detail sheets;
- vector/SDF source for scalable symbols where appropriate;
- master→derivative export chain;
- mip/LOD strategy later in engine;
- AI upscaling only as reference enhancement, not technical truth.

## 3D conversion rule

A one-click service may generate a candidate mesh, but `GAME_READY_3D` requires:
- reconstruction review;
- scale normalization;
- topology QA;
- anatomy binding;
- break/sever setup;
- rigging and deformation testing;
- animation testing;
- LOD generation/review;
- collision/hit proxies;
- engine import;
- Android runtime/performance verification.

Candidate external reconstruction tools researched this pass:
- Meshy;
- Tripo;
- Rodin/Hyper3D;
- Blender selected as the likely free technical cleanup/orchestration DCC candidate.

No 3D reconstruction service was invoked in this pass.

## Current gates

`ASSET_DRIVE_STRUCTURE_CREATED = YES`
`RASTER_ZOOM_POLICY_RECORDED = YES`
`RUNTIME_2D_POLICY_RECORDED = YES`
`PNG_TO_3D_PIPELINE_RECORDED = YES`
`ASSET_QA_GATES_RECORDED = YES`
`HUNTER_BASE_01_DESIGNED = YES`
`MONSTER_01_DESIGNED = YES`
`REFERENCE_SHEET_GENERATION = STARTING`
`GAMEPLAY_SOURCE = NOT CREATED`
`ENGINE = NOT SELECTED`
`PHONE_RUNTIME = NOT VERIFIED`

## Next after sheet generation

Review generated sheets against the registry/QA gates. Only selected clean turnarounds are copied to 3D-conversion input folders. Only separately cleaned runtime derivatives may enter 2D-runtime folders.
