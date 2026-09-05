# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-05

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

Automated-build verified stack includes world/tracking/ENGAGE, deterministic combat/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction, real Head Sweep, defense, Hunter health/injury, wound/contact classification, generic status application and generic status timing.

Generic status timing:
- schema `uhr.hunt01.status_timing.v1`;
- contract-ordered TURN_START_PRE_RECOVERY / TURN_END / ROUND_END hooks;
- Off-Balance expiry only after the target completes its next normal activation;
- skipped/ineligible slots do not grant free expiry;
- Bleeding emits one idempotent pending periodic Health consequence per eligible actor/status/round with no selected HP amount;
- verified source head `57c205e1b2fb1fc69219f44033ef527ea756a353`;
- workflow `33937504389`: SUCCESS;
- job `101228175010`: SUCCESS;
- artifact `9960678247`: `UnnamedHuntRPG-Hunt01-StatusTiming-debug`.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Latest handoff:
`docs/70_handoff/HUNT01_GENERIC_STATUS_TIMING_RUNTIME_2026-09-05.md`.

## Exact next action

`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_IMPLEMENTATION`.

Read before implementation:
- `docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md`;
- `game/scripts/gameplay/combat/hunt01_hunter_health_injury_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_reaction_window_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_status_timing_runtime.gd`;
- current health/reaction/status regressions and static gates.

Do not invent structural crack/break/sever thresholds or Bleeding HP magnitude. The next slice is only the already-authorized player-Hunter Downed / `HUNTERS_DEFEATED` terminal path.
