# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-02

## Active project identity

This is a completely new Android-targeted game using the same repository/project area that previously contained WorldLife RPG.

WorldLife is no longer active. Do not resume WorldLife systems.

`Unnamed Hunt RPG` is temporary.

## Current phase

**DESIGN / STRUCTURE / CONTENT PACKETS / REFERENCE-ASSET GENERATION**

No gameplay code, engine project, scenes, APK or game-ready 3D asset has been created/verified.

Reference-image generation is authorized by the user. Gameplay implementation is not.

## Read first

1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`
6. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`
7. `docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md` for current visual/model work.

Then read only the owning packages needed for the task.

### Region 01
- `docs/10_world/regions/REGION_01/README.md`
- local package files as linked there.

### Hunter Base 01
- `docs/30_content/hunters/HUNTER_BASE_01/README.md`

### Monster 01
- `docs/30_content/monsters/MONSTER_01/README.md`
- `ANATOMY_AND_DAMAGE.md`
- `CRYSTAL_AND_MUTATION.md`
- `BEHAVIOR_AND_REGION.md`

### Asset production
- `docs/40_art/asset_pipeline/README.md`
- `RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
- `RUNTIME_2D_ASSET_GUIDE.md`
- `PNG_TO_3D_AUTOMATION_PIPELINE.md`
- `ASSET_QA_GATES.md`
- `GENERATED_SHEET_REGISTRY.md`

## Folder law

**Folders organize ownership. Packages organize one playable thing.**

Root authority files remain valid until a separate link-safe migration.

## Locked game direction

### Modes
- fully walkable settlement/hub;
- elevated angled aerial wilderness exploration;
- first-person turn-based tactical combat derived from the same physical encounter context.

### World
- no one enormous always-loaded world;
- world atlas for long-distance geography/travel;
- settlement ↔ wilderness uses a meaningful gate/frontier transition;
- hunting regions contain continuous streamable sectors whenever practical;
- normal exploration camera stays local and never shows the full region as a board-game view;
- current scale convention: 1 world unit = 1 meter.

### Settlement 01
- compact defensible frontier settlement;
- Hunter Service Loop keeps repeated services close;
- prototype core-service legs roughly 10–25 seconds;
- 2–3 elevation bands;
- active/background/logical NPC fidelity;
- important interiors seamless where device budget permits.

### Region 01
Working identity: temperate river/root forest basin with meadow, rocky elevation, deep basin and crystal-influenced nesting shelf.

Planning sectors:
- S00 Trailhead/Field Camp;
- S01 River Ford/Mud Flats;
- S02 Rootwood Thicket;
- S03 Feeding Meadow;
- S04 Rocky Rise;
- S05 Deepwood Basin;
- S06 Nesting Shelf/Crystal Fault.

Region is looped/branched, not a corridor.

### Stats/effects
Current six-role direction:
- Might;
- Finesse;
- Agility;
- Endurance;
- Perception;
- Resolve.

Equipment/status/terrain/weather/posture/injury/crystal/mutation use one shared typed modifier pipeline with explicit caps/stacking/traces.

### Behavior
**NO AI behavior system.**

NPCs/creatures use deterministic authored states, schedules, conditions, priorities, cooldowns, phases and capability checks.

### Crystal/mutation
- internal crystal energy is creature life force;
- zero usable energy means death;
- desperation/berserk spends that reserve;
- Tier, Rank, Quality, Element, Energy and Condition are separate;
- mutation is bounded/data-driven and can affect anatomy/capabilities/effects/behavior/terrain adaptation/harvest.

## Hunter Base 01

Purpose: reusable production/modeling base, not final story protagonist.

Selected:
- 1.75 m prototype height;
- realistic adult humanoid proportions;
- practical frontier cloth/leather/limited plate;
- modular gear/harness/boots/field tools;
- no giant fantasy armor;
- three silhouette tests: light tracking, balanced hunt, reinforced dangerous-hunt;
- final weapon family remains OPEN.

## Monster 01 — Mudcrest Raker

Working display name; body/mechanics currently selected.

Prototype:
- Region 01 territorial root-foraging/omnivorous quadruped;
- ~6.6 m nose-to-tail;
- ~3.0 m shoulder/body height;
- front-heavy;
- paired mineral horn crest;
- breakable dorsal plates;
- mud-adapted feet;
- long tail with legal distal sever zone;
- internal forward-torso crystal;
- provisional Mineral/Earth-type affinity;
- berserk consumes life-force reserve;
- mutations: Mirestep Pads, Bastion Plates, Deep-Scent Crest, Resonant Core Veins.

Player-facing target groups:
HEAD / HORN_CREST / FORELEG_L / FORELEG_R / HINDLEG_L / HINDLEG_R / DORSAL_PLATES / TAIL.

## Asset storage — Google Drive

Project root:
`Unnamed Hunt RPG` — ID `1N3FbZhLE9ZfEy1Og-iNiB2B7nyyfangt`

Separate lanes:
- `01_Modeling_References` — `1qsF_JUYBs9ZQ-1lZPHsTCwWn87W46VIs`;
- `02_2D_Runtime_Assets` — `1PJ7uzt8oZBE5jFPXoBeldGVVv9Dy1Ko_`;
- `03_3D_Conversion_Inputs` — `1hs-qJiiF6R-1NLBmlChvSK4rlQilONLz`;
- `04_Approved_Exports` — `1yrS6vXQElSahDUtFJjjst25gq8RIGm2P`.

Do not mix source/reference/conversion/runtime/approved assets.

## Raster/zoom rule

Do not solve quality loss by stretching a small PNG indefinitely.

Use:
- high-resolution masters;
- separate detail sheets/crops;
- vector/SDF for scalable iconographic assets where practical;
- master→derivative export chain;
- runtime mip/filter/LOD later;
- AI upscaling only for reference restoration, never as technical truth for geometry/UV/PBR/hit masks.

## PNG→3D rule

A one-click image-to-3D result is only a candidate.

Target pipeline:
`REFERENCE → CLEAN/MULTIVIEW INPUT → IMAGE-TO-3D → BLENDER NORMALIZE/QA → TOPOLOGY → ANATOMY BINDING → BREAK/SEVER → RIG → DEFORMATION → ANIMATION → LOD → COLLISION/HIT PROXIES → ENGINE → ANDROID QA → GAME_READY`.

Current researched candidate services/tools:
- Meshy;
- Tripo;
- Rodin/Hyper3D;
- Blender for technical cleanup/orchestration.

## Current sheet-generation order

1. Hunter turnaround + scale;
2. Hunter modular-equipment silhouettes;
3. Monster 01 hero concept + turnaround;
4. Monster anatomy;
5. damage/break/sever;
6. crystal/mutation variants;
7. three-distance monster readability.

Exact filenames/statuses live in `GENERATED_SHEET_REGISTRY.md`.

## Current exact action

Generate/review the registered reference sheets in order. Stop only at a completed-sheet boundary if generation limits intervene.

After the reference pass, the next design package is player progression/equipment, followed by exact combat economy.

Do not start gameplay implementation unless the user explicitly authorizes it.

## Status

`DESIGN_RECORDED = YES`
`DOCS_FOLDER_STRUCTURE_RECORDED = YES`
`REGION_01_DESIGNED = YES`
`HUNTER_BASE_01_DESIGNED = YES`
`MONSTER_01_DESIGNED = YES`
`ASSET_DRIVE_STRUCTURE_CREATED = YES`
`RASTER_ZOOM_POLICY_RECORDED = YES`
`RUNTIME_2D_POLICY_RECORDED = YES`
`PNG_TO_3D_PIPELINE_RECORDED = YES`
`ASSET_QA_GATES_RECORDED = YES`
`REFERENCE_SHEET_GENERATION = ACTIVE`
`GAMEPLAY_SOURCE_CREATED = NO`
`ENGINE_SELECTED = NO`
`IMPLEMENTATION_AUTHORIZED = NO`
`PHONE_RUNTIME_VERIFIED = NO`
