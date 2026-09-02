# WorldLife RPG — EVOLVE Alignment

Status: active alignment for the WorldLife full reboot design.
Last reconciled: 2026-09-02.

## EVOLVE authority inspected

Current authority inspected for this reboot:

- `EVOLVE — Personal AI Operating Constitution & Continuity — Updated 2026-09-01.pdf`;
- WorldLife Drive `DOCUMENTATION_INDEX.md`;
- WorldLife Drive `EDITING_GUIDE.md`;
- current user reboot directive;
- current GitHub reference state.

EVOLVE governs execution method, continuity, rollback, evidence language, documentation and architecture discipline. It does not force retention of superseded gameplay design.

## Reboot authority model

### Intended design

1. Current explicit user instruction.
2. User-approved reboot decisions recorded in reboot docs.
3. Reversible planning assumptions clearly labeled as such.

### Future source fact

1. Clean reboot source/current verified working state once implementation begins.
2. Real tests/build/runtime evidence.
3. Reboot documentation.
4. Legacy v0.5.8 only when answering historical/cleanup questions.

### Runtime fact

1. Direct target-phone evidence.
2. Runtime logs/screenshots/video.
3. Build/package/export evidence.
4. Source/static expectations.
5. Documentation summaries.

## EVOLVE rules applied to the reboot

### Anti-drift

Do not resume old v0.5.8 life-simulation, city expansion, apartment or Admin Panel work merely because it already exists. The current objective is the new hunting RPG design.

### Conflict detection

The current user directive supersedes the old active gameplay direction.

Legacy documents that described phone stabilization as the next milestone are stale for current project direction and must point to the reboot discussion instead.

### Small-safe-change / reversibility

The user requested deletion of the old game, but also required planning and discussion before creation.

Permanent destructive cleanup is therefore staged:

1. preserve frozen legacy state and rollback;
2. record new design;
3. discuss exact deletion/archive scope;
4. receive explicit post-discussion execution approval;
5. delete only intended targets;
6. verify post-state.

Never destroy valuable state merely because it seems reconstructible.

### No busywork

Reboot documents are limited to concrete roles:

- master design/system plan;
- architecture/visual contract;
- decision checklist;
- engine decision gate;
- handoff/status.

Do not create additional process layers unless implementation needs them.

### Future-proofing

The new project should begin with:

- stable IDs;
- explicit schemas;
- one source of truth for combat/exploration/harvest state;
- deterministic/reproducible combat behavior where practical;
- validation;
- automated tests;
- recoverable saves;
- provenance for generated/imported content;
- modular data-driven monster/anatomy definitions;
- clear lifecycle and ownership.

### Long-horizon check

NOW:
- prove the unique hunt/combat/harvest loop.

NEXT:
- integrate aerial exploration, crafting and progression without duplicating combat authority.

LATER:
- scale monsters, regions, quests, NPCs and creator tools through data definitions rather than hard-coded special cases.

Avoid building a huge world before the hunt loop is proven.

## Verification language

Continue to distinguish:

- `DESIGN_RECORDED`
- `IMPLEMENTED`
- `STATIC_VERIFIED`
- `COMPILED`
- `TESTED`
- `APK_BUILD_VERIFIED`
- `PHONE_RUNTIME_VERIFIED`
- `PRODUCTION_READY`

Current reboot status:

- `DESIGN_RECORDED = YES`
- `IMPLEMENTED = NO`
- `TESTED = NO`
- `APK_BUILD_VERIFIED = NO`
- `PHONE_RUNTIME_VERIFIED = NO`

## Domain/presentation rule

The reboot retains one critical architecture principle from prior WorldLife work:

**presentation is not a second game engine.**

Aerial exploration and first-person combat request authoritative domain actions. Domain rules decide:

- position;
- cover;
- turn/AP/stamina legality;
- hit/miss;
- body-part damage;
- break/sever/destroy;
- monster functional ability;
- harvest quantity/quality;
- inventory/progression.

Animation/UI/camera render those results.

## Engine selection rule

Do not select an engine because it is familiar or theoretically capable.

Current candidate: Godot 4.7 Compatibility renderer.

Before freezing it:

- identify target Android phone/GPU;
- run a minimal aerial + first-person + UI probe;
- verify touch/landscape/suspend-resume;
- observe performance/memory;
- compare against alternatives if evidence is weak.

## Current bounded milestone

**Design discussion and approval.**

Do not create reboot gameplay source or permanently delete legacy history until the user explicitly ends this hold.
