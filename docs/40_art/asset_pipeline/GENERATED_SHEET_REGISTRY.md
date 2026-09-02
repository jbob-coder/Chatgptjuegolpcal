# Generated Sheet Registry

Status: ACTIVE REFERENCE REGISTRY
Last reconciled: 2026-09-02

## Purpose

Track the Hunter Base 01 and Monster 01 visual-reference sequence without confusing generation, persistence, review, technical use or approval.

Cross-lane identity/lineage/permitted-use authority:
`ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`.

Per-asset QA records:
`docs/40_art/reviews/`.

Technical Hunter source-pack structure:
`HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`.

Uploading does not approve an asset.

## Status vocabulary

- `PLANNED`
- `GENERATED_UNREVIEWED`
- `GENERATED_PERSISTENCE_UNVERIFIED`
- `REVIEWED_WITH_ISSUES`
- `SELECTED_REFERENCE`
- `CONVERSION_INPUT_CANDIDATE`
- `RUNTIME_2D_CANDIDATE`
- `TECHNICALLY_VERIFIED`
- `REJECTED`
- `SUPERSEDED`

## Existing selected general boards

### REF-MODEL-001
`Unnamed Hunt RPG - Art Direction Overview.png`
Status: `SELECTED_REFERENCE`
Use: art-direction communication only.
Runtime 2D: NO.
3D conversion: NO.

### REF-MODEL-002
`Unnamed Hunt RPG - Model Creation Pipeline and Visual Guide.png`
Status: `SELECTED_REFERENCE`
Use: pipeline communication only.
Runtime 2D: NO.
3D conversion: NO.

---

# Hunter Base 01

## H02 v001 — turnaround + scale
File:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_REFERENCE.png`

Drive ID:
`1U9vm0y7YSSGnEiPYO8C7M8QAq43FyibV`

Status: `REVIEWED_WITH_ISSUES`
Decision: `REVISE`
Permitted use: `DISCUSSION_ONLY`
QA:
`docs/40_art/reviews/HUNTER_BASE_01_H02_v001_QA.md`

Main defects:
- embedded figure detail too soft;
- cross-view gear inconsistency;
- no clean 3/4 confirmation;
- not conversion-safe;
- too identity-specific/heavy for reusable neutral base.

Do not use for technical modeling or conversion.

### v001 inspection derivative
File:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_UPSCALED_REFERENCE.png`
Drive ID: `1hcxXoOH6xsy-CXh2EoyhnjgIH_etizOc`
Status: `REVIEWED_WITH_ISSUES`
Use: `DISCUSSION_ONLY`.
The upscale does not create missing technical detail.

## H02 v002 — turnaround/scale revision
File:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_REF_v002.png`
Drive ID:
`1kkRFXV2Mtk1sWyhjxdnSGm7l6xQRMZE4`
Observed raster: `1536 × 1024`.

Status: `REVIEWED_WITH_ISSUES`
Decision: `REVISE`
Permitted use: `DISCUSSION_ONLY`
QA:
`docs/40_art/reviews/HUNTER_BASE_01_H02_v002_QA.md`

Improvements:
- front/left/back/right/3-4 views present;
- improved overall cross-view body coherence;
- modular practical clothing direction improved;
- close-up concept areas included;
- broad silhouette reads well.

Remaining blockers:
- still an overloaded infographic rather than a technical source image;
- each full-body figure receives too few native pixels;
- close-up panels may independently redesign details and are not guaranteed magnifications of the body views;
- views remain illustrative rather than verified orthographic/multiview geometry;
- generated embedded metadata/permissions/date/PBR guidance are not authority;
- face remains more identity-specific than needed for reusable base;
- not suitable for 3D-conversion input.

Do not copy v002 to `03_3D_Conversion_Inputs/Hunter`.

## H02 v003 source pack — NEXT

The next revision is no longer one infographic.

Authority:
`docs/40_art/asset_pipeline/HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`.

### H02A v003 — orthographic/multiview source
Planned filename:
`HUNTER_BASE_01_H02A_ORTHO_REF_v003.png`

Planned stable ID:
`HUNTER01-H02A-REF-003`

Required:
- front/left/back/right where practical;
- same neutral gear and pose;
- hunter figures use roughly 75–90% of usable raster height;
- plain/transparent background;
- no infographic panels;
- no monster comparison;
- no PBR/material chart;
- no file/checksum/status metadata;
- no weapon;
- low identity specificity;
- base clothing + limited modular protection.

Current status: `PLANNED`.

### H02B v003 — 3/4 confirmation
Generate only after H02A is reviewed/accepted enough to justify it, unless produced as one controlled revision set.
Current status: `BLOCKED BY H02A`.

### H03 — detail source
Hands/boots/harness/belt/collar/knee-shin detail only if H02A still lacks sufficient native detail.
Current status: `CONDITIONAL`.

## H04 v001 — modular equipment silhouettes
File:
`HUNTER_BASE_01_H04_MODULAR_SILHOUETTES_v001_DRAFT_REFERENCE.png`
Drive ID:
`1j2eQCUfUzc-kgt4egH15dzPK-5Gv6OAF`
Status: `GENERATED_UNREVIEWED`.

Review is blocked until a neutral Hunter base is selected. H04 must be judged against the corrected base rather than v001/v002.

---

# Monster 01 — Mudcrest Raker

## M01/M02 hero + turnaround
File:
`MONSTER_01_M01_M02_HERO_TURNAROUND_v001_VISUAL_CANDIDATE.png`
Drive ID:
`1yMLP6lcO4Us4uJO2CMNUCusiXlWpwI2m`
Status: `GENERATED_UNREVIEWED`.

Must later reconcile against:
- ~6.6 m length;
- ~3.0 m shoulder/main-body height;
- front-heavy quadruped;
- paired mineral horn crest;
- breakable dorsal plates;
- mud-adapted feet;
- long tail with legal distal sever boundary;
- eight authoritative first-slice target groups.

No conversion copy yet.

## M03 anatomy overlay
Expected file:
`MONSTER_01_M03_ANATOMY_v001_TECHNICAL_OVERLAY.png`
Drive persistence: NOT VERIFIED.
Status: `GENERATED_PERSISTENCE_UNVERIFIED`.

## M04 damage/break/sever
Expected file:
`MONSTER_01_M04_DAMAGE_STATES_v001_DRAFT_REFERENCE.png`
Drive persistence: NOT VERIFIED.
Status: `GENERATED_PERSISTENCE_UNVERIFIED`.

## M05 crystal/mutation variants
Expected file:
`MONSTER_01_M05_CRYSTAL_MUTATION_VARIANTS_v001_TECHNICAL_CONCEPT.png`
Drive persistence: NOT VERIFIED.
Status: `GENERATED_PERSISTENCE_UNVERIFIED`.

## M08 three-distance readability
Expected file:
`MONSTER_01_M08_THREE_DISTANCE_v001_VISUAL_CANDIDATE.png`
Drive persistence: NOT VERIFIED.
Status: `GENERATED_PERSISTENCE_UNVERIFIED`.

No Monster visual asset is selected/technical/conversion-approved yet.

---

# Current review order

1. **Generate H02A v003 only.**
2. Review H02A using native-pixel, cross-view, scale and conversion-preflight gates.
3. If acceptable, create/review H02B 3/4 confirmation.
4. Create H03 detail sources only where H02A/H02B prove insufficient.
5. Select the neutral Hunter source pack before reviewing H04.
6. Then return to Monster 01 visual QA.
7. Restore/verify M03/M04/M05/M08 Drive persistence before claiming those files are safely stored.

Do not bulk-generate the queue.

## Current gate

`H02_V001 = REVIEWED_WITH_ISSUES / REVISE`
`H02_V002 = REVIEWED_WITH_ISSUES / REVISE / DRIVE_VERIFIED`
`H02_V002_CONVERSION_USE = NO`
`H02A_V003 = PLANNED / NEXT`
`H02B_V003 = BLOCKED BY H02A`
`H03_DETAILS = CONDITIONAL`
`H04_V001 = GENERATED_UNREVIEWED / BLOCKED BY NEUTRAL BASE`
`MONSTER_M01M02 = GENERATED_UNREVIEWED / DRIVE_VERIFIED`
`MONSTER_M03 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`MONSTER_M04 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`MONSTER_M05 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`MONSTER_M08 = GENERATED / DRIVE_PERSISTENCE_UNVERIFIED`
`SELECTED_HUNTER_TECHNICAL_REFERENCE = NONE`
`HUNTER_CONVERSION_INPUT = NONE`
`APPROVED_RUNTIME_2D = NONE`
`GAME_READY_3D = NONE`