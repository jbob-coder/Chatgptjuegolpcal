# START HERE — Unnamed Hunt RPG — New Chat Bootstrap

Status: ACTIVE NEW-CHAT BOOTSTRAP / HUNT-01 THROUGH TAIL SWEEP CLEAN→STAGGERED ANDROID BUILD VERIFIED / BASIC RUNTIME AUTORUN NEXT
Last reconciled: 2026-09-13

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and must not be used as the implementation base.

## Purpose

This file is the mandatory bootstrap procedure for any new ChatGPT/AI development chat working on this repository. It is navigation/procedure, not a substitute for reconstructing live state. Current source, tests, workflow/build evidence and device evidence outrank copied summaries.

## Hard startup rule — do not start work before this is complete

1. Confirm repository `jbob-coder/Chatgptjuegolpcal` and branch `worldlife-reference-docs`.
2. Fetch the live branch HEAD and record the SHA before reading project state.
3. Read from that same live revision, in order:
   1. `EVOLVE_ALIGNMENT.md`
   2. `PROJECT_HANDOFF.md`
   3. `START_HERE_NEW_CHAT.md`
   4. `DOCUMENTATION_INDEX.md`
   5. root `README.md`
   6. `docs/README.md`
   7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
   8. newest relevant `docs/70_handoff/`
   9. `game/README.md`
   10. exact owning design/source/data/tests/static gates/workflow for the current bounded piece.
4. Re-check branch HEAD after reading. If it changed materially, restart the relevant state read from the new HEAD rather than mixing revisions.
5. Reconstruct real state from live source/tests/build evidence; Markdown labels alone are not proof.
6. Resolve conflicts by: current explicit user instruction → current source/tests/build/device evidence → EVOLVE/PROJECT_HANDOFF → narrow owning authority → package docs → older handoffs/chat/memory.
7. Identify exactly one bounded next piece and its owning files.
8. Before implementation report: `LIVE_REPOSITORY_HEAD`, `LAST_VERIFIED_SOURCE_BASELINE`, `CURRENT_OBJECTIVE`, `CURRENT_VERIFIED_STATE`, `EXACT_NEXT_BOUNDED_PIECE`, `OWNING_FILES`, `TESTS_AND_GATES`, `BLOCKERS`, `OPEN_QUESTIONS / UNKNOWNS`, and contradictions/stale front doors.
9. If the user already requested continuation and no genuine blocker exists, proceed with that one piece without asking permission again.

## Development law after startup

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → COMMIT → READ BACK → CONTINUE`.

Use normal fast-forward Git updates only. Never force-push. Do not weaken invariants to make tests green. Do not call CI/headless/APK evidence `PHONE_VERIFIED`. Phone validation remains batched unless current authority changes it.

Protected Android controls remain continuous direct analog left-stick movement, independent right-side look, simultaneous movement/look, no forced joystick release/center/rebase, approximately 115° first-person FOV and approximately 6.25 m/s exploration speed. `probes/android_stage1/` is evidence/testing infrastructure only.

## Current verified snapshot — discovery aid only

The current automated-build verified stack includes the continuous 440×440 m Hunt-01 world/tracking/ENGAGE foundation, deterministic combat turn/resources/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction/Block flow, Head Sweep, defense/health/injury, wound/contact qualification, generic Bleeding/Staggered/Off-Balance status application/timing, Hunter Downed/defeat terminal execution, Mudcrest Tail Sweep, and CLEAN Tail Sweep→generic Staggered producer integration.

Latest full production-verified revision:
`fbfd30fde0ad74bdb73d384533287b884341cd93`.

Latest production verification:
- workflow `34762775881`: SUCCESS;
- job `103738398857`: SUCCESS;
- artifact `10319377979`;
- name `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`;
- size `57,485,460` bytes;
- SHA-256 `1760956f76d2d908d64f6efc7da3fc7e409d23a26cb4ccd65402c83739d82273`.

These are historical evidence only; a new chat must still fetch current live HEAD and check for newer runs.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Latest specialized handoff at this reconciliation:
`docs/70_handoff/HUNT01_TAIL_SWEEP_CLEAN_STAGGERED_PRODUCER_2026-09-13.md`.

## Current recorded next bounded piece

`FIRST_SLICE_HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION`.

Current authority for this piece:
- this is deterministic CI/development verification, not player-facing autoplay;
- boot the real production Region-01 scene and drive only already-implemented runtime APIs;
- cover the existing tracking terminal state, observation/ENGAGE boundary and basic combat owner availability;
- run at least two fresh scene lifecycles in one headless test and reject state leakage between them;
- keep protected manual analog movement/right-look behavior unchanged;
- do not auto-move the production player in normal gameplay or add hidden combat choices;
- do not invent Bleeding HP magnitude, structural thresholds, withdrawal geometry, recovery costs or Monster terminal rules;
- add static/headless workflow coverage and keep the full Android pipeline green.

Read exact current owners before changing anything: production integration test, Region-01 scene/runtime owners, tracking/encounter/combat APIs used by the current integration path, headless/static test conventions, and the production workflow.

## New-chat completion standard

A new chat is bootstrapped only after it has fetched live HEAD, read the current authority chain, inspected exact owning source/tests, reconciled contradictions, distinguished live docs HEAD from the last build-proven source SHA, and stated the bounded change plus protected behavior.
