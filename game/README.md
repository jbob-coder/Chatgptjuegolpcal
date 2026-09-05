# Production Game Root

Status: HUNT-01 THROUGH GENERIC STATUS TIMING ANDROID BUILD VERIFIED / HUNTER DOWNED OUTCOME NEXT
Last reconciled: 2026-09-05

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter speed `6.25 m/s`; first-person FOV `115°`; protected analog movement + independent look.

Tracking/encounter: seven physical evidence types through terminal `OBSERVATION_READY`, no Monster GPS, physical observation/engagement and same-location combat staging.

Generic combat `scripts/gameplay/combat/`: deterministic turn/resources/tactical movement, Hunter attack/reaction/defense/health, generic status application and generic status timing.

Monster-01 `scripts/gameplay/monsters/monster_01/`: anatomy, real Head Sweep and species wound/contact qualification.

Generic timing owns contract-ordered lifecycle hooks, completed-activation Off-Balance expiry and deterministic pending Bleeding periodic-event cadence; it does not own periodic HP magnitude.

## Verification status

Verified source head `57c205e1b2fb1fc69219f44033ef527ea756a353`.
Workflow `33937504389`: SUCCESS.
Job `101228175010`: SUCCESS.
Artifact `9960678247`: `UnnamedHuntRPG-Hunt01-StatusTiming-debug`.

Stack through generic status timing is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

## Current bounded production piece

`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_IMPLEMENTATION`.

Consume the verified zero-Health defeat handoff and execute the selected `DOWNED` / `HUNTERS_DEFEATED` terminal path through the existing combat scheduler. Do not bundle recovery/respawn, withdrawal, Monster terminal outcomes, structural thresholds, harvest or Bleeding periodic damage.
