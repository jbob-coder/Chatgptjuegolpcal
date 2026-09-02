# Unnamed Hunt RPG — Project Handoff

Status: DESIGN SYSTEM / PLANNING ONLY / NO GAMEPLAY CODE AUTHORIZED
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE

Continue defining the new game from player-facing experience through world/map structure, scale/streaming/transitions, mechanics, stats/effects, deterministic NPC/creature behavior, crystal life-force, mutation/ecology, architecture, performance, creator tooling and implementation order before gameplay source is created.

Work in bounded documentation pieces rather than attempting to complete every possible system at once.

## CURRENT_STATE

This is a new game replacing WorldLife in the same repository/project area. WorldLife is not the design base.

No new-game gameplay code, engine project, scenes, APK or runtime implementation has been created.

Dedicated current authorities now include world/map structure, world scale/streaming/transitions, stats/effects, deterministic behavior, crystal/mutation/ecosystem mechanics, and project-wide design quality governance.

### Design-quality governance
Detailed authority: `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`.

Current governance decisions:
- every meaningful new mechanic must identify player value, authoritative owner, dependent systems, invariants/caps and verification path before becoming a current design decision;
- use clear state meanings: LOCKED/CURRENT, SELECTED ARCHITECTURE, PROTOTYPE TARGET, OPEN, FUTURE OPTION, REJECTED/NOT PREFERRED;
- depth should come primarily from interactions between a bounded set of strong reusable systems rather than continuous creation of isolated micro-systems;
- reuse attributes/effects/statuses/terrain/capabilities/anatomy/crystal/mutation/behavior/knowledge primitives before inventing new subsystems;
- any foundational change must trigger cross-system impact analysis before dependent docs/source are modified;
- no two systems should own the same authoritative truth;
- player-facing clarity, save/state integrity, tactical readability and Android performance are explicit project-wide quality gates;
- documentation expansion should proceed as bounded pieces rather than a broad simultaneous rewrite.

Current planned documentation sequence:
1. cross-system quality governance — RECORDED;
2. first settlement blueprint — NEXT RECOMMENDED PIECE;
3. first hunting-region blueprint;
4. first monster complete design packet;
5. player progression/equipment packet;
6. exact combat-economy packet;
7. engine-specific technical mapping only after engine/device evidence.

## VERIFIED_DESIGN_STATE

### World/map architecture
Detailed authorities:
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`

Current structural decisions:
- do not build one enormous always-loaded seamless open world;
- use a macro **World Atlas** for long-distance geography/travel;
- settlements are fully walkable physical spaces, not menu-only hubs;
- settlement services are reached in-world, then may open service UI;
- settlement↔wilderness is a meaningful major-area threshold;
- preferred transition is a diegetic hunter gate/tunnel/bridge/pass/frontier corridor that can hide destination preloading while the player remains in control whenever practical;
- hunting regions are physical aerial-exploration spaces divided into technical streaming sectors;
- ordinary River/Forest/Meadow/Ridge/etc. sector changes should remain continuous and should not trigger loading screens;
- only major region/deep-cave/large-interior boundaries may use explicit controlled transitions when technically necessary;
- rolling streaming keeps the current sector plus required neighboring sectors ready while farther sectors remain low-cost logical/aggregate state;
- persistent hunted monsters keep the same instance ID, anatomy injuries, crystal state, mutation state and required behavior state across sector boundaries;
- first-person battlefields are local tactical footprints derived from the exact wilderness location rather than unrelated arenas;
- safety/danger gradient: `Settlement Core → Frontier/Outpost → Field Camp → Wilderness → Deep Territory/Nest`;
- normal exploration camera is local/character-centered and must not zoom out to show the full region as the gameplay view;
- full geography belongs in the map UI;
- preferred measurement convention: **1 world unit = 1 meter**;
- collision/gameplay scale stays coherent while visual silhouettes may be mildly exaggerated for aerial readability;
- modular building kits + simplified collision + interior culling + LOD are the preferred settlement-production strategy;
- small/medium important buildings should be seamless walk-in where device budgets permit;
- larger interiors may use doorway/hall/stair threshold streaming.

### Prototype scale targets
These are planning ranges to validate, not runtime-proven limits:
- first settlement: roughly 180–320 m characteristic playable extent, compact/dense rather than sprawling;
- first hunting region: roughly 4–7 meaningful sectors;
- prototype sector span: roughly 100–220 m depending terrain density;
- total first-region footprint: several hundred meters rather than several empty kilometers;
- first major monster useful prototype: roughly 5–8 m long and 2.5–4 m major body/shoulder height depending body plan;
- standard large-monster first-person encounter footprint: usually tens of meters, roughly 30–90 m as a starting design range;
- settlement practical-detail camera radius candidate: roughly 20–40 m;
- wilderness practical-detail camera radius candidate: roughly 35–70 m, with farther landmarks/monster silhouettes handled through LOD.

Exact values remain subject to engine/phone/readability testing.

### Core loop
`PREPARE IN SETTLEMENT → LEAVE THROUGH FRONTIER → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → SURVIVE → HARVEST → RETURN → CRAFT/EQUIP/UPGRADE/RESEARCH → HUNT HARDER PREY`

### Combat
- first-person turn-based tactical combat;
- spatial movement/repositioning, cover, terrain and bearing matter;
- body-part targeting authoritative;
- damage can wound/break/sever/destroy;
- encounters preserve exact monster/location/terrain/core state;
- monster escape returns the same injured instance to the region;
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

NPCs and creatures use authored schedules/patterns/conditions, priorities, cooldowns, capability requirements, phases and deterministic tie rules. Complex actors gain more authored rules rather than opaque intelligence.

### Crystal life-force / mutation / ecosystem
- crystal-bearing creatures have an internal crystal;
- current crystal energy is life force;
- zero usable energy means death;
- desperation/berserk spends that same finite life-force reserve;
- Tier, Rank, Quality, Element, Energy and Condition are separate concepts;
- mutation can affect anatomy, capabilities, stats, behavior, terrain adaptation and harvest;
- regional ecology influences mutation/population pressure;
- off-screen ecology uses aggregate region/species state.

### Harvest
- yield derives from actual anatomy/crystal condition;
- unique structures cannot duplicate impossibly;
- direct core damage can potentially trade kill speed for worse crystal harvest if adopted;
- results should explain major losses/bonuses.

### Performance
Different spatial layers have different budgets:
- settlement: NPCs/interactions/services/architecture priority;
- frontier: moderate NPC + wilderness handoff;
- hunting region: terrain/tracking/ecology/monster priority;
- first-person encounter: local monster/anatomy/telegraph/VFX highest detail.

Only the current/required neighboring wilderness sectors should receive high-detail presentation. Farther region state remains simplified/logical/aggregate until promoted.

### Admin/Creator
Planned world tools now include:
- world-atlas node/route editor;
- settlement anchor/service overlay;
- settlement walkability/collision overlay;
- modular building/interior visibility inspector;
- frontier transition boundary/anchor viewer;
- current/neighbor sector streaming state;
- sector memory/render cost;
- artificial slow-stream test mode;
- ecology/mutation-pressure overlay;
- persistent monster cross-sector inspector;
- monster territory/path/track anchors;
- encounter-capable footprint viewer;
- tactical node/cover/elevation preview;
- first-person preview;
- actor/building LOD state;
- camera practical-detail radius.

## CURRENT ACTIVE PLANNING AUTHORITIES

- `README.md`
- `START_HERE_NEW_CHAT.md`
- `PROJECT_HANDOFF.md`
- `DOCUMENTATION_INDEX.md`
- `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`
- `GAME_EXPERIENCE_BIBLE.md`
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
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
- `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`

## FIRST WORLD/STREAMING PROOF AFTER AUTHORIZATION

Before building a final town or large biome, prove with simple geometry:
- 1 walkable settlement block;
- 2–3 enterable buildings;
- 1 hunter gate;
- 1 diegetic transition corridor;
- 1 wilderness region with 3 connected prototype sectors;
- seamless walking across those wilderness sector boundaries;
- 1 persistent monster crossing a sector boundary;
- 1 local first-person encounter;
- monster escape back into another sector;
- player return through the gate to settlement;
- no duplicated player/monster/save state;
- target Android memory/frame-pacing/streaming verification.

Then increase toward the first-slice target of 4–7 sectors and the real settlement layout.

## CURRENT DOCUMENTATION PIECE STATUS

Piece A — Cross-system quality governance: **RECORDED**.

Do not immediately expand all other documents in the same pass.

Next recommended bounded piece:
**FIRST SETTLEMENT BLUEPRINT**.

That future piece should focus only on:
- settlement identity and defensive geography;
- approximate meter-scale footprint;
- street/district hierarchy;
- hunter lodge, smith, material/crystal processing, market, storage, recovery/home, training, residential and gate placement;
- NPC-density zones;
- important seamless interiors;
- roofs/walls/occlusion for the aerial camera;
- modular building-kit requirements;
- settlement culling/streaming partitions;
- outbound hunter-gate transition corridor;
- first-pass performance budget.

It should not simultaneously design every future settlement, the full first biome, all NPCs, or final art assets.

## NEXT_ACTION

Continue design discussion or begin the first settlement blueprint as the next documentation piece.

Other open subjects remain, but should be handled after the current bounded sequence where practical:
- first hunting-region biome/topology;
- gate visual form;
- exact camera framing/FOV/projection;
- minimum Android target and resident-sector budget;
- camp/fast-travel rules;
- save-anywhere versus safe-anchor policy;
- settlement defense lore/human crystal use;
- crystal tiers/ranks/qualities/elements;
- berserk rules;
- mutation origin/inheritance;
- player progression/stats/AP/equipment;
- first monster/weapon;
- engine.

Do not implement gameplay until the user explicitly authorizes it.

## STATUS GATES

DESIGN_RECORDED = YES
DESIGN_QUALITY_GOVERNANCE_RECORDED = YES
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
ENGINE_SELECTED = NO
IMPLEMENTATION_AUTHORIZED = NO
APK_BUILD_VERIFIED = NO
PHONE_RUNTIME_VERIFIED = NO

## AUTHORITY

Current explicit user instruction > current new-game durable design docs > future verified source/tests > conversation summaries.
