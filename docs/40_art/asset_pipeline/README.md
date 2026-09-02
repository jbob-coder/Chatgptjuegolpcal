# Unnamed Hunt RPG — Asset Production Pipeline

Status: ACTIVE DESIGN/PRODUCTION CONTRACT / NO ENGINE IMPORT YET
Last reconciled: 2026-09-02

## Purpose

Separate four asset classes that must never be confused:

1. **Modeling references** — visual/technical references used to create 3D assets.
2. **2D runtime assets** — images intentionally shipped in the game.
3. **3D conversion inputs** — clean PNG/multiview sources optimized for image-to-3D/reconstruction tools.
4. **Approved exports** — technically verified game-ready 2D/3D outputs.

A source image may be copied into more than one lane only when it independently satisfies each lane's requirements. Classification is explicit; folder location alone does not change technical validity.

## Drive storage map

Project root: `Unnamed Hunt RPG`
- Folder ID: `1N3FbZhLE9ZfEy1Og-iNiB2B7nyyfangt`

### Modeling references
`01_Modeling_References`
- ID: `1qsF_JUYBs9ZQ-1lZPHsTCwWn87W46VIs`
- Hunter: `1XM-kcLfxD3Af-HAPRu4zlO691RgDJLlE`
- Monster_01: `1klaz1KEefbWZ2cMMH3N6m--lbQqf9CUe`

### 2D runtime assets
`02_2D_Runtime_Assets`
- ID: `1PJ7uzt8oZBE5jFPXoBeldGVVv9Dy1Ko_`
- UI_Icons: `1lB-X102Z804LpQw5SBuDMibHHqtWVQzR`
- Bestiary_Portraits_Illustrations: `1Qz3XZYmsYP-BtXmmdVHnMxBe_-lk7h2Q`
- Decals_VFX_Sprites: `1oAkamHy_0AZtDksTOAyA_BrNHpdOmiMY`
- Maps_Billboards_Impostors: `1d14laLOIaHoL9ydx75IBWGfh0i_xqYbe`

### 3D conversion inputs
`03_3D_Conversion_Inputs`
- ID: `1hs-qJiiF6R-1NLBmlChvSK4rlQilONLz`
- Hunter: `1fbVPHHyVmGuqAxaKsUXSKAYdYk-BeJy4`
- Monster_01: `19iD9tQXEtQEL-Io8Y5MD5h-WPRVKYjEa`

### Approved exports
`04_Approved_Exports`
- ID: `1yrS6vXQElSahDUtFJjjst25gq8RIGm2P`
- 2D_Runtime: `1S7q8hBrcFoI2iPSJqWXPWJrGmxfPu3A_`
- 3D_Game_Ready: `1rA4FTPUfX1VXdU3QlhVMEShr5gzn7Z_g`

## Classification law

### MODEL_REFERENCE
May define:
- silhouette;
- color/material intent;
- proportion candidate;
- anatomy-region intent;
- damage-state appearance;
- equipment modularity;
- mood/presentation.

Does not prove:
- exact dimensions;
- topology;
- UVs;
- rigging;
- texture-map correctness;
- collision/hit proxies;
- LOD/device performance.

### RUNTIME_2D
Must be intentionally authored for runtime use and pass:
- native-size readability;
- zoom/scaling policy;
- transparency/edge check;
- compression check;
- mip/filter check where applicable;
- memory budget check;
- device visual check.

### CONVERSION_INPUT
Must prioritize reconstruction quality over beauty composition:
- isolated subject;
- neutral background/alpha;
- neutral pose;
- minimal perspective distortion;
- complete unobstructed silhouette;
- consistent multiview proportions where available;
- no text overlapping subject;
- no dramatic effects/particles;
- high source resolution.

### APPROVED_EXPORT
Only after technical validation. This folder is not a dumping ground.

## Source/master/derivative rule

Never overwrite the master source with a smaller runtime derivative.

Preferred chain:
`MASTER SOURCE → CLEAN MASTER → TASK-SPECIFIC DERIVATIVES → VERIFIED EXPORT`

Keep original/generated source, cleaned source, and runtime/3D derivatives separately versioned.

## Required companion guides

- `RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
- `RUNTIME_2D_ASSET_GUIDE.md`
- `PNG_TO_3D_AUTOMATION_PIPELINE.md`
- `GENERATED_SHEET_REGISTRY.md`

Related root authorities:
- `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
- `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`
- `PERFORMANCE_BUDGETS_AND_CAPS.md`
- `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`

## Current gate

`STORAGE_TAXONOMY = CREATED`
`REFERENCE_VS_RUNTIME_SEPARATION = RECORDED`
`PNG_TO_3D_PIPELINE = DESIGNING`
`HUNTER_01_DESIGN = DESIGNING`
`MONSTER_01_DESIGN = DESIGNING`
`ENGINE_IMPORT = NOT AUTHORIZED/NOT AVAILABLE YET`
