# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 THROUGH HUNTER DOWNED OUTCOME ANDROID BUILD VERIFIED / TAIL SWEEP NEXT
Last reconciled: 2026-09-06

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

Continuous Hunt-01 world/tracking/ENGAGE plus deterministic first-person tactical combat now includes Hunter Measured Cut, Mudcrest anatomy, reaction/Head Sweep, defense, Hunter health/injury, species wound/contact qualification, generic status application/timing and Hunter Downed encounter-terminal execution.

At zero Health the player Hunter now becomes `DOWNED` and commits `HUNTERS_DEFEATED` through one generic encounter-outcome owner and the existing combat scheduler. The terminal path prevents later activations/reactions while preserving the living Mudcrest instance and its current state.

## Current verified baseline

Verified source head `f363998334bb752b037ed524cb909ad12634b71f`.
Production workflow `33985410020`: SUCCESS.
Job `101357889357`: SUCCESS.
Artifact `9975014310`: `UnnamedHuntRPG-Hunt01-HunterDownedOutcome-debug`, 57,446,932 bytes, SHA-256 `ab431361b3be3b325300d7d2242cd622afdb376f6426d8d2228fab0388cae196`.

The stack through Hunter Downed encounter outcome is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Phone acceptance remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

## Current bounded piece

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`.

Add the authored intact-tail rear/flank `M01_TAIL_SWEEP` to the existing Monster attack owner using the current reaction/Block/status/scheduler stack. Do not add structural sever thresholds, Staggered runtime, Bleeding periodic HP magnitude or unresolved withdrawal/recovery behavior in this slice.
