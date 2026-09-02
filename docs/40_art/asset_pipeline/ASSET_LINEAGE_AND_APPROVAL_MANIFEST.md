# Unnamed Hunt RPG — Asset Lineage and Approval Manifest

Status: ACTIVE ASSET AUTHORITY / NO ENGINE IMPORT
Last reconciled: 2026-09-02

## Purpose

Provide one authoritative record for the identity, purpose, lineage, storage location, review state and permitted use of every important visual/model asset.

This exists because folder location, filename, visual quality and upload success are not sufficient evidence that an asset is approved for modeling, 3D conversion, runtime use or release.

Primary quality fix:

**every derived asset must be traceable back to a master/reference source, and every promotion must be explicit.**

---

# 1. Core laws

1. Uploading a file does **not** approve it.
2. Moving/copying a file into another Drive lane does **not** change its technical validity.
3. A derivative never becomes the new master silently.
4. Upscaling does not create authoritative geometry/anatomy/detail that was absent from the source.
5. Runtime exports must be derived from a recorded master/clean source, never from another small runtime derivative.
6. A 3D reconstruction candidate is not game-ready until topology, anatomy, rig, sever/break, LOD, engine and phone gates pass.
7. The manifest status outranks status-like words embedded in filenames.
8. Superseded/rejected files remain traceable; do not silently delete design history unless storage policy later requires it.
9. Stable asset IDs are independent of display names and Drive file IDs.
10. Approved exports require an integrity record/checksum when the real export pipeline exists.

---

# 2. Separate identity dimensions

Do not overload one `status` field with unrelated meanings.

Every asset record should identify at least four dimensions.

## A. Asset class
What kind of thing is it?

- `REFERENCE_MASTER`
- `REFERENCE_DERIVATIVE`
- `TECHNICAL_OVERLAY`
- `RUNTIME_2D_WORKING`
- `RUNTIME_2D_EXPORT`
- `CONVERSION_INPUT`
- `RECONSTRUCTION_3D_CANDIDATE`
- `DCC_WORKING_3D`
- `GAME_READY_3D_EXPORT`
- `REJECTED_DRAFT`

## B. Review state
How far has it been reviewed?

- `GENERATED_UNREVIEWED`
- `REVIEWED_WITH_ISSUES`
- `SELECTED_REFERENCE`
- `TECHNICALLY_VERIFIED`
- `REJECTED`
- `SUPERSEDED`

## C. Permitted use
What may actually consume it?

Possible flags:
- `DISCUSSION_ONLY`
- `MODELING_REFERENCE_OK`
- `DETAIL_REFERENCE_OK`
- `CONVERSION_TEST_OK`
- `RUNTIME_2D_TEST_OK`
- `RUNTIME_2D_SHIP_OK`
- `ENGINE_3D_TEST_OK`
- `GAME_READY_3D_OK`

Permissions are additive only after the relevant QA gate passes.

## D. Verification gates
Record which checks actually happened.

Examples:
- source integrity;
- native-pixel review;
- close-detail review;
- scale/numeric reconciliation;
- turnaround consistency;
- runtime-size review;
- alpha/compression/mip check;
- image-to-3D preflight;
- topology/manifold report;
- anatomy/sever setup;
- rig/deformation;
- animation;
- LOD;
- engine import;
- Android visual/performance verification.

Never imply unexecuted gates.

---

# 3. Stable asset ID scheme

Recommended form:

`<ENTITY>-<SHEET_OR_ASSET>-<ROLE>-<REVISION>`

Examples:
- `HUNTER01-H02-REF-001`
- `HUNTER01-H02-UPSCALEREF-001`
- `HUNTER01-H04-REF-001`
- `MONSTER01-M01M02-REF-001`
- `MONSTER01-M03-TECHOVERLAY-001`
- `MONSTER01-M04-REF-001`
- `MONSTER01-M05-TECHCONCEPT-001`
- `MONSTER01-M08-REF-001`

The asset ID is the identity. Filename may change without changing the logical asset identity when only storage naming is corrected.

A materially changed pixel/geometry source should increment revision.

---

# 4. Filename rule going forward

Preferred new filename pattern:

`<ENTITY>_<SHEET>_<ROLE>_v###.<ext>`

Examples:
- `HUNTER_BASE_01_H02_TURNAROUND_SCALE_REF_v002.png`
- `MONSTER_01_M03_ANATOMY_TECH_v002.png`

Avoid placing volatile workflow states such as `APPROVED`, `FINAL`, `LATEST`, or `CURRENT` in future filenames.

Reason:
those words become false when state changes.

Existing v001 files containing `DRAFT_REFERENCE` or `VISUAL_CANDIDATE` remain valid historical filenames; their true state is recorded here.

---

# 5. Required manifest fields

Every selected/high-value asset should record:

- Stable Asset ID
- Entity/content ID
- Asset class
- Purpose
- Filename
- Revision
- MIME/format
- Pixel dimensions or 3D format where known
- File size where known
- Drive file ID/path or repository path
- Parent Asset ID
- Master Asset ID
- Generation/source method
- Source/provenance notes
- Owning design docs
- Review state
- Permitted-use flags
- QA gates completed
- Known defects/contradictions
- Supersedes / superseded-by
- Integrity hash when required/available
- Last reconciled date

Unknown values remain `UNKNOWN` rather than invented.

---

# 6. Derivative lineage rules

## Raster reference derivative

Example:

`HUNTER01-H02-REF-001`
→ `HUNTER01-H02-UPSCALEREF-001`

The upscale:
- has `Parent Asset ID = HUNTER01-H02-REF-001`;
- retains the same underlying design revision;
- may improve inspection comfort;
- may not introduce new technical measurements/anatomy claims;
- cannot automatically replace the original as conversion input.

## Runtime derivative

Preferred:

`SELECTED/CLEAN MASTER`
→ `RUNTIME LARGE`
→ independently derived `RUNTIME NORMAL`
→ independently derived `THUMBNAIL`

Do not generate the thumbnail from the already-downsampled normal image.

## 3D reconstruction lineage

`SELECTED REFERENCE`
→ `CLEAN CONVERSION INPUT`
→ `RECONSTRUCTION CANDIDATE A/B/C`
→ `SELECTED DCC WORKING MESH`
→ `RETOPO/RIG/ANATOMY/LOD WORKING ASSET`
→ `ENGINE TEST EXPORT`
→ `GAME_READY EXPORT`

Every stage records its parent.

---

# 7. Promotion state machine

## Modeling reference path

`GENERATED_UNREVIEWED`
→ `REVIEWED_WITH_ISSUES` or `REJECTED`
→ `SELECTED_REFERENCE`
→ optional `TECHNICALLY_VERIFIED`

`SELECTED_REFERENCE` means it is acceptable to guide visual/model decisions.
It does not mean exact geometry or runtime validity.

## 2D runtime path

`REFERENCE/ORIGINAL SOURCE`
→ `RUNTIME_2D_WORKING`
→ runtime-size/alpha/compression/device checks
→ `RUNTIME_2D_EXPORT`
→ `RUNTIME_2D_SHIP_OK`

## 3D path

`CONVERSION_INPUT`
→ `RECONSTRUCTION_3D_CANDIDATE`
→ `DCC_WORKING_3D`
→ topology/anatomy/sever/rig/animation/LOD verification
→ engine import
→ Android runtime/performance verification
→ `GAME_READY_3D_EXPORT`

There is no shortcut from PNG to `GAME_READY_3D_EXPORT`.

---

# 8. Current Drive lane authority

Project root:
- `Unnamed Hunt RPG`
- ID `1N3FbZhLE9ZfEy1Og-iNiB2B7nyyfangt`

Manifest folder:
- `00_Asset_Manifests`
- ID `1cg-zesn5QTcSIm63pnt1FeH7TYvxKlfo`

Modeling references:
- `01_Modeling_References` — `1qsF_JUYBs9ZQ-1lZPHsTCwWn87W46VIs`
- Hunter — `1XM-kcLfxD3Af-HAPRu4zlO691RgDJLlE`
- Monster_01 — `1klaz1KEefbWZ2cMMH3N6m--lbQqf9CUe`

2D runtime working:
- `02_2D_Runtime_Assets` — `1PJ7uzt8oZBE5jFPXoBeldGVVv9Dy1Ko_`

3D conversion inputs:
- `03_3D_Conversion_Inputs` — `1hs-qJiiF6R-1NLBmlChvSK4rlQilONLz`

Approved exports:
- `04_Approved_Exports` — `1yrS6vXQElSahDUtFJjjst25gq8RIGm2P`

Folder location is an organizational hint, never a substitute for this manifest and QA records.

---

# 9. Current reconciled asset records

These records reflect Drive contents observed on 2026-09-02 and dedicated QA completed where noted.

## HUNTER01-H02-REF-001

Entity: `HUNTER_BASE_01`
Purpose: turnaround + scale modeling reference candidate
Class: `REFERENCE_MASTER` for generated revision v001
Filename: `HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_REFERENCE.png`
Drive file ID: `1U9vm0y7YSSGnEiPYO8C7M8QAq43FyibV`
Drive lane: `01_Modeling_References/Hunter`
File size: 1,096,478 bytes
Parent: NONE
Master: SELF
Review state: `REVIEWED_WITH_ISSUES`
Review decision: `REVISE`
Permitted use: `DISCUSSION_ONLY`
Explicitly NOT permitted: modeling technical authority, detail authority, 3D-conversion testing, runtime 2D testing
Owning design: `docs/30_content/hunters/HUNTER_BASE_01/README.md`
QA record: `docs/40_art/reviews/HUNTER_BASE_01_H02_v001_QA.md`
QA gates executed:
- source integrity;
- native-pixel review;
- close-detail review;
- turnaround consistency;
- 3D-conversion preflight;
- directional three-distance/silhouette assessment.
Known defects:
- useful figure pixels are much lower-detail than the 3200 × 1800 composed canvas suggests;
- face/hands/boots/harness seams are too soft for technical modeling detail;
- front/side/back gear construction is inconsistent;
- required 3/4 confirmation view is absent;
- views are illustrative rather than strict orthographic/multiview-consistent references;
- v001 trends too far toward a fixed armored male ranger identity for the reusable neutral production base;
- generated labels are not authority.
Preserve for v002:
- grounded frontier tone;
- realistic adult general proportion;
- readable boot/shoulder/layered-garment silhouette;
- restrained dark practical material family.
Numeric authority: Hunter prototype height remains 1.75 m from Markdown.
Integrity hash: UNKNOWN / not required at current draft stage

## HUNTER01-H02-UPSCALEREF-001

Entity: `HUNTER_BASE_01`
Purpose: easier close inspection of H02 v001 source
Class: `REFERENCE_DERIVATIVE`
Filename: `HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_UPSCALED_REFERENCE.png`
Drive file ID: `1hcxXoOH6xsy-CXh2EoyhnjgIH_etizOc`
Drive lane: `01_Modeling_References/Hunter`
File size: 1,854,723 bytes
Parent: `HUNTER01-H02-REF-001`
Master: `HUNTER01-H02-REF-001`
Review state: `REVIEWED_WITH_ISSUES`
Permitted use: `DISCUSSION_ONLY`
Disposition: retain for provenance/inspection only.
Critical restriction: upscale cannot invent authoritative face/hand/gear/measurement detail and must not be promoted to conversion input.

## HUNTER01-H04-REF-001

Entity: `HUNTER_BASE_01`
Purpose: modular equipment silhouette study
Class: `REFERENCE_MASTER`
Filename: `HUNTER_BASE_01_H04_MODULAR_SILHOUETTES_v001_DRAFT_REFERENCE.png`
Drive file ID: `1j2eQCUfUzc-kgt4egH15dzPK-5Gv6OAF`
Drive lane: `01_Modeling_References/Hunter`
File size: 1,445,103 bytes
Parent: NONE
Master: SELF
Review state: `GENERATED_UNREVIEWED`
Permitted use: `DISCUSSION_ONLY`
Known caution: visible weapons do not lock the weapon roster/equipment slots.

## MONSTER01-M01M02-REF-001

Entity: `MONSTER_01`
Working species name: Mudcrest Raker
Purpose: hero-form + turnaround visual candidate
Class: `REFERENCE_MASTER`
Filename: `MONSTER_01_M01_M02_HERO_TURNAROUND_v001_VISUAL_CANDIDATE.png`
Drive file ID: `1yMLP6lcO4Us4uJO2CMNUCusiXlWpwI2m`
Drive lane: `01_Modeling_References/Monster_01`
File size: 1,667,598 bytes
Parent: NONE
Master: SELF
Review state: `GENERATED_UNREVIEWED`
Permitted use: `DISCUSSION_ONLY`
Owning design:
- `docs/30_content/monsters/MONSTER_01/README.md`
- `ANATOMY_AND_DAMAGE.md`
- `CRYSTAL_AND_MUTATION.md`
Known corrections before selection:
- authoritative scale remains approximately 6.6 m nose-to-tail and 3.0 m shoulder/main-body height;
- reduce decorative micro-spikes if they harm silhouette/readability;
- preserve paired mineral horn crest, breakable dorsal plates, mud-adapted feet and legal distal tail-sever design;
- imagery must not override the recorded eight first-slice target groups.

## MONSTER01-M03-TECHOVERLAY-001

Entity: `MONSTER_01`
Purpose: anatomy technical overlay
Class: `TECHNICAL_OVERLAY`
Expected filename: `MONSTER_01_M03_ANATOMY_v001_TECHNICAL_OVERLAY.png`
Drive state: NOT PRESENT in the Monster_01 modeling-reference folder during this reconciliation
Review state: `GENERATED_UNREVIEWED` if local generated file still exists; Drive persistence NOT VERIFIED
Permitted use: `DISCUSSION_ONLY`
Required action before any promotion: upload/readback, then reconcile stable IDs against `ANATOMY_AND_DAMAGE.md`.

## MONSTER01-M04-REF-001

Purpose: damage/break/sever states
Class: `REFERENCE_MASTER`
Expected filename: `MONSTER_01_M04_DAMAGE_STATES_v001_DRAFT_REFERENCE.png`
Drive state: NOT PRESENT during this reconciliation
Review state: `GENERATED_UNREVIEWED` if local generated file still exists; persistence NOT VERIFIED
Permitted use: `DISCUSSION_ONLY`

## MONSTER01-M05-TECHCONCEPT-001

Purpose: crystal/mutation technical concept
Class: `TECHNICAL_OVERLAY`
Expected filename: `MONSTER_01_M05_CRYSTAL_MUTATION_VARIANTS_v001_TECHNICAL_CONCEPT.png`
Drive state: NOT PRESENT during this reconciliation
Review state: `GENERATED_UNREVIEWED` if local generated file still exists; persistence NOT VERIFIED
Permitted use: `DISCUSSION_ONLY`

## MONSTER01-M08-REF-001

Purpose: three-distance readability
Class: `REFERENCE_MASTER`
Expected filename: `MONSTER_01_M08_THREE_DISTANCE_v001_VISUAL_CANDIDATE.png`
Drive state: NOT PRESENT during this reconciliation
Review state: `GENERATED_UNREVIEWED` if local generated file still exists; persistence NOT VERIFIED
Permitted use: `DISCUSSION_ONLY`

---

# 10. Approval checklist for a selected reference

Before changing a draft reference to `SELECTED_REFERENCE`:

- correct stable asset ID recorded;
- correct Drive file ID recorded;
- source/native dimensions recorded;
- native-pixel inspection completed;
- close-detail inspection completed for critical regions;
- generated text/labels ignored or corrected against Markdown;
- numeric scale reconciled to authoritative design values;
- cross-view contradictions documented;
- no severe anatomy/limb duplication/warping that would mislead modeling;
- intended use clearly stated;
- parent/master lineage recorded;
- superseded competing draft identified if applicable.

For conversion input, additional preflight from `ASSET_QA_GATES.md` is required.

---

# 11. Future machine-readable manifest

Do not create a fake implementation schema before the asset tooling exists.

When automation begins, this Markdown authority should produce/align with a machine-readable manifest such as JSON/YAML/CSV containing stable asset IDs and lineage fields.

The machine-readable copy becomes operational only when validators/tests exist.

---

# 12. Current gate

`ASSET_LINEAGE_AUTHORITY = RECORDED`
`DRIVE_MANIFEST_FOLDER = CREATED`
`CURRENT_DRIVE_REFERENCE_CONTENTS = RECONCILED`
`HUNTER_H02_REFERENCE = REVIEWED_WITH_ISSUES`
`HUNTER_H02_DECISION = REVISE`
`HUNTER_H02_TECHNICAL_MODELING_USE = NOT PERMITTED`
`HUNTER_H02_CONVERSION_USE = NOT PERMITTED`
`HUNTER_H02_UPSCALE = REVIEWED_WITH_ISSUES_DERIVATIVE_DISCUSSION_ONLY`
`HUNTER_H04_REFERENCE = GENERATED_UNREVIEWED`
`MONSTER_M01M02_REFERENCE = GENERATED_UNREVIEWED`
`MONSTER_M03_DRIVE_PERSISTENCE = NOT VERIFIED`
`MONSTER_M04_DRIVE_PERSISTENCE = NOT VERIFIED`
`MONSTER_M05_DRIVE_PERSISTENCE = NOT VERIFIED`
`MONSTER_M08_DRIVE_PERSISTENCE = NOT VERIFIED`
`SELECTED_REFERENCE_PROMOTIONS_THIS_PASS = NONE`
`APPROVED_RUNTIME_2D = NONE`
`GAME_READY_3D = NONE`

Next bounded asset-quality piece:
**create Hunter H02 v002 only from `docs/40_art/reviews/HUNTER_BASE_01_H02_v001_QA.md`, then review v002 before advancing to H04 or Monster 01.**