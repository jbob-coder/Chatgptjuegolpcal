# Unnamed Hunt RPG — New Chat Continuation Prompt

Use the prompt below in a new ChatGPT conversation when continuing this project.

This file is a launcher. The live `START_HERE_NEW_CHAT.md` owns the full pre-work bootstrap procedure and must be read before implementation.

---

@GitHub

You are continuing active development of my Android game project.

Repository:
`jbob-coder/Chatgptjuegolpcal`

Active branch:
`worldlife-reference-docs`

Active game:
`Unnamed Hunt RPG`

WorldLife is abandoned as the active game. Do not resurrect or reuse old WorldLife gameplay architecture, saves, coordinates, NPC systems, or source unless the CURRENT repository explicitly preserves a specific item.

## FIRST ACTION — MANDATORY / DO NOT START IMPLEMENTATION YET

Before coding, designing, documenting, generating assets, changing balance, fixing bugs, or making implementation assumptions, reconstruct the REAL CURRENT PROJECT STATE from the live branch.

Do this in order:

1. Fetch the live HEAD of `worldlife-reference-docs` and record the exact SHA.
2. Read the CURRENT `EVOLVE_ALIGNMENT.md`.
3. Read the CURRENT `PROJECT_HANDOFF.md`.
4. Read the CURRENT `START_HERE_NEW_CHAT.md` and follow its complete bootstrap protocol.
5. Read `DOCUMENTATION_INDEX.md`.
6. Read root `README.md`.
7. Read `docs/README.md`.
8. Read `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.
9. Read the newest specialized `docs/70_handoff/` file relevant to the exact current bounded piece.
10. Read `game/README.md`.
11. Read the exact owning design contract/package README/source/data files for the bounded piece recorded by CURRENT EVOLVE.
12. Read its dedicated tests, static preflights, and relevant production workflow entries.
13. Inspect current GitHub Actions run/job/artifact evidence whenever a verification/build claim matters.
14. Re-fetch the branch HEAD after reconstruction. If it changed materially while reading, do not mix revisions; restart reconstruction from the new HEAD.

Do not use old chat memory, prior summaries, old APK names, copied prompts, or stale documentation snapshots as authority when newer repository/source/test/build/device evidence exists.

## CONTRADICTION / AUTHORITY RULE

If files disagree, identify and report the contradiction before implementation. Do not silently choose whichever statement is easier.

Use this precedence for the claim being evaluated:
1. current explicit user instruction;
2. current live source/tests/build/device evidence;
3. current `EVOLVE_ALIGNMENT.md` / `PROJECT_HANDOFF.md` and the narrow owning authority;
4. package/local documentation;
5. older handoffs, stale front doors, copied prompts, chat summaries, and memory.

A documentation-only branch HEAD can be newer than the last gameplay/build-verified source SHA. Keep those identities separate. Never call a documentation SHA gameplay/build verified unless the required workflow actually proved it.

If a lower-priority front door is stale, report it and reconcile it as documentation work rather than adopting the stale state.

## REQUIRED PRE-START RECONSTRUCTION REPORT

Before modifying any file, report:

`LIVE_REPOSITORY_HEAD:` current branch HEAD SHA
`LAST_VERIFIED_SOURCE_BASELINE:` last source SHA actually proven by required automated/build evidence
`CURRENT_OBJECTIVE:`
`CURRENT_VERIFIED_STATE:`
`LAST_VERIFIED_STATE:` workflow/job/artifact evidence where applicable
`EXACT_NEXT_BOUNDED_PIECE:` from CURRENT EVOLVE
`OWNING_FILES:`
`READINESS_GATE:`
`TESTS_AND_GATES:`
`BLOCKERS:`
`OPEN_QUESTIONS / UNKNOWNS:` only those that affect this piece
`FILES_EXPECTED_TO_CHANGE:`
`PROTECTED_BEHAVIOR / DO_NOT_CHANGE:`
`CONTRADICTIONS_FOUND:`

Do not begin implementation until this reconstruction is complete.

If I asked you to continue development and reconstruction finds no genuine blocker, proceed with the one bounded piece after giving this report. Do not stop only to ask for permission I already gave.

## MANDATORY EVOLVE LOOP

Follow the current EVOLVE contract exactly:

`READ LIVE STATE`
→ `VERIFY STATE`
→ `IDENTIFY EXACTLY ONE BOUNDED PIECE`
→ `READ OWNER + READINESS GATE`
→ `STATE THE EXACT PIECE`
→ `RESEARCH IF REQUIRED`
→ `IMPLEMENT OR DOCUMENT`
→ `TEST AT THE HIGHEST REQUIRED AVAILABLE LEVEL`
→ `INSPECT REGRESSIONS`
→ `FIX SAME-LAYER FAILURES`
→ `UPDATE OWNING DOCS/HANDOFF`
→ `SAVE/COMMIT`
→ `READ BACK THE SAVED RESULT`
→ `MARK EXACT VERIFICATION STATUS`
→ `SELECT EXACT NEXT PIECE`
→ `WRITE THAT NEXT PIECE INTO EVOLVE`
→ `STATE THE SAME NEXT ACTION IN CHAT`

Do not combine unrelated systems merely to move faster. Do not weaken legitimate tests/static gates to force green CI. Fix the root cause within the bounded layer.

Use normal fast-forward Git updates only. Never force-push project history.

## DOCUMENTATION IS PART OF COMPLETION

Do not leave durable project state only in chat.

For each completed bounded pass, update the smallest correct owning documentation and, when applicable:
- local package README/front door;
- `DOCUMENTATION_INDEX.md` when navigation changes;
- `PROJECT_HANDOFF.md`, `START_HERE_NEW_CHAT.md`, and `EVOLVE_ALIGNMENT.md` when current state or next action changes;
- a specialized `docs/70_handoff/` record when continuity would otherwise depend on chat history.

Commit the result and read it back from GitHub before claiming it is recorded.

The next action must not exist only in chat. It must also be recorded in CURRENT EVOLVE before the pass is considered closed.

## PROTECTED DEVELOPMENT PRINCIPLES

- Quality over speed.
- Evidence over confidence.
- Root cause over patch.
- Verified reality over assumption.
- Long-term coherence over short-term convenience.
- One bounded piece at a time.
- Preserve stable IDs, ownership boundaries, current world coordinates/dimensions, deterministic behavior, and protected controls unless their owning authority explicitly changes them.
- Stage-1 shooter-style controls remain protected unless current evidence explicitly supersedes them: direct continuous left-stick movement, independent right-side look, simultaneous move/look, no forced release/center/rebase logic, approximately `115°` first-person FOV, approximately `6.25 m/s` exploration speed.
- `probes/android_stage1/` is evidence/testing infrastructure only and must not silently become production architecture.
- Never claim Godot parse, headless test, Android APK build, phone runtime, visual quality, or performance verification unless that exact gate actually ran and passed.
- CI/headless/APK evidence is not phone/performance evidence.

## CURRENT ORIENTATION ONLY — RE-VERIFY LIVE BEFORE USING

At the time this launcher was reconciled, current authorities agreed that:
- production root is `game/`;
- the automated-build verified stack reaches `M01_TAIL_SWEEP`;
- last verified gameplay/source baseline is `80df7e0aef1b505ea3085f42af8c8710aa79c2a7`;
- final Tail Sweep workflow `34760296459` and job `103731848690` succeeded;
- artifact `10318643114` is `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,477,142 bytes, SHA-256 `98ddaecdb732a2af49c91d702fddce931ed40c9901b86f9f3c717988cfdf0542`;
- phone validation for newer production layers is deferred/batched;
- sustained performance is not verified;
- current recorded next bounded piece is `FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTATION`.

Those bullets are discovery/orientation only. A newer live repository state overrides them.

## CURRENT NEXT-PIECE REFERENCES — ONLY IF LIVE EVOLVE STILL SELECTS STAGGERED

Before implementing `FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTATION`, read:
- `docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
- `game/scripts/gameplay/combat/hunt01_status_application_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_status_timing_runtime.gd`;
- `game/tests/hunt01_status_application_runtime_test.gd`;
- `game/tests/hunt01_status_timing_runtime_test.gd`;
- `tests/quality/hunt01/hunt01_status_application_preflight.py`;
- `tests/quality/hunt01/hunt01_status_timing_preflight.py`;
- current Tail Sweep source/classifier/test only far enough to preserve the existing CLEAN → Staggered-pending boundary;
- `.github/workflows/production-hunt01-graybox-android.yml`.

The foundation piece must extend the existing generic status owners with one refreshable `status_staggered` instance and deterministic next-`TURN_START_PRE_RECOVERY` conversion to Off-Balance. Do not create a parallel status owner, hidden turn skip, new randomness, Tail Sweep Staggered producer wiring, structural sever thresholds, Bleeding periodic HP magnitude, or unresolved withdrawal/recovery behavior unless newer live authority explicitly changes the boundary.

## COMMUNICATION / PASS CLOSURE

Before work: give me the required pre-start reconstruction report.

After work, report:
- what changed;
- exact files changed;
- exact tests/build verification executed;
- what remains unverified;
- commit SHA;
- workflow/job/artifact evidence where applicable;
- blockers/unknowns;
- exact next action written into EVOLVE.

End each completed pass with exactly one of:

`NEXT THING I WILL DO: <one exact bounded action>`

or, if externally blocked:

`BLOCKER: <exact missing evidence/action>`
`NEXT THING I WILL DO AFTER THAT: <one exact bounded action>`

Start now by reconstructing the CURRENT live repository state. Do not begin implementation before the pre-start reconstruction report.
