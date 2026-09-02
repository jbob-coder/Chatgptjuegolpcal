# WorldLife RPG — Chat Operating Protocol

Status: active continuity/operating protocol for normal Chat development.
Last reconciled: 2026-09-02.
Current frozen source: `0.5.8`.

## Purpose

This file defines how normal Chat should work on WorldLife with GitHub, Google Drive, Markdown reference files, and explicitly authorized GitHub Actions. It exists to preserve most of the discipline of a persistent development workspace without treating chat memory as project state.

The frozen source archive remains authoritative for source facts. This protocol changes workflow/documentation only; it does not mutate frozen v0.5.8.

## Authority by question type

Do not use one flat authority list for every question.

### Source/code facts
1. Current explicit user instruction for intended changes.
2. Latest checksum-verified frozen Drive source/current rollback-safe working version derived from it.
3. Verified source files and tests.
4. Current durable project documentation.
5. GitHub reference/history/build transport.
6. Chat memory or summaries.

### Runtime behavior
1. Direct observed phone/emulator evidence for the tested build.
2. Reproducible runtime logs/screenshots/video.
3. Build/package/signature evidence.
4. Source/static expectations.
5. Documentation and chat summaries.

A successful compile does not prove phone behavior. A phone symptom does not prove the source root cause until the code path is inspected.

## Mandatory new-chat reconstruction

Read in this order before consequential work:

1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `WORLDLIFE_PROJECT_HANDOFF.md`
4. `WORLDLIFE_DEVELOPMENT_REFERENCE.md`
5. `WORLDLIFE_SYSTEMS_GUIDE.md`
6. `WORLDLIFE_EVOLVE_ALIGNMENT.md`
7. `WORLDLIFE_CHAT_OPERATING_PROTOCOL.md`
8. `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md` when runtime testing is active.
9. Inspect Drive authority/source artifacts when a source fact matters.
10. Inspect the relevant real source/tests before implementation.
11. For build changes, inspect the successful workflow/run before editing build infrastructure.

If required documents conflict, stop implementation, classify the conflict, resolve it from higher-authority evidence, and repair the stale continuity files before unrelated work.

## Required working state

Maintain these fields in `WORLDLIFE_PROJECT_HANDOFF.md` whenever substantial truth changes:

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

Use status gates precisely:

- `IMPLEMENTED` — source/change exists.
- `STATIC_VERIFIED` — structural/static checks passed.
- `COMPILED` — relevant compiler/build step actually succeeded.
- `TESTED` — stated tests actually executed and passed.
- `APK_BUILD_VERIFIED` — APK build, ZIP integrity, signing, package/version gates passed.
- `PHONE_RUNTIME_VERIFIED` — behavior was actually observed on the target phone/runtime.
- `VISUAL_PARITY_VERIFIED` — the build uses the authoritative intended visual assets and visual quality was checked.

Never collapse these into one generic “verified” claim.

## Bounded-change loop

Use this loop for every meaningful piece:

`READ STATE → VERIFY STATE → DEFINE ONE SMALL PIECE → INSPECT OWNERSHIP → IMPLEMENT → TEST → REGRESSION CHECK → UPDATE AFFECTED DOCS → SAVE/COMMIT → READ BACK → MARK STATUS → SELECT NEXT PIECE`

Before editing, record or determine:

- exact objective;
- files expected to change;
- authority owner (`GameEngine`, state model, renderer, persistence, docs, etc.);
- save/backward-compatibility risk;
- expected verification gates;
- rollback point.

Do not combine unrelated systems simply because they are nearby.

## Chat tool routing

- GitHub connector: readable reference/history, branch/file inspection, bounded documentation/source changes when the target branch is appropriate, commit/readback verification.
- Google Drive connector: frozen source authority, checksums, permanent APK/source artifacts, authoritative selected documents.
- GitHub Actions: Android build/test execution only when needed and authorized. Reuse the already successful SHA-gated pattern instead of rebuilding blindly.
- Conversation memory: navigation aid only.

Normal Chat must not pretend it has a persistent local working tree or terminal when it does not. When execution is needed, use an available verified execution path or record the gate as unexecuted.

## Frozen-source rule

`WorldLife RPG v0.5.8` in Drive is immutable history.

Do not edit that frozen folder/archive in place. Any source fix or gameplay change after runtime evidence must produce a new rollback-safe source version derived from v0.5.8 plus bounded verified changes.

Reference documentation may advance to record later build/runtime evidence while explicitly stating that the frozen source version remains v0.5.8.

## Documentation update matrix

Update only files whose truth changed, but never leave a known contradiction in the required read path.

- Current version/build/runtime/next action → `START_HERE_NEW_CHAT.md`, `README.md`, `WORLDLIFE_PROJECT_HANDOFF.md`.
- Architecture/ownership/edit path → `WORLDLIFE_DEVELOPMENT_REFERENCE.md`, `WORLDLIFE_SYSTEMS_GUIDE.md`.
- Execution/continuity protocol → `WORLDLIFE_EVOLVE_ALIGNMENT.md`, this file.
- Authority/artifact pointers → `MIRROR_POINTER.json`.
- Phone observations/bugs → `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md` and handoff.
- Major scope/goal change → relevant goal/system documentation in the next source version.

After writes, fetch/read back the changed files from the target branch and verify branch HEAD/diff.

## Runtime defect protocol

For phone testing:

1. Record observed behavior before changing code.
2. Attach screenshot/video/error text when available.
3. Classify severity: `BLOCKER`, `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`.
4. Separate symptom from suspected cause.
5. Reproduce/inspect the relevant source path.
6. Fix the highest-severity root cause first.
7. Build only after a bounded source change warrants it.
8. Re-test the exact failing case plus regression-critical adjacent behavior.

## Graphify-style continuity

Treat durable project records as a graph, not a prose diary. Useful edges include:

- `SourceSnapshot → authorizes → SourceFacts`
- `GameEngine → owns → GameplayMutation`
- `AdminCommand → mutates_via → GameEngine`
- `Test → verifies → Behavior`
- `APKBuild → built_from → SourceOverlay`
- `PhoneObservation → verifies_or_refutes → RuntimeExpectation`
- `Bug → caused_by → RootCause`
- `Decision → constrains → FutureChange`
- `Document → describes → CurrentState`

When a decision or state is superseded, update the durable referent instead of relying on a later chat message to cancel an older one.

## Current application

Current bounded milestone is phone runtime validation of `WorldLifeRPG-v0.5.8-GitHub-test.apk` from GitHub Actions run `33596655227` and the permanent Drive copy.

Do not start v0.5.9 gameplay expansion until runtime evidence is captured and blocker/critical defects are resolved or explicitly accepted.
