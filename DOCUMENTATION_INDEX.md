# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE PLANNING / CONTENT / ASSET-REFERENCE INDEX / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

Map current authority, package ownership, entity/content packages, asset production, and the exact read order. Reconstruct current state from repository files, not chat memory.

# 1. Mandatory read order

## Layer 0 — current state/navigation/governance
1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`
6. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`
7. `docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md` when working on current art/model generation.

## Layer 1 — player experience/world/model direction
8. `GAME_EXPERIENCE_BIBLE.md`
9. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
10. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
11. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
12. `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
13. `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`
14. `FIRST_SETTLEMENT_BLUEPRINT.md`
15. `docs/10_world/regions/REGION_01/README.md`

For Region 01 specifics, use its package-local files:
- `REGION_TOPOLOGY.md`
- `TRACKING_AND_ESCAPE.md`
- `TERRAIN_ECOLOGY_MUTATION.md`
- `ENCOUNTER_FOOTPRINTS.md`
- `STREAMING_AND_PERFORMANCE.md`
- `VISUAL_REFERENCE_PLAN.md`
- `ACCEPTANCE_CHECKLIST.md`

## Layer 2 — current entity/content packages
16. `docs/30_content/README.md`
17. `docs/30_content/hunters/HUNTER_BASE_01/README.md`
18. `docs/30_content/monsters/MONSTER_01/README.md`
19. `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`
20. `docs/30_content/monsters/MONSTER_01/CRYSTAL_AND_MUTATION.md`
21. `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`

## Layer 3 — gameplay/numerical behavior
22. `NEW_GAME_MASTER_PLAN.md`
23. `MECHANICAL_SYSTEMS_GUIDE.md`
24. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
25. `BEHAVIOR_PATTERN_SYSTEM.md`
26. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
27. `NEW_GAME_DISCUSSION_CHECKLIST.md`

## Layer 4 — art production / runtime 2D / 3D conversion
28. `docs/40_art/README.md`
29. `docs/40_art/asset_pipeline/README.md`
30. `docs/40_art/asset_pipeline/RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
31. `docs/40_art/asset_pipeline/RUNTIME_2D_ASSET_GUIDE.md`
32. `docs/40_art/asset_pipeline/PNG_TO_3D_AUTOMATION_PIPELINE.md`
33. `docs/40_art/asset_pipeline/ASSET_QA_GATES.md`
34. `docs/40_art/asset_pipeline/GENERATED_SHEET_REGISTRY.md`

## Layer 5 — architecture/code/data
35. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
36. `CONTENT_DATA_GUIDE.md`
37. `CODE_GUIDE.md`
38. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` only for supporting older detail not overridden by newer authorities.

## Layer 6 — performance/debug/creator/testing
39. `PERFORMANCE_BUDGETS_AND_CAPS.md`
40. `ADMIN_CREATOR_SYSTEM.md`
41. `TESTING_VERIFICATION_PLAN.md`

## Layer 7 — build/continuity
42. `IMPLEMENTATION_ROADMAP.md`
43. `DEVELOPMENT_REFERENCE.md`
44. `EVOLVE_ALIGNMENT.md`

# 2. `/docs` map

```text
docs/
├── README.md
├── 00_project/
│   └── README.md
├── 10_world/
│   ├── README.md
│   └── regions/
│       ├── README.md
│       └── REGION_01/
│           ├── README.md
│           ├── REGION_TOPOLOGY.md
│           ├── TRACKING_AND_ESCAPE.md
│           ├── TERRAIN_ECOLOGY_MUTATION.md
│           ├── ENCOUNTER_FOOTPRINTS.md
│           ├── STREAMING_AND_PERFORMANCE.md
│           ├── VISUAL_REFERENCE_PLAN.md
│           └── ACCEPTANCE_CHECKLIST.md
├── 20_gameplay/
│   └── README.md
├── 30_content/
│   ├── README.md
│   ├── hunters/
│   │   ├── README.md
│   │   └── HUNTER_BASE_01/README.md
│   └── monsters/
│       ├── README.md
│       └── MONSTER_01/
│           ├── README.md
│           ├── ANATOMY_AND_DAMAGE.md
│           ├── CRYSTAL_AND_MUTATION.md
│           └── BEHAVIOR_AND_REGION.md
├── 40_art/
│   ├── README.md
│   └── asset_pipeline/
│       ├── README.md
│       ├── RASTER_RESOLUTION_AND_ZOOM_QUALITY.md
│       ├── RUNTIME_2D_ASSET_GUIDE.md
│       ├── PNG_TO_3D_AUTOMATION_PIPELINE.md
│       ├── ASSET_QA_GATES.md
│       └── GENERATED_SHEET_REGISTRY.md
├── 50_technical/README.md
├── 60_quality/README.md
└── 70_handoff/
    ├── README.md
    └── ASSET_GENERATION_PASS_2026-09-02.md
```

Structural law:
**folders organize ownership; packages organize one playable thing.**

Existing root authorities remain current until a separate link-safe migration occurs.

# 3. Asset storage architecture — Google Drive

Project root:
`Unnamed Hunt RPG` — `1N3FbZhLE9ZfEy1Og-iNiB2B7nyyfangt`

Separate lanes:
- modeling references — `1qsF_JUYBs9ZQ-1lZPHsTCwWn87W46VIs`;
- 2D runtime working assets — `1PJ7uzt8oZBE5jFPXoBeldGVVv9Dy1Ko_`;
- 3D conversion inputs — `1hs-qJiiF6R-1NLBmlChvSK4rlQilONLz`;
- approved exports — `1yrS6vXQElSahDUtFJjjst25gq8RIGm2P`.

Do not mix reference images and game-ready assets.

# 4. Current Hunter Base 01

Technical ID:
`hunter_base_01`

Purpose:
modeling/rig/scale base, not final story protagonist identity.

Selected prototype:
- 1.75 m height;
- realistic adult humanoid proportions;
- practical frontier layered cloth/leather/limited protective plates;
- modular harness/pouches/boots/field tools;
- restrained grounded palette/materials;
- no giant fantasy armor;
- three silhouette test variants: light tracking, balanced hunt, reinforced dangerous-hunt;
- exact weapon family remains OPEN.

# 5. Current Monster 01

Working name:
**Mudcrest Raker**.

Package:
`docs/30_content/monsters/MONSTER_01/`

Selected prototype:
- Region 01 territorial root-foraging/omnivorous quadruped;
- approx. 6.6 m nose-to-tail;
- approx. 3.0 m shoulder/main-body height;
- front-heavy mass;
- paired mineral horn crest;
- breakable dorsal plates;
- mud-adapted feet;
- severable distal tail;
- horn/leg/plate/tail state changes capabilities;
- internal forward-torso crystal core;
- provisional Mineral/Earth-type expression;
- desperation berserk consumes life force and cannot restore lost anatomy;
- mutation references: Mirestep Pads, Bastion Plates, Deep-Scent Crest, Resonant Core Veins;
- deterministic Region 01 feeding/drinking/rest/retreat/nest patterns.

Player-facing first-slice target groups:
- HEAD;
- HORN_CREST;
- FORELEG_L;
- FORELEG_R;
- HINDLEG_L;
- HINDLEG_R;
- DORSAL_PLATES;
- TAIL.

# 6. Current sheet-generation sequence

Registry authority:
`docs/40_art/asset_pipeline/GENERATED_SHEET_REGISTRY.md`.

Order:
1. `HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001.png`
2. `HUNTER_BASE_01_H04_MODULAR_SILHOUETTES_v001.png`
3. `MONSTER_01_M01_M02_HERO_TURNAROUND_v001.png`
4. `MONSTER_01_M03_ANATOMY_v001.png`
5. `MONSTER_01_M04_DAMAGE_STATES_v001.png`
6. `MONSTER_01_M05_CRYSTAL_MUTATION_VARIANTS_v001.png`
7. `MONSTER_01_M08_THREE_DISTANCE_v001.png`

Do not silently reorder by generating later flashy sheets before the base turnaround is stable.

# 7. Zoom/image-quality contract

Raster quality is solved structurally:
- preserve a high-resolution master;
- create separate detail sheets rather than unlimited zoom into one crowded board;
- use vector/SDF source for scalable symbols where practical;
- derive all smaller runtime versions from the master;
- use mip/LOD/filtering later where appropriate;
- use AI upscalers only for visual/reference restoration, never as technical truth for geometry/UV/PBR/hit masks.

A 4K reference does not authorize a 4K runtime Android texture.

# 8. 2D runtime vs modeling reference

A generated image can be classified independently as:
- `MODEL_REFERENCE`;
- `RUNTIME_2D_CANDIDATE`;
- `CONVERSION_INPUT_CANDIDATE`;
- `DISCUSSION_ONLY`.

A bestiary crop may become runtime 2D after cleanup/device checks while the turnaround remains modeling-only.

Approved runtime assets go only to the approved 2D export lane after technical/runtime QA.

# 9. PNG → 3D rule

Current selected automation direction:

`APPROVED REFERENCE`
→ `CLEAN CONVERSION INPUT / MULTIVIEW`
→ `IMAGE-TO-3D CANDIDATES`
→ `BLENDER NORMALIZE/CLEAN/REPORT`
→ `TOPOLOGY QA/RET0PO AS NEEDED`
→ `ANATOMY BINDING`
→ `BREAK/SEVER SETUP`
→ `RIG`
→ `DEFORMATION TESTS`
→ `ANIMATION`
→ `LOD CANDIDATES`
→ `COLLISION/HIT PROXIES`
→ `ENGINE IMPORT`
→ `ANDROID QA`
→ `GAME_READY`.

A generated GLB/FBX is a candidate, not a finished monster.

Current external candidate tools researched:
- Meshy;
- Tripo;
- Rodin/Hyper3D;
- Blender as likely free technical cleanup/orchestration DCC.

# 10. Current documentation progression

Recorded:
1. quality governance;
2. model/art standard;
3. reference-image pipeline;
4. first settlement;
5. package/folder architecture;
6. Region 01;
7. Hunter Base 01;
8. Monster 01;
9. runtime-2D/zoom/3D-conversion asset pipeline.

Current bounded work:
**generate and review the registered Hunter/Monster reference sheets.**

After this visual-reference pass, recommended design sequence resumes with:
- player progression/equipment packet;
- exact combat economy;
- engine/device probe only after explicit implementation authorization.

# 11. Current gates

`DESIGN_SYSTEM = ACTIVE`
`DOCS_FOLDER_STRUCTURE_RECORDED = YES`
`FIRST_HUNTING_REGION_PACKAGE_RECORDED = YES`
`HUNTER_BASE_01_DESIGNED = YES`
`MONSTER_01_DESIGNED = YES`
`ASSET_DRIVE_TAXONOMY_CREATED = YES`
`RASTER_ZOOM_POLICY_RECORDED = YES`
`RUNTIME_2D_POLICY_RECORDED = YES`
`PNG_TO_3D_PIPELINE_RECORDED = YES`
`ASSET_QA_GATES_RECORDED = YES`
`REFERENCE_SHEET_GENERATION = ACTIVE`
`GAMEPLAY_SOURCE = NOT CREATED`
`ENGINE = NOT SELECTED`
`IMPLEMENTATION = NOT AUTHORIZED`
`PHONE_RUNTIME = NOT VERIFIED`

# 12. Maintenance

When durable truth changes:
1. update owning authority/package;
2. update generated-sheet registry if visual target changed;
3. update asset storage metadata/status;
4. update `PROJECT_HANDOFF.md` and `START_HERE_NEW_CHAT.md` when next action changes;
5. read back saved state;
6. never let a chat-only statement silently supersede repository authority.
