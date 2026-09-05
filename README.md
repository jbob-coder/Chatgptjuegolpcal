# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 THROUGH GENERIC STATUS TIMING ANDROID BUILD VERIFIED / HUNTER DOWNED OUTCOME NEXT
Last reconciled: 2026-09-05

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

Continuous Hunt-01 world/tracking/ENGAGE plus deterministic first-person tactical combat now includes Hunter Measured Cut, Mudcrest anatomy, reaction/Head Sweep, defense, Hunter health/injury, species wound/contact qualification, generic status application and generic status timing.

Timing executes deterministic lifecycle hooks, removes Off-Balance only after the affected actor completes the next normal activation, and emits idempotent pending Bleeding periodic consequences without inventing HP magnitude.

## Current verified baseline

Verified source head `57c205e1b2fb1fc69219f44033ef527ea756a353`.
Production workflow `33937504389`: SUCCESS.
Job `101228175010`: SUCCESS.
Artifact `9960678247`: `UnnamedHuntRPG-Hunt01-StatusTiming-debug`, 57,428,913 bytes, SHA-256 `f275b27c4f0f08a9ba0a45a6dd6c8bbb91a6410a564f947cee4efaed4fc88520`.

The stack through generic status timing is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Phone acceptance remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

## Current bounded piece

`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_IMPLEMENTATION`.

The health owner already emits a stable pending defeat handoff at zero Health and the defeat contract already selects `DOWNED` + `HUNTERS_DEFEATED`. Implement that terminal path without adding respawn/recovery, Monster escape/death, structural thresholds, harvest, or unresolved Bleeding periodic HP damage.
