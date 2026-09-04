# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Mandatory read order:
1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. this file
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. exact owning package/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## Current implementation state

Stage-1 shooter-style controls were accepted on Galaxy A03s: PASS 100%.

Production runtime root: `game/`.

### Layer 1

Flat-themed Hunt-01 world foundation is implemented, headless verified and Android-build verified. The earlier disconnected/ugly production graybox presentation is rejected and superseded.

### Layer 2

`FIRST_SLICE_REGION01_HUNT01_TRACKING_EVIDENCE_RUNTIME_IMPLEMENTATION` — IMPLEMENTED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Tested source head:
`0df278eba2d9265ed84483265957d9f8c2d7f415`.

Workflow `33845109063`: SUCCESS.
Source/projection: 49/49 PASS.
Headless production + tracking integration: 66/66 PASS.
Android export/integrity/upload: PASS.

APK:
`UnnamedHuntRPG-Hunt01-Layer2-Tracking.apk`
SHA-256 `8cecb327cba3e8a21ac7bb54b281d2e3e9b76616963985acf4512819b31204fe`.
Drive ID `13c3SGmTxlj8BldnRvIErWvQGizj7VYbt`.

Layer 2 includes seven physical clue types, deterministic freshness/confidence/activity interpretation, old-S02-versus-fresh-S03 reasoning, clue history, no exact Monster GPS, no required audio, and final `OBSERVATION_READY` state.

## Validation cadence

`USER_PHONE_VALIDATION_POLICY = DEFERRED_BATCH`.

Do not stop development after each APK. Missing phone evidence stays explicitly unverified but does not block independent layers.

## Exact next action

`FIRST_SLICE_REGION01_HUNT01_OBSERVATION_AND_ENCOUNTER_TRIGGER_RUNTIME_IMPLEMENTATION`.

This will consume `OBSERVATION_READY`, create explicit same-location engagement authority, transition aerial to first-person without teleporting the encounter, and activate tactical-node presentation only after encounter entry. Attack resolution remains later.

`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.
