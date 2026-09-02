# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE PLANNING INDEX / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

Map the entire new game from current state and design governance down through player experience, world structure, model/art direction, mechanics, stats/effects, deterministic behavior, crystal life force, mutation/ecology, code, data, performance, testing and creator tooling.

Future work should not reconstruct the project from chat memory. Read the correct authoritative layer, then inspect verified source/tests once implementation exists.

`Unnamed Hunt RPG` is a temporary working label.

# Read from basic → detailed

## Layer 0 — Current state and design governance
1. `START_HERE_NEW_CHAT.md` — current directive, stop gate and next action.
2. `README.md` — project front door/one-page contract.
3. `PROJECT_HANDOFF.md` — current verified design state/open decisions.
4. `DOCUMENTATION_INDEX.md` — this map.
5. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md` — project-wide invariants, ownership/dependency matrix, complexity budgets, feature admission gates, change-impact classes, documentation-state labels and staged expansion rules.

## Layer 1 — Player experience, world presentation and model/art direction
6. `GAME_EXPERIENCE_BIBLE.md` — launch/title, intro/tutorial, pacing, scale, music/audio, HUD, bestiary, harvest/crafting presentation.
7. `VISUAL_WORLD_BEHAVIOR_BIBLE.md` — visual identity, aerial overview, environment composition, first-person transition, anatomy visuals, settlements and presentation laws.
8. `MAP_WORLD_SETTLEMENT_STRUCTURE.md` — world atlas, settlement/hub spaces, frontier transition belts, hunting regions, sectors, camps, danger gradient, local combat footprints and state separation.
9. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md` — walkable settlement rules, settlement↔wilderness transition architecture, continuous wilderness-sector streaming, world-unit convention, camera visibility limits, character/monster/building/street/region prototype scales, modular building construction and LOD/culling strategy.
10. `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md` — grounded stylized 3D/illustrated-realism model language; human/NPC proportions; monster anatomy-to-model binding; crystal/mutation visuals; damage states; modular buildings; terrain/props/materials; rigging, collision, pivots and LOD/degradation rules.

## Layer 2 — Gameplay and numerical behavior
11. `NEW_GAME_MASTER_PLAN.md` — complete gameplay intent/core loop.
12. `MECHANICAL_SYSTEMS_GUIDE.md` — detailed mechanics/state interactions.
13. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md` — six primary attributes, derived stats, equipment bonuses, modifier stacking/caps, statuses, terrain/weather effects, hit quality and calculation traces.
14. `BEHAVIOR_PATTERN_SYSTEM.md` — deterministic NPC/creature schedules, phases, `IF` conditions, priorities, cooldowns, situation adaptation and trace/debug rules. This replaces any old AI-behavior assumption.
15. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md` — life-force crystal reserve, Tier/Rank/Quality/Element, desperation/berserk rules, mutation architecture, elemental habitat relationships and bounded ecosystem simulation.
16. `NEW_GAME_DISCUSSION_CHECKLIST.md` — unresolved decisions that must not be silently invented.

## Layer 3 — Internal architecture/code/content
17. `SYSTEM_ARCHITECTURE_BLUEPRINT.md` — authoritative state/domains/action flow/effect and behavior architecture.
18. `CONTENT_DATA_GUIDE.md` — stable IDs/data authoring for actors, anatomy, attacks, behavior rules, attributes/effects/statuses/terrain/equipment/materials/regions.
19. `CODE_GUIDE.md` — code ownership/APIs/logging/bug isolation/optimization/refactor rules.
20. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` — supporting earlier architecture/visual principles; newer dedicated authorities override overlaps where more specific.

## Layer 4 — Performance/debug/creator/QA
21. `PERFORMANCE_BUDGETS_AND_CAPS.md` — performance hierarchy, behavior/effect update budgets, caps, degradation and isolation.
22. `ADMIN_CREATOR_SYSTEM.md` — inspectors, stat/effect trace, status/terrain tools, deterministic behavior editor/debugger, encounter/content creator tools.
23. `TESTING_VERIFICATION_PLAN.md` — invariants, modifier/status/terrain/behavior tests, Android runtime matrix and gates.

## Layer 5 — Build/continuity
24. `IMPLEMENTATION_ROADMAP.md` — dependency-driven stages.
25. `DEVELOPMENT_REFERENCE.md` — bounded development discipline.
26. `EVOLVE_ALIGNMENT.md` — project-specific EVOLVE rules.

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

## Project-wide design governance
- `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`

## Player experience / audiovisual / world structure / model art
- `GAME_EXPERIENCE_BIBLE.md`
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
- `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`

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

# Current locked world/mechanical/model architecture

- every meaningful new mechanic must identify player value, authoritative owner, dependencies, invariants/caps and verification path before becoming a current design decision;
- design statements are distinguished as LOCKED/CURRENT, SELECTED ARCHITECTURE, PROTOTYPE TARGET, OPEN, FUTURE OPTION or REJECTED/NOT PREFERRED;
- world is layered rather than one enormous always-loaded open world;
- long-distance geography uses a macro world atlas/travel layer;
- settlements are fully walkable physical gameplay spaces, not menu hubs;
- settlement cores are dense social/service runtime spaces with a different simulation budget from wilderness;
- settlement↔wilderness uses a meaningful major-area transition, preferably a walkable/diegetic gate corridor that hides loading/preloading while the player remains in control;
- hunting regions remain physically explorable in aerial view and are divided into streamable sectors;
- ordinary wilderness sector boundaries are continuous whenever possible and do not trigger loading screens;
- only major region/interior boundaries may use controlled transitions when technically necessary;
- a rolling streaming model keeps the current sector plus required neighboring sectors ready while farther sectors remain low-cost logical/aggregate state;
- persistent hunted monsters keep the same identity, anatomy injuries, crystal state, mutation state and behavior state across sector boundaries;
- normal exploration camera is local and character-centered; it never zooms out to show the full region as the gameplay view;
- preferred world measurement convention is 1 world unit = 1 meter;
- physical/collision scale remains coherent while silhouettes can be mildly exaggerated for aerial readability;
- selected model direction is grounded stylized 3D / illustrated realism, not photoreal, low-poly, chibi or paper-craft;
- important models must read at aerial, exploration-proximity and first-person/close distances;
- major monster model regions bind to authoritative anatomy and support persistent wound/break/sever states;
- one monster identity uses a hero source model/rig with LOD representations rather than unrelated exploration/combat duplicates;
- crystal/mutation visuals should be biologically integrated and restrained rather than constant neon effects;
- humans use broadly realistic proportions with mild readability exaggeration; NPC production favors shared compatible rigs/modular clothing;
- settlement architecture uses modular building kits, simplified collision, interior culling and LOD;
- stylized physically believable materials and broad value/color grouping are preferred over high-frequency photoreal noise;
- simplified collision proxies and dedicated anatomy hit regions are preferred over raw render-mesh collision where practical;
- first-person encounters are local tactical footprints derived from the exact wilderness location, monster instance, terrain, cover and injuries;
- safety/danger forms a gradient: settlement core → frontier/outpost → field camp → wilderness → deep territory/nest;
- normal random monster combat does not occur in settlement cores; exceptional settlement emergencies remain an authored future option;
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
- development calculation/behavior/crystal/mutation/map/streaming traces are required.

# Documentation expansion order

The project should not attempt to expand every possible document at once.

Current bounded sequence:
1. cross-system quality governance — RECORDED;
2. model art direction/asset standard — RECORDED;
3. first settlement blueprint — NEXT RECOMMENDED PIECE;
4. first hunting-region blueprint;
5. first monster complete design packet;
6. player progression/equipment packet;
7. exact combat-economy packet;
8. engine-specific technical mapping only after engine/device evidence.

See `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md` for the reasoning and admission gates.

# Source-adjacent docs to create only when source exists

After engine selection/implementation authorization, create only when matching implementation exists:
- concrete module/package/scene map;
- build/install guide;
- save schema specification;
- combat action API/schema;
- stat/effect schema/API tied to actual code;
- behavior-rule schema/API tied to actual code;
- crystal/mutation/ecology schema/API tied to actual code;
- world-atlas/settlement/region/sector schema tied to actual code;
- monster/anatomy schema;
- region/encounter schema;
- engine/DCC-specific model import/naming/pivot/material/LOD guide;
- asset provenance registry;
- actual content authoring/export guide;
- measured performance ledger/device matrix;
- release/version/changelog records;
- subsystem READMEs beside real source.

Do not create fake implementation docs for nonexistent source.

# Documentation maintenance

When durable truth changes:
1. update the owning document;
2. use `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md` to identify dependent systems/docs;
3. update `PROJECT_HANDOFF.md` when current state/next action changed;
4. update this index when files/ownership change;
5. update README when project-level contract changed;
6. read back saved state;
7. never rely on later chat text to cancel stale written authority.

# Current gate

`DESIGN_SYSTEM = ACTIVE`
`DESIGN_QUALITY_GOVERNANCE_RECORDED = YES`
`MODEL_ART_DIRECTION_RECORDED = YES`
`WORLD_MAP_STRUCTURE_DESIGNED = YES`
`WORLD_SCALE_STREAMING_DESIGNED = YES`
`WALKABLE_SETTLEMENTS_DESIGNED = YES`
`CONTINUOUS_WILDERNESS_SECTORS_DESIGNED = YES`
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
