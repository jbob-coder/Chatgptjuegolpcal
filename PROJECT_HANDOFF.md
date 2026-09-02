# Unnamed Hunt RPG — Project Handoff

Status: DESIGN SYSTEM / PLANNING ONLY / NO GAMEPLAY CODE AUTHORIZED
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE

Continue defining the new game in bounded documentation/content pieces before implementation begins.

The documentation structure and first hunting-region package are now recorded. The next recommended bounded design piece is the **first complete monster design packet**, using Region 01 as the monster's actual habitat/route/combat context.

## CURRENT_STATE

This is a new game replacing WorldLife in the same repository/project area. WorldLife is not the design base.

No new-game gameplay code, engine project, scenes, APK or production 3D assets have been created.

Current design authorities now cover:
- quality governance;
- player experience/visual direction;
- world/settlement/streaming structure;
- model/art/reference pipeline;
- first settlement;
- first hunting region;
- stats/effects;
- deterministic behavior;
- crystal/mutation/ecosystem;
- architecture/code/content plan;
- performance/admin/testing;
- implementation order.

## DOCUMENTATION STRUCTURE

Primary folder guide: `docs/README.md`.

New structure:

```text
docs/
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

Core structural rule:
**folders organize ownership; packages organize one playable thing.**

Existing root authorities remain authoritative and are not moved in this pass. Root migration is a future bounded task requiring link inventory/update/readback. Do not create duplicate full authority copies under `/docs`.

## DESIGN-QUALITY GOVERNANCE

Detailed authority: `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`.

Current rules:
- every meaningful mechanic identifies player value, authoritative owner, dependencies, caps/invariants and verification path;
- distinguish LOCKED/CURRENT, SELECTED ARCHITECTURE, PROTOTYPE TARGET, OPEN, FUTURE OPTION and REJECTED/NOT PREFERRED;
- depth should come from interactions among reusable bounded systems rather than uncontrolled micro-systems;
- foundational changes require cross-system impact analysis;
- no two systems should own the same authoritative truth;
- correctness, input, save integrity, tactical readability, explainability and Android performance are project-wide gates;
- work proceeds in bounded pieces.

## MODEL / ART / REFERENCE STATE

Detailed authorities:
- `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`;
- `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`;
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`.

Selected direction:
- grounded stylized 3D / illustrated realism;
- believable scale with mild silhouette exaggeration for phone readability;
- important assets readable from aerial, nearby and first-person distances;
- one monster model/identity lineage supports exploration/combat LOD representations;
- visual anatomy corresponds to authoritative anatomy/capabilities;
- damage states use layered wounds/swaps/detach/sever state rather than unrelated full models;
- crystal/mutation visuals biologically integrated and restrained;
- humanoids favor shared compatible rigs/modular equipment;
- buildings/environments favor modular kits, simplified collision and LOD/culling;
- exact production geometry/texture/bone/material budgets remain OPEN until engine/device profiling.

Generated PNG rule:
- visual-intent and technical references are separate;
- generated labels/dimensions/normal-looking/ORM-looking images are not technical truth unless separately verified;
- graybox must pass scale/aerial/first-person/anatomy checks before high-detail asset production.

Two general model/art boards are already saved in Google Drive and recorded in the model-reference authority.

## WORLD / SETTLEMENT ARCHITECTURE

Detailed authorities:
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`.

Selected world hierarchy:

`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE / TRANSITION CORRIDOR → CONTINUOUS STREAMED HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`

Rules:
- no enormous always-loaded open world;
- settlement is physical/walkable;
- settlement↔wilderness is a major transition;
- ordinary internal wilderness sector changes remain continuous whenever practical;
- only major region/deep interior boundaries may use controlled transitions when necessary;
- normal exploration camera stays local rather than revealing the whole region;
- preferred measurement convention: 1 world unit = 1 meter;
- persistent monsters keep identity/state across sector/encounter transitions;
- first-person battlefields derive from the exact local wilderness context.

### Settlement 01

Working ID: `SETTLEMENT_01`; final name OPEN.

Selected first-pass structure:
- defensible elevated river/chasm geography;
- irregular prototype extent roughly 220–280 m × 160–230 m;
- compact Hunter Service Loop:
  lodge/contracts → storage/loadout → smith/craft/processing → hunter gate;
- recovery/home nearby;
- repeated core-service legs around 10–25 seconds prototype target;
- 2–3 major elevation bands;
- important seamless interiors where device budget permits;
- deterministic NPC schedules with active/background/logical runtime tiers;
- district/culling partitions;
- gate transition demotes settlement systems and preloads wilderness;
- processing/material route intentionally near return gate.

## REGION_01 — FIRST HUNTING REGION

Package authority:
`docs/10_world/regions/REGION_01/README.md`.

Status: DESIGN PACKAGE RECORDED / NO GRAYBOX / NO IMPLEMENTATION.

Technical ID: `REGION_01`; final display name OPEN.

Working identity:
**temperate river-and-root forest basin with open feeding ground, rocky elevation and deeper crystal-influenced territory.**

### Primary quality fix

Region 01 is not a corridor and not a giant empty map. It is a compact connected ecosystem graph with alternate routes and meaningful sector roles.

### Selected sector set

- `R01_S00` Frontier Trailhead / Field Camp;
- `R01_S01` River Ford / Mud Flats;
- `R01_S02` Rootwood Thicket;
- `R01_S03` Feeding Meadow;
- `R01_S04` Rocky Rise;
- `R01_S05` Deepwood Basin;
- `R01_S06` Nesting Shelf / Crystal Fault.

Canonical graph is stored in `REGION_TOPOLOGY.md`.

Middle sectors have loop/route redundancy so the player can approach/intercept/reacquire rather than following one scripted hallway.

### Region scale targets

PROTOTYPE only:
- seven planning sectors including camp;
- typical characteristic sector span roughly 100–180 m, variable by terrain;
- several-hundred-meter overall physical region using terrain folds/sight blockers;
- exact route times/dimensions/resident-sector budgets require engine/device testing.

### Tracking/escape

`TRACKING_AND_ESCAPE.md` records:
- footprints/mud/water disturbance;
- scratches/broken vegetation;
- feeding/rest/territory signs;
- injury evidence only when physically valid;
- audio/element/mutation evidence only when supported;
- evidence confidence/age concept;
- persistent monster escape/reacquisition contract.

If a monster escapes:
- same instance survives;
- anatomy damage persists;
- severed/broken parts persist;
- crystal/mutation/required status/behavior state persists;
- deterministic behavior selects a legal retreat route;
- evidence can be generated along that route;
- player returns to the real encounter location and continues the hunt.

### Terrain/ecology/mutation

`TERRAIN_ECOLOGY_MUTATION.md` applies existing systems to the region.

Sector roles:
- river/mud — strong tracks/crossing decisions;
- root forest — constrained sight lines/scratches/cover;
- meadow — open observation/feeding evidence;
- rocky rise — elevation/partial views/hard-ground tracking tradeoff;
- deep basin — route convergence/higher danger/pressure;
- nest/fault — deepest retreat/territory and highest local crystal/mutation-pressure candidate.

Pressure is ecological context, not an invisible level wall or instant mutation zone.

Off-screen ecology remains aggregate/bounded.

### Encounter footprints

`ENCOUNTER_FOOTPRINTS.md` currently plans representative local combat anchors:
- `R01_EF01` Riverbank Ford;
- `R01_EF02` Meadow Edge;
- `R01_EF03` Root/Boulder Hollow;
- `R01_EF04` Deep Nest Shelf.

These preserve real terrain, approach direction, cover, elevation and escape mapping.

### Streaming/performance

`STREAMING_AND_PERFORMANCE.md` applies a fidelity-ring concept:
- current sector highest required exploration fidelity;
- required neighbors prepared for seamless crossing;
- next-hop/far context lower cost;
- inactive/off-region ecology aggregate/logical;
- persistent monster state independent of presentation fidelity.

Important stress cases:
- S01 water/mud/tracks;
- S05 dense foliage/occlusion/multi-neighbor streaming;
- S04 long-sightline LOD;
- first-person encounter promotion.

Artificial slow-stream and repeated-boundary tests are planned to catch disappearance/duplication/thrashing.

### Region visual references

`VISUAL_REFERENCE_PLAN.md` defines future PNG/reference work, but no new Region 01 PNG was generated in this pass.

Recommended later order:
1. clean topology diagram;
2. local gameplay-camera keyframes;
3. mood/identity board;
4. modular environment-kit sheet;
5. encounter-continuity sheet;
6. tracking/LOD/camp sheets as needed.

This ordering prevents speculative art from becoming fake geometry/specification.

### Region acceptance

`ACCEPTANCE_CHECKLIST.md` separates:
- documentation coherence;
- graybox topology;
- persistent tracking/hunt;
- terrain/effect interaction;
- encounter continuity;
- streaming robustness;
- Android performance;
- visual quality;
- expansion permission.

No runtime gate is currently claimed.

## CORE GAMEPLAY STATE

### Combat
- first-person turn-based tactical combat;
- movement/repositioning/cover/terrain/bearing matter;
- targetable anatomy authoritative;
- damage can wound/break/sever/destroy;
- monster escape returns same persistent injured instance;
- current action-economy candidate: AP + stamina + limited reaction resource.

### Stats/effects
Current six-role direction:
- Might;
- Finesse;
- Agility;
- Endurance;
- Perception;
- Resolve.

Equipment/status/terrain/weather/posture/injury/crystal/mutation/context use one typed effect pipeline with explicit stacking, caps, floors, cached derived stats and calculation traces.

### Deterministic behavior
**AI behavior system = NO.**

NPCs/creatures use authored schedules/patterns/conditions, priorities, cooldowns, capability requirements, phases and deterministic/seeded tie rules where appropriate.

Region packages expose legal geography/context; monster/NPC content packets define authored rules that use those facts.

### Crystal/mutation/ecosystem
- internal creature crystal;
- current crystal energy is life-force reserve;
- zero usable energy means death;
- berserk/desperation spends same reserve;
- Tier, Rank, Quality, Element, Energy and Condition separate;
- mutation can alter anatomy/capabilities/effects/terrain adaptation/behavior/harvest;
- regional ecology influences trait/population pressure;
- off-screen ecology aggregate.

### Harvest
- yield derives from actual anatomy/core condition;
- unique physical structures cannot duplicate impossibly;
- results should explain important quantity/quality loss/bonus;
- direct core damage versus crystal harvest quality remains an available design direction, not fully balanced yet.

## PERFORMANCE / ADMIN / TESTING

Different spatial layers use different budgets:
- settlement → NPC/services/architecture priority;
- frontier → handoff/preload;
- region → terrain/tracking/ecology/monster priority;
- first-person encounter → local monster/anatomy/telegraph/VFX highest detail.

Future Admin/Creator support should include:
- region-sector graph/streaming overlay;
- current/neighbor/logical fidelity state;
- artificial slow-stream mode;
- terrain/effect traces;
- habitat/ecology/mutation-pressure overlay;
- persistent-monster cross-sector inspector;
- tracking evidence age/cluster view;
- encounter-footprint/tactical-node/cover preview;
- first-person/camera-transition preview;
- per-sector performance counts.

Exact runtime numbers remain unverified until target device testing.

## CURRENT ACTIVE PLANNING AUTHORITIES

Project/root:
- `README.md`
- `START_HERE_NEW_CHAT.md`
- `PROJECT_HANDOFF.md`
- `DOCUMENTATION_INDEX.md`
- `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`
- `GAME_EXPERIENCE_BIBLE.md`
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
- `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
- `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`
- `FIRST_SETTLEMENT_BLUEPRINT.md`
- `NEW_GAME_MASTER_PLAN.md`
- `MECHANICAL_SYSTEMS_GUIDE.md`
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
- `BEHAVIOR_PATTERN_SYSTEM.md`
- `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
- `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
- `CONTENT_DATA_GUIDE.md`
- `CODE_GUIDE.md`
- `PERFORMANCE_BUDGETS_AND_CAPS.md`
- `ADMIN_CREATOR_SYSTEM.md`
- `TESTING_VERIFICATION_PLAN.md`
- `IMPLEMENTATION_ROADMAP.md`
- `DEVELOPMENT_REFERENCE.md`
- `EVOLVE_ALIGNMENT.md`
- `NEW_GAME_DISCUSSION_CHECKLIST.md`

Package/navigation:
- `docs/README.md`
- all top-level folder `README.md` guides;
- `docs/10_world/regions/README.md`;
- `docs/10_world/regions/REGION_01/*`.

## BOUNDED DOCUMENTATION PIECE STATUS

Piece A — Cross-system quality governance: **RECORDED**.

Piece B — Model art direction/asset standard: **RECORDED**.

Piece C — Model reference image/creation pipeline: **RECORDED**.

Piece D — First settlement blueprint: **RECORDED**.

Piece E — Documentation folder/package structure: **RECORDED**.

Piece F — First hunting-region package: **RECORDED**.

Next recommended bounded piece:
**FIRST MONSTER COMPLETE DESIGN PACKET**.

That future packet should define only one primary hunt species and connect it to Region 01:
- ecological role/habitat use;
- body plan/scale;
- crystal profile;
- bounded mutations;
- anatomy graph and capabilities;
- attacks;
- deterministic behavior rules;
- movement/feed/drink/nest/escape routes;
- tracking evidence;
- berserk conditions;
- harvest sources;
- presentation/model-reference pack;
- performance/test budget.

Do not simultaneously design a large bestiary, every weapon, final progression and engine code.

## NEXT_ACTION

Continue discussion or begin the first monster packet.

Do not implement gameplay or produce final 3D assets until explicitly authorized.

## STATUS GATES

DESIGN_RECORDED = YES
DOCS_FOLDER_STRUCTURE_RECORDED = YES
ROOT_AUTHORITY_MIGRATION = NOT STARTED
DESIGN_QUALITY_GOVERNANCE_RECORDED = YES
MODEL_ART_DIRECTION_RECORDED = YES
MODEL_REFERENCE_PIPELINE_RECORDED = YES
FIRST_SETTLEMENT_BLUEPRINT_RECORDED = YES
FIRST_HUNTING_REGION_PACKAGE_RECORDED = YES
REGION_01_GRAYBOX = NOT STARTED
WORLD_MAP_STRUCTURE_DESIGNED = YES
WORLD_SCALE_STREAMING_DESIGNED = YES
WALKABLE_SETTLEMENTS_DESIGNED = YES
CONTINUOUS_WILDERNESS_SECTORS_DESIGNED = YES
SETTLEMENT_HUNTING_REGION_SEPARATION_DESIGNED = YES
STATS_EFFECTS_SYSTEM_DESIGNED = YES
DETERMINISTIC_BEHAVIOR_SYSTEM_DESIGNED = YES
AI_BEHAVIOR_SYSTEM = NO
CRYSTAL_LIFE_FORCE_SYSTEM_DESIGNED = YES
MUTATION_ECOSYSTEM_SYSTEM_DESIGNED = YES
SYSTEM_ARCHITECTURE_PLANNED = YES
CONTENT_PIPELINE_PLANNED = YES
CODE_GUIDE_RECORDED = YES
PERFORMANCE_CAPS_PLANNED = YES
ADMIN_CREATOR_SYSTEM_PLANNED = YES
TESTING_PLAN_RECORDED = YES
IMPLEMENTATION_ROADMAP_RECORDED = YES
GAMEPLAY_SOURCE_CREATED = NO
PRODUCTION_ASSETS_CREATED = NO
ENGINE_SELECTED = NO
IMPLEMENTATION_AUTHORIZED = NO
APK_BUILD_VERIFIED = NO
PHONE_RUNTIME_VERIFIED = NO

## AUTHORITY

Current explicit user instruction > current owning durable design docs > package-level application > future verified source/tests/runtime evidence > conversation summaries.
