# Unnamed Hunt RPG

Status: NEW GAME / DESIGN SYSTEM ACTIVE / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

This repository/project area is being reused for a completely new game. WorldLife RPG is no longer active and is not the implementation base.

`Unnamed Hunt RPG` is a temporary working label.

# 1. What this game is

A grounded stylized monster-hunting tactical RPG with connected spatial/gameplay layers:

1. **Settlement / hub life** — dense social, service, crafting, research and preparation spaces.
2. **Aerial wilderness exploration** — physically traversed 2.5D/3D hunting regions.
3. **First-person tactical combat** — turn-based encounters derived from the exact wilderness location and monster state.

Core loop:
`PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → SURVIVE → HARVEST → RETURN → CRAFT/EQUIP/UPGRADE/RESEARCH → HUNT HARDER PREY`

# 2. Visual identity

The world uses the readable dimensional-overview philosophy discussed with Paper Mario only as a camera/readability comparison. It is not a paper/cardboard game and does not copy Paper Mario art.

Identity: **an illustrated hunting world brought to life**.

Current direction:
- grounded stylized wilderness/frontier fantasy;
- aerial camera around 40–50° downward as current target;
- player/major monsters preferably stylized 3D;
- selective 2D/billboard/impostor detail for Android efficiency;
- nature and strong silhouettes before decorative density;
- frontier settlements use practical wood/stone/metal/canvas/rope/leather/ceramic/bone/shell/hide language;
- hunter field-document UI rather than glossy generic mobile menus.

See `GAME_EXPERIENCE_BIBLE.md` and `VISUAL_WORLD_BEHAVIOR_BIBLE.md`.

# 3. Game introduction and feel

Planned player flow:
`LAUNCH → TITLE → NEW/CONTINUE → INTRODUCTION → SETTLEMENT/HUB → FIRST ASSIGNMENT → FRONTIER GATE → HUNTING REGION → TRACKING → FIRST MONSTER → FIRST TACTICAL BATTLE → HARVEST → RETURN → FIRST CRAFT/EQUIP UPGRADE`

Tutorial teaches the real hunt loop through play.

Music is state-based: title, settlement/hub, frontier transition, exploration, threat/tension, encounter sting, combat, phase/berserk intensity, victory/post-hunt and harvest/return ambience.

Critical telegraph/audio information outranks ambience/music.

# 4. World and map structure

Detailed authority: `MAP_WORLD_SETTLEMENT_STRUCTURE.md`.

The game does **not** use one gigantic always-loaded open world.

Current structure:

`WORLD ATLAS → SETTLEMENT/HUB → FRONTIER GATE/OUTPOST → HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`

Key rules:
- the world atlas handles long-distance geography/travel between major destinations;
- settlements are dense social/service runtime spaces with their own NPC and performance budget;
- ordinary random monster combat does not occur in settlement cores;
- frontier gates/outposts create a visible and technical transition between civilization and wilderness;
- hunting regions are physically explorable in aerial view and divided into streamable sectors;
- first-person combat is a local tactical footprint derived from the exact wilderness sector/location rather than an unrelated arena;
- safety/danger is a gradient: settlement core → frontier/outpost → field camp → wilderness → deep territory/nest;
- off-screen world/ecology state remains aggregate/bounded while current/persistent actors receive full runtime state;
- rare settlement sieges/emergencies remain a future authored option, not normal random combat.

Long-distance travel should remove empty repeated walking without removing the actual hunt. Fast travel can connect discovered safe anchors but should never teleport the player directly onto an undiscovered monster.

# 5. Exploration behavior

Exploration is physical, not a menu map.

Hunting regions contain terrain/traversal, landmarks, monster territories, deterministic creature routines, tracks/signs, cover/hazards, camps, resources, encounter-capable areas and exits.

The world communicates through footprints, broken vegetation, scratches, blood, calls, feeding remains, nests and environmental damage before relying on glowing waypoints.

# 6. Combat behavior

Combat transitions the camera from the aerial world into first person while preserving encounter context.

Possible actions include repositioning, range control, flanking, cover, posture, dodge/block/parry, targeted attacks, inspection, tools/traps, reactions, stamina recovery and escape.

Current action-economy candidate: small Action Point budget + stamina + limited reaction resource. Exact values remain open.

# 7. Stats and attributes

Detailed authority: `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`.

Current six-role direction:
- **Might** — force/heavy handling/break/stagger;
- **Finesse** — precision execution/sever/technique;
- **Agility** — movement/dodge/initiative/footing;
- **Endurance** — stamina/sustain/environmental strain;
- **Perception** — tracking/target acquisition/inspection/telegraph reading;
- **Resolve** — composure/stagger/shock/fear resistance where used.

Attributes are bounded. Current recommended internal scale is 1–100; practical ranges/growth remain balance decisions. AP/reaction economy does not scale freely from attributes or gear.

# 8. Equipment, status and terrain effects

Equipment, statuses, terrain, weather, posture, crystal/mutation effects and tactical context use one shared effect/modifier system.

Conceptual order:
`BASE → PROGRESSION → EQUIPMENT → INJURY/ANATOMY → STATUS → POSTURE → TERRAIN/WEATHER → COVER/RANGE/BEARING → ACTION → TARGET DEFENSE → CAPS`

Rules include explicit stacking, caps/floors, bounded bonuses/penalties, cached derived stats, calculation traces and contextual hit quality instead of a generic hidden critical-hit lottery.

# 9. Deterministic NPC and creature behavior

Detailed authority: `BEHAVIOR_PATTERN_SYSTEM.md`.

**There is no AI behavior system.**

NPCs and creatures use authored states/phases, schedules where relevant, explicit `IF / ELSE IF / ELSE` conditions, priorities, cooldowns, capability requirements, situation/terrain/weather/crystal/mutation flags, deterministic tie policy and optional explicitly-seeded variation.

Simple actors have simple patterns. Important monsters/bosses can have layered phases while remaining inspectable/reproducible.

# 10. Crystal life force, mutation and ecosystem

Detailed authority: `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`.

Core decisions:
- crystal-bearing creatures contain an internal life crystal;
- crystal energy is an authoritative life-force reserve;
- zero usable energy means death;
- desperate creatures can burn that reserve for berserker/overdrive states through deterministic behavior conditions;
- crystal **Tier, Rank, Quality, Element, Energy Reserve and Condition** are separate concepts;
- mutation can alter anatomy, capabilities, stats/effects, elemental/terrain adaptation, behavior and harvest;
- mutation combinations are bounded by prerequisites/incompatibilities/support limits;
- regional ecology can influence mutation distributions;
- off-screen ecology uses region/species aggregates rather than thousands of full creature instances.

# 11. Anatomy and harvesting

Monster anatomy is gameplay authority.

Parts can have integrity, protection, exposure, break/sever/destroy states, capability effects and harvest capacity. Crystal harvest belongs to the same physical system: one creature has one physical core, and its recovered value depends on intrinsic properties plus actual condition/extraction.

Destroyed unique anatomy cannot produce pristine duplicate rewards.

# 12. Architecture law

There is one authoritative game state.

```text
PLAYER INPUT / AUTHORED BEHAVIOR INTENT
        ↓
ACTION REQUEST
        ↓
VALIDATION
        ↓
SHARED CONTEXT / EFFECT EVALUATION
        ↓
DOMAIN RESOLUTION
        ↓
AUTHORITATIVE STATE + DOMAIN EVENTS
        ↓
SAVE / REPLAY / DEBUG
        ↓
PRESENTATION / ANIMATION / AUDIO / UI
```

UI, animation and rendering never secretly decide hits, severing, crystal energy, mutation state, loot, tactical position, map position or progression.

# 13. Internal structure

Future source is separated into:
- world atlas/travel;
- settlement/hub state;
- frontier/outpost transition;
- region/sector/exploration;
- encounter/turn;
- creature/anatomy;
- stats/effects/status/terrain;
- crystal life-force;
- mutation;
- ecology/population aggregates;
- damage;
- deterministic behavior patterns;
- harvest;
- inventory/equipment/crafting;
- research/progression;
- persistence;
- content definitions;
- aerial/combat presentation;
- audio/VFX/UI;
- admin/debug/creator tools;
- tests/validators.

See `SYSTEM_ARCHITECTURE_BLUEPRINT.md` and `CODE_GUIDE.md`.

# 14. Performance and bug isolation

Explicit caps/budgets are required.

Settlement, frontier, wilderness and combat scenes have different simulation/render priorities rather than keeping all systems active everywhere.

Only current/adjacent wilderness sectors need full presentation/simulation. Behavior is event/decision-driven, derived stats are cached, mutation generation happens at explicit boundaries, and off-screen ecology uses aggregates.

Protect input, gameplay correctness, anatomy readability, telegraphs, camera/frame pacing, world readability and audio cues before decoration.

# 15. Admin / Creator system

The future Admin system is a creation/debug workbench.

Planned capabilities include state/stat/effect traces, deterministic behavior tracing/editing, crystal/mutation/ecology tools, world-atlas node/route editing, settlement service/anchor overlays, region-sector/streaming overlays, monster territory/tracking overlays, encounter footprint/tactical-node previews, first-person preview, harvest simulation, save/replay inspection and performance dashboards.

Creator tools use validated domain/content services and never become a second rules engine.

# 16. Development order

`DESIGN → ENGINE/PHONE PROBE → DOMAIN CORE → STATS/EFFECTS CORE → CRYSTAL/MUTATION CORE → CONTENT VALIDATION → COMBAT CORE → COMBAT PRESENTATION → HARVEST → INVENTORY/EQUIPMENT/CRAFTING → SETTLEMENT/REGION STRUCTURE → EXPLORATION DOMAIN → ECOLOGY/REGION AGGREGATES → AERIAL PRESENTATION → COMPLETE SETTLEMENT↔HUNT LOOP → SAVE HARDENING → ADMIN/DEBUG → CREATOR TOOLS → PRODUCTION ART/AUDIO → SECOND-CONTENT PROOF → WORLD EXPANSION`

# 17. First vertical slice

Only after explicit implementation authorization:
- 1 compact settlement/frontier lodge;
- 1 outbound gate/transition belt;
- 1 hunting region with roughly 4–6 meaningful sectors;
- 1 field camp;
- 1 main monster territory and deeper nest/retreat location;
- 2–3 encounter-capable local footprints;
- 1 hunter;
- 1 monster species/instance with deterministic behavior;
- constrained crystal/mutation profile and one berserk pattern;
- 1 weapon/equipment set;
- prototype stats/effects/terrain/statuses;
- aerial tracking/approach;
- same-location first-person combat;
- anatomy break/sever and condition-based anatomy/crystal harvest;
- return to settlement;
- 1 craft/equip upgrade;
- save/reload;
- target Android verification.

# 18. Documentation order — basic to detailed

1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `GAME_EXPERIENCE_BIBLE.md`
6. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
7. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
8. `NEW_GAME_MASTER_PLAN.md`
9. `MECHANICAL_SYSTEMS_GUIDE.md`
10. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
11. `BEHAVIOR_PATTERN_SYSTEM.md`
12. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
13. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
14. `CONTENT_DATA_GUIDE.md`
15. `CODE_GUIDE.md`
16. `PERFORMANCE_BUDGETS_AND_CAPS.md`
17. `ADMIN_CREATOR_SYSTEM.md`
18. `TESTING_VERIFICATION_PLAN.md`
19. `IMPLEMENTATION_ROADMAP.md`
20. `DEVELOPMENT_REFERENCE.md`
21. `EVOLVE_ALIGNMENT.md`
22. `NEW_GAME_DISCUSSION_CHECKLIST.md`

# 19. Verification discipline

Use precise gates: DESIGNED, IMPLEMENTED, STATIC_VERIFIED, CONTENT_VALIDATED, UNIT_TESTED, INTEGRATION_TESTED, COMPILED, APK_BUILD_VERIFIED, PHONE_RUNTIME_VERIFIED, VISUAL_QUALITY_VERIFIED, PERFORMANCE_VERIFIED.

# 20. Current state

- NEW_GAME_DESIGN_RECORDED = YES
- WORLD_MAP_STRUCTURE_DESIGNED = YES
- SETTLEMENT_HUNTING_REGION_SEPARATION_DESIGNED = YES
- PLAYER_EXPERIENCE_GUIDE = YES
- VISUAL_WORLD_BEHAVIOR_DESIGNED = YES
- MECHANICAL_SYSTEMS_GUIDE = YES
- STATS_EFFECTS_SYSTEM_DESIGNED = YES
- DETERMINISTIC_BEHAVIOR_SYSTEM_DESIGNED = YES
- AI_BEHAVIOR_SYSTEM = NO
- CRYSTAL_LIFE_FORCE_SYSTEM_DESIGNED = YES
- MUTATION_ECOSYSTEM_SYSTEM_DESIGNED = YES
- SYSTEM_ARCHITECTURE_PLANNED = YES
- CONTENT_DATA_PIPELINE_PLANNED = YES
- CODE_STRUCTURE_PLANNED = YES
- PERFORMANCE_CAPS_PLANNED = YES
- ADMIN_CREATOR_SYSTEM_PLANNED = YES
- TESTING_PLAN_RECORDED = YES
- IMPLEMENTATION_ROADMAP_RECORDED = YES
- GAMEPLAY_SOURCE_CREATED = NO
- IMPLEMENTATION_AUTHORIZED = NO
- ENGINE_SELECTED = NO
- APK_BUILD_VERIFIED = NO
- PHONE_RUNTIME_VERIFIED = NO

The old frozen WorldLife Drive archive is historical residue only and is not new-game authority.
