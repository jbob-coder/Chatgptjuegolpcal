# START HERE — Unnamed Hunt RPG — New Chat Bootstrap

Status: ACTIVE NEW-CHAT BOOTSTRAP / HUNT-01 BASIC AUTORUN HUNTER ATTACK EXCHANGE ANDROID BUILD VERIFIED / REAL STATUS LIFECYCLE AUTORUN NEXT
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
   10. exact owning package/source/data/tests/static gates/workflow for the current bounded piece.
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

The current automated-build verified stack includes the continuous 440×440 m Hunt-01 world/tracking/ENGAGE foundation, deterministic combat turn/resources/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction/Block flow, Head Sweep, Tail Sweep, defense/health/injury, wound/contact qualification, generic Bleeding/Staggered/Off-Balance status application/timing, Hunter Downed/defeat terminal execution, CLEAN Tail Sweep→generic Staggered producer integration, and a two-cycle fresh-instance basic-runtime autorun that now reproduces both a real Monster Tail Sweep/Block exchange and a real Hunter Dorsal Measured Cut/anatomy exchange.

Latest full production-verified revision:
`72109e2d56205da85f6ce898d22bb9f8f0558b0b`.

Latest production verification:
- workflow `34772015152`: SUCCESS;
- job `103763209477`: SUCCESS;
- artifact `10322585732`;
- name `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`;
- size `57,515,440` bytes;
- SHA-256 `b5ff76fe19528a5c88de3018e0e1366fd00432ea6ceaeaba09a42f497331f3b6`.

These are historical evidence only; a new chat must still fetch current live HEAD and check for newer runs.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Latest specialized handoff at this reconciliation:
`docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Current recorded next bounded piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_REAL_STATUS_LIFECYCLE_REGRESSION`.

Current authority for this piece:
- verification automation only; no player-facing autoplay;
- start from the real production Region-01 scene and existing two-cycle autorun;
- preserve the verified Monster Tail Sweep/Block and Hunter Measured Cut/anatomy exchanges;
- drive one already-implemented real hostile status producer through current wound/contact + generic status application/timing owners;
- prove existing lifecycle hooks and scheduler/resource/health ownership without synthetic parallel status state;
- protected movement/look controls remain unchanged;
- do not invent Bleeding HP magnitude, Braced/Guarded semantics, structural thresholds, withdrawal geometry, recovery costs, Monster terminal rules, new RNG or balance values;
- keep the full Android workflow green.

## New-chat completion standard

A new chat is bootstrapped only after it has fetched live HEAD, read the current authority chain, inspected exact owning source/tests, reconciled contradictions, distinguished live documentation HEAD from the last build-proven source SHA, and stated the bounded change plus protected behavior.
