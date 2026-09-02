# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE PLANNING INDEX / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

Map current authority and the new package-oriented `/docs` structure so future work can answer:
- where a rule belongs;
- where a playable content package belongs;
- which file owns a claim;
- what is current versus open;
- what should be read next.

Future work must reconstruct state from current repository files, not chat memory.

`Unnamed Hunt RPG` is a temporary working label.

# 1. Mandatory read order — basic to detailed

## Layer 0 — current state/governance/navigation
1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md` — package/folder ownership guide.
6. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`

## Layer 1 — player experience/world/art
7. `GAME_EXPERIENCE_BIBLE.md`
8. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
9. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
10. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
11. `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
12. `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`
13. `FIRST_SETTLEMENT_BLUEPRINT.md`
14. `docs/10_world/regions/REGION_01/README.md` — first hunting-region package front door.

For Region 01 questions, then read the relevant local file:
- `REGION_TOPOLOGY.md`;
- `TRACKING_AND_ESCAPE.md`;
- `TERRAIN_ECOLOGY_MUTATION.md`;
- `ENCOUNTER_FOOTPRINTS.md`;
- `STREAMING_AND_PERFORMANCE.md`;
- `VISUAL_REFERENCE_PLAN.md`;
- `ACCEPTANCE_CHECKLIST.md`.

## Layer 2 — gameplay/numerical behavior
15. `NEW_GAME_MASTER_PLAN.md`
16. `MECHANICAL_SYSTEMS_GUIDE.md`
17. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
18. `BEHAVIOR_PATTERN_SYSTEM.md`
19. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
20. `NEW_GAME_DISCUSSION_CHECKLIST.md`

## Layer 3 — internal architecture/code/content
21. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
22. `CONTENT_DATA_GUIDE.md`
23. `CODE_GUIDE.md`
24. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` only as supporting older detail where newer authorities do not override it.

## Layer 4 — performance/debug/creator/QA
25. `PERFORMANCE_BUDGETS_AND_CAPS.md`
26. `ADMIN_CREATOR_SYSTEM.md`
27. `TESTING_VERIFICATION_PLAN.md`

## Layer 5 — build/continuity
28. `IMPLEMENTATION_ROADMAP.md`
29. `DEVELOPMENT_REFERENCE.md`
30. `EVOLVE_ALIGNMENT.md`

# 2. `/docs` folder map

Primary guide: `docs/README.md`.

```text
docs/
├── README.md
├── 00_project/README.md
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
├── 20_gameplay/README.md
├── 30_content/README.md
├── 40_art/README.md
├── 50_technical/README.md
├── 60_quality/README.md
└── 70_handoff/README.md
```

## Structural rule

**Folders organize ownership. Packages organize one playable thing.**

A region package applies generic terrain/effect/behavior/crystal/performance rules; it does not redefine them.

# 3. Root-authority migration policy

Existing root authorities remain current. They are intentionally not moved in this pass.

Reason:
- many cross-links already reference root paths;
- moving them casually creates stale documentation;
- a folder being cleaner is not worth breaking authority navigation.

A later bounded migration must:
1. inventory inbound links;
2. choose target paths;
3. move/update one coherent authority set;
4. update all references;
5. read back and search for stale paths;
6. record supersession/migration.

Do not duplicate complete root authorities under `/docs` before that migration.

# 4. Authority order by claim type

## Intended design change
1. Current explicit user instruction.
2. Current owning root authority or later migrated equivalent.
3. Package-level application of that authority.
4. Prototype/reference material.
5. superseded/old notes.

## Mechanical/source fact after implementation
1. Current verified source/tests.
2. Authoritative domain/content definitions.
3. Current durable design docs.
4. build artifacts/logs.
5. conversation summaries/memory.

## Runtime fact
1. Direct target-device observation.
2. runtime logs/screenshots/video.
3. reproducible tests/instrumentation.
4. build/package evidence.
5. source expectation.
6. documentation.

A design file does not prove implementation. Compilation does not prove phone runtime. A generated PNG does not prove geometry/UV/rig/collision/LOD/performance.

# 5. Documents by ownership

## Governance/project
Root:
- `README.md`
- `START_HERE_NEW_CHAT.md`
- `PROJECT_HANDOFF.md`
- `DOCUMENTATION_INDEX.md`
- `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`
- `EVOLVE_ALIGNMENT.md`

Folder guide:
- `docs/00_project/README.md`

## World/spatial
Root:
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
- `FIRST_SETTLEMENT_BLUEPRINT.md`

Folder/package:
- `docs/10_world/README.md`
- `docs/10_world/regions/README.md`
- `docs/10_world/regions/REGION_01/*`

## Gameplay
Root:
- `NEW_GAME_MASTER_PLAN.md`
- `MECHANICAL_SYSTEMS_GUIDE.md`
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
- `BEHAVIOR_PATTERN_SYSTEM.md`
- `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
- `NEW_GAME_DISCUSSION_CHECKLIST.md`

Folder guide:
- `docs/20_gameplay/README.md`

## Content/data
Root:
- `CONTENT_DATA_GUIDE.md`

Folder guide:
- `docs/30_content/README.md`

Future packages may include monsters, equipment, materials, recipes, reusable terrain/status definitions.

## Art/presentation/references
Root:
- `GAME_EXPERIENCE_BIBLE.md`
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
- `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
- `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`

Folder guide:
- `docs/40_art/README.md`

## Technical/code
Root:
- `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
- `CODE_GUIDE.md`
- `DEVELOPMENT_REFERENCE.md`
- `IMPLEMENTATION_ROADMAP.md`

Folder guide:
- `docs/50_technical/README.md`

## Quality/performance/admin/testing
Root:
- `PERFORMANCE_BUDGETS_AND_CAPS.md`
- `ADMIN_CREATOR_SYSTEM.md`
- `TESTING_VERIFICATION_PLAN.md`
- `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`

Folder guide:
- `docs/60_quality/README.md`

## Handoff/continuity
Root current authority:
- `PROJECT_HANDOFF.md`

Folder guide:
- `docs/70_handoff/README.md`

# 6. Region 01 current selected architecture

Technical package ID: `REGION_01`; final display name OPEN.

Working identity:
**temperate river-and-root forest basin with open feeding ground, rocky elevation and deeper crystal-influenced territory.**

Selected planning sectors:
- `R01_S00` Trailhead / Field Camp;
- `R01_S01` River Ford / Mud Flats;
- `R01_S02` Rootwood Thicket;
- `R01_S03` Feeding Meadow;
- `R01_S04` Rocky Rise;
- `R01_S05` Deepwood Basin;
- `R01_S06` Nesting Shelf / Crystal Fault.

Core region rules:
- middle topology is looped/branched, not a single corridor;
- ordinary sector boundaries remain continuous whenever technically practical;
- same persistent monster survives movement/escape across sectors;
- tracking uses physical evidence/knowledge instead of permanent exact GPS;
- first-person encounters derive from real local region terrain;
- outer→deep danger/mutation pressure is ecological, not an invisible level wall;
- only current/required neighboring sectors receive high runtime fidelity;
- normal gameplay camera never exposes the full region graph.

Prototype scale:
- 7 planning sectors;
- typical sector characteristic span roughly 100–180 m;
- several-hundred-meter total physical region;
- exact values remain unverified until engine/device tests.

# 7. Current global locked architecture

- world is layered rather than one enormous always-loaded map;
- settlements are walkable physical spaces;
- Settlement 01 uses a compact Hunter Service Loop;
- settlement↔wilderness uses a meaningful diegetic major transition;
- hunting regions are continuous internally through streamed sectors;
- first-person combat is same-context/local-footprint tactical combat;
- physical scale convention currently 1 world unit = 1 meter;
- model direction is grounded stylized 3D / illustrated realism;
- major models must read from aerial/nearby/first-person distances;
- monster visual anatomy binds to authoritative anatomy state;
- generated PNGs are visual/reference inputs unless technically verified;
- autonomous NPC/creature behavior is deterministic authored patterns/conditions, not AI;
- six-role attribute direction: Might, Finesse, Agility, Endurance, Perception, Resolve;
- equipment/status/terrain/weather/posture/injury/crystal/mutation use one shared typed effect pipeline;
- AP/reaction scaling is tightly capped;
- contextual hit quality preferred over generic hidden critical lottery;
- crystal energy is creature life-force reserve; zero usable reserve means death;
- berserk spends that same finite reserve;
- Tier, Rank, Quality, Element, Energy and Condition remain separate;
- mutation is bounded/data-driven and can affect anatomy/capabilities/effects/behavior/terrain adaptation/harvest;
- off-screen ecology uses aggregate state;
- gameplay truth belongs to authoritative domain systems, not presentation/admin/streaming.

# 8. Documentation expansion order

Bounded sequence:
1. cross-system quality governance — RECORDED;
2. model art direction/asset standard — RECORDED;
3. model reference image/creation pipeline — RECORDED;
4. first settlement blueprint — RECORDED;
5. `/docs` folder/package structure — RECORDED;
6. first hunting-region package — RECORDED;
7. **first monster complete design packet — NEXT RECOMMENDED PIECE**;
8. player progression/equipment packet;
9. exact combat-economy packet;
10. engine-specific technical mapping only after engine/device evidence.

Model-reference sub-track waits for stable entity designs. Region 01's `VISUAL_REFERENCE_PLAN.md` records the future environment reference sequence without generating all art now.

# 9. Source-adjacent docs to create only when implementation exists

After engine selection/authorization, create only with matching source/assets:
- concrete package/class/scene map;
- build/install guide;
- save schema;
- combat action API;
- stat/effect implementation schema/API;
- deterministic behavior implementation schema/API;
- crystal/mutation/ecology implementation schema/API;
- region/sector runtime schema;
- monster/anatomy runtime schema;
- engine/DCC import/naming/pivot/material/LOD guide;
- asset provenance registry;
- measured performance/device ledger;
- release/version/change records;
- subsystem READMEs beside real source.

Do not create fake implementation docs for nonexistent source.

# 10. Documentation maintenance

When durable truth changes:
1. update the owning authority;
2. classify cross-system impact;
3. update the smallest package application needed;
4. update package README if package map/status changed;
5. update `PROJECT_HANDOFF.md` if current state/next action changed;
6. update this index/navigation if paths changed;
7. update root `README.md` when project-level contract changed;
8. read back saved state;
9. never use chat memory to silently cancel written authority.

# 11. Current gates

`DESIGN_SYSTEM = ACTIVE`
`DOCS_FOLDER_STRUCTURE_RECORDED = YES`
`ROOT_AUTHORITY_MIGRATION = NOT STARTED`
`DESIGN_QUALITY_GOVERNANCE_RECORDED = YES`
`MODEL_ART_DIRECTION_RECORDED = YES`
`MODEL_REFERENCE_PIPELINE_RECORDED = YES`
`FIRST_SETTLEMENT_BLUEPRINT_RECORDED = YES`
`FIRST_HUNTING_REGION_PACKAGE_RECORDED = YES`
`WORLD_MAP_STRUCTURE_DESIGNED = YES`
`WORLD_SCALE_STREAMING_DESIGNED = YES`
`CONTINUOUS_WILDERNESS_SECTORS_DESIGNED = YES`
`MECHANICS_DOCUMENTED = YES`
`STATS_EFFECTS_SYSTEM_DESIGNED = YES`
`DETERMINISTIC_BEHAVIOR_SYSTEM_DESIGNED = YES`
`AI_BEHAVIOR_SYSTEM = NO`
`CRYSTAL_LIFE_FORCE_SYSTEM_DESIGNED = YES`
`MUTATION_ECOSYSTEM_SYSTEM_DESIGNED = YES`
`CODE_STRUCTURE_PLANNED = YES`
`PERFORMANCE_CAPS_PLANNED = YES`
`ADMIN_CREATOR_SYSTEM_PLANNED = YES`
`TESTING_PLAN_RECORDED = YES`
`GAMEPLAY_SOURCE = NOT CREATED`
`PRODUCTION_ASSETS = NOT CREATED`
`ENGINE = NOT SELECTED`
`IMPLEMENTATION = NOT AUTHORIZED`
