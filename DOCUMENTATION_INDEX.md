# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE PLANNING INDEX / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

Map the entire new game from basic player experience down to mechanics, stats/effects, deterministic behavior, crystal life force, mutation/ecology, code, data, performance, testing and creator tooling.

Future work should not reconstruct the project from chat memory. Read the correct authoritative layer, then inspect verified source/tests once implementation exists.

`Unnamed Hunt RPG` is a temporary working label.

# Read from basic → detailed

## Layer 0 — Current state
1. `START_HERE_NEW_CHAT.md` — current directive, stop gate and next action.
2. `README.md` — project front door/one-page contract.
3. `PROJECT_HANDOFF.md` — current verified design state/open decisions.
4. `DOCUMENTATION_INDEX.md` — this map.

## Layer 1 — Player experience
5. `GAME_EXPERIENCE_BIBLE.md` — launch/title, intro/tutorial, pacing, scale, music/audio, HUD, bestiary, harvest/crafting presentation.
6. `VISUAL_WORLD_BEHAVIOR_BIBLE.md` — visual identity, aerial overview, environment composition, first-person transition, anatomy visuals, settlements and presentation laws.

## Layer 2 — Gameplay and numerical behavior
7. `NEW_GAME_MASTER_PLAN.md` — complete gameplay intent/core loop.
8. `MECHANICAL_SYSTEMS_GUIDE.md` — detailed mechanics/state interactions.
9. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md` — six primary attributes, derived stats, equipment bonuses, modifier stacking/caps, statuses, terrain/weather effects, hit quality and calculation traces.
10. `BEHAVIOR_PATTERN_SYSTEM.md` — deterministic NPC/creature schedules, phases, `IF` conditions, priorities, cooldowns, situation adaptation and trace/debug rules. This replaces any old AI-behavior assumption.
11. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md` — life-force crystal reserve, Tier/Rank/Quality/Element, desperation/berserk rules, mutation architecture, elemental habitat relationships and bounded ecosystem simulation.
12. `NEW_GAME_DISCUSSION_CHECKLIST.md` — unresolved decisions that must not be silently invented.

## Layer 3 — Internal architecture/code/content
13. `SYSTEM_ARCHITECTURE_BLUEPRINT.md` — authoritative state/domains/action flow/effect and behavior architecture.
14. `CONTENT_DATA_GUIDE.md` — stable IDs/data authoring for actors, anatomy, attacks, behavior rules, attributes/effects/statuses/terrain/equipment/materials/regions.
15. `CODE_GUIDE.md` — code ownership/APIs/logging/bug isolation/optimization/refactor rules.
16. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` — supporting earlier architecture/visual principles; the newer dedicated authorities override overlaps where more specific.

## Layer 4 — Performance/debug/creator/QA
17. `PERFORMANCE_BUDGETS_AND_CAPS.md` — performance hierarchy, behavior/effect update budgets, caps, degradation and isolation.
18. `ADMIN_CREATOR_SYSTEM.md` — inspectors, stat/effect trace, status/terrain tools, deterministic behavior editor/debugger, encounter/content creator tools.
19. `TESTING_VERIFICATION_PLAN.md` — invariants, modifier/status/terrain/behavior tests, Android runtime matrix and gates.

## Layer 5 — Build/continuity
20. `IMPLEMENTATION_ROADMAP.md` — dependency-driven stages.
21. `DEVELOPMENT_REFERENCE.md` — bounded development discipline.
22. `EVOLVE_ALIGNMENT.md` — project-specific EVOLVE rules.

# Authority order by claim type

## Intended design change
1. Current explicit user instruction.
2. Recorded accepted decisions in these docs.
3. Open candidates.

## Mechanical/source fact after implementation
1. Verified current source/tests.
2. Authoritative domain/content definitions.
3. Current durable docs.
4. Build artifacts/logs for build claims.
5. Conversation summaries/memory.

## Runtime fact
1. Direct target-device observation.
2. Runtime logs/screenshots/video.
3. Reproducible tests/instrumentation.
4. Build/package evidence.
5. Source expectation.
6. Documentation.

A design file does not prove implementation. Compilation does not prove phone behavior.

# Documents by responsibility

## Player experience / audiovisual
- `GAME_EXPERIENCE_BIBLE.md`
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`

## Gameplay / mechanics
- `NEW_GAME_MASTER_PLAN.md`
- `MECHANICAL_SYSTEMS_GUIDE.md`
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
- `BEHAVIOR_PATTERN_SYSTEM.md`
- `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
- `NEW_GAME_DISCUSSION_CHECKLIST.md`

## Architecture / code / content
- `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
- `CONTENT_DATA_GUIDE.md`
- `CODE_GUIDE.md`
- `DEVELOPMENT_REFERENCE.md`

## Performance / debug / creator
- `PERFORMANCE_BUDGETS_AND_CAPS.md`
- `ADMIN_CREATOR_SYSTEM.md`

## QA / execution / continuity
- `TESTING_VERIFICATION_PLAN.md`
- `IMPLEMENTATION_ROADMAP.md`
- `EVOLVE_ALIGNMENT.md`
- `PROJECT_HANDOFF.md`

# Current locked mechanical architecture

- autonomous NPC/creature behavior is deterministic authored patterns/conditions, not AI;
- current six-role attribute direction: Might, Finesse, Agility, Endurance, Perception, Resolve;
- one shared effect/modifier pipeline is used by equipment, statuses, terrain, weather, posture, crystal/mutation effects and action context;
- AP/reaction scaling is tightly constrained;
- modifiers use explicit stack rules/caps;
- terrain can affect movement, footing, visibility, tracking and tactical legality;
- contextual hit quality is preferred over a generic hidden critical-hit system;
- crystal-bearing creatures use an internal life-force reserve;
- crystal energy reaching zero means creature death;
- desperation/berserk spends that same life-force reserve;
- crystal Tier, Rank, Quality, Element, current Energy and structural Condition are separate concepts;
- mutation is data-driven, bounded and can alter anatomy/capabilities/stats/behavior/terrain adaptation/harvest;
- off-screen ecology uses aggregate region/species state rather than full per-creature simulation;
- development calculation/behavior/crystal/mutation traces are required.

# Source-adjacent docs to create only when source exists

After engine selection/implementation authorization, create only when matching implementation exists:
- concrete module/package/scene map;
- build/install guide;
- save schema specification;
- combat action API/schema;
- stat/effect schema/API tied to actual code;
- behavior-rule schema/API tied to actual code;
- crystal/mutation/ecology schema/API tied to actual code;
- monster/anatomy schema;
- region/encounter schema;
- asset provenance registry;
- actual content authoring/export guide;
- measured performance ledger/device matrix;
- release/version/changelog records;
- subsystem READMEs beside real source.

Do not create fake implementation docs for nonexistent source.

# Documentation maintenance

When durable truth changes:
1. update owning document;
2. update `PROJECT_HANDOFF.md` when current state/next action changed;
3. update this index when files/ownership change;
4. update README when project-level contract changes;
5. read back saved state;
6. never rely on later chat text to cancel stale written authority.

# Current gate

`DESIGN_SYSTEM = ACTIVE`
`MECHANICS_DOCUMENTED = YES`
`STATS_EFFECTS_SYSTEM_DESIGNED = YES`
`DETERMINISTIC_BEHAVIOR_SYSTEM_DESIGNED = YES`
`AI_BEHAVIOR_SYSTEM = NO`
`CRYSTAL_LIFE_FORCE_SYSTEM_DESIGNED = YES`
`MUTATION_ECOSYSTEM_SYSTEM_DESIGNED = YES`
`VISUAL_BEHAVIOR_DOCUMENTED = YES`
`CODE_STRUCTURE_PLANNED = YES`
`PERFORMANCE_CAPS_PLANNED = YES`
`ADMIN_CREATOR_SYSTEM_PLANNED = YES`
`TESTING_PLAN_RECORDED = YES`
`GAMEPLAY_SOURCE = NOT CREATED`
`ENGINE = NOT SELECTED`
`IMPLEMENTATION = NOT AUTHORIZED`
