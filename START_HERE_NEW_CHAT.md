# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-13

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned.

Mandatory read order:
1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. this file
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. `game/README.md`
10. exact owning package/source/data/tests for the recorded next piece.

Current repository/source/build/device evidence outranks old chat memory and stale snapshots.

## Current implementation state

Production root: `game/`. Stage-1 probe is evidence/testing infrastructure only.

Protected controls remain the accepted direct continuous analog left-stick movement + independent right-side look contract, approximately 115° FOV and 6.25 m/s exploration speed.

Automated-build verified production now includes world/tracking/ENGAGE, deterministic combat/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction/Block, Head Sweep, defense, Hunter health/injury, wound/contact classification, generic Bleeding/Off-Balance status application/timing, Hunter Downed terminal outcome, and Mudcrest Tail Sweep.

Final Tail Sweep closure baseline:
- verified source head `80df7e0aef1b505ea3085f42af8c8710aa79c2a7`;
- workflow `34760296459`: SUCCESS;
- job `103731848690`: SUCCESS;
- artifact `10318643114`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`;
- SHA-256 `98ddaecdb732a2af49c91d702fddce931ed40c9901b86f9f3c717988cfdf0542`.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Latest handoff:
`docs/70_handoff/HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_2026-09-13.md`.

## Exact next action

`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTATION`.

Read the selected status contract and existing generic status owners. Add Staggered to those owners with one refreshable instance and deterministic next-turn-start conversion to Off-Balance. Do not add a second status system, turn skip, new randomness, Tail Sweep producer wiring, sever thresholds, Bleeding HP magnitude or Hunter withdrawal geometry in this piece.
