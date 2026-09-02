# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-02

## Active project identity

This is a completely new game using the same repository/project area that previously contained WorldLife RPG.

WorldLife is no longer active. Do not resume WorldLife life-sim/city/apartment/Admin work.

`Unnamed Hunt RPG` is temporary.

## Current phase

**DESIGN / STRUCTURE / DOCUMENTATION**

No gameplay code, engine project, scenes, APK or production assets are authorized yet.

## Mandatory read order — basic to detailed

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
22. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` when supporting detail is needed.

## Locked direction so far

### Visual/player experience
- grounded stylized wilderness/frontier monster-hunting fantasy;
- illustrated dimensional overview, not literal paper/craft;
- aerial exploration around 40–50° downward target;
- stylized 3D player/major monsters;
- selective 2D/billboard/impostor details;
- first-person combat entered from same encounter context;
- restrained hunter-field-document UI;
- state-based music/audio.

### Gameplay
- physical region exploration/tracking;
- first-person turn-based tactical combat;
- movement/cover/bearing/posture/terrain;
- targetable anatomy;
- wound/break/sever/destroy;
- condition-based harvest;
- material-driven crafting/equipment/research.

### Stats/effects
- current six-role attributes: Might, Finesse, Agility, Endurance, Perception, Resolve;
- current internal bounded-scale recommendation: 1–100, exact practical values open;
- equipment/status/terrain/weather/posture/context/crystal/mutation all use one shared typed modifier pipeline;
- explicit stacking/caps/floors;
- AP/reaction scaling tightly restricted;
- development calculation traces required;
- contextual hit quality preferred over generic hidden critical chance.

### Autonomous behavior
- **NO AI behavior system**;
- NPCs/creatures use deterministic authored schedules/patterns;
- explicit conditions, priorities, cooldowns, phases and capability checks;
- simple actors have simple patterns; complex monsters can have layered authored patterns;
- behavior uses normal domain action requests and remains inspectable/reproducible.

### Crystal life force / mutation / ecology
- crystal-bearing creatures have an internal life crystal;
- current crystal energy is an authoritative life-force reserve;
- zero usable crystal energy means death;
- desperate creatures can burn life force for berserk/overdrive through deterministic behavior rules;
- crystal **Tier, Rank, Quality, Element, Energy and Condition** are distinct concepts;
- mutation is data-driven and can change anatomy, capabilities, effects, elemental/terrain adaptation, deterministic behavior and harvest;
- mutation combinations are bounded through prerequisites/incompatibilities/support limits;
- off-screen ecology uses region/species aggregate state rather than full individual simulation;
- long-term hunting-pressure/migration/population feedback is a later expansion candidate, not a first-slice requirement.

### Architecture
- one authoritative game state;
- presentation does not decide gameplay outcomes;
- definitions separate from runtime instances;
- stable IDs/data-driven content;
- deterministic/replay-friendly rules where practical;
- new save lineage;
- bounded scalable systems;
- Admin/Creator tools use validated schemas/commands.

## Performance/bug rule

Anything scalable requires a cap/budget, cleanup/unload behavior, instrumentation, isolation toggle when practical and target-device verification.

Behavior evaluation is decision/event-driven, derived stats are cached, mutation generation occurs only at explicit boundaries, and off-screen ecology uses aggregates.

Do not sacrifice input/tactical readability/anatomy/telegraphs/simulation correctness before decoration.

## Admin/Creator rule

Future development tools should include:
- state/stat/modifier inspectors;
- calculation traces;
- status/effect/terrain test tools;
- deterministic behavior pattern trace/editor;
- crystal Energy/Tier/Rank/Quality/Element/Condition inspector;
- berserk drain debugger;
- mutation editor/validator;
- ecosystem pressure/population simulator;
- anatomy/attack editors;
- harvest simulator;
- encounter builder;
- region overlays;
- replay/save/performance tools;
- content validation/export.

They never become a hidden second rules engine.

## Implementation sequence

`DESIGN → ENGINE/PHONE PROBE → DOMAIN CORE → STATS/EFFECTS CORE → CRYSTAL/MUTATION CORE → CONTENT VALIDATION → COMBAT CORE → COMBAT PRESENTATION → HARVEST → INVENTORY/EQUIPMENT/CRAFTING → EXPLORATION DOMAIN → ECOLOGY AGGREGATE → AERIAL PRESENTATION → COMPLETE VERTICAL LOOP → SAVE HARDENING → ADMIN/DEBUG → CREATOR TOOLS → PRODUCTION ART/AUDIO → SECOND-CONTENT PROOF → WORLD EXPANSION`

## Current exact next action

Continue design discussion, especially:
- exact crystal tier/rank/quality/element structure;
- normal crystal-energy recovery;
- exact berserk rules;
- mutation origin/inheritance;
- human relationship/use of crystals;
- exact starting attributes/growth;
- health/stamina/AP/reaction model;
- equipment slots/burden;
- first status/terrain effects;
- damage/hit-quality/resistance formulas;
- first monster behavior/mutation/crystal profile;
- world premise/history;
- hunter role;
- first hub/region/weapon;
- target Android/engine.

Do not create gameplay source until the user explicitly says to begin.

## Status

DESIGN_RECORDED = YES
DOCUMENTATION_SYSTEM_RECORDED = YES
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
ENGINE_SELECTED = NO
IMPLEMENTATION_AUTHORIZED = NO
