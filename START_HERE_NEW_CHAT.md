# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-02

## Active project identity

This is a completely new game using the same repository/project area that previously contained WorldLife RPG.

WorldLife is no longer the active project. Do not resume WorldLife phone stabilization, life-sim systems, apartment work, city expansion or Admin Panel development.

`Unnamed Hunt RPG` is a temporary working label only.

## Current phase

The project is in **DESIGN / STRUCTURE / DOCUMENTATION**.

No gameplay code, engine project, scenes, APK or production assets are authorized yet.

The current task is to define the game correctly from basic player experience down to mechanics, code ownership, performance caps, testing and creator tooling before implementation starts.

## Mandatory read order — basic to detailed

1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `GAME_EXPERIENCE_BIBLE.md`
6. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
7. `NEW_GAME_MASTER_PLAN.md`
8. `MECHANICAL_SYSTEMS_GUIDE.md`
9. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
10. `CONTENT_DATA_GUIDE.md`
11. `CODE_GUIDE.md`
12. `PERFORMANCE_BUDGETS_AND_CAPS.md`
13. `ADMIN_CREATOR_SYSTEM.md`
14. `TESTING_VERIFICATION_PLAN.md`
15. `IMPLEMENTATION_ROADMAP.md`
16. `DEVELOPMENT_REFERENCE.md`
17. `EVOLVE_ALIGNMENT.md`
18. `NEW_GAME_DISCUSSION_CHECKLIST.md`
19. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` when its supporting detail is needed.

`DOCUMENTATION_INDEX.md` explains ownership and which file to read for each topic.

## Locked direction so far

### Visual/player experience
- grounded stylized wilderness/frontier monster-hunting fantasy;
- illustrated-world/dimensional-diorama overview philosophy, not literal paper/craft visuals;
- aerial exploration around a 40–50° downward target angle;
- stylized 3D player/major monsters for continuity;
- selective 2D/billboard/impostor detail for Android performance;
- first-person combat entered through a camera/world transition rather than an unrelated battle screen;
- restrained hunter-field-document UI;
- state-based music/audio structure.

### Gameplay
- physical region exploration;
- tracking/observation;
- tactical first-person turn-based combat;
- movement/cover/bearing/posture;
- targetable monster anatomy;
- wound/break/sever/destroy states;
- anatomy-dependent monster capability changes;
- condition-based harvesting;
- material-driven crafting/upgrades/research.

### Architecture
- one authoritative game state;
- presentation does not decide gameplay outcomes;
- content definitions separate from runtime instances;
- stable IDs;
- data-driven content;
- deterministic/replay-friendly domain rules where practical;
- new save lineage;
- bounded scalable systems;
- Admin/Creator tools use validated commands/schemas.

## Performance/bug rule

Anything that can grow expensive must have:
- a budget/cap;
- cleanup/unload behavior;
- development instrumentation;
- a way to isolate/disable it when practical;
- target-device verification before its cost is considered acceptable.

Do not sacrifice input, tactical readability, anatomy, telegraphs or simulation correctness before decorative effects/detail.

## Admin/Creator rule

The future development Admin system should make the game easier to build and debug through:
- state/performance inspectors;
- deterministic replay;
- typed test commands;
- creature/anatomy/attack editors;
- harvest simulator;
- encounter layout builder;
- region overlays;
- content validation/export.

It must not become a second hidden rules engine.

## Implementation sequence

The high-level dependency order is:

`DESIGN → ENGINE/PHONE PROBE → DOMAIN CORE → CONTENT VALIDATION → COMBAT CORE → COMBAT PRESENTATION → HARVEST → INVENTORY/CRAFTING → EXPLORATION DOMAIN → AERIAL PRESENTATION → COMPLETE VERTICAL LOOP → SAVE HARDENING → ADMIN/DEBUG → CREATOR TOOLS → PRODUCTION ART/AUDIO → SECOND-CONTENT PROOF → WORLD EXPANSION`

Read `IMPLEMENTATION_ROADMAP.md` for gates.

## Current exact next action

Continue design discussion and lock the remaining fundamentals, especially:
- world premise/history;
- creature ecology/origin;
- player/hunter role;
- technology/magic level;
- first hub;
- first region;
- first monster;
- first weapon;
- solo/party baseline;
- exact combat action economy;
- gore/harvesting depth;
- progression/failure rules;
- target Android device;
- engine.

Do not create gameplay source until the user explicitly says to begin.

## Status

DESIGN_RECORDED = YES
DOCUMENTATION_SYSTEM_RECORDED = YES
MECHANICS_DOCUMENTED = YES
CODE_STRUCTURE_PLANNED = YES
PERFORMANCE_CAPS_PLANNED = YES
ADMIN_CREATOR_SYSTEM_PLANNED = YES
TESTING_PLAN_RECORDED = YES
IMPLEMENTATION_ROADMAP_RECORDED = YES
GAMEPLAY_SOURCE_CREATED = NO
ENGINE_SELECTED = NO
IMPLEMENTATION_AUTHORIZED = NO
