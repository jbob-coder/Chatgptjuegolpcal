# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE PLANNING INDEX / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

This file is the map for the entire project. Future work should not search randomly or reconstruct the project from chat memory. Read the smallest authoritative set of documents needed for the requested change, then inspect verified source/tests once implementation exists.

The working label `Unnamed Hunt RPG` is temporary.

## Mandatory read order

For any consequential project work:

1. `START_HERE_NEW_CHAT.md` — current directive and stop/implementation gate.
2. `README.md` — project front door and high-level game contract.
3. `PROJECT_HANDOFF.md` — current objective, completed decisions, blockers and next action.
4. `DOCUMENTATION_INDEX.md` — this map.
5. `NEW_GAME_MASTER_PLAN.md` — complete game-system intent and core loop.
6. `VISUAL_WORLD_BEHAVIOR_BIBLE.md` — locked visual/world/camera/presentation behavior.
7. `MECHANICAL_SYSTEMS_GUIDE.md` — detailed mechanical ownership and interactions.
8. `SYSTEM_ARCHITECTURE_BLUEPRINT.md` — authoritative state architecture, subsystem boundaries and data flow.
9. `CONTENT_DATA_GUIDE.md` — data-driven content definitions, stable IDs and validation requirements.
10. `IMPLEMENTATION_ROADMAP.md` — build order and dependency gates.
11. `TESTING_VERIFICATION_PLAN.md` — required verification and runtime gates.
12. `DEVELOPMENT_REFERENCE.md` — editing/development discipline.
13. `EVOLVE_ALIGNMENT.md` — project-specific EVOLVE operating rules.
14. `NEW_GAME_DISCUSSION_CHECKLIST.md` — unresolved decisions that must not be invented silently.
15. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` — supporting architecture/visual principles; where it overlaps with the newer dedicated visual bible, `VISUAL_WORLD_BEHAVIOR_BIBLE.md` is the more specific visual authority.

## Authority order by claim type

### Intended design change
1. Current explicit user instruction.
2. Recorded accepted design decisions in the mandatory docs.
3. Open discussion candidates.

### Mechanical/source fact after implementation begins
1. Verified source and tests for the active new-game version.
2. Current authoritative domain/content definitions.
3. Current durable documentation.
4. Build artifacts/logs for build claims.
5. Conversation summaries/memory.

### Runtime fact
1. Direct target-device observation.
2. Runtime logs/screenshots/video.
3. Reproducible tests/instrumentation.
4. Build/package evidence.
5. Source expectation.
6. Documentation.

A design document is not proof of implementation. A successful build is not proof that the game behaves correctly on the phone.

## Core project documents

### Front door / continuity
- `README.md`
- `START_HERE_NEW_CHAT.md`
- `PROJECT_HANDOFF.md`
- `DOCUMENTATION_INDEX.md`

### Game design
- `NEW_GAME_MASTER_PLAN.md`
- `MECHANICAL_SYSTEMS_GUIDE.md`
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
- `NEW_GAME_DISCUSSION_CHECKLIST.md`

### Technical architecture
- `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
- `DEVELOPMENT_REFERENCE.md`
- `CONTENT_DATA_GUIDE.md`
- `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`

### Execution / quality
- `IMPLEMENTATION_ROADMAP.md`
- `TESTING_VERIFICATION_PLAN.md`
- `EVOLVE_ALIGNMENT.md`

## Planned source documentation after engine selection

When implementation is authorized and the engine/device probe passes, create source-adjacent documentation only when the corresponding source exists:

- module/package/scene map;
- save schema specification;
- combat action schema;
- monster/anatomy schema;
- region/encounter schema;
- content authoring guide;
- asset provenance registry;
- build/install guide;
- performance budget ledger;
- release/version history.

Do not create fake implementation documentation before the implementation exists.

## Documentation maintenance rule

Update a document when its durable truth changes. Do not append diary entries indefinitely.

When a decision supersedes an older one:
1. update the authoritative section;
2. mark the old rule superseded if historical context matters;
3. update the handoff and index if ownership/read order changed;
4. read back the saved files;
5. do not rely on a later chat message to cancel stale written instructions.

## Current project gate

`DESIGN_SYSTEM = ACTIVE`
`GAMEPLAY_SOURCE = NOT CREATED`
`ENGINE = NOT SELECTED`
`IMPLEMENTATION = NOT AUTHORIZED`

Current work is planning, documentation and design discussion only.