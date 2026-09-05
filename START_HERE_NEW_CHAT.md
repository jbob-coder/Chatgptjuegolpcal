# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-04

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

Protected controls: direct continuous analog left-stick movement, independent right-side look, no forced release/center/rebase, approximately 115° FOV, approximately 6.25 m/s exploration speed.

Automated-build verified stack includes world/tracking/ENGAGE, deterministic combat/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction, real Head Sweep, defense, Hunter health/injury, wound/contact classification and generic status application.

Generic status application:
- schema `uhr.hunt01.status_application.v1`;
- Bleeding capped intensity 3 and `first_tick_round = application_round + 1` metadata;
- Off-Balance refresh-duration state and pending completed-activation expiry metadata;
- stable request idempotency and no duplicate ON_APPLY;
- in-memory state rehydration without ON_APPLY replay;
- implementation `6c9fc8592ce0de769f213790cc0e3e0a8ff95fdc`;
- workflow `33936580266`: SUCCESS;
- job `101225581109`: SUCCESS;
- artifact `9960395435`: `UnnamedHuntRPG-Hunt01-StatusApplication-debug`.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Latest handoff:
`docs/70_handoff/HUNT01_GENERIC_STATUS_APPLICATION_RUNTIME_2026-09-04.md`.

## Exact next action

`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTATION`.

Read before implementation:
- `game/scripts/gameplay/combat/hunt01_status_application_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`;
- `docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
- `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`;
- `docs/20_gameplay/combat/INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`;
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- current status/wound/contact tests and static gates.

Do not invent Bleeding HP magnitude. Implement deterministic hook ordering, Off-Balance expiry and pending Bleeding periodic-consequence emission only.
