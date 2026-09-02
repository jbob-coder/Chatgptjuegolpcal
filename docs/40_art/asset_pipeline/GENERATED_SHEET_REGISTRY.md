# Generated Sheet Registry

Status: ACTIVE REFERENCE REGISTRY
Last reconciled: 2026-09-02

## Purpose

Track the planned/generated Hunter Base 01 and Monster 01 sheet sequence.

Cross-lane identity, lineage, parent/master relationships and permitted-use authority belong to:
`ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`.

Per-asset QA decisions live under:
`docs/40_art/reviews/`.

This registry remains the task-order/view-specific sheet tracker.

## Status meanings

- `PLANNED` — specification exists; image not generated.
- `GENERATED_UNREVIEWED` — pixels exist but dedicated QA review has not completed.
- `GENERATED_PERSISTENCE_UNVERIFIED` — local/generated output was reported, but current Drive persistence has not been read back.
- `REVIEWED_WITH_ISSUES` — dedicated QA completed and current revision requires correction before promotion.
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

Drive location:
`01_Modeling_References/Hunter`
Drive file ID: `1U9vm0y7YSSGnEiPYO8C7M8QAq43FyibV`

Current status: `REVIEWED_WITH_ISSUES`
Current decision: `REVISE`
Permitted use: `DISCUSSION_ONLY`
QA record: `docs/40_art/reviews/HUNTER_BASE_01_H02_v001_QA.md`

Main v001 defects:
- real figure detail is too soft for technical modeling despite large composed canvas;
- face/hands/boots/harness seams lack trustworthy native detail;
- front/side/back gear construction is inconsistent;
- no required clean 3/4 confirmation view;
- views are illustrative, not conversion-safe multiview references;
- neutral production base is too close to a fixed armored male-ranger identity.

Preserve in v002:
- grounded frontier direction;
- realistic adult general proportion;
- readable boot/shoulder/layered-garment silhouette;
- restrained practical material family;
- numeric height remains 1.75 m from Markdown.

Do **not** copy v001 to `03_3D_Conversion_Inputs/Hunter`.

#### H01 derivative
File:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_UPSCALED_REFERENCE.png`
Drive file ID: `1hcxXoOH6xsy-CXh2EoyhnjgIH_etizOc`
Status: `REVIEWED_WITH_ISSUES`
Class: reference derivative only.
Permitted use: `DISCUSSION_ONLY`.

The upscale can improve viewing comfort but cannot recover authoritative missing hand/face/gear construction or become the next technical master.

#### H01 required next revision
Planned new filename:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_REF_v002.png`

Required:
- clean front;
- clean left side;
- clean back;
- right side if practical;
- separate clean 3/4 confirmation;
- neutral modeling stance;
- identical body/gear construction across views;
- less metal coverage for neutral base;
- modular protection boundaries;
- no held weapon;
- no strong final protagonist identity;
- enough native pixels for hands/boots/harness seams without relying on upscale invention.

Status: `PLANNED REVISION`.

### SHEET-H02 — Hunter modular-equipment silhouettes
Current file:
`HUNTER_BASE_01_H04_MODULAR_SILHOUETTES_v001_DRAFT_REFERENCE.png`

Drive location:
`01_Modeling_References/Hunter`
Drive file ID: `1j2eQCUfUzc-kgt4egH15dzPK-5Gv6OAF`
Current status: `GENERATED_UNREVIEWED`

Do not review/promote H04 until H02 v002 establishes the corrected neutral base. Otherwise equipment variants may be judged against a base silhouette already known to be wrong.

Required later review:
- same corrected base-body scale across variants;
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

The previous queue is intentionally paused.

Current bounded order:
1. create `HUNTER_BASE_01_H02_TURNAROUND_SCALE_REF_v002.png` from the recorded v001 QA revision request;
2. review v002 against the same gates;
3. only if v002 becomes acceptable, review/revise H04 against that corrected base;
4. then return to Monster 01 visual QA;
5. restore/verify Monster M02–M05 Drive persistence before claiming those sheets are safely stored.

Do not bulk-generate another full queue before the earliest broken dependency is corrected.

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

`SHEET_H01_V001 = REVIEWED_WITH_ISSUES / REVISE / DRIVE_VERIFIED`
`SHEET_H01_V001_TECHNICAL_MODELING_USE = NO`
`SHEET_H01_V001_CONVERSION_USE = NO`
`SHEET_H01_V002 = PLANNED REVISION`
`SHEET_H02 = GENERATED_UNREVIEWED / DRIVE_VERIFIED`
`SHEET_M01 = GENERATED_UNREVIEWED / DRIVE_VERIFIED`
`SHEET_M02 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`SHEET_M03 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`SHEET_M04 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`SHEET_M05 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`SELECTED_REFERENCE_PROMOTIONS_THIS_PASS = NONE`