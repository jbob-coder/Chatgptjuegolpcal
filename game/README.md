# Production Game Root

Status: HUNT-01 THROUGH HUNTER DOWNED OUTCOME ANDROID BUILD VERIFIED / TAIL SWEEP NEXT
Last reconciled: 2026-09-06

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter speed `6.25 m/s`; first-person FOV `115°`; protected analog movement + independent look.

Tracking/encounter: seven physical evidence types through terminal `OBSERVATION_READY`, no Monster GPS, physical observation/engagement and same-location combat staging.

Generic combat `scripts/gameplay/combat/`: deterministic turn/resources/tactical movement, Hunter attack/reaction/defense/health, generic status application/timing and generic encounter-outcome ownership.

Monster-01 `scripts/gameplay/monsters/monster_01/`: anatomy, real Head Sweep and species wound/contact qualification.

The generic outcome owner consumes the verified zero-Health Hunter-defeat handoff and commits `DOWNED → HUNTERS_DEFEATED` through the existing combat shell. The shell closes the active resolution boundary, freezes the scheduler and rejects new gameplay commitments without resetting the living Monster.

## Verification status

Verified source head `f363998334bb752b037ed524cb909ad12634b71f`.
Workflow `33985410020`: SUCCESS.
Job `101357889357`: SUCCESS.
Artifact `9975014310`: `UnnamedHuntRPG-Hunt01-HunterDownedOutcome-debug`.

Stack through Hunter Downed encounter outcome is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

## Current bounded production piece

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`.

Extend the existing Monster-01 attack runtime with the intact-tail rear/flank Tail Sweep using the current scheduler/reaction/Block/status owners. Structural sever thresholds, Staggered behavior, Bleeding periodic HP magnitude, recovery/withdrawal and harvest remain separate layers.
