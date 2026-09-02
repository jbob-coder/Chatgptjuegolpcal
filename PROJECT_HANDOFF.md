# Unnamed Hunt RPG — Project Handoff

Status: DESIGN SYSTEM / PLANNING ONLY / NO GAMEPLAY CODE AUTHORIZED
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE

Continue defining the new game from player-facing experience through world/map structure, mechanics, stats/effects, deterministic NPC/creature behavior, crystal life-force, mutation/ecology, architecture, performance, creator tooling and implementation order before gameplay source is created.

## CURRENT_STATE

This is a new game replacing WorldLife in the same repository/project area. WorldLife is not the design base.

No new-game gameplay code, engine project, scenes, APK or runtime implementation has been created.

Dedicated current authorities now include world/map structure, stats/effects, deterministic behavior and crystal/mutation/ecosystem mechanics.

## VERIFIED_DESIGN_STATE

### World/map architecture
Detailed authority: `MAP_WORLD_SETTLEMENT_STRUCTURE.md`.

Current structural decisions:
- do not build one enormous always-loaded seamless open world;
- use a macro **World Atlas** for long-distance geography/travel;
- settlements/hubs are separate dense social/service runtime spaces;
- a **Frontier Gate / Outpost / Transition Belt** separates settlement safety from active wilderness;
- hunting regions are physical aerial-exploration spaces divided into streamable sectors;
- first-person battlefields are local tactical footprints derived from the exact wilderness location rather than unrelated arenas;
- safety/danger gradient: `Settlement Core → Frontier/Outpost → Field Camp → Wilderness → Deep Territory/Nest`;
- ordinary random monster combat does not occur in settlement cores;
- rare authored settlement emergency/siege events remain a future option;
- long-distance travel may skip empty repeated travel while preserving actual hunting gameplay;
- fast travel can connect discovered safe anchors but cannot teleport directly onto an undiscovered monster;
- off-screen settlement/ecology state is persisted in bounded forms rather than running every actor everywhere.

### Map/state separation
Conceptual persistent ownership:
- `WorldState` — atlas unlocks/routes, settlement references, region ecology aggregates, persistent important monsters, contracts/world flags;
- `SettlementState` — NPC schedule/service/story/local emergency state;
- `RegionState` — discovered camps/landmarks, ecology aggregates, persistent hunt monsters, mutation/crystal pressure and hunt state;
- only the entered location expands into full runtime scene state.

### Player-facing identity
- grounded stylized wilderness/frontier monster-hunting fantasy;
- visual identity: **an illustrated hunting world brought to life**;
- dimensional aerial overview without literal paper/craft visuals;
- current camera target roughly 40–50° downward;
- stylized 3D player/major monsters preferred for aerial→first-person continuity;
- selective 2D/billboard/impostor detail allowed for Android efficiency.

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

Only current/adjacent wilderness sectors require full presentation/simulation. Heavy outgoing scene systems should unload/deactivate during transitions.

### Admin/Creator
Planned map tools now include:
- world-atlas node/route editor;
- settlement anchor/service overlay;
- frontier transition boundary viewer;
- region-sector and streaming overlay;
- ecology/mutation-pressure overlay;
- monster territory/path/track anchors;
- encounter-capable footprint viewer;
- tactical node/cover/elevation preview;
- first-person preview;
- performance cost by sector.

## CURRENT ACTIVE PLANNING AUTHORITIES

- `README.md`
- `START_HERE_NEW_CHAT.md`
- `PROJECT_HANDOFF.md`
- `DOCUMENTATION_INDEX.md`
- `GAME_EXPERIENCE_BIBLE.md`
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
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

## FIRST MAP VERTICAL-SLICE TARGET

When implementation is eventually authorized, map scope should begin with:
- 1 compact settlement/frontier lodge;
- 1 outbound gate/transition belt;
- 1 hunting region;
- approximately 4–6 meaningful wilderness sectors;
- 1 field camp;
- 1 primary monster territory;
- 2–3 encounter-capable footprints;
- 1 deeper nest/retreat point;
- same monster identity through region → battle → escape/death/harvest → return;
- settlement return without duplicated state;
- target Android streaming/memory verification.

## NEXT_ACTION

Continue design discussion. Highest-value open questions now include:
1. first settlement identity/layout/services;
2. first hunting-region biome and sector arrangement;
3. whether the settlement gate transition is visually seamless or uses a short controlled load;
4. exact camp/fast-travel rules;
5. save-anywhere versus safe-anchor policy;
6. settlement defense lore and whether humans use crystals;
7. exact crystal tiers/ranks/qualities/elements;
8. exact berserk rules;
9. mutation origin/inheritance;
10. player progression/stats/AP/equipment;
11. first monster/weapon;
12. target Android device and engine.

Do not implement gameplay until the user explicitly authorizes it.

## STATUS GATES

DESIGN_RECORDED = YES
WORLD_MAP_STRUCTURE_DESIGNED = YES
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
