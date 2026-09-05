# Production Game Root

Status: HUNT-01 THROUGH GENERIC STATUS APPLICATION ANDROID BUILD VERIFIED / GENERIC STATUS TIMING NEXT
Last reconciled: 2026-09-04

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter speed `6.25 m/s`; first-person FOV `115°`; protected analog movement + independent look.

Tracking/encounter: seven physical evidence types through terminal `OBSERVATION_READY`, no Monster GPS, physical observation/engagement and same-location combat staging.

Generic combat `scripts/gameplay/combat/`: deterministic turn/resources/tactical movement, Hunter attack/reaction/defense/health and generic status application.

Monster-01 `scripts/gameplay/monsters/monster_01/`: anatomy, real Head Sweep and species wound/contact qualification.

Generic status application is verified for exactly-once valid-request consumption, Bleeding capped intensity/first-tick metadata, Off-Balance refresh/expiry metadata and in-memory rehydration without ON_APPLY replay.

## Verification status

Implementation `6c9fc8592ce0de769f213790cc0e3e0a8ff95fdc`.
Workflow `33936580266`: SUCCESS.
Job `101225581109`: SUCCESS.
Artifact `9960395435`: `UnnamedHuntRPG-Hunt01-StatusApplication-debug`.

Stack through generic status application is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

## Current bounded production piece

`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTATION`.

Add timing hooks without stealing resource or Initiative ownership. Off-Balance expires after the affected actor's next completed normal activation. Bleeding emits one pending periodic consequence per eligible round; periodic HP magnitude stays unresolved/downstream.
