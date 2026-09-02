# Generated Sheet Registry

Status: ACTIVE REFERENCE REGISTRY
Last reconciled: 2026-09-02

## Purpose

Track the planned/generated Hunter Base 01 and Monster 01 sheet sequence.

Cross-lane identity, lineage, parent/master relationships and permitted-use authority now belong to:
`ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`.

This registry remains the task-order/view-specific sheet tracker.

## Status meanings

- `PLANNED` — specification exists; image not generated.
- `GENERATED_UNREVIEWED` — pixels exist but dedicated QA review has not completed.
- `GENERATED_PERSISTENCE_UNVERIFIED` — local/generated output was reported, but current Drive persistence has not been read back.
- `SELECTED_REFERENCE` — explicitly approved to guide visual/modeling work.
- `CONVERSION_INPUT_CANDIDATE` — clean enough for image-to-3D test after conversion preflight.
- `RUNTIME_2D_CANDIDATE` — may be cleaned/exported for actual 2D game use.
- `TECHNICALLY_VERIFIED` — applicable technical checks completed.
- `REJECTED` — retained only for provenance/history.
- `SUPERSEDED` — replaced by a newer selected revision.

Uploading does not promote status.

## Existing general boards

### REF-MODEL-001
Name: `Unnamed Hunt RPG - Art Direction Overview.png`
Status: `SELECTED_REFERENCE`
Classification: `MODEL_REFERENCE / ART_DIRECTION`
Direct runtime use: NO
3D conversion use: NO

### REF-MODEL-002
Name: `Unnamed Hunt RPG - Model Creation Pipeline and Visual Guide.png`
Status: `SELECTED_REFERENCE`
Classification: `PIPELINE_COMMUNICATION`
Direct runtime use: NO
3D conversion use: NO

## First registered sheet sequence

### SHEET-H01 — Hunter turnaround + scale
Current file:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_REFERENCE.png`

Drive destination/current verified location:
`01_Modeling_References/Hunter`
Drive file ID: `1U9vm0y7YSSGnEiPYO8C7M8QAq43FyibV`
Current status: `GENERATED_UNREVIEWED`

Required QA before selection:
- front/side/back consistency;
- neutral pose validity;
- silhouette/anatomy defects;
- numeric scale reconciliation to 1.75 m;
- generated labels ignored/corrected;
- native-pixel and close-detail review.

Do not copy to `03_3D_Conversion_Inputs/Hunter` until conversion preflight passes.

#### H01 derivative
File:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_UPSCALED_REFERENCE.png`
Drive file ID: `1hcxXoOH6xsy-CXh2EoyhnjgIH_etizOc`
Status: `GENERATED_UNREVIEWED`
Class: reference derivative only.

It may assist close visual inspection but cannot create authoritative missing detail or automatically replace the original as conversion input.

### SHEET-H02 — Hunter modular-equipment silhouettes
Current file:
`HUNTER_BASE_01_H04_MODULAR_SILHOUETTES_v001_DRAFT_REFERENCE.png`

Drive location:
`01_Modeling_References/Hunter`
Drive file ID: `1j2eQCUfUzc-kgt4egH15dzPK-5Gv6OAF`
Current status: `GENERATED_UNREVIEWED`

Required review:
- same base-body scale across variants;
- light / balanced / reinforced silhouette separation;
- no visible generated weapon treated as locked weapon design;
- modular gear seams remain practical;
- aerial readability checked.

### SHEET-M01 — Monster 01 hero concept + turnaround
Current file:
`MONSTER_01_M01_M02_HERO_TURNAROUND_v001_VISUAL_CANDIDATE.png`

Drive location:
`01_Modeling_References/Monster_01`
Drive file ID: `1yMLP6lcO4Us4uJO2CMNUCusiXlWpwI2m`
Current status: `GENERATED_UNREVIEWED`

Required review against Mudcrest Raker authority:
- approximately 6.6 m length and 3.0 m shoulder/main-body height remain numeric authority;
- front-heavy quadruped body plan;
- paired mineral horn crest;
- breakable dorsal plates;
- broad mud-adapted feet;
- long muscular tail with legal distal sever boundary;
- no decorative micro-spike noise that damages silhouette/target readability;
- generated art cannot redefine the eight target groups.

Do not copy into Monster 01 conversion-input lane until turnaround consistency and conversion preflight pass.

### SHEET-M02 — Monster 01 anatomy
Expected/generated filename:
`MONSTER_01_M03_ANATOMY_v001_TECHNICAL_OVERLAY.png`

Expected Drive destination:
`01_Modeling_References/Monster_01`
Current Drive readback: NOT PRESENT
Current status: `GENERATED_PERSISTENCE_UNVERIFIED`

Before use:
- upload/read back;
- reconcile labels against stable anatomy IDs in `ANATOMY_AND_DAMAGE.md`;
- verify horn/dorsal/tail boundaries;
- keep internal core as technical planning only.

### SHEET-M03 — Monster 01 damage/break/sever
Expected/generated filename:
`MONSTER_01_M04_DAMAGE_STATES_v001_DRAFT_REFERENCE.png`

Expected Drive destination:
`01_Modeling_References/Monster_01`
Current Drive readback: NOT PRESENT
Current status: `GENERATED_PERSISTENCE_UNVERIFIED`

Required content/review:
- intact;
- wounded;
- broken horn;
- broken dorsal plate;
- severed distal tail;
- wounded-leg consequence;
- restrained gore;
- berserk never repairs loss.

### SHEET-M04 — Monster 01 crystal/mutation variants
Expected/generated filename:
`MONSTER_01_M05_CRYSTAL_MUTATION_VARIANTS_v001_TECHNICAL_CONCEPT.png`

Expected Drive destination:
`01_Modeling_References/Monster_01`
Current Drive readback: NOT PRESENT
Current status: `GENERATED_PERSISTENCE_UNVERIFIED`

Reference variants must remain tied to recorded candidates:
- baseline;
- Mirestep Pads;
- Bastion Plates;
- Deep-Scent Crest;
- Resonant Core Veins;
- restrained core-overdrive/berserk presentation.

### SHEET-M05 — Monster 01 three-distance readability
Expected/generated filename:
`MONSTER_01_M08_THREE_DISTANCE_v001_VISUAL_CANDIDATE.png`

Expected Drive destination:
`01_Modeling_References/Monster_01`
Current Drive readback: NOT PRESENT
Current status: `GENERATED_PERSISTENCE_UNVERIFIED`

Required review:
- aerial species/horn/tail/plate silhouette;
- nearby wound/material/anatomy readability;
- first-person target framing and surface coherence;
- same monster identity/state across all panels.

Potential later runtime derivative:
a separately registered/cleaned bestiary illustration crop may become a `RUNTIME_2D_CANDIDATE`; this reference sheet itself is not the runtime asset.

## Current generation/review order

Generation occurred through the seven-sheet sequence, but persistence and review are incomplete.

Current next bounded action is **not** to generate another sheet.

Next:
1. review `SHEET-H01` using `ASSET_QA_GATES.md`;
2. decide `SELECT`, `REVISE`, or `REJECT`;
3. update manifest/registry;
4. only then review `SHEET-H02`;
5. continue one sheet at a time.

Separately, before Monster M02–M05 can enter review, their current Drive persistence must be verified or restored.

## Review law

No generated sheet becomes `TECHNICALLY_VERIFIED` from visual inspection alone.

For turnaround/conversion input:
- cross-view proportions must be inspected;
- scale comes from Markdown numeric data;
- generated text is ignored/replaced;
- hidden geometry contradictions are resolved in DCC blockout;
- conversion-input copy is a new manifest record, not an implicit folder copy.

For runtime 2D derivatives:
- create a separate derivative/export record;
- derive from the master/clean source;
- do not point the game directly at a modeling-reference file.

## Current gate

`SHEET_H01 = GENERATED_UNREVIEWED / DRIVE_VERIFIED`
`SHEET_H02 = GENERATED_UNREVIEWED / DRIVE_VERIFIED`
`SHEET_M01 = GENERATED_UNREVIEWED / DRIVE_VERIFIED`
`SHEET_M02 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`SHEET_M03 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`SHEET_M04 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`SHEET_M05 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`SELECTED_REFERENCE_PROMOTIONS_THIS_PASS = NONE`
