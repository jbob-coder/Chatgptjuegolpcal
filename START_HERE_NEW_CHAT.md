# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-02

## Active project identity

This is a completely new Android-targeted game using the same repository/project area that previously contained WorldLife RPG.

WorldLife is no longer active. Do not resume WorldLife systems.

`Unnamed Hunt RPG` remains a temporary working name.

## Current phase

**DESIGN / STRUCTURE / CONTENT PACKETS / ASSET QA**

No gameplay code, engine project, scenes, APK or game-ready 3D asset has been created/verified.

Reference-image generation is generally authorized. Gameplay implementation is not.

Repeated Hunter technical multiview generation using the current image-generation method is paused by QA; do not generate H02A v004 the same way.

## Read first

1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`
6. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`

Then read the owning package for the active task.

### Current gameplay task
- `docs/20_gameplay/README.md`
- `docs/20_gameplay/progression/README.md`
- `docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`

Next bounded packet:
**Exact Combat Action-Economy Contract**.

### Region 01
- `docs/10_world/regions/REGION_01/README.md`
- local files linked there.

### Hunter Base 01
- `docs/30_content/hunters/HUNTER_BASE_01/README.md`
- `PROPORTION_AND_ATTACHMENT_CONTRACT.md`

### Monster 01
- `docs/30_content/monsters/MONSTER_01/README.md`
- `ANATOMY_AND_DAMAGE.md`
- `CRYSTAL_AND_MUTATION.md`
- `BEHAVIOR_AND_REGION.md`

### Asset production
- `docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md`
- `docs/40_art/asset_pipeline/README.md`
- `ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`
- `RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
- `RUNTIME_2D_ASSET_GUIDE.md`
- `PNG_TO_3D_AUTOMATION_PIPELINE.md`
- `ASSET_QA_GATES.md`
- `GENERATED_SHEET_REGISTRY.md`
- `HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`
- `HUNTER_DCC_BLOCKOUT_SPECIFICATION.md`

## Folder law

**Folders organize ownership. Packages organize one playable thing/system.**

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
- normal exploration camera stays local and does not show the full region as a board-game view;
- `1 world unit = 1 meter`.

### Behavior
**NO AI behavior system.**

NPCs/creatures use deterministic authored states, schedules, conditions, priorities, cooldowns, phases and capability checks.

### Stats/effects
Current six-role direction:
Might / Finesse / Agility / Endurance / Perception / Resolve.

Equipment/status/terrain/weather/posture/injury/crystal/mutation use one shared typed modifier pipeline with explicit caps, stacking and traces.

### Crystal/mutation
- internal crystal energy is creature life force;
- zero usable energy means death;
- berserk spends that same reserve;
- Tier, Rank, Quality, Element, Energy and Condition are separate;
- mutation is bounded/data-driven and can affect anatomy, capabilities, effects, behavior, terrain adaptation and harvest.

## Current progression model

Selected:
**HYBRID / EQUIPMENT + MASTERY + KNOWLEDGE WEIGHTED.**

Core laws:
- slow bounded base-attribute growth;
- equipment is the largest practical combat-expression vector but retains tradeoffs;
- mastery adds handling/technique depth rather than endless damage percentages;
- knowledge improves information/decision quality;
- Hunter Rank primarily controls access/trust;
- no universal gear-score treadmill;
- no exponential health/damage progression;
- AP is not a normal progression reward;
- late progression must preserve anatomy, terrain and preparation relevance;
- harvest proficiency cannot violate physical material capacity.

Authority:
`docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

## Hunter Base 01

Purpose: reusable production/modeling base, not final story protagonist.

Selected:
- 1.75 m prototype height;
- realistic adult humanoid proportions;
- practical frontier cloth/leather/limited plate;
- modular gear/harness/boots/field tools;
- normalized prototype body anchors + stable attachment vocabulary;
- final weapon family and story identity remain OPEN.

Visual QA state:
- H02 v001 — REVISE;
- H02 v002 — REVISE;
- H02A v003 — REVISE_METHOD;
- same-method H02A v004 — DO NOT GENERATE;
- DCC blockout specification exists, but DCC implementation is not authorized.

## Monster 01 — Mudcrest Raker

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
- berserk consumes life force;
- mutations: Mirestep Pads, Bastion Plates, Deep-Scent Crest, Resonant Core Veins.

Target groups:
HEAD / HORN_CREST / FORELEG_L / FORELEG_R / HINDLEG_L / HINDLEG_R / DORSAL_PLATES / TAIL.

## Current exact action

Create only the **Exact Combat Action-Economy Contract** next.

It should decide the first-slice AP/reaction structure, movement/cover/posture timing, action-cost categories, stamina relationship and anti-loop invariants without implementing combat code.

Do not start gameplay implementation unless the user explicitly authorizes it.

## Status

`DESIGN_RECORDED = YES`
`DOCS_FOLDER_STRUCTURE_RECORDED = YES`
`REGION_01_DESIGNED = YES`
`HUNTER_BASE_01_DESIGNED = YES`
`MONSTER_01_DESIGNED = YES`
`PLAYER_PROGRESSION_PACKET = RECORDED`
`PLAYER_PROGRESSION_MODEL = SELECTED_HYBRID`
`HUNTER_TECHNICAL_MULTIVIEW_ROUTE = PAUSED_BY_QA`
`HUNTER_DCC_BLOCKOUT_SPECIFICATION = RECORDED`
`DCC_IMPLEMENTATION_AUTHORIZED = NO`
`GAMEPLAY_SOURCE_CREATED = NO`
`ENGINE_SELECTED = NO`
`IMPLEMENTATION_AUTHORIZED = NO`
`PHONE_RUNTIME_VERIFIED = NO`
