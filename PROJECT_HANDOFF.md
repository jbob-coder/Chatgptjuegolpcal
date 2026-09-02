# Unnamed Hunt RPG — Project Handoff

Status: DESIGN SYSTEM / PLANNING ONLY / NO GAMEPLAY CODE AUTHORIZED
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE

Continue defining the new game from player-facing experience down through mechanics, numerical systems, deterministic NPC/creature behavior, crystal life-force, mutation/ecology, architecture, code ownership, content authoring, performance caps, testing, Admin/Creator tooling and implementation order before gameplay source is created.

## CURRENT_STATE

This is a new game replacing WorldLife in the same repository/project area. WorldLife is not the design base.

No new-game gameplay code, engine project, scenes, APK or runtime implementation has been created.

The project now has dedicated authorities for stats/effects, deterministic behavior, and crystal/mutation/ecosystem mechanics.

## VERIFIED_DESIGN_STATE

### Player-facing identity
- grounded stylized wilderness/frontier monster-hunting fantasy;
- visual identity: **an illustrated hunting world brought to life**;
- dimensional aerial overview without literal paper/craft visuals;
- current camera target roughly 40–50° downward;
- stylized 3D player/major monsters preferred for aerial→first-person continuity;
- selective 2D/billboard/impostor detail allowed for Android efficiency.

### Core loop
`PREPARE → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → SURVIVE → HARVEST → CRAFT/EQUIP/UPGRADE/RESEARCH → HUNT HARDER PREY`

### Combat
- first-person turn-based tactical combat;
- spatial movement/repositioning, cover, terrain and bearing matter;
- body-part targeting authoritative;
- damage can wound/break/sever/destroy;
- anatomy changes creature capabilities/behavior rules;
- current action-economy candidate: AP + stamina + limited reaction resource;
- exact numerical values remain open.

### Stats/attributes
Current six-role direction:
- Might — force/heavy handling/break/stagger;
- Finesse — precision execution/sever/technique;
- Agility — movement/dodge/initiative/footing;
- Endurance — stamina/sustain/environmental strain;
- Perception — tracking/target acquisition/inspection/telegraph reading;
- Resolve — composure/stagger/shock/fear resistance where used.

Current recommendation: bounded integer attributes with an internal 1–100 design range. Starting values/growth remain open for prototype tuning.

AP/reaction economy cannot scale freely from attributes/gear.

### Shared effect/modifier system
- equipment, statuses, terrain, weather, posture, injury/anatomy, crystal/mutation effects and tactical context use one common typed effect pipeline;
- explicit stack groups/policies;
- caps/clamps/floors;
- duplicate sources cannot stack infinitely;
- derived stats are cached and invalidated when inputs change;
- development calculation traces must show why a result occurred;
- contextual hit quality is preferred over a generic hidden random critical-hit system.

### Equipment / status / terrain
- equipment should change tactics, not only raise damage;
- statuses are authoritative runtime state with explicit duration/stack/timing/resistance/cure rules;
- terrain is mechanically real rather than decorative-only;
- weather affects gameplay only through explicit readable rules.

### Deterministic NPC/creature behavior
**AI behavior system = NO.**

NPCs and creatures use authored patterns made from:
- states/phases;
- deterministic schedules where relevant;
- explicit `IF / ELSE IF / ELSE` conditions;
- priorities;
- cooldowns;
- capability requirements;
- situation/terrain/weather/crystal/mutation flags;
- deterministic tie policy;
- optional seeded variation only where explicitly authored.

Simple actors have simple patterns. Complex monsters/bosses can have layered phases/condition chains while remaining inspectable and reproducible.

### Crystal life-force system
User-decided core:
- crystal-bearing creatures contain an internal crystal;
- crystal energy is the creature's life-force reserve;
- when usable crystal energy reaches zero, the creature dies;
- a desperate creature can deliberately consume that life-force reserve to enter a berserker/overdrive state;
- crystals have Tier, Rank, Quality and Element.

Structural distinction:
- **Tier** = broad evolutionary/potency ceiling;
- **Rank** = current development inside a tier;
- **Quality** = purity/stability/efficiency;
- **Element** = energy affinity/expression;
- **Energy Reserve** = current life force;
- **Condition** = physical crystal damage/strain.

Tier/Rank/Quality/Element are intrinsic properties and are not replaced by current energy percentage.

### Berserk/desperation
- berserk activation is controlled through deterministic behavior conditions;
- it consumes the same finite core reserve required for survival;
- it can unlock stronger/more aggressive patterns or elemental output;
- it cannot restore severed anatomy by default;
- it cannot use attacks whose required capabilities no longer exist;
- it cannot bypass normal action legality;
- zero core energy resolves death;
- exact thresholds/costs/benefits remain open.

### Mutation system
Mutation is a core ecological system, not random stat inflation.

Mutation definitions can affect:
- anatomy;
- attributes/derived effects;
- capabilities;
- elemental affinity;
- terrain adaptation;
- deterministic behavior-rule availability;
- harvest sources;
- visuals/audio.

Mutations are bounded through prerequisites, incompatibilities and a support/load concept tied to crystal development/stability so creatures cannot accumulate unlimited traits.

Potential mutation categories:
- structural/anatomical;
- physiological;
- elemental;
- behavioral;
- sensory.

### Ecosystem
Regional ecological pressures can influence mutation prevalence and creature adaptation.

Potential pressure inputs:
- temperature;
- moisture;
- altitude;
- terrain;
- prey availability;
- predator pressure;
- toxins/disease;
- elemental saturation;
- human hunting pressure later.

Performance rule:
- relevant/persistent creatures use full instances;
- off-screen ecology uses bounded region/species population aggregates rather than simulating thousands of full actors.

Long-term ecosystem feedback such as hunting pressure shifting mutation prevalence is a later expansion candidate, not required for the first vertical slice.

### Harvest
- yield derives from actual anatomy/crystal condition;
- unique structures cannot generate impossible duplicates;
- crystal harvesting distinguishes intrinsic Tier/Rank/Quality/Element from runtime Condition and exhausted Energy;
- direct core damage may trade faster killing for worse crystal condition/harvest if that mechanic is adopted;
- damage method, condition, tool, method and skill may affect recovery;
- result should explain major losses/bonuses.

### Architecture
- one authoritative state;
- presentation requests actions and renders state/events;
- content definitions separate from runtime instances;
- shared stats/effects service;
- deterministic behavior-pattern service rather than AI;
- crystal/mutation/ecology use explicit domains/data rather than presentation logic;
- exploration→combat→world/harvest preserves actor identity/injuries/core state;
- stable IDs/data-driven content;
- new save lineage when implemented.

### Performance
- scalable systems require caps/budgets;
- deterministic behavior is event/decision-driven, not evaluated every frame;
- derived stats are cached;
- mutation generation happens at spawn/growth/event boundaries;
- off-screen ecology uses aggregates;
- status/modifier/mutation counts are bounded/instrumented;
- decoration is degraded before tactical readability;
- expensive subsystems are independently isolatable in dev builds.

### Admin/Creator
Planned tools include:
- base/derived/final stat inspector;
- exact modifier calculation trace;
- status/effect simulator;
- terrain/weather debugger;
- deterministic behavior-rule editor/trace viewer;
- crystal Tier/Rank/Quality/Element/Energy/Condition inspector;
- berserk energy-drain debugger;
- mutation definition/editor/compatibility validation;
- deterministic variant generator;
- regional ecosystem pressure/population simulator;
- anatomy/attack/harvest/encounter tools;
- replay/save/performance inspection.

## DOCUMENTATION SYSTEM

Current active planning authorities include:
- `README.md`
- `START_HERE_NEW_CHAT.md`
- `PROJECT_HANDOFF.md`
- `DOCUMENTATION_INDEX.md`
- `GAME_EXPERIENCE_BIBLE.md`
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
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

## COMPLETED_PLANNING

In addition to earlier game/visual/architecture planning:
- deterministic NPC/creature pattern system recorded;
- AI-behavior assumption removed from primary architecture;
- six-role attribute direction recorded;
- shared effect/modifier pipeline recorded;
- equipment/status/terrain architecture recorded;
- crystal life-force system recorded;
- Tier/Rank/Quality/Element separation recorded;
- berserk/desperation reserve-drain model recorded;
- mutation definition/support model recorded;
- bounded regional ecosystem simulation strategy recorded;
- crystal/mutation Admin inspection/simulation requirements recorded;
- first-slice limits for crystal/mutation/ecology recorded.

## IN_PROGRESS

Design discussion/refinement only.

## NEXT_ACTION

Continue discussing unresolved details, especially:
1. exact crystal tier count/names;
2. exact rank scale;
3. quality display bands;
4. elemental roster and whether hybrids exist;
5. normal crystal-energy recovery mechanism;
6. whether all creatures have crystals or only specific life forms;
7. whether humans have crystals;
8. direct crystal targeting/exposure rules;
9. exact berserk trigger/cost/benefit/end rules;
10. mutation origin/inheritance rules;
11. how strongly hunting changes regional mutation/population distributions;
12. human uses for harvested crystals;
13. attribute growth/progression;
14. exact health/stamina/AP/reaction model;
15. equipment slots/burden;
16. first status/terrain set;
17. world premise/history/technology/magic;
18. first hub/region/monster/weapon;
19. target Android device and engine.

Do not implement gameplay until the user explicitly authorizes it.

## IMPORTANT ENGINEERING DECISIONS

- no AI behavior system;
- deterministic pattern/condition behavior is the autonomous-actor architecture;
- one shared modifier system handles equipment/status/terrain/crystal/mutation/context effects;
- crystal energy is an authoritative life-force resource;
- mutation/ecology are data-driven and bounded;
- off-screen ecology uses aggregates;
- domain authority remains separate from presentation;
- combat/stat/behavior/crystal/mutation rules must be testable headlessly;
- every scalable subsystem is bounded/instrumented;
- Admin tools aid root-cause isolation and use validated schemas;
- first complete hunt loop before broad expansion.

## RISKS

- too many modifiers creating opaque math;
- berserk becoming a generic stat multiplier rather than a tactical tradeoff;
- crystal rules replacing anatomy instead of interacting with it;
- mutation combinations exploding content complexity;
- ecosystem simulation becoming too expensive;
- elemental interactions turning into arbitrary weakness tables;
- AP/equipment bonuses breaking action economy;
- terrain/status proliferation creating combinatorial bugs;
- behavior patterns becoming giant unmaintainable nested scripts instead of reusable rule data;
- harvesting becoming repetitive;
- creator tooling overtaking game development;
- engine selection before target-device evidence.

## TESTS_RUN

None. No implementation exists.

## STATUS GATES

DESIGN_RECORDED = YES
DOCUMENTATION_SYSTEM_RECORDED = YES
PLAYER_EXPERIENCE_GUIDE = YES
MECHANICAL_SYSTEMS_GUIDE = YES
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
