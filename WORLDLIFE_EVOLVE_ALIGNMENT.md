# WorldLife RPG — EVOLVE Alignment

Status: active project-specific alignment for WorldLife v0.5.8.
Last reconciled: 2026-09-02.

## EVOLVE authority inspected

Base authority:
`EVOLVE — Personal AI Operating Constitution & Continuity — Expanded 2026-08-31.pdf`

2026-09-01 project documentation/creator-tooling addendum is also part of the active operating model.

The EVOLVE rules govern execution method, continuity discipline, verification language, documentation maintenance and creator-tooling development. They do not replace the checksum-verified WorldLife source archive as evidence of current source state.

## Reconciled authority model

Use authority according to the claim being made.

### Intended change
1. Current explicit user instruction.
2. Existing project decisions/constraints that have not been superseded.

### Source fact
1. Latest checksum-verified frozen Drive source/current rollback-safe working source derived from it.
2. Real source files/tests.
3. Current durable project documentation.
4. GitHub reference/history/build transport.
5. Conversation memory.

### Runtime fact
1. Direct observed phone/emulator evidence for the tested build.
2. Runtime logs/screenshots/video.
3. Build/package/signature evidence.
4. Source/static expectations.
5. Documentation/conversation summaries.

This prevents two common errors: treating a stale doc as stronger than current source, and treating a successful build as proof of phone behavior.

## How WorldLife implements EVOLVE

WorldLife uses:

- frozen checksum-verified Google Drive source snapshots as source authority;
- root/reference README as the front door;
- `START_HERE_NEW_CHAT.md` as the current runtime/build handoff;
- `WORLDLIFE_PROJECT_HANDOFF.md` as structured continuity state;
- `WORLDLIFE_DEVELOPMENT_REFERENCE.md` as architecture-safe development guidance;
- `WORLDLIFE_SYSTEMS_GUIDE.md` as system ownership/behavior map;
- `WORLDLIFE_CHAT_OPERATING_PROTOCOL.md` as the normal-Chat execution protocol;
- `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md` as the direct runtime evidence ledger;
- `MIRROR_POINTER.json` as machine-readable authority/build pointers;
- subsystem/goal docs inside the frozen source for deeper implementation truth.

## Mandatory continuity state

Substantial changes must keep the handoff fields current:

`CURRENT_OBJECTIVE`
`CURRENT_STATE`
`LAST_VERIFIED_STATE`
`COMPLETED_WORK`
`IN_PROGRESS`
`NEXT_ACTION`
`BLOCKERS`
`IMPORTANT_DECISIONS`
`KNOWN_RISKS`
`FILES_BRANCHES_THAT_MATTER`
`TESTS_ALREADY_RUN`
`APK_STATUS`
`SOURCE_AUTHORITY`
`ASSUMPTIONS`
`UNKNOWNS`

The purpose is reconstruction from durable evidence, not remembering a prior chat.

## Verification language

Use distinct gates:

- `IMPLEMENTED`
- `STATIC_VERIFIED`
- `COMPILED`
- `TESTED`
- `APK_BUILD_VERIFIED`
- `PHONE_RUNTIME_VERIFIED`
- `VISUAL_PARITY_VERIFIED`

A lower gate must not be silently promoted to a higher one.

## EVOLVE stale-document rule

If required documents disagree:

1. stop unrelated implementation;
2. identify exactly which claims conflict;
3. inspect higher-authority source/build/runtime evidence;
4. classify the stale record;
5. update all files in the mandatory read path whose truth is now wrong;
6. read back the saved state;
7. only then continue development.

This rule is active because the reference branch was found on 2026-09-02 with v0.5.7/v0.5.6-era handoff/development/systems/EVOLVE records alongside a current v0.5.8 `START_HERE_NEW_CHAT.md` and README. Those contradictions are being repaired rather than ignored.

## Frozen-source rule

WorldLife v0.5.8 in Drive is immutable history.

Reference documentation may be updated to record newer verified APK-build or phone-runtime evidence, but those documentation updates do not alter the frozen source archive or its SHA-256.

Any future source repair/feature must create a new rollback-safe source version derived from v0.5.8 plus bounded verified changes.

## Admin/creator-tooling alignment

WorldLife v0.5.8 keeps normal `GameAction` separate from `AdminCommand`.

Admin mutations are validated/repaired in `GameEngine` and persisted through the normal repository/DataStore path. The Admin Panel is intended to become the primary creator/debug/scenario-authoring interface, but advanced builders remain goals until source, validation, persistence and tests actually exist.

Expansion principle:

`stable validated command/content model → engine authority → persistence/repair → tests → creator UI → import/export/versioning`

Do not start with UI-only builders that mutate transient Compose state.

## Current build reconciliation

Older frozen v0.5.8 source documentation correctly recorded that Android compilation had not yet run at freeze time.

Later verified evidence supersedes that build-status limitation without changing the frozen source:

- GitHub Actions branch: `worldlife-v058-apk-test`
- commit: `5726bab2d671e1af1260e5c524a5feb775c72abf`
- run: `33596655227`
- conclusion: `success`
- `:game-core:test`: PASS
- `:app:assembleDebug`: PASS
- APK integrity/signature/package/version gates: PASS
- permanent Drive APK/checksum: present and checksum-matched.

Therefore `APK_BUILD_VERIFIED = YES` for the functional test build.

`PHONE_RUNTIME_VERIFIED = NO` until the user installs/tests it.

`VISUAL_PARITY_VERIFIED = NO` because the GitHub test build may contain fallback PNGs for visuals absent from build transport.

## Current anti-stagnation rule

Do not continue expanding Admin tooling, interiors, world scale or visual systems simply because build verification succeeded.

The current highest-value uncertainty is real phone behavior. Resolve that uncertainty first.

## Current bounded milestone

**Phone runtime validation of the successful v0.5.8 functional test APK.**

Record observations in `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md`, classify confirmed defects, and repair the highest-severity root cause first.

After runtime stabilization, resume engine-authoritative apartment free-roam/collision, then locomotion/interaction presentation, visual-parity work and later streamed-sector expansion.
