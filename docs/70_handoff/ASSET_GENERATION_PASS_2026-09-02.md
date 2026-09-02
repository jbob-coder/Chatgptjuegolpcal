# Asset Generation / Lineage Pass — 2026-09-02

Status: ACTIVE HANDOFF / HUNTER H02 v001+v002 REVIEWED / GEOMETRY-SAFE H02A v003 PREPARATION / GAMEPLAY IMPLEMENTATION STILL NOT AUTHORIZED

## Current objective

Fix the earliest broken visual-production dependency before advancing to equipment or Monster 01 visual QA.

Hunter H02 v001 and v002 have both been reviewed.

Current decisions:
- `H02 v001 → REVISE`;
- `H02 v002 → REVISE`.

The problem is now understood as two related issues:
1. technical source images were overloaded as infographics;
2. cross-view images lacked one explicit shared proportion/attachment scaffold.

Current bounded next action:
**generate Hunter H02A v003 only from the source-pack standard and Hunter proportion/attachment contract, then review H02A before H02B/H03/H04 or Monster 01.**

Reference-image generation remains authorized. Gameplay code, engine project, scenes, APK and final game-ready 3D implementation remain not authorized.

---

# Primary current authorities

Asset pipeline:
- `docs/40_art/asset_pipeline/README.md`
- `ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`
- `GENERATED_SHEET_REGISTRY.md`
- `ASSET_QA_GATES.md`
- `RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
- `HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`
- `RUNTIME_2D_ASSET_GUIDE.md`
- `PNG_TO_3D_AUTOMATION_PIPELINE.md`
- `EXTERNAL_3D_TOOL_EVALUATION.md`

Reviews:
- `docs/40_art/reviews/HUNTER_BASE_01_H02_v001_QA.md`
- `docs/40_art/reviews/HUNTER_BASE_01_H02_v002_QA.md`

Hunter design/geometry:
- `docs/30_content/hunters/HUNTER_BASE_01/README.md`
- `docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md`

Monster design remains:
- `docs/30_content/monsters/MONSTER_01/*`

---

# Drive state

Project root:
`Unnamed Hunt RPG` — `1N3FbZhLE9ZfEy1Og-iNiB2B7nyyfangt`

Manifest folder:
`00_Asset_Manifests` — `1cg-zesn5QTcSIm63pnt1FeH7TYvxKlfo`

Modeling references:
`01_Modeling_References` — `1qsF_JUYBs9ZQ-1lZPHsTCwWn87W46VIs`
- Hunter — `1XM-kcLfxD3Af-HAPRu4zlO691RgDJLlE`
- Monster_01 — `1klaz1KEefbWZ2cMMH3N6m--lbQqf9CUe`

3D conversion inputs:
`03_3D_Conversion_Inputs` — `1hs-qJiiF6R-1NLBmlChvSK4rlQilONLz`
- Hunter — `1fbVPHHyVmGuqAxaKsUXSKAYdYk-BeJy4`
- Monster_01 — `19iD9tQXEtQEL-Io8Y5MD5h-WPRVKYjEa`

Approved exports remain empty of any approved Hunter/Monster production asset.

---

# Hunter Base 01 authority

Current base design remains:
- prototype height 1.75 m;
- realistic adult humanoid proportions;
- practical frontier layered cloth/leather foundation;
- limited removable protective plate;
- modular harness/pouches/boots/field tools;
- no giant fantasy armor;
- no locked weapon family;
- final protagonist face/name/story identity OPEN.

The technical neutral base must not silently become the reinforced loadout.

---

# New geometry-safe proportion/attachment contract

Authority:
`docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md`.

Primary quality fix:
**all Hunter Base 01 visual/modeling work must share one normalized body reference and one stable attachment vocabulary.**

The contract records:
- engine-neutral local documentation axes;
- 1.75 m world-height authority;
- normalized prototype vertical landmark scaffold;
- cross-view body/clothing/equipment invariants;
- neutral technical stance;
- stable attachment vocabulary for chest/shoulder/back/forearm/belt/thigh/shin/carry points;
- attachment placement bands rather than fake exact XYZ transforms;
- equipment-fit rules;
- camera/collision/settlement/rig consequences;
- H02A v003 generation requirements.

Important status:
- landmark ratios are `PROTOTYPE TARGETS`, not final anatomical/rig truth;
- exact attachment transforms remain OPEN until a real DCC rig exists;
- exact collider dimensions remain OPEN until the engine/device probe;
- generated images may not redefine body height or attachment identity.

This provides one shared base for art, DCC blockout, armor fit, NPC rig reuse, camera scale, collision planning and environment-scale checks.

---

# H02 v001 result

File:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001_DRAFT_REFERENCE.png`
Drive ID: `1U9vm0y7YSSGnEiPYO8C7M8QAq43FyibV`

State:
`REVIEWED_WITH_ISSUES / REVISE / DISCUSSION_ONLY`.

Main failures:
- low real figure detail;
- cross-view gear inconsistency;
- no proper 3/4;
- too identity/heavy-armor specific;
- failed 3D-conversion preflight.

Upscaled derivative:
`1hcxXoOH6xsy-CXh2EoyhnjgIH_etizOc`
remains inspection-only and cannot invent missing detail.

---

# H02 v002 result

File:
`HUNTER_BASE_01_H02_TURNAROUND_SCALE_REF_v002.png`
Drive ID: `1kkRFXV2Mtk1sWyhjxdnSGm7l6xQRMZE4`
Observed dimensions: `1536 × 1024`.

State:
`REVIEWED_WITH_ISSUES / REVISE / DISCUSSION_ONLY`.

What improved:
- front/left/back/right/3-4 views present;
- improved overall body/gear coherence;
- modular practical clothing direction stronger;
- broad silhouette works;
- detail areas were considered.

Why it still fails technical-source approval:
- it is still an infographic with too many panels;
- the actual turnaround figures occupy too few native pixels;
- detail panels are separately generated concepts, not guaranteed magnifications of the same exact construction;
- views remain illustrative instead of verified orthographic/multiview geometry;
- generated embedded metadata/permissions/date/PBR/checksum claims are not authority;
- face remains unnecessarily identity-specific for reusable neutral base;
- conversion preflight fails because the subject is not isolated.

Do not copy v002 to the Hunter conversion-input folder.

---

# H02A v003 source contract — NEXT

Planned file:
`HUNTER_BASE_01_H02A_ORTHO_REF_v003.png`

Required:
- H02A only;
- front / left / back / right where practical;
- same neutral pose/gear state;
- same normalized body landmarks;
- same attachment-side identity;
- figures dominate roughly 75–90% usable raster height;
- no infographic panels;
- no monster comparison;
- no material/PBR chart;
- no generated file/status/checksum metadata;
- no weapon;
- plain/transparent background;
- low protagonist identity specificity;
- base cloth/leather + limited modular protection.

H02A is judged against both:
- `HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`;
- `PROPORTION_AND_ATTACHMENT_CONTRACT.md`.

If independent generated views cannot maintain one body/gear construction, do not endlessly regenerate. The later DCC blockout, when authorized, becomes the deliberate geometric truth and future orthographic renders should be derived from that single 3D source.

## H02B v003
3/4 volume confirmation. Blocked until H02A is reviewed enough to justify it.

## H03 details
Hands/boots/harness/belt/collar/knee-shin detail only if H02A/H02B lack enough real source detail.

## H04 equipment silhouettes
Existing v001 remains generated but its review is blocked until a neutral technical base is selected.

---

# Monster 01 state

Mudcrest Raker design remains recorded and unchanged.

Drive-verified hero/turnaround candidate:
`MONSTER_01_M01_M02_HERO_TURNAROUND_v001_VISUAL_CANDIDATE.png`
Drive ID: `1yMLP6lcO4Us4uJO2CMNUCusiXlWpwI2m`
State: `GENERATED_UNREVIEWED`.

M03 anatomy, M04 damage, M05 mutation and M08 distance sheets were generated earlier but their current Drive persistence remains unverified. Do not claim them as safely stored until restored/read back.

Monster visual QA remains downstream of the Hunter neutral-base correction in the current bounded sequence.

---

# Why this fix matters to the game

A bad humanoid base or inconsistent attachment map would contaminate:
- first-person camera/hand framing;
- equipment fitting;
- NPC rig reuse;
- animation clearance;
- door/stair/environment scale;
- aerial silhouette readability;
- collision/capsule proportions;
- future LODs;
- armor/loadout modularity.

Fixing those assumptions before DCC work is cheaper than compensating across multiple systems later.

---

# Current gates

`ASSET_LINEAGE_AUTHORITY = CURRENT`
`HUNTER_BASE_01_DESIGNED = YES`
`HUNTER_PROPORTION_ATTACHMENT_CONTRACT = RECORDED`
`HUNTER_WORLD_HEIGHT = 1.75_M_PROTOTYPE_TARGET`
`HUNTER_NORMALIZED_BODY_ANCHORS = RECORDED_PROTOTYPE_TARGETS`
`HUNTER_ATTACHMENT_VOCABULARY = RECORDED`
`HUNTER_ATTACHMENT_EXACT_TRANSFORMS = OPEN_UNTIL_DCC`
`H02_V001 = REVIEWED_WITH_ISSUES / REVISE`
`H02_V002 = REVIEWED_WITH_ISSUES / REVISE / DRIVE_VERIFIED`
`H02_V002_CONVERSION_USE = NO`
`H02A_V003 = PLANNED / NEXT / CONTRACT_READY`
`H02B_V003 = BLOCKED BY H02A`
`H03_DETAILS = CONDITIONAL`
`H04_V001 = GENERATED_UNREVIEWED / BLOCKED`
`MONSTER_M01M02 = GENERATED_UNREVIEWED / DRIVE_VERIFIED`
`MONSTER_M03_M04_M05_M08_DRIVE_PERSISTENCE = NOT VERIFIED`
`SELECTED_HUNTER_TECHNICAL_REFERENCE = NONE`
`HUNTER_CONVERSION_INPUT = NONE`
`APPROVED_RUNTIME_2D = NONE`
`GAME_READY_3D = NONE`
`GAMEPLAY_SOURCE = NOT CREATED`
`ENGINE = NOT SELECTED`
`PHONE_RUNTIME = NOT VERIFIED`

## Exact next action

**Generate Hunter H02A v003 only, then QA it against the proportion/attachment contract and asset QA gates before generating H02B/H03 or reviewing H04/Monster 01.**
