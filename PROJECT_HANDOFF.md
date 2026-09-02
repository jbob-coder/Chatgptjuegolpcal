# Unnamed Hunt RPG — Project Handoff

Status: DESIGN SYSTEM / PLANNING ONLY / NO GAMEPLAY CODE AUTHORIZED
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE

Continue defining the new game from player-facing experience down through mechanics, numerical systems, deterministic NPC/creature behavior, architecture, code ownership, content authoring, performance caps, testing, Admin/Creator tooling and implementation order before gameplay source is created.

## CURRENT_STATE

This is a new game replacing WorldLife in the same repository/project area. WorldLife is not the design base.

No new-game gameplay code, engine project, scenes, APK or runtime implementation has been created.

The project documentation now includes dedicated authorities for stats/effects and deterministic behavior.

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
Current six-role design direction:
- Might — force/heavy handling/break/stagger;
- Finesse — precision execution/sever/technique;
- Agility — movement/dodge/initiative/footing;
- Endurance — stamina/sustain/environmental strain;
- Perception — tracking/target acquisition/inspection/telegraph reading;
- Resolve — composure/stagger/shock/fear resistance where used.

Current recommendation is bounded integer attributes with an internal 1–100 design range, while starting values/growth remain open for prototype tuning.

AP/reaction economy cannot scale freely from attributes/gear.

### Shared effect/modifier system
Locked architecture:
- equipment, statuses, terrain, weather, posture, injury/anatomy and tactical context use one common typed effect pipeline;
- explicit stack groups/policies;
- caps/clamps/floors;
- duplicate sources cannot stack infinitely;
- derived stats are cached and invalidated when inputs change;
- development calculation traces must show why a result occurred;
- contextual hit quality is preferred over a generic hidden random critical-hit system.

### Equipment
Equipment should change tactics, not only numbers.

Weapons can influence damage profile, handling, reach, break/sever efficiency, AP/stamina cost, techniques, guard/parry and effects.

Armor can influence protection, burden, movement/dodge, stagger/status/environment resistance and conditional traits.

Tools can influence tracking, harvesting, traps, treatment and environment interaction.

### Status effects
Statuses are data-driven authoritative runtime state with explicit duration, stack policy, intensity cap, timing hooks, resistance/cure and persistence rules.

Candidate first categories include physical disruption, environmental conditions and tactical positive states. Exact first status list remains open.

### Terrain/weather
Terrain is mechanically real rather than decorative-only.

Reusable tags can affect movement AP/stamina, footing/evasion, visibility/concealment, tracking evidence and tactical legality.

Examples include mud, shallow water, brush, high ground, slopes, narrow terrain and ice/rough ground.

Weather only affects gameplay through explicit readable rules such as rain→wet/mud/track changes, fog→range visibility and heat/cold→environmental strain where adopted.

### Deterministic NPC/creature behavior
**AI behavior system = NO.**

NPCs and creatures use authored patterns made from:
- states/phases;
- deterministic schedules where relevant;
- explicit `IF / ELSE IF / ELSE` conditions;
- priorities;
- cooldowns;
- capability requirements;
- situation/terrain/weather flags;
- deterministic tie policy;
- optional seeded variation only where explicitly authored.

Simple actors have simple patterns. Complex monsters/bosses can have layered phases and condition chains, but decisions remain inspectable/reproducible.

Behavior requests normal domain actions and cannot bypass anatomy, status, terrain, AP/stamina or combat legality.

### Harvest
- yield derives from anatomy capacity/condition;
- unique structures cannot generate impossible duplicates;
- damage method, condition, tool, method and skill may affect recovery;
- result should explain major losses/bonuses.

### Architecture
- one authoritative state;
- presentation requests actions and renders state/events;
- content definitions separated from runtime instances;
- shared stats/effects service;
- deterministic behavior-pattern service rather than AI;
- exploration→combat→world/harvest preserves actor identity/injuries;
- stable IDs/data-driven content;
- new save lineage when implemented.

### Performance
- scalable systems require caps/budgets;
- deterministic behavior is event/decision-driven, not evaluated every frame;
- derived stats are cached;
- status/modifier counts are bounded/instrumented;
- decoration is degraded before tactical readability;
- expensive subsystems are independently isolatable in dev builds.

### Admin/Creator
Planned tools now include:
- base/derived/final stat inspector;
- exact modifier calculation trace;
- status/effect simulator;
- terrain/weather debugger;
- deterministic behavior-rule editor/trace viewer;
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
- AI-behavior assumption removed from primary architecture/code/performance/testing/roadmap documents;
- six-role attribute direction recorded;
- shared effect/modifier pipeline recorded;
- equipment bonus architecture recorded;
- status effect lifecycle/stacking architecture recorded;
- terrain/weather mechanical interaction architecture recorded;
- hit-quality direction recorded;
- modifier/behavior Admin tracing planned;
- combination/performance tests recorded.

## IN_PROGRESS

Design discussion/refinement only.

## NEXT_ACTION

Continue discussing unresolved numerical/mechanical details, especially:
1. exact starting attribute baseline/distribution;
2. whether attributes grow directly, mostly through equipment/mastery, or both;
3. exact health/stamina derivation;
4. exact first AP/reaction model;
5. equipment slots and loadout structure;
6. armor burden/weight model;
7. first status list and severity;
8. first terrain tag/effect set;
9. exact damage/hit-quality formulas;
10. resistance channels;
11. first monster behavior pattern complexity;
12. world premise/history/technology/magic;
13. first hub/region/monster/weapon;
14. target Android device and engine.

Do not implement gameplay until the user explicitly authorizes it.

## BLOCKERS / OPEN DECISIONS

- final name;
- setting/history/time period;
- magic/technology;
- creature ecology/origin;
- player identity;
- first hub/region/monster/weapon;
- solo/party;
- exact AP/turn rules;
- exact starting attribute values/growth/caps;
- exact equipment slots/burden;
- exact first status/terrain set;
- exact hit/damage/resistance formulas;
- exact gore/harvest interaction depth;
- crafting/progression/failure;
- engine/Android target.

## IMPORTANT ENGINEERING DECISIONS

- no AI behavior system;
- deterministic pattern/condition behavior is the autonomous-actor architecture;
- one shared modifier system handles equipment/status/terrain/context effects;
- domain authority separate from presentation;
- content definitions separate from runtime instances;
- combat/stat/behavior rules testable headlessly;
- every scalable subsystem bounded/instrumented;
- Admin tools aid root-cause isolation and use validated schemas;
- first complete hunt loop before broad expansion.

## RISKS

- too many modifiers creating opaque math;
- AP/equipment bonuses breaking action economy;
- status proliferation creating combinatorial bugs;
- terrain becoming clutter rather than tactical choice;
- behavior patterns turning into giant unmaintainable nested condition scripts instead of reusable rule data;
- overbuilding anatomy before combat is fun;
- harvesting becoming repetitive;
- 2D/3D art mismatch;
- too many targetable parts for phone UI;
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
