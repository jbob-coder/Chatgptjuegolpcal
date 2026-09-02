# Unnamed Hunt RPG — Project Handoff

Status: DESIGN SYSTEM / PLANNING ONLY / NO GAMEPLAY CODE AUTHORIZED
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE

Define the new game from player-facing experience down through mechanics, architecture, code ownership, data authoring, performance caps, testing, Admin/Creator tooling and implementation order before gameplay source is created.

## CURRENT_STATE

This is a new game replacing WorldLife in the same repository/project area. WorldLife is not the design base.

No new-game gameplay code, engine project, scenes, APK or runtime implementation has been created.

The project now has a layered documentation system that proceeds from basic player experience to detailed implementation structure.

## VERIFIED_DESIGN_STATE

### Player-facing identity
- grounded stylized wilderness/frontier monster-hunting fantasy;
- visual identity: **an illustrated hunting world brought to life**;
- dimensional aerial overview philosophy without literal paper/craft visuals;
- current exploration camera target roughly 40–50° downward;
- stylized 3D player/major monsters preferred for aerial→first-person continuity;
- selective 2D/billboard/impostor detail allowed for Android efficiency.

### Core loop
`PREPARE → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → SURVIVE → HARVEST → CRAFT/UPGRADE/RESEARCH → HUNT HARDER PREY`

### Combat
- first-person turn-based tactical combat;
- spatial movement/repositioning, cover and bearing matter;
- body-part targeting is authoritative;
- damage can wound/break/sever/destroy parts;
- anatomy changes monster capabilities/AI options;
- current action-economy candidate: AP + stamina + limited reaction resource, final exact rules open.

### Harvest
- yield derives from real anatomy capacity and condition;
- unique structures cannot generate impossible duplicates;
- damage method/condition/tool/method/skill may affect recovery;
- harvest result should explain major losses/bonuses.

### Architecture
- one authoritative state;
- presentation requests actions and renders state/events;
- immutable content definitions separated from mutable runtime instances;
- exploration→combat→world/harvest transfers preserve monster identity and injury state;
- stable IDs from the beginning;
- data-driven content where practical;
- new save lineage when implemented.

### Player experience
- launch/title/intro/hub/first hunt flow planned;
- tutorial should teach the complete loop through play;
- music/audio state structure planned;
- exploration/combat HUD philosophy planned;
- bestiary/harvest/crafting presentation planned;
- accessibility/usability considerations planned.

### Performance
- performance is treated as a feature;
- scalable systems require caps/budgets;
- simulation/render update tiers planned;
- performance degradation removes decoration before tactical readability;
- expensive subsystems should be independently disable-able in development for root-cause isolation;
- final numerical caps remain runtime evidence, not assumptions.

### Admin/Creator
- read-only state/anatomy/combat/performance inspectors planned;
- typed admin test mutations planned;
- creature/anatomy/attack/harvest/encounter creator tools planned;
- deterministic replay/save inspection planned;
- creator tools must use validated schemas/domain paths rather than transient UI mutations.

## DOCUMENTATION SYSTEM

Current active planning files:
- `README.md` — project front door;
- `START_HERE_NEW_CHAT.md` — current gate/read order;
- `PROJECT_HANDOFF.md` — this continuity state;
- `DOCUMENTATION_INDEX.md` — complete document map;
- `GAME_EXPERIENCE_BIBLE.md` — intro, music, pacing, scale and player experience;
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md` — visual/world/camera behavior;
- `NEW_GAME_MASTER_PLAN.md` — full gameplay intent;
- `MECHANICAL_SYSTEMS_GUIDE.md` — mechanics/state interaction;
- `SYSTEM_ARCHITECTURE_BLUEPRINT.md` — subsystem architecture/data flow;
- `CONTENT_DATA_GUIDE.md` — stable content/data schemas;
- `CODE_GUIDE.md` — code ownership, debugging and improvement rules;
- `PERFORMANCE_BUDGETS_AND_CAPS.md` — performance hierarchy/caps/isolation;
- `ADMIN_CREATOR_SYSTEM.md` — creator/debug/admin design;
- `TESTING_VERIFICATION_PLAN.md` — tests/runtime/quality gates;
- `IMPLEMENTATION_ROADMAP.md` — staged build order;
- `DEVELOPMENT_REFERENCE.md` — development discipline;
- `EVOLVE_ALIGNMENT.md` — continuity/verification rules;
- `NEW_GAME_DISCUSSION_CHECKLIST.md` — unresolved design decisions;
- `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` — supporting earlier architecture/visual plan.

## COMPLETED_PLANNING

- project README/front door expanded from basic game identity to technical structure;
- documentation index created and ordered from basic→detailed;
- game experience/intro/music/world scale guide created;
- visual/world behavior bible created;
- comprehensive mechanical guide created;
- system architecture blueprint created;
- content/data authoring guide created;
- code guide created;
- performance budget/cap and bug-isolation plan created;
- Admin/Creator system planned;
- testing/verification plan created;
- dependency-driven implementation roadmap created;
- first vertical-slice limits/gates recorded.

## IN_PROGRESS

Design discussion and refinement only.

## NEXT_ACTION

Continue discussion from the highest-value unresolved fundamentals before implementation:
1. world premise/history;
2. creature origin/ecology;
3. hunter/player role;
4. technology/magic level;
5. first settlement/hub;
6. first hunting region;
7. first monster;
8. first weapon family;
9. solo/party baseline;
10. exact combat action economy and pacing;
11. gore intensity;
12. harvest interaction depth;
13. progression/failure structure;
14. target Android device and engine decision.

Do not implement gameplay until the user explicitly authorizes it.

## BLOCKERS / OPEN DECISIONS

- final name;
- setting/history/time period;
- magic/technology model;
- creature ecology/origin;
- player identity;
- first hub/region/monster/weapon;
- solo/party;
- exact AP/turn rules;
- exact camera projection;
- exact gore intensity;
- harvesting interaction depth;
- crafting/progression/campaign depth;
- death/failure rules;
- engine;
- Android minimum/performance target.

## IMPORTANT ENGINEERING DECISIONS

- new game does not inherit WorldLife gameplay source architecture by default;
- same repository/project area is reused;
- domain authority is separate from presentation;
- content definitions are separate from runtime instances;
- combat must be testable without final rendering;
- every scalable subsystem gets a bounded cost/cap;
- admin/debug tooling must aid root-cause isolation;
- creator tools follow stable validated data schemas;
- no feature is complete because a UI control exists;
- first complete hunt loop is proven before broad expansion.

## RISKS

- overbuilding anatomy simulation before combat is fun;
- first-person combat becoming a static menu;
- harvesting becoming repetitive busywork;
- world scale becoming empty rather than dense/meaningful;
- 2D/3D art mismatch;
- too many targetable parts for phone UI;
- unbounded AI/VFX/assets slowing older phones;
- Admin system mutating state outside normal validation;
- creator tool development overtaking actual game development;
- engine selection before target-device evidence.

## TESTS_RUN

None. No implementation exists.

## STATUS GATES

DESIGN_RECORDED = YES
DOCUMENTATION_SYSTEM_RECORDED = YES
PLAYER_EXPERIENCE_GUIDE = YES
MECHANICAL_SYSTEMS_GUIDE = YES
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
