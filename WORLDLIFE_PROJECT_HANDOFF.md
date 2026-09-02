# WorldLife RPG — Project Handoff / Reboot Continuity Record

Last reconciled: 2026-09-02.
Status: `FULL REBOOT / DESIGN DISCUSSION HOLD`.

## CURRENT_OBJECTIVE

Discuss, refine and approve the new WorldLife reboot design before new gameplay implementation.

The reboot direction is:

- aerial/top-down angled 2D/3D hybrid exploration;
- first-person turn-based combat;
- tactical movement/cover/posture decisions;
- explicit body-part targeting;
- break/sever/destroy anatomy;
- monster behavior altered by anatomy damage;
- condition/mass-based harvesting;
- materials feeding crafting/progression.

## CURRENT_STATE

- Reboot master design: recorded.
- Architecture/visual bible: recorded.
- Discussion checklist: recorded.
- Engine decision gate: recorded.
- Reboot code: **not created**.
- Engine: **not selected**.
- New package ID: **not selected**.
- New save schema: planned as new lineage, not implemented.
- Old active WorldLife implementation: approved for removal from the active project area.
- Same GitHub/Google Drive project area: approved for reuse by the reboot.
- Rollback: one non-active archive may remain outside the active work path; legacy code must not remain mixed into the reboot.

## LAST_VERIFIED_STATE

Documentation state was reconstructed from:

- current `worldlife-reference-docs` branch;
- Drive v0.5.8 documentation index/editing guide;
- updated EVOLVE 2026-09-01 authority;
- prior world art/architecture guidance only for reusable engineering principles;
- current user reboot directive and cleanup correction.

Relevant EVOLVE rules applied:

- current explicit instruction supersedes old active design;
- detect and repair stale mandatory handoff documents;
- preserve a bounded rollback path around destructive operations;
- prefer bounded/reversible changes;
- separate domain authority from presentation;
- distinguish design/implemented/tested/runtime states.

## COMPLETED_WORK

- old v0.5.8 life-sim direction marked superseded;
- comprehensive reboot action/system list recorded;
- body-part break/sever/destroy model planned;
- condition-based harvest model planned;
- exploration/combat mode split planned;
- domain-first architecture planned;
- visual direction planned;
- Android performance/device-proof rule planned;
- engine candidates evaluated at planning level;
- first vertical slice scope planned;
- active-area cleanup and reuse decision recorded;
- mandatory new-chat/readme/handoff path redirected to reboot planning.

## IN_PROGRESS

Discussion only.

No gameplay implementation is authorized yet.

## NEXT_ACTION

Discuss the design with the user using:

1. `WORLDLIFE_REBOOT_MASTER_PLAN.md`
2. `WORLDLIFE_REBOOT_ARCHITECTURE_VISUAL_BIBLE.md`
3. `WORLDLIFE_REBOOT_DISCUSSION_CHECKLIST.md`
4. `WORLDLIFE_REBOOT_ENGINE_DECISION.md`

Resolve highest-impact decisions first:

- setting/tone;
- exact aerial presentation;
- engine/device target;
- combat action economy;
- tactical spatial model;
- launch weapon families;
- harvesting depth;
- progression style;
- package/signing choice;
- whether old phone save/package is erased;
- whether any old assets are intentionally salvaged.

## BLOCKERS

Intentional blocker: the user required discussion before creation.

No reboot source should be created until this hold is explicitly lifted.

## IMPORTANT_DECISIONS

### Confirmed

- full gameplay reboot;
- remove old active WorldLife implementation from the active project area;
- reuse the same GitHub/Drive project area for the new game;
- old gameplay code is not the reboot base;
- exploration becomes aerial 2D/3D hybrid;
- combat becomes first-person turn-based;
- tactical lateral movement/cover/targeted attacks are core;
- monster anatomy supports break/cut/sever outcomes;
- harvest quantity depends on surviving usable body-part material/condition;
- design is recorded before implementation;
- discussion occurs before creation.

### Planning recommendations, not approved canon

- domain-first architecture;
- tactical nodes/range bands instead of unrestricted real-time first-person movement;
- AP + reaction resource as preferred first combat economy;
- Godot 4.7 Compatibility renderer as current engine candidate;
- one-monster vertical slice before world/content expansion.

## KNOWN_RISKS

- leaving old source in the active work area could contaminate the new architecture;
- deleting all rollback evidence before the reboot is stable would make recovery harder;
- selecting an engine before testing the actual Android phone could repeat prior compatibility problems;
- building visuals before domain combat exists could create a hidden rules engine in presentation code;
- overly detailed anatomy can become content-authoring debt;
- random loot divorced from anatomy would undermine the reboot's core identity;
- unrestricted 3D world scope could overload an older Android device.

## FILES_BRANCHES_THAT_MATTER

Active reference branch:
- `worldlife-reference-docs`

Rollback branch before reboot docs:
- `worldlife-reference-docs-pre-reboot-plan`

Reboot docs:
- `START_HERE_NEW_CHAT.md`
- `START_HERE_REBOOT.md`
- `REBOOT_STATUS.md`
- `README.md`
- `WORLDLIFE_REBOOT_MASTER_PLAN.md`
- `WORLDLIFE_REBOOT_ARCHITECTURE_VISUAL_BIBLE.md`
- `WORLDLIFE_REBOOT_DISCUSSION_CHECKLIST.md`
- `WORLDLIFE_REBOOT_ENGINE_DECISION.md`
- `WORLDLIFE_PROJECT_HANDOFF.md`
- `WORLDLIFE_DEVELOPMENT_REFERENCE.md`
- `WORLDLIFE_SYSTEMS_GUIDE.md`
- `WORLDLIFE_EVOLVE_ALIGNMENT.md`

## TESTS_ALREADY_RUN

Reboot gameplay tests: none, because reboot gameplay code does not exist.

Do not call planning/documentation reads code/runtime tests.

## APK_STATUS

There is no reboot APK.

`REBOOT_APK_BUILD_VERIFIED = NO`.

`REBOOT_PHONE_RUNTIME_VERIFIED = NO`.

## SOURCE_AUTHORITY

For the reboot:

1. current explicit user directive;
2. approved reboot design docs;
3. future clean reboot source/tests after implementation begins;
4. EVOLVE execution/verification rules;
5. legacy archive only for rollback/history, not active gameplay architecture.

## ASSUMPTIONS

- `2d/d3` is interpreted as a 2D/3D hybrid / 2.5D aerial exploration presentation.
- the game remains Android-first unless changed in discussion.

## UNKNOWNS

- final game name/branding;
- setting/tone;
- engine;
- exact target phone/GPU/minimum Android;
- action economy;
- position model;
- weapon roster;
- player limb injuries;
- party/companions;
- persistent wounded monsters;
- harvest interaction depth;
- progression structure;
- art/gore direction;
- package/signing lineage;
- whether old phone save/package is erased;
- whether any old assets are intentionally reused.
