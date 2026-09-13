# START HERE — Unnamed Hunt RPG — New Chat Bootstrap

Status: ACTIVE NEW-CHAT BOOTSTRAP / HUNT-01 THROUGH MUDCREST TAIL SWEEP ANDROID BUILD VERIFIED / GENERIC STAGGERED STATUS NEXT
Last reconciled: 2026-09-13

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and must not be used as the implementation base.

## Purpose

This file is the mandatory bootstrap procedure for any new ChatGPT/AI development chat working on this repository.

This file is **navigation and procedure**, not a substitute for reconstructing live state. The branch may move after this file is written. Current repository source, tests, workflow/build evidence and device evidence always outrank a copied chat summary or an older snapshot in this file.

## Hard startup rule — do not start work before this is complete

Before coding, designing, documenting, generating assets, changing balance, fixing bugs, or making project-state assumptions:

1. Confirm the exact repository and branch:
   - repository: `jbob-coder/Chatgptjuegolpcal`;
   - branch: `worldlife-reference-docs`.
2. Fetch the **live branch HEAD** and record the SHA before reading project state.
3. Read the following files from that same live revision, in this order:
   1. `EVOLVE_ALIGNMENT.md`
   2. `PROJECT_HANDOFF.md`
   3. `START_HERE_NEW_CHAT.md`
   4. `DOCUMENTATION_INDEX.md`
   5. root `README.md`
   6. `docs/README.md`
   7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
   8. the newest relevant file under `docs/70_handoff/`
   9. `game/README.md`
   10. the exact owning design/source/data/tests/static gates/workflow for the currently recorded bounded piece.
4. Re-check the branch HEAD after the read. If it changed materially while reconstructing state, restart the state read from the new HEAD instead of mixing revisions.
5. Reconstruct the real current state from live source, tests and build evidence. Do **not** treat documentation status labels as proof when source/CI says otherwise.
6. Resolve contradictions before implementation. Use this precedence:
   - current explicit user instruction;
   - current live source/tests/build/device evidence for the claim being made;
   - `EVOLVE_ALIGNMENT.md` and `PROJECT_HANDOFF.md`;
   - narrow owning system/content authority;
   - package/local documentation;
   - older handoffs, chat summaries, copied prompts or stale snapshots.
7. Identify exactly one bounded next piece and the files that own it. Do not combine unrelated systems just to move faster.
8. Before implementation begins, produce a concise reconstruction containing:
   - `LIVE_REPOSITORY_HEAD`;
   - `LAST_VERIFIED_SOURCE_BASELINE`;
   - `CURRENT_OBJECTIVE`;
   - `CURRENT_VERIFIED_STATE`;
   - `EXACT_NEXT_BOUNDED_PIECE`;
   - `OWNING_FILES`;
   - `TESTS_AND_GATES`;
   - `BLOCKERS`;
   - `OPEN_QUESTIONS / UNKNOWNS`;
   - any contradictions or stale front doors discovered.
9. If the user asked to continue development and reconstruction finds no blocking contradiction, proceed with the one bounded piece after the reconstruction. Do not stop only to ask for permission that was already given.

## Development law after startup

Use the EVOLVE loop:

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → COMMIT → READ BACK → CONTINUE`.

Additional requirements:
- quality over speed;
- evidence over confidence;
- root cause over patch;
- current files over chat memory;
- normal fast-forward Git updates only; never force-push project history;
- read back every committed result before calling it complete;
- do not weaken an invariant just to make a test pass;
- do not claim `PHONE_VERIFIED` from CI/headless/APK evidence;
- phone validation remains batched unless the current project authority changes that policy;
- preserve the accepted shooter-style Android controls unless current evidence explicitly changes them: continuous left-stick movement, independent right-side look, no forced release/center/rebase, approximately `115°` first-person FOV, approximately `6.25 m/s` exploration speed;
- `probes/android_stage1/` is evidence/testing infrastructure only, not production gameplay architecture.

## Current verified snapshot — discovery aid only

The current automated-build verified stack includes:
- continuous `440 × 440 m` Hunt-01 world/tracking through `OBSERVATION_READY` and same-location ENGAGE;
- deterministic combat turn/resources/tactical movement;
- Hunter `POLEBLADE_MEASURED_CUT`;
- Mudcrest anatomy;
- generic reaction/Block flow;
- `M01_HEAD_SWEEP_GORE`;
- Hunter defense and health/injury;
- species wound/contact qualification;
- generic Bleeding/Off-Balance status application and lifecycle timing;
- Hunter zero-Health Downed/defeat terminal execution;
- `M01_TAIL_SWEEP`.

Last verified gameplay/source baseline:
`80df7e0aef1b505ea3085f42af8c8710aa79c2a7`.

Final Tail Sweep production verification:
- workflow `34760296459`: SUCCESS;
- job `103731848690`: SUCCESS;
- artifact `10318643114`;
- name `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`;
- size `57,477,142` bytes;
- SHA-256 `98ddaecdb732a2af49c91d702fddce931ed40c9901b86f9f3c717988cfdf0542`.

These identifiers are historical evidence. A new chat must still fetch current live HEAD and determine whether newer work exists.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Latest specialized handoff at this reconciliation:
`docs/70_handoff/HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_2026-09-13.md`.

## Current recorded next bounded piece

`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTATION`.

Current authority says this piece must extend the existing generic status owners only:
- one `status_staggered` instance;
- category `TRANSIENT_PHYSICAL_DISRUPTION`;
- `REFRESH_DURATION` with no intensity stacking;
- no hidden stun or skipped activation;
- at the target's next `TURN_START_PRE_RECOVERY`, remove Staggered once, apply/refresh existing Off-Balance once, continue the same activation, then allow normal recovery/AP/RP ownership to proceed;
- preserve Bleeding and Off-Balance behavior/idempotency;
- do **not** wire Tail Sweep CLEAN as a new Staggered producer in this bounded piece.

Read these exact current owners before modifying anything:
- `docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
- `game/scripts/gameplay/combat/hunt01_status_application_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_status_timing_runtime.gd`;
- `game/tests/hunt01_status_application_runtime_test.gd`;
- `game/tests/hunt01_status_timing_runtime_test.gd`;
- `tests/quality/hunt01/hunt01_status_application_preflight.py`;
- `tests/quality/hunt01/hunt01_status_timing_preflight.py`;
- current Tail Sweep source/classifier/test only to preserve the existing CLEAN → Staggered-pending boundary;
- `.github/workflows/production-hunt01-graybox-android.yml`.

Do not add structural sever thresholds, Bleeding periodic Health magnitude, unresolved withdrawal/recovery behavior, a second status system, extra randomness, or Tail Sweep Staggered producer wiring unless newer live authority explicitly supersedes this boundary.

## New-chat completion standard

A new chat is not considered bootstrapped merely because it read this file. It is bootstrapped only after it has:
- fetched live HEAD;
- read the current authority chain;
- inspected the exact owning source/tests for the next piece;
- reconciled contradictions;
- identified the verified baseline separately from the documentation HEAD;
- stated what it will change and what it will not change.

If any of those are missing, do not begin implementation.
