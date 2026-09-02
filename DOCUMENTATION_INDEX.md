# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE PLANNING INDEX / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

This file maps the entire new game from the most basic player-facing concept down to code, data, performance, testing and creator tooling.

Future work should not reconstruct the project from chat memory or open files randomly. Read from the correct layer, then inspect verified source/tests once implementation exists.

`Unnamed Hunt RPG` is a temporary working label.

# Read from basic → detailed

## Layer 0 — Current state
1. `START_HERE_NEW_CHAT.md` — current directive, stop gate and exact next action.
2. `README.md` — project front door and one-page game/architecture summary.
3. `PROJECT_HANDOFF.md` — current verified design state, open decisions and continuity.
4. `DOCUMENTATION_INDEX.md` — this map.

## Layer 1 — What the player experiences
5. `GAME_EXPERIENCE_BIBLE.md` — launch/title, introduction/tutorial, pacing, world scale, camera, music/audio states, HUD, bestiary, harvest/crafting presentation and first-session target.
6. `VISUAL_WORLD_BEHAVIOR_BIBLE.md` — detailed visual identity, aerial overview, world composition, environment behavior, first-person transition, anatomy visuals, settlement language and presentation laws.

## Layer 2 — How the game plays
7. `NEW_GAME_MASTER_PLAN.md` — complete gameplay intent/core loop and broad system catalog.
8. `MECHANICAL_SYSTEMS_GUIDE.md` — detailed mechanics, state transitions, combat, anatomy, AI, harvesting, crafting, knowledge, regions and failure behavior.
9. `NEW_GAME_DISCUSSION_CHECKLIST.md` — unresolved design decisions that must not be invented silently.

## Layer 3 — How the game is structured internally
10. `SYSTEM_ARCHITECTURE_BLUEPRINT.md` — authoritative state architecture, domains, action/result flow, content/runtime separation, scene responsibilities and dependencies.
11. `CONTENT_DATA_GUIDE.md` — stable IDs and data-driven authoring for species, anatomy, attacks, weapons, materials, harvest, recipes, regions and encounters.
12. `CODE_GUIDE.md` — future code organization, responsibilities, APIs, logging, bug isolation, optimization and refactor rules.
13. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` — supporting earlier architecture/visual principles; where visual overlap exists, `VISUAL_WORLD_BEHAVIOR_BIBLE.md` is more specific.

## Layer 4 — How we keep it fast, testable and easy to create
14. `PERFORMANCE_BUDGETS_AND_CAPS.md` — performance hierarchy, update tiers, caps, degradation ladder, instrumentation and feature isolation.
15. `ADMIN_CREATOR_SYSTEM.md` — in-game developer/admin/creator architecture, inspectors, commands, content editors, encounter builder, replay and performance tools.
16. `TESTING_VERIFICATION_PLAN.md` — test layers, invariants, Android runtime matrix, performance tests and release gates.

## Layer 5 — How it gets built
17. `IMPLEMENTATION_ROADMAP.md` — dependency-driven implementation stages from engine probe through vertical slice, admin tools, second-content proof and expansion.
18. `DEVELOPMENT_REFERENCE.md` — bounded editing/development discipline.
19. `EVOLVE_ALIGNMENT.md` — project-specific EVOLVE verification/continuity rules.

# Authority order by claim type

## Intended design change
1. Current explicit user instruction.
2. Recorded accepted design decisions in these mandatory docs.
3. Open design candidates.

## Mechanical/source fact after implementation
1. Verified current source/tests.
2. Current authoritative domain/content definitions.
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

A design file does not prove implementation. Compilation does not prove phone behavior. A screenshot does not prove hidden domain state without supporting evidence.

# Documents by responsibility

## Player experience / audiovisual
- `GAME_EXPERIENCE_BIBLE.md`
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`

## Gameplay/mechanics
- `NEW_GAME_MASTER_PLAN.md`
- `MECHANICAL_SYSTEMS_GUIDE.md`
- `NEW_GAME_DISCUSSION_CHECKLIST.md`

## Architecture/code/content
- `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
- `CONTENT_DATA_GUIDE.md`
- `CODE_GUIDE.md`
- `DEVELOPMENT_REFERENCE.md`

## Performance/debug/creator
- `PERFORMANCE_BUDGETS_AND_CAPS.md`
- `ADMIN_CREATOR_SYSTEM.md`

## QA/execution/continuity
- `TESTING_VERIFICATION_PLAN.md`
- `IMPLEMENTATION_ROADMAP.md`
- `EVOLVE_ALIGNMENT.md`
- `PROJECT_HANDOFF.md`

# Source-adjacent documents to create only when real source exists

After engine selection and implementation authorization, create these only when the matching implementation exists:
- concrete module/package/scene map;
- build/install guide;
- save schema specification;
- combat action schema/API reference;
- monster/anatomy schema/API reference;
- region/encounter schema;
- asset provenance registry;
- content authoring/export guide tied to the actual data format;
- measured performance ledger/device matrix;
- release/version/changelog records;
- subsystem READMEs beside real source.

Do not create documentation that pretends nonexistent code already exists.

# Documentation maintenance

When durable truth changes:
1. update the owning document;
2. update `PROJECT_HANDOFF.md` when current state/next action changed;
3. update this index if a document was added/removed/repurposed;
4. update README if the project-level contract changed;
5. read back saved state;
6. never rely on a later chat message to cancel stale written authority.

# Current gate

`DESIGN_SYSTEM = ACTIVE`
`MECHANICS_DOCUMENTED = YES`
`VISUAL_BEHAVIOR_DOCUMENTED = YES`
`CODE_STRUCTURE_PLANNED = YES`
`PERFORMANCE_CAPS_PLANNED = YES`
`ADMIN_CREATOR_SYSTEM_PLANNED = YES`
`TESTING_PLAN_RECORDED = YES`
`GAMEPLAY_SOURCE = NOT CREATED`
`ENGINE = NOT SELECTED`
`IMPLEMENTATION = NOT AUTHORIZED`
