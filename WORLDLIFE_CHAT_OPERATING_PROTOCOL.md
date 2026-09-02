# WorldLife RPG — Chat Operating Protocol

Status: active continuity/operating protocol for the WorldLife reboot.
Last reconciled: 2026-09-02.

## Purpose

Normal Chat must reconstruct WorldLife from durable evidence rather than conversation memory and must respect the current reboot discussion hold.

The old v0.5.8 source is frozen legacy history, not the active implementation base.

## Mandatory new-chat reconstruction

Read in this order:

1. `START_HERE_NEW_CHAT.md`
2. `REBOOT_STATUS.md`
3. `WORLDLIFE_REBOOT_MASTER_PLAN.md`
4. `WORLDLIFE_REBOOT_ARCHITECTURE_VISUAL_BIBLE.md`
5. `WORLDLIFE_REBOOT_DISCUSSION_CHECKLIST.md`
6. `WORLDLIFE_REBOOT_ENGINE_DECISION.md`
7. `README.md`
8. `WORLDLIFE_PROJECT_HANDOFF.md`
9. `WORLDLIFE_DEVELOPMENT_REFERENCE.md`
10. `WORLDLIFE_SYSTEMS_GUIDE.md`
11. `WORLDLIFE_EVOLVE_ALIGNMENT.md`
12. this file.

Inspect legacy v0.5.8 source/docs only when a historical, migration or deletion/cleanup question requires them.

## Authority by question type

### Reboot intent/design

1. Current explicit user instruction.
2. User-approved decisions recorded in reboot docs.
3. Reversible assumptions clearly labeled as assumptions.

### Future source/code facts

1. Verified clean reboot source/current working state once implementation begins.
2. Real tests/build evidence.
3. Current reboot documentation.
4. Legacy v0.5.8 only for historical facts.
5. Conversation memory last.

### Runtime behavior

1. Direct target-phone observation.
2. Runtime logs/screenshots/video.
3. Build/export/package evidence.
4. Source/static expectation.
5. Documentation summary.

## Current hard hold

Until the user explicitly ends the design discussion:

- do not create reboot gameplay source;
- do not start a new APK build;
- do not resume old v0.5.8 gameplay work;
- do not permanently delete legacy Drive/GitHub/APK/save history;
- do not lock the engine/package ID by assumption.

Allowed work during hold:

- discuss mechanics;
- refine design docs;
- research technical feasibility;
- compare engine/architecture options;
- record approved decisions;
- identify risks/unknowns.

## Required continuity fields

Maintain in `WORLDLIFE_PROJECT_HANDOFF.md`:

- `CURRENT_OBJECTIVE`
- `CURRENT_STATE`
- `LAST_VERIFIED_STATE`
- `COMPLETED_WORK`
- `IN_PROGRESS`
- `NEXT_ACTION`
- `BLOCKERS`
- `IMPORTANT_DECISIONS`
- `KNOWN_RISKS`
- `FILES_BRANCHES_THAT_MATTER`
- `TESTS_ALREADY_RUN`
- `APK_STATUS`
- `SOURCE_AUTHORITY`
- `ASSUMPTIONS`
- `UNKNOWNS`

## Status vocabulary

Use exact gates:

- `DESIGN_RECORDED`
- `IMPLEMENTED`
- `STATIC_VERIFIED`
- `COMPILED`
- `TESTED`
- `APK_BUILD_VERIFIED`
- `PHONE_RUNTIME_VERIFIED`
- `PRODUCTION_READY`

Current reboot state is design-only.

## Bounded-change loop after implementation is authorized

`READ STATE → VERIFY STATE → DEFINE ONE SMALL PIECE → INSPECT OWNERSHIP → IMPLEMENT → TEST → REGRESSION CHECK → UPDATE AFFECTED DOCS → SAVE/COMMIT → READ BACK → MARK STATUS → NEXT PIECE`

For destructive cleanup:

`ENUMERATE TARGETS → VERIFY IDENTITY → PRESERVE AGREED ARCHIVE/ROLLBACK → DELETE BOUNDED TARGETS → VERIFY POST-STATE → RECORD RESULT`

Never perform broad deletion from a vague label such as “all old files” without resolving exactly which frozen source, builds, branches, save data and signing artifacts the user intends to destroy.

## Reboot architecture rule

The new game uses one authoritative domain model shared by aerial exploration, first-person turn-based combat and harvesting.

Presentation requests actions and renders resolved events. It does not directly own:

- position/cover;
- AP/stamina;
- hit results;
- body-part integrity;
- break/sever/destroy;
- monster functional ability;
- harvest yield;
- inventory/progression.

## Engine/device protocol

Before engine lock-in:

1. identify exact target Android phone/GPU;
2. build the smallest rendering/input probe only after the user authorizes implementation;
3. test aerial hybrid scene;
4. test first-person creature close-up;
5. test touch/landscape;
6. test scene transition/suspend-resume;
7. measure enough performance/memory to reject a bad foundation early;
8. record evidence;
9. freeze engine/render contract.

Current candidate is Godot 4.7 Compatibility renderer; it is not yet an approved project fact.

## Documentation update matrix

- design direction → reboot master plan;
- architecture/visual ownership → architecture/visual bible;
- unresolved/approved decisions → discussion checklist + master plan;
- engine evidence/decision → engine decision file;
- current objective/state → start-here, README, handoff;
- execution rules → EVOLVE alignment + this protocol.

After every substantial documentation write, read back the target branch and check for contradictions.

## Graphify-style continuity

Useful relationships:

- `UserDirective → supersedes → LegacyActiveDesign`
- `LegacySnapshot → preserves → HistoricalEvidence`
- `RebootPlan → defines → IntendedGame`
- `DomainState → owns → CombatTruth`
- `BodyPartState → constrains → MonsterAttack`
- `BodyPartCondition → constrains → HarvestYield`
- `Test → verifies → DomainInvariant`
- `PhoneProbe → validates → EngineChoice`
- `Decision → resolves → OpenQuestion`
- `DiscussionHold → blocks → Implementation`

## Current exact next action

**Discuss and revise the reboot design.**

Do not code or delete legacy history until the user explicitly says the discussion is complete and directs the next execution step.
