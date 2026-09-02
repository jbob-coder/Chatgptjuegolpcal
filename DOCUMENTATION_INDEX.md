# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE PLANNING / CONTENT / ASSET-QA INDEX / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

Map current authority, package ownership, content packages, asset-production rules and exact read order. Reconstruct current state from repository files, not chat memory.

# 1. Mandatory read order

## Layer 0 — current state/navigation/governance
1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`
6. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`
7. `docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md` when working on art/model generation.

## Layer 1 — player experience/world/model direction
8. `GAME_EXPERIENCE_BIBLE.md`
9. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
10. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
11. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
12. `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
13. `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`
14. `FIRST_SETTLEMENT_BLUEPRINT.md`
15. `docs/10_world/regions/REGION_01/README.md`

Region 01 package-local authorities:
- `REGION_TOPOLOGY.md`
- `TRACKING_AND_ESCAPE.md`
- `TERRAIN_ECOLOGY_MUTATION.md`
- `ENCOUNTER_FOOTPRINTS.md`
- `STREAMING_AND_PERFORMANCE.md`
- `VISUAL_REFERENCE_PLAN.md`
- `ACCEPTANCE_CHECKLIST.md`

## Layer 2 — entity/content packages
16. `docs/30_content/README.md`
17. `docs/30_content/hunters/HUNTER_BASE_01/README.md`
18. `docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md`
19. `docs/30_content/monsters/MONSTER_01/README.md`
20. `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`
21. `docs/30_content/monsters/MONSTER_01/CRYSTAL_AND_MUTATION.md`
22. `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`

## Layer 3 — gameplay/numerical behavior
23. `docs/20_gameplay/README.md`
24. `docs/20_gameplay/progression/README.md`
25. `docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`
26. `docs/20_gameplay/combat/README.md`
27. `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`
28. `NEW_GAME_MASTER_PLAN.md`
29. `MECHANICAL_SYSTEMS_GUIDE.md`
30. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
31. `BEHAVIOR_PATTERN_SYSTEM.md`
32. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
33. `NEW_GAME_DISCUSSION_CHECKLIST.md`

Current next gameplay authority to create:
**Combat Resolution / Hit Quality and Defense Contract**.

## Layer 4 — art production / runtime 2D / 3D conversion
34. `docs/40_art/README.md`
35. `docs/40_art/asset_pipeline/README.md`
36. `docs/40_art/asset_pipeline/ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`
37. `docs/40_art/asset_pipeline/RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
38. `docs/40_art/asset_pipeline/RUNTIME_2D_ASSET_GUIDE.md`
39. `docs/40_art/asset_pipeline/PNG_TO_3D_AUTOMATION_PIPELINE.md`
40. `docs/40_art/asset_pipeline/ASSET_QA_GATES.md`
41. `docs/40_art/asset_pipeline/GENERATED_SHEET_REGISTRY.md`
42. `docs/40_art/asset_pipeline/HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`
43. `docs/40_art/asset_pipeline/HUNTER_DCC_BLOCKOUT_SPECIFICATION.md`
44. `docs/40_art/reviews/README.md`
45. Hunter H02/H02A review files when relevant.

## Layer 5 — architecture/code/data
46. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
47. `CONTENT_DATA_GUIDE.md`
48. `CODE_GUIDE.md`
49. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` only for older supporting detail not overridden by newer authorities.

## Layer 6 — performance/debug/creator/testing
50. `PERFORMANCE_BUDGETS_AND_CAPS.md`
51. `ADMIN_CREATOR_SYSTEM.md`
52. `TESTING_VERIFICATION_PLAN.md`

## Layer 7 — build/continuity
53. `IMPLEMENTATION_ROADMAP.md`
54. `DEVELOPMENT_REFERENCE.md`
55. `EVOLVE_ALIGNMENT.md`

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
│   ├── README.md
│   ├── progression/
│   │   ├── README.md
│   │   └── PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md
│   └── combat/
│       ├── README.md
│       └── ACTION_ECONOMY_CONTRACT.md
├── 30_content/
│   ├── README.md
│   ├── hunters/
│   │   └── HUNTER_BASE_01/
│   │       ├── README.md
│   │       └── PROPORTION_AND_ATTACHMENT_CONTRACT.md
│   └── monsters/
│       └── MONSTER_01/
│           ├── README.md
│           ├── ANATOMY_AND_DAMAGE.md
│           ├── CRYSTAL_AND_MUTATION.md
│           └── BEHAVIOR_AND_REGION.md
├── 40_art/
│   ├── README.md
│   ├── reviews/
│   │   └── Hunter H02/H02A QA records
│   └── asset_pipeline/
│       ├── README.md
│       ├── ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md
│       ├── RASTER_RESOLUTION_AND_ZOOM_QUALITY.md
│       ├── RUNTIME_2D_ASSET_GUIDE.md
│       ├── PNG_TO_3D_AUTOMATION_PIPELINE.md
│       ├── ASSET_QA_GATES.md
│       ├── GENERATED_SHEET_REGISTRY.md
│       ├── HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md
│       └── HUNTER_DCC_BLOCKOUT_SPECIFICATION.md
├── 50_technical/README.md
├── 60_quality/README.md
└── 70_handoff/
    ├── README.md
    └── ASSET_GENERATION_PASS_2026-09-02.md
```

Structural law:
**folders organize ownership; packages organize one playable thing/system.**

Existing root authorities remain current until a separate link-safe migration occurs.

# 3. Current world/content packets

Settlement 01:
- compact defensible frontier settlement;
- repeated core-service legs ~10–25 sec prototype target;
- walkable, layered, district-cullable.

Region 01:
- seven planned sectors S00–S06;
- looped/branched topology;
- continuous ordinary sector transitions;
- physical tracking evidence;
- persistent hunted monster state;
- first-person battle footprints derived from real terrain.

Hunter Base 01:
- 1.75 m prototype human scale;
- grounded practical frontier base;
- normalized prototype body anchors;
- stable attachment vocabulary;
- final protagonist identity/weapon family OPEN.

Monster 01 — Mudcrest Raker:
- ~6.6 m length;
- ~3.0 m shoulder/main-body height;
- front-heavy quadruped;
- paired horn crest;
- breakable dorsal plates;
- mud-adapted feet;
- severable distal tail;
- internal life crystal;
- provisional Mineral/Earth-type expression;
- deterministic Region 01 activity/retreat patterns.

# 4. Current player progression authority

Package:
`docs/20_gameplay/progression/`.

Selected model:
**HYBRID / EQUIPMENT + MASTERY + KNOWLEDGE WEIGHTED.**

Selected laws:
- slow bounded base-attribute growth;
- equipment is largest practical combat-expression vector but retains tradeoffs;
- weapon mastery emphasizes technique/handling rather than endless damage percentages;
- knowledge improves information/decision quality;
- Hunter Rank primarily controls access/trust;
- no universal gear score as primary truth;
- no exponential health/damage treadmill;
- AP is not a routine progression reward;
- harvest progression cannot violate physical material capacity;
- high progression must preserve anatomy/terrain/preparation relevance;
- first slice proves only one small progression loop.

Open:
- exact mastery/rank counts/names;
- exact attribute soft caps;
- exact armor UI slot count;
- durability/sharpness;
- respec/failure-loss rules;
- human crystal use;
- endgame ceiling.

# 5. Current combat action-economy authority

Package:
`docs/20_gameplay/combat/`.

Primary authority:
`ACTION_ECONOMY_CONTRACT.md`.

Selected architecture:
- AP = current-turn tactical opportunity;
- RP = bounded out-of-turn reaction capacity;
- Stamina = persistent exertion across turns;
- AP/RP/Stamina are separate resources;
- no normal AP banking;
- ordinary progression/attributes do not grant additional normal turns;
- explicit reaction windows;
- normal reaction recursion blocked;
- UI/animation cannot advance turns or spend/refund resources.

Prototype first-slice targets:
- hunter `4 AP`;
- hunter `1 RP`;
- adjacent standard move `1 AP`;
- standard attack `2 AP`;
- precision attack `3 AP`;
- heavy/full-turn commitment `4 AP`;
- aim/brace/analyze/recovery commonly `1 AP`;
- larger reposition commonly `2 AP` plus stamina.

Important targeting rule:
selecting an already-known legal body part inside an attack command is not automatically charged an additional AP. Distinct setup actions such as Aim/Analyze/positioning can carry their own costs.

Numbers are prototype targets until combat testing; separation, ownership, reaction-window and anti-loop laws are selected architecture.

# 6. Hunter visual-production stop rule

Hunter H02 v001 → `REVISE`.
Hunter H02 v002 → `REVISE`.
Hunter H02A v003 → `REVISE_METHOD`.

Repeated same-method Hunter technical multiview generation is paused.

Reason:
independent generated sheets repeatedly produced infographic/contact-sheet content rather than clean geometry-safe source views.

Recorded escalation:
`HUNTER_DCC_BLOCKOUT_SPECIFICATION.md`.

DCC implementation is NOT authorized.

Do not create H02A v004 with the same failed method.

# 7. Asset storage architecture — Google Drive

Project root:
`Unnamed Hunt RPG` — `1N3FbZhLE9ZfEy1Og-iNiB2B7nyyfangt`.

Separate lanes:
- modeling references;
- 2D runtime working assets;
- 3D conversion inputs;
- approved exports.

Do not mix reference, conversion and game-ready assets.

A generated GLB/FBX remains a reconstruction candidate until topology/anatomy/rig/LOD/engine/Android gates pass.

# 8. Current documentation progression

Recorded major bounded pieces:
1. quality governance;
2. model/art standard;
3. reference-image/runtime-2D/PNG→3D pipeline;
4. first settlement blueprint;
5. package/folder architecture;
6. Region 01;
7. Hunter Base 01;
8. Monster 01;
9. Hunter proportion/attachment contract;
10. Hunter source-pack and DCC-blockout specifications;
11. player progression/equipment packet;
12. **exact combat action-economy contract**.

Next:
13. **Combat Resolution / Hit Quality and Defense Contract**.

After that, choose another bounded dependency based on the resulting combat-resolution contract rather than assuming the rest of the roadmap is unchanged.

# 9. Current gates

`DESIGN_SYSTEM = ACTIVE`
`DOCS_FOLDER_STRUCTURE_RECORDED = YES`
`FIRST_HUNTING_REGION_PACKAGE_RECORDED = YES`
`HUNTER_BASE_01_DESIGNED = YES`
`MONSTER_01_DESIGNED = YES`
`PLAYER_PROGRESSION_PACKET = RECORDED`
`PLAYER_PROGRESSION_MODEL = SELECTED_HYBRID`
`COMBAT_ACTION_ECONOMY = RECORDED`
`FIRST_SLICE_AP_TARGET = 4`
`FIRST_SLICE_RP_TARGET = 1`
`AP_BANKING = NO`
`REACTION_RECURSION = BLOCKED`
`HUNTER_AI_MULTIVIEW_ROUTE = PAUSED_BY_QA`
`HUNTER_DCC_BLOCKOUT_SPECIFICATION = RECORDED`
`DCC_IMPLEMENTATION = NOT AUTHORIZED`
`GAMEPLAY_SOURCE = NOT CREATED`
`ENGINE = NOT SELECTED`
`IMPLEMENTATION = NOT AUTHORIZED`
`PHONE_RUNTIME = NOT VERIFIED`

# 10. Maintenance

When durable truth changes:
1. update owning authority/package;
2. update relevant registry/manifest if an asset changed;
3. update `PROJECT_HANDOFF.md` and `START_HERE_NEW_CHAT.md` when next action changes;
4. update this index when read order/package structure changes;
5. read back saved state;
6. never let a chat-only statement silently supersede repository authority.
