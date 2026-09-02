# Unnamed Hunt RPG

Status: NEW GAME / DESIGN SYSTEM ACTIVE / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

This repository/project area is being reused for a completely new game. WorldLife RPG is no longer the active project and is not the implementation base.

`Unnamed Hunt RPG` is a temporary working label.

# 1. What this game is

A grounded stylized monster-hunting tactical RPG with two connected modes:

1. **Exploration** — angled aerial 2.5D/3D wilderness presentation, physically traversed like a living illustrated diorama.
2. **Combat** — first-person turn-based tactical encounters using the same monster, injuries, terrain, cover, range and encounter context.

Core loop:
`PREPARE → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → SURVIVE → HARVEST → CRAFT/EQUIP/UPGRADE/RESEARCH → HUNT HARDER PREY`

# 2. Visual identity

The world uses the readable dimensional-overview philosophy discussed with Paper Mario only as a camera/readability comparison. It is **not** a paper/cardboard game and does not copy Paper Mario art.

Identity:
**an illustrated hunting world brought to life**

Current direction:
- grounded stylized wilderness/frontier fantasy;
- aerial camera around 40–50° downward as current target;
- player/major monsters preferably stylized 3D;
- selective 2D/billboard/impostor details for Android efficiency;
- nature and strong silhouettes before decorative density;
- frontier settlement materials such as wood, stone, metal, canvas, rope, leather, ceramic, bone/shell/hide;
- practical hunter field-document UI rather than glossy generic mobile menus.

See `GAME_EXPERIENCE_BIBLE.md` and `VISUAL_WORLD_BEHAVIOR_BIBLE.md`.

# 3. Game introduction and feel

Planned player flow:
`LAUNCH → TITLE → NEW/CONTINUE → INTRODUCTION → HUB/OUTPOST → FIRST ASSIGNMENT → TRACKING → FIRST MONSTER → FIRST TACTICAL BATTLE → HARVEST → FIRST CRAFT/EQUIP UPGRADE`

Tutorial teaches the real hunt loop through play.

Music is state-based: title, hub, exploration, threat/tension, encounter sting, combat, phase/enrage intensity, victory/post-hunt and harvest/return ambience.

Critical telegraph/audio information outranks ambience/music.

# 4. Exploration behavior

Exploration is physical, not a menu map.

Regions contain terrain/traversal, landmarks, monster territories, deterministic NPC/creature routines, tracks/signs, cover/hazards, camps, resources, encounter-capable areas and exits.

The world communicates through footprints, broken vegetation, scratches, blood, calls, feeding remains, nests and environmental damage before relying on glowing waypoints.

# 5. Combat behavior

Combat transitions the camera from the aerial world into first person while preserving encounter context.

Possible actions include repositioning, range control, flanking, cover, posture, dodge/block/parry, targeted attacks, inspection, tools/traps, reactions, stamina recovery and escape.

Current action-economy candidate: small Action Point budget + stamina + limited reaction resource. Exact values remain open.

# 6. Stats and attributes

Detailed authority: `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`.

Current six-role design direction:
- **Might** — force/heavy handling/break/stagger;
- **Finesse** — precision execution/sever/technique;
- **Agility** — movement/dodge/initiative/footing;
- **Endurance** — stamina/sustain/environmental strain;
- **Perception** — tracking/target acquisition/inspection/telegraph reading;
- **Resolve** — composure/stagger/shock/fear resistance where used.

Attributes are bounded. Current recommended internal scale is 1–100, while actual practical ranges/growth are still balance decisions.

AP/reaction economy does not scale freely from attributes or gear.

# 7. Equipment, status and terrain effects

Equipment, statuses, terrain, weather, posture and tactical context all use one shared effect/modifier system.

Conceptual order:
`BASE → PROGRESSION → EQUIPMENT → INJURY/ANATOMY → STATUS → POSTURE → TERRAIN/WEATHER → COVER/RANGE/BEARING → ACTION → TARGET DEFENSE → CAPS`

Important rules:
- explicit stacking policy;
- bounded bonuses/penalties;
- duplicate sources cannot stack infinitely;
- movement/AP/stamina costs have floors;
- resistance has caps unless explicit immunity exists;
- development builds can show the exact calculation trace;
- derived stats are cached and recalculated only when inputs change;
- contextual hit quality is preferred over a generic hidden critical-hit chance.

Terrain is real gameplay context. Mud, water, brush, elevation, slopes, narrow ground, ice and similar surfaces can affect movement, footing, visibility, tracks and legal tactics through explicit reusable effects.

# 8. Deterministic NPC and creature behavior

Detailed authority: `BEHAVIOR_PATTERN_SYSTEM.md`.

**There is no AI behavior system.**

NPCs and creatures use authored patterns built from:
- states/phases;
- schedules where relevant;
- explicit `IF / ELSE IF / ELSE` conditions;
- priorities;
- cooldowns;
- capability requirements;
- situation/terrain/weather flags;
- deterministic tie policy;
- optional seeded variation only where explicitly authored.

Simple NPCs have simple patterns. Important monsters/bosses can have layered conditions/phases, but every decision remains inspectable and reproducible.

Behavior requests the same legal domain actions as normal gameplay and cannot bypass AP, anatomy, terrain, crystal-energy, mutation or status rules.

# 9. Crystal life force, mutation and ecosystem

Detailed authority: `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`.

Core decisions:
- crystal-bearing creatures contain an internal life crystal;
- crystal energy is the creature's life-force reserve;
- when usable crystal energy reaches zero, the creature dies;
- desperate creatures can deliberately burn life-force energy to enter berserker/overdrive states according to deterministic behavior conditions;
- crystals have **Tier**, **Rank**, **Quality** and **Element** as separate properties;
- current crystal energy and structural condition are separate from intrinsic Tier/Rank/Quality/Element;
- mutation is a central ecological system and must alter anatomy, capabilities, stats, behaviors, terrain adaptation and/or harvest where relevant;
- elements affect ecology/terrain/creature capabilities through explicit data rather than an automatic universal weakness chart;
- ecosystem simulation is bounded: relevant creatures get full instances while off-screen populations use aggregate region/species state.

Recommended crystal meaning:
- **Tier** = broad evolutionary/potency ceiling;
- **Rank** = current development within the tier;
- **Quality** = purity/stability/efficiency;
- **Element** = natural energy affinity/expression;
- **Energy Reserve** = current life-force amount;
- **Condition** = current physical crystal integrity/strain.

Berserk is not free power. It consumes the same reserve required to stay alive. It can unlock stronger/more aggressive patterns, but it cannot magically restore severed anatomy or bypass normal action legality.

Mutation is data-driven and bounded by prerequisites, incompatibilities and a support/load budget so individuals cannot accumulate unlimited traits.

Regional ecology can influence mutation distributions through temperature, terrain, elemental saturation, prey/predator pressure, toxins and other environmental pressures. Larger long-term feedback such as hunting pressure shifting mutation prevalence is a later expansion candidate, not a first-slice requirement.

# 10. Anatomy and harvesting

Monster anatomy is gameplay authority.

Parts can have integrity, protection, exposure, break/sever/destroy states, capability effects and harvest capacity.

Examples:
- broken leg affects movement;
- broken wing affects flight;
- severed tail removes tail actions;
- broken armor exposes structure;
- damaged eye affects perception/targeting.

Harvest is derived from what remains usable. Destroyed unique anatomy cannot produce pristine duplicate rewards.

Crystal harvesting is part of the same physical rule set: one creature has one physical core, and its harvest result can depend on Tier/Rank/Quality/Element plus actual crystal condition and extraction method.

# 11. Architecture law

There is one authoritative game state.

```text
PLAYER INPUT / AUTHORED BEHAVIOR PATTERN INTENT
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

UI, animation and rendering never secretly decide hits, severing, crystal energy, mutation state, loot, tactical position or progression.

# 12. Internal structure

Future source is separated into:
- world/region/exploration;
- encounter/turn;
- creature/anatomy;
- stats/effects/status/terrain;
- crystal life-force;
- mutation;
- ecology/population aggregates;
- damage;
- deterministic behavior patterns;
- harvest;
- inventory/equipment;
- crafting;
- research/progression;
- persistence;
- content definitions;
- aerial/combat presentation;
- audio/VFX/UI;
- admin/debug/creator tools;
- tests/validators.

See `SYSTEM_ARCHITECTURE_BLUEPRINT.md` and `CODE_GUIDE.md`.

# 13. Content structure

Data-driven definitions can include species, NPCs, anatomy, attacks, behavior profiles/rules, attributes, effects, statuses, terrain/weather, crystal tiers/ranks/quality rules/elements, mutations, ecology/population profiles, weapons/equipment, techniques, materials, harvest, recipes, regions and encounter layouts.

Stable IDs are never casually reused after saves depend on them.

See `CONTENT_DATA_GUIDE.md` and `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`.

# 14. Performance and bug isolation

Explicit caps/budgets are required.

Protect input, gameplay correctness, anatomy readability, telegraphs, camera/frame pacing, world readability and audio cues before decorative detail.

Development builds should isolate particles, shadows, foliage, ambient wildlife, high-detail monster rendering, audio/music, damage decals, roaming behavior evaluation, crystal/mutation calculation tracing and other scalable systems independently.

Behavior is event/decision-driven rather than evaluated every frame. Derived stats are cached rather than recalculated every frame. Mutation generation happens at spawn/growth/event boundaries rather than every frame. Off-screen ecology uses aggregate state rather than full creature simulation.

See `PERFORMANCE_BUDGETS_AND_CAPS.md`.

# 15. Admin / Creator system

The future Admin system is a creation/debug workbench.

Planned capabilities:
- state/stat/modifier inspectors;
- exact calculation traces;
- status/terrain/weather test controls;
- deterministic behavior-rule debugger/editor;
- crystal Tier/Rank/Quality/Element/Energy/Condition inspector;
- berserk activation/drain debugger;
- mutation definition/editor/compatibility validation;
- ecosystem pressure/population simulator;
- anatomy/combat inspector;
- typed test commands;
- creature/NPC/equipment/effect editors;
- harvest simulator;
- encounter layout builder;
- region debug overlays;
- save inspector;
- deterministic replay;
- performance dashboard;
- content validation/import/export.

Creator tools use validated domain/content services and never become a second rules engine.

# 16. Development order

`DESIGN → ENGINE/PHONE PROBE → DOMAIN CORE → STATS/EFFECTS CORE → CRYSTAL/MUTATION CORE → CONTENT VALIDATION → COMBAT CORE → COMBAT PRESENTATION → HARVEST → INVENTORY/EQUIPMENT/CRAFTING → EXPLORATION DOMAIN → ECOLOGY/REGION AGGREGATES → AERIAL PRESENTATION → COMPLETE VERTICAL LOOP → SAVE HARDENING → ADMIN/DEBUG → CREATOR TOOLS → PRODUCTION ART/AUDIO → SECOND-CONTENT PROOF → WORLD EXPANSION`

See `IMPLEMENTATION_ROADMAP.md`.

# 17. First vertical slice

Only after explicit implementation authorization:
- one compact region;
- one hunter;
- one monster species/instance;
- one deterministic behavior profile;
- one crystal element and constrained Tier/Rank/Quality range;
- small mutation set;
- one desperation/berserk pattern with visible debug energy drain;
- one weapon/equipment set;
- six prototype attributes;
- shared effect system;
- small terrain/status set;
- aerial tracking/approach;
- same-world transition to first-person combat;
- roughly 6–8 targetable parts;
- tactical movement/cover/terrain/defense;
- break/sever;
- anatomy/crystal/mutation-dependent behavior changes;
- condition-based anatomy + crystal harvest;
- one craft/equip upgrade;
- save/reload;
- target Android verification.

# 18. Documentation order — basic to detailed

1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `GAME_EXPERIENCE_BIBLE.md`
6. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
7. `NEW_GAME_MASTER_PLAN.md`
8. `MECHANICAL_SYSTEMS_GUIDE.md`
9. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
10. `BEHAVIOR_PATTERN_SYSTEM.md`
11. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
12. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
13. `CONTENT_DATA_GUIDE.md`
14. `CODE_GUIDE.md`
15. `PERFORMANCE_BUDGETS_AND_CAPS.md`
16. `ADMIN_CREATOR_SYSTEM.md`
17. `TESTING_VERIFICATION_PLAN.md`
18. `IMPLEMENTATION_ROADMAP.md`
19. `DEVELOPMENT_REFERENCE.md`
20. `EVOLVE_ALIGNMENT.md`
21. `NEW_GAME_DISCUSSION_CHECKLIST.md`

# 19. Verification discipline

Use precise gates: DESIGNED, IMPLEMENTED, STATIC_VERIFIED, CONTENT_VALIDATED, UNIT_TESTED, INTEGRATION_TESTED, COMPILED, APK_BUILD_VERIFIED, PHONE_RUNTIME_VERIFIED, VISUAL_QUALITY_VERIFIED, PERFORMANCE_VERIFIED.

Do not claim a higher state from lower evidence.

# 20. Current state

- NEW_GAME_DESIGN_RECORDED = YES
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