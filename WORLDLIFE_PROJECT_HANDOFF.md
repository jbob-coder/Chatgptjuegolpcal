# WorldLife RPG — Project Handoff / Reboot Continuity Record

Last reconciled: 2026-09-02.
Status: `FULL REBOOT / DESIGN DISCUSSION HOLD`.

## CURRENT_OBJECTIVE

Discuss, refine and approve the new WorldLife reboot design before any new gameplay implementation or destructive legacy cleanup.

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
- Reboot code: **not created**.
- Engine: **not selected**.
- New package ID: **not selected**.
- New save schema: planned as new lineage, not implemented.
- Legacy v0.5.8 source: preserved as frozen history, not active base.
- Legacy deletion: requested by user but intentionally staged until the required design discussion resolves exactly what should be permanently removed.

## LAST_VERIFIED_STATE

Documentation state was reconstructed from:

- current `worldlife-reference-docs` branch;
- Drive v0.5.8 documentation index/editing guide;
- updated EVOLVE 2026-09-01 authority;
- prior world art/architecture guidance only for reusable engineering principles;
- current user reboot directive.

Relevant EVOLVE rules applied:

- current explicit instruction supersedes old active design;
- detect and repair stale mandatory handoff documents;
- preserve rollback before destructive operations;
- do not destroy valuable state merely because reconstruction appears possible;
- prefer bounded/reversible changes;
- do not create architecture/process artifacts without concrete purpose;
- separate source/domain authority from presentation;
- distinguish design/implemented/tested/verified states.

## COMPLETED_WORK

- old v0.5.8 life-sim direction marked superseded as active project direction;
- comprehensive reboot system/action list recorded;
- body-part break/sever/destroy model planned;
- condition-based harvest model planned;
- exploration/combat mode split planned;
- domain-first architecture planned;
- visual direction planned;
- Android performance/device-proof rule planned;
- engine candidates evaluated at planning level;
- first vertical slice scope planned;
- open design decisions recorded in checklist;
- mandatory README/start-here path is being reconciled to prevent old-work drift.

## IN_PROGRESS

Discussion only.

No gameplay implementation is authorized yet.

## NEXT_ACTION

Discuss the design with the user using:

1. `WORLDLIFE_REBOOT_MASTER_PLAN.md`
2. `WORLDLIFE_REBOOT_ARCHITECTURE_VISUAL_BIBLE.md`
3. `WORLDLIFE_REBOOT_DISCUSSION_CHECKLIST.md`

Resolve the highest-impact decisions first:

- setting/tone;
- exact aerial presentation;
- engine/device target;
- combat action economy;
- tactical spatial model;
- launch weapon families;
- harvesting depth;
- progression style;
- what old WorldLife systems, if any, survive;
- exact legacy deletion/archive scope.

## BLOCKERS

Intentional blocker: user required discussion before creation.

No reboot source should be created until this hold is explicitly lifted.

Destructive cleanup is also blocked until the user resolves which legacy assets/history/saves should be permanently deleted.

## IMPORTANT_DECISIONS

### Confirmed by current directive

- full gameplay reboot;
- old third-person life-sim design is superseded;
- exploration becomes aerial 2D/3D hybrid;
- combat becomes first-person turn-based;
- player can choose tactical behavior such as lateral movement, cover and targeted attacks;
- monster anatomy supports break/cut/sever outcomes;
- harvest quantity depends on usable remaining body-part material/condition;
- design must be recorded before implementation;
- discussion occurs before creation.

### Planning recommendations, not approved canon

- domain-first architecture;
- tactical nodes/range bands instead of unrestricted real-time first-person movement;
- AP + reaction resource as preferred first combat economy;
- Godot 4.7 Compatibility renderer as current engine candidate for target-phone testing;
- one-monster vertical slice before world/content expansion.

## KNOWN_RISKS

- deleting legacy Drive/GitHub history immediately would remove rollback and evidence before the reboot specification is settled;
- carrying old life-sim code into the reboot could create architectural contamination and unnecessary compatibility constraints;
- selecting an engine before testing the real Android phone could repeat the prior runtime-compatibility failure pattern;
- making first-person combat visually impressive before domain combat exists could create a hidden second game engine in presentation code;
- over-detailed anatomy can become balance/content-authoring debt if the first monster is not kept bounded;
- random loot divorced from anatomy would undermine the reboot's core identity;
- unrestricted 3D exploration scope could overload an older Android device before the hunt loop is proven.

## FILES_BRANCHES_THAT_MATTER

Active reference branch:
- `worldlife-reference-docs`

Reboot docs:
- `START_HERE_NEW_CHAT.md`
- `START_HERE_REBOOT.md`
- `REBOOT_STATUS.md`
- `README.md`
- `WORLDLIFE_REBOOT_MASTER_PLAN.md`
- `WORLDLIFE_REBOOT_ARCHITECTURE_VISUAL_BIBLE.md`
- `WORLDLIFE_REBOOT_DISCUSSION_CHECKLIST.md`
- `WORLDLIFE_PROJECT_HANDOFF.md`
- `WORLDLIFE_DEVELOPMENT_REFERENCE.md`
- `WORLDLIFE_SYSTEMS_GUIDE.md`
- `WORLDLIFE_EVOLVE_ALIGNMENT.md`

Legacy frozen history:
- Drive v0.5.8 folder: `https://drive.google.com/drive/folders/1WABizspRFJxOURbTpqbPdIAda2Uv00Qp`
- SHA-256: `478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822`

## TESTS_ALREADY_RUN

Reboot gameplay tests: none, because reboot gameplay code does not exist.

Planning verification performed:

- mandatory current docs inspected;
- Drive `DOCUMENTATION_INDEX.md` inspected;
- Drive `EDITING_GUIDE.md` inspected;
- updated EVOLVE PDF located and relevant rollback/anti-drift/authority/verification rules reviewed;
- current Godot 4.7 Android/Compatibility documentation checked for engine-candidate feasibility.

Do not call these code/runtime tests.

## APK_STATUS

Legacy APK status is historical only and no longer the active development milestone.

There is no reboot APK.

`REBOOT_APK_BUILD_VERIFIED = NO`.

`REBOOT_PHONE_RUNTIME_VERIFIED = NO`.

## SOURCE_AUTHORITY

For the reboot design:

1. current explicit user directive;
2. approved reboot design docs once decisions are confirmed;
3. future clean reboot source/tests after implementation begins;
4. EVOLVE execution/verification rules;
5. legacy v0.5.8 only as historical evidence, not as active gameplay architecture.

## ASSUMPTIONS

- `2d/d3` is interpreted as a 2D/3D hybrid / 2.5D aerial exploration presentation.
- the game remains Android-first unless the user changes platform scope.
- old life-sim systems are not automatically retained.

These are safe planning assumptions and remain editable during discussion.

## UNKNOWNS

- final setting/name/tone;
- final engine;
- exact target phone/GPU/minimum Android;
- exact combat action economy;
- exact position model;
- weapon roster;
- player limb injuries;
- party/companions;
- persistence of wounded monsters;
- harvest interaction depth;
- progression structure;
- final art/gore direction;
- final package/signing strategy;
- which legacy Drive/GitHub/APK/save artifacts should be permanently deleted.
