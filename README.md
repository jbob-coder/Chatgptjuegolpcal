# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 THROUGH GENERIC STATUS APPLICATION ANDROID BUILD VERIFIED / GENERIC STATUS TIMING NEXT
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

Continuous Hunt-01 world/tracking/ENGAGE plus deterministic first-person tactical combat now includes Hunter Measured Cut, Mudcrest anatomy, reaction/Head Sweep, defense, Hunter health/injury, species wound/contact qualification and generic status application.

Generic status application provides exactly-once valid-request consumption, Bleeding capped intensity 3 + first-eligible-tick metadata, Off-Balance refresh state + pending natural-expiry metadata, and deterministic in-memory rehydration without replaying ON_APPLY.

## Current verified baseline

Implementation `6c9fc8592ce0de769f213790cc0e3e0a8ff95fdc`.
Production workflow `33936580266`: SUCCESS.
Job `101225581109`: SUCCESS.
Artifact `9960395435`: `UnnamedHuntRPG-Hunt01-StatusApplication-debug`, 57,410,444 bytes, SHA-256 `4606069697c5ae9128acf27ddad65724613ad8e83d53e8791a292339c8b0b15f`.

The stack through generic status application is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Phone acceptance remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

## Current bounded piece

`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTATION`.

Implement contract-ordered lifecycle hooks, Off-Balance natural removal and idempotent pending Bleeding periodic-consequence emission. Exact Bleeding periodic HP magnitude remains downstream and must not be invented in this timing slice.
