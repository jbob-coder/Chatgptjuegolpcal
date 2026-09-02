# Generated Sheet Registry

Status: ACTIVE REFERENCE REGISTRY
Last reconciled: 2026-09-02

## Purpose

Track every generated visual sheet, its purpose, classification, revision, intended Drive destination and whether it is safe for modeling reference, 3D conversion, runtime 2D use, or only discussion.

## Status meanings

- `PLANNED` — specification exists; image not generated.
- `GENERATED` — image exists but has not passed review.
- `SELECTED_REFERENCE` — approved for visual/modeling reference.
- `CONVERSION_INPUT_CANDIDATE` — clean enough to test image-to-3D, not guaranteed.
- `RUNTIME_2D_CANDIDATE` — may be cleaned/exported for in-game use.
- `SUPERSEDED` — retained for history but not current.
- `TECHNICALLY_VERIFIED` — checked against model/data/scale requirements.

## Existing boards

### REF-MODEL-001
Name: `Unnamed Hunt RPG - Art Direction Overview.png`
Status: `SELECTED_REFERENCE`
Classification: `MODEL_REFERENCE / ART_DIRECTION`
Drive: existing saved reference
Direct runtime use: NO
3D conversion use: NO

### REF-MODEL-002
Name: `Unnamed Hunt RPG - Model Creation Pipeline and Visual Guide.png`
Status: `SELECTED_REFERENCE`
Classification: `PIPELINE_COMMUNICATION`
Direct runtime use: NO
3D conversion use: NO

## Planned/generated sequence

### SHEET-H01 — Hunter turnaround + scale
Planned filename:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001.png`

Drive destination:
`01_Modeling_References/Hunter`

Secondary conversion copy if review passes:
`03_3D_Conversion_Inputs/Hunter`

Required content:
- front;
- side;
- back;
- 3/4 confirmation;
- neutral pose;
- clean silhouette;
- human scale comparison/scale bar kept outside subject;
- no dramatic lighting/background.

Current status: `PLANNED`.

### SHEET-H02 — Hunter modular-equipment silhouettes
Filename:
`HUNTER_BASE_01_H04_MODULAR_SILHOUETTES_v001.png`

Drive destination:
`01_Modeling_References/Hunter`

Potential runtime derivative:
None by default.

Content:
- same base body;
- light field/tracking kit;
- balanced hunt kit;
- reinforced/protective kit;
- modular bags, shoulder protection, belts, boots, utility pieces;
- no final weapon family locked.

Status: `PLANNED`.

### SHEET-M01 — Monster 01 hero concept + turnaround
Filename:
`MONSTER_01_M01_M02_HERO_TURNAROUND_v001.png`

Drive:
`01_Modeling_References/Monster_01`

Secondary conversion copy if review passes:
`03_3D_Conversion_Inputs/Monster_01`

Content:
- hero 3/4;
- front;
- side;
- rear;
- clear tail/horns/legs;
- neutral stance;
- simple background;
- no combat VFX.

Status: `PLANNED`.

### SHEET-M02 — Monster 01 anatomy
Filename:
`MONSTER_01_M03_ANATOMY_v001.png`

Drive:
`01_Modeling_References/Monster_01`

Content:
- clean side/3/4 base;
- clearly separated gameplay anatomy zones;
- left/right logic documented outside generated labels;
- horn break areas;
- tail sever boundary;
- dorsal plate grouping;
- core location shown only as technical reference, not player-visible art.

Status: `PLANNED`.

### SHEET-M03 — Monster 01 damage/break/sever
Filename:
`MONSTER_01_M04_DAMAGE_STATES_v001.png`

Drive:
`01_Modeling_References/Monster_01`

Content:
- intact;
- wounded;
- broken horn;
- broken dorsal plate;
- severed tail;
- wounded leg posture;
- no excessive gore.

Status: `PLANNED`.

### SHEET-M04 — Monster 01 crystal/mutation variants
Filename:
`MONSTER_01_M05_CRYSTAL_MUTATION_VARIANTS_v001.png`

Drive:
`01_Modeling_References/Monster_01`

Content:
- baseline;
- mud/terrain adaptation;
- reinforced mineral plate mutation;
- sensory adaptation;
- restrained berserk/core-overdrive state.

Status: `PLANNED`.

### SHEET-M05 — Monster 01 three-distance readability
Filename:
`MONSTER_01_M08_THREE_DISTANCE_v001.png`

Drive:
`01_Modeling_References/Monster_01`

Potential runtime derivative:
- a selected bestiary crop may become `RUNTIME_2D_CANDIDATE` after cleanup.

Content:
- aerial exploration view;
- nearby exploration view;
- first-person encounter framing;
- same creature/state/scale language.

Status: `PLANNED`.

## Generation order

Current preferred order:
1. SHEET-H01;
2. SHEET-H02;
3. SHEET-M01;
4. SHEET-M02;
5. SHEET-M03;
6. SHEET-M04;
7. SHEET-M05.

If generation limits interrupt the sequence, stop at a completed sheet boundary and preserve the registry state.

## Review law

No generated sheet becomes `TECHNICALLY_VERIFIED` from visual inspection alone.

For turnaround/conversion input:
- cross-view proportions must be inspected;
- scale comes from Markdown numeric data;
- generated text is ignored/replaced;
- hidden geometry contradictions are resolved in the DCC blockout.

For runtime 2D derivatives:
- create a separate derivative/export record;
- do not point the game directly at the modeling-reference file.
