# START HERE — Unnamed Hunt RPG — New Chat Bootstrap

Status: ACTIVE NEW-CHAT BOOTSTRAP / HUNT-01 BASIC AUTORUN REAL STATUS LIFECYCLE ANDROID BUILD VERIFIED / HUNTER DEFEAT TERMINAL AUTORUN NEXT
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

The automated-build verified stack includes the continuous Hunt-01 world/tracking/ENGAGE foundation, deterministic combat/resources/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction/Block, Head Sweep, Tail Sweep, defense/health/injury, generic Bleeding/Staggered/Off-Balance application/timing, Hunter Downed/defeat terminal execution in its dedicated regression, CLEAN Tail Sweep→generic Staggered producer integration, and a two-cycle fresh-instance basic autorun through a real Monster exchange, a real Hunter Measured Cut/anatomy exchange and a real Bleeding application/timing lifecycle.

Latest full production-verified source revision before package promotion:
`9e854599780301e3e9c045b1bac73de9e27b5238`.

Latest production verification:
- workflow `34779190819`: SUCCESS;
- job `103782938270`: SUCCESS;
- artifact `10324690130`;
- name `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`;
- size `57,526,652` bytes;
- SHA-256 `5eda52a2aa21afb6777880a6c62bfd8205fe0b2116b945b7cf13b724737b4aa9`.

These are historical evidence only; a new chat must still fetch current live HEAD and check for newer runs.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Latest specialized handoff at this reconciliation:
`docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Current recorded next bounded piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_DEFEAT_TERMINAL_REGRESSION`.

Current authority for this piece:
- verification automation only; no player-facing autoplay;
- preserve the current two-cycle tracking/ENGAGE, Monster exchange, Hunter attack/anatomy exchange and real Bleeding lifecycle;
- consume existing Hunter health, encounter-outcome and scheduler owners;
- test-only health preparation may shorten setup, but the final zero-Health/terminal transition must be caused by a real hostile production attack transaction;
- verify `ACTIVE → DOWNED`, `HUNTERS_DEFEATED`, terminal scheduler freeze and idempotent outcome readback;
- do not invent recovery/respawn costs or destination, voluntary withdrawal, Monster escape/death, Bleeding HP magnitude, structural thresholds, RNG or balance values;
- keep the full Android workflow green.

## New-chat completion standard

A new chat is bootstrapped only after it has fetched live HEAD, read the current authority chain, inspected exact owning source/tests, reconciled contradictions, distinguished live documentation HEAD from the last source SHA actually proven by build evidence, and stated the bounded change plus protected behavior.
