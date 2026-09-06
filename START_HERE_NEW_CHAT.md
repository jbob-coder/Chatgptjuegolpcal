# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-06

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

Automated-build verified stack includes world/tracking/ENGAGE, deterministic combat/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction, real Head Sweep, defense, Hunter health/injury, wound/contact classification, generic status application/timing and Hunter Downed encounter-terminal execution.

Hunter Downed outcome:
- schema `uhr.hunt01.encounter_outcome.v1`;
- consumes the stable zero-Health `PENDING_HUNTER_DEFEAT_OUTCOME_RUNTIME` once;
- commits `ACTIVE → DOWNED → HUNTERS_DEFEATED` only after the current resolution boundary;
- delegates terminal freeze/removal to the existing combat shell;
- blocks later normal/reaction commitments;
- preserves the living Mudcrest instance and current anatomy/status/world state;
- verified source head `f363998334bb752b037ed524cb909ad12634b71f`;
- workflow `33985410020`: SUCCESS;
- job `101357889357`: SUCCESS;
- artifact `9975014310`: `UnnamedHuntRPG-Hunt01-HunterDownedOutcome-debug`.

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_2026-09-06.md`.

## Exact next action

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`.

Read before implementation:
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- current reaction/defense/status/anatomy tests and static gates.

Do not invent Mudcrest structural thresholds, Bleeding HP magnitude, Staggered behavior, or Hunter escape geometry. Tail Sweep is the intact-tail attack slice only.
