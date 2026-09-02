# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-02

## Active project identity

This is a completely new game using the same repository/project area that previously contained WorldLife RPG.

WorldLife is no longer active. Do not resume WorldLife life-sim/city/apartment/Admin work.

`Unnamed Hunt RPG` is temporary.

## Current phase

**DESIGN / STRUCTURE / DOCUMENTATION**

No gameplay code, engine project, scenes, APK or production 3D assets are authorized yet.

## Mandatory read order — basic to detailed

1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`
6. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`
7. `GAME_EXPERIENCE_BIBLE.md`
8. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
9. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
10. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
11. `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
12. `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`
13. `FIRST_SETTLEMENT_BLUEPRINT.md`
14. `docs/10_world/regions/REGION_01/README.md`
15. `NEW_GAME_MASTER_PLAN.md`
16. `MECHANICAL_SYSTEMS_GUIDE.md`
17. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
18. `BEHAVIOR_PATTERN_SYSTEM.md`
19. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
20. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
21. `CONTENT_DATA_GUIDE.md`
22. `CODE_GUIDE.md`
23. `PERFORMANCE_BUDGETS_AND_CAPS.md`
24. `ADMIN_CREATOR_SYSTEM.md`
25. `TESTING_VERIFICATION_PLAN.md`
26. `IMPLEMENTATION_ROADMAP.md`
27. `DEVELOPMENT_REFERENCE.md`
28. `EVOLVE_ALIGNMENT.md`
29. `NEW_GAME_DISCUSSION_CHECKLIST.md`
30. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` only for supporting older detail where newer authorities do not override it.

When working specifically on Region 01, read its local package files from its README rather than searching chat history.

## Documentation/folder law

`docs/README.md` is the guide for what goes where.

Selected structure:
- `docs/00_project/` — governance/authority/process;
- `docs/10_world/` — atlas/settlements/regions/spatial packages;
- `docs/20_gameplay/` — reusable gameplay rules;
- `docs/30_content/` — reusable entity/content packages;
- `docs/40_art/` — art/model/reference/presentation;
- `docs/50_technical/` — architecture/code/platform mapping;
- `docs/60_quality/` — testing/performance/debug/admin quality;
- `docs/70_handoff/` — continuity/migration/readback.

**Folders organize ownership. Packages organize one playable thing.**

Existing root authority files remain valid. Do not move/duplicate them casually; root migration is a future bounded task requiring link-safe reconciliation.

## Locked direction so far

### Design quality
- work in bounded pieces;
- every feature identifies player value, authoritative owner, dependencies, caps/invariants and verification path;
- distinguish LOCKED/CURRENT, SELECTED ARCHITECTURE, PROTOTYPE TARGET, OPEN, FUTURE OPTION and REJECTED/NOT PREFERRED;
- correctness, input responsiveness, save integrity, tactical readability, explainability and Android performance outrank decorative complexity.

### Visual/model
- grounded stylized 3D / illustrated realism;
- identity: **an illustrated hunting world brought to life**;
- aerial exploration around 40–50° downward target;
- believable scale with mild silhouette exaggeration for phone readability;
- important assets work at aerial, nearby and first-person distance;
- same monster identity/model lineage across exploration/combat LOD representations;
- gameplay anatomy maps to visual break/sever states;
- crystal/mutation visuals are biologically integrated, not constant neon;
- modular humanoid equipment/building/environment kits preferred;
- generated PNGs are visual/reference inputs unless separately technically verified;
- exact geometry/texture/bone/material budgets remain OPEN until device profiling.

### World/map
- no one enormous always-loaded world;
- macro World Atlas for long-distance travel;
- settlements fully walkable;
- settlement↔wilderness uses major hunter-gate/frontier transition;
- internal hunting-region sectors remain continuous whenever practical;
- first-person combat derives from exact local wilderness context;
- gameplay camera stays local and never reveals complete region like a board-game map;
- 1 world unit = 1 meter current convention;
- danger gradient: Settlement Core → Frontier/Outpost → Field Camp → Wilderness → Deep Territory/Nest.

### Settlement 01
Detailed authority: `FIRST_SETTLEMENT_BLUEPRINT.md`.

- technical ID `SETTLEMENT_01`, final name OPEN;
- defensible elevated river/chasm geography;
- compact Hunter Service Loop:
  contracts/lodge → storage/loadout → smith/craft/processing → hunter gate;
- repeated service legs around 10–25 seconds prototype target;
- 2–3 elevation bands;
- seamless important interiors where budget permits;
- deterministic NPC schedules with active/background/logical fidelity tiers;
- district/culling partitions;
- return material processing near gate.

### Region 01
Detailed package: `docs/10_world/regions/REGION_01/README.md`.

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

Region rules:
- looped/branched middle topology, not a corridor;
- physical tracking evidence rather than exact permanent GPS;
- same monster identity/injuries/crystal/mutation state across sector changes and combat escape;
- representative local combat footprints at river/meadow/root-or-deep-nest terrain;
- ecological/mutation pressure increases toward deeper territory without becoming an invisible level wall;
- current/required neighboring sectors get high runtime fidelity; farther ecology/state remains lower-cost/logical/aggregate;
- prototype sector span roughly 100–180 m, exact dimensions unverified.

### Gameplay
- physical tracking/exploration;
- first-person turn-based tactical combat;
- movement/cover/bearing/posture/terrain;
- targetable anatomy;
- wound/break/sever/destroy;
- monster can escape and remain the same persistent injured instance;
- condition-based harvest;
- material-driven crafting/equipment/research.

### Stats/effects
- six-role direction: Might, Finesse, Agility, Endurance, Perception, Resolve;
- one shared typed modifier pipeline for equipment/status/terrain/weather/posture/injury/crystal/mutation/context;
- explicit stacking/caps/floors;
- AP/reaction scaling tightly restricted;
- calculation traces required;
- contextual hit quality preferred over generic hidden critical chance.

### Autonomous behavior
- **NO AI behavior system**;
- deterministic authored states/schedules/conditions/priorities/cooldowns/phases/capability checks;
- simple actors have simple patterns; important monsters can have layered inspectable patterns.

### Crystal/mutation/ecology
- internal crystal life-force reserve;
- zero usable crystal energy means death;
- berserk/overdrive consumes that reserve;
- Tier, Rank, Quality, Element, Energy and Condition are separate;
- mutation is bounded/data-driven and can change anatomy/capabilities/effects/terrain adaptation/behavior/harvest;
- off-screen ecology uses aggregate state.

### Architecture/performance
- one authoritative game state;
- presentation/admin/streaming never secretly decide gameplay;
- scalable systems require caps, cleanup, instrumentation and device verification;
- Region 01 includes deliberate stress cases for water/mud/tracks, dense foliage/occlusion, long sight-line LOD and first-person promotion.

## Current bounded documentation sequence

1. Design quality governance — RECORDED.
2. Model art direction/asset standard — RECORDED.
3. Model reference image/creation pipeline — RECORDED.
4. First settlement blueprint — RECORDED.
5. Documentation folder/package structure — RECORDED.
6. First hunting-region package — RECORDED.
7. **First complete monster design packet — NEXT RECOMMENDED PIECE.**
8. Player progression/equipment packet.
9. Exact combat-economy packet.
10. Engine-specific mapping only after engine/device evidence.

Do not immediately start all later pieces.

## Current exact next action

Continue design discussion or begin the **first monster complete design packet**, using Region 01 as the monster's real habitat/route/encounter context.

That next packet should eventually define one monster's:
- ecological role;
- body plan/scale;
- crystal profile;
- mutation possibilities;
- anatomy graph;
- break/sever capability consequences;
- attacks;
- deterministic behavior rules using Region 01 facts;
- feeding/watering/nest/escape routes;
- tracking evidence;
- berserk conditions;
- harvest sources;
- model/reference-image requirements;
- performance/test budget.

Do not create gameplay source, scenes, APK or final production assets until the user explicitly authorizes implementation.

## Status

DESIGN_RECORDED = YES
DOCUMENTATION_SYSTEM_RECORDED = YES
DOCS_FOLDER_STRUCTURE_RECORDED = YES
ROOT_AUTHORITY_MIGRATION = NOT STARTED
DESIGN_QUALITY_GOVERNANCE_RECORDED = YES
MODEL_ART_DIRECTION_RECORDED = YES
MODEL_REFERENCE_PIPELINE_RECORDED = YES
GENERAL_MODEL_REFERENCE_PNGS_SAVED_TO_DRIVE = YES
FIRST_SETTLEMENT_BLUEPRINT_RECORDED = YES
FIRST_HUNTING_REGION_PACKAGE_RECORDED = YES
WORLD_MAP_STRUCTURE_DESIGNED = YES
SETTLEMENT_HUNTING_REGION_SEPARATION_DESIGNED = YES
MECHANICS_DOCUMENTED = YES
STATS_EFFECTS_SYSTEM_DESIGNED = YES
DETERMINISTIC_BEHAVIOR_SYSTEM_DESIGNED = YES
AI_BEHAVIOR_SYSTEM = NO
CRYSTAL_LIFE_FORCE_SYSTEM_DESIGNED = YES
MUTATION_ECOSYSTEM_SYSTEM_DESIGNED = YES
CODE_STRUCTURE_PLANNED = YES
PERFORMANCE_CAPS_PLANNED = YES
ADMIN_CREATOR_SYSTEM_PLANNED = YES
TESTING_PLAN_RECORDED = YES
IMPLEMENTATION_ROADMAP_RECORDED = YES
GAMEPLAY_SOURCE_CREATED = NO
PRODUCTION_ASSETS_CREATED = NO
ENGINE_SELECTED = NO
IMPLEMENTATION_AUTHORIZED = NO
