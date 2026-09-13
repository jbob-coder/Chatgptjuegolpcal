# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 THROUGH MUDCREST TAIL SWEEP ANDROID BUILD VERIFIED / GENERIC STAGGERED STATUS NEXT
Last reconciled: 2026-09-13

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

Continuous Hunt-01 world/tracking/ENGAGE plus deterministic first-person tactical combat now includes Hunter Measured Cut, Mudcrest anatomy, shared reaction/Block flow, Head Sweep, Hunter defense/health/injury, species wound/contact qualification, generic Bleeding/Off-Balance status application/timing, Hunter Downed encounter-terminal execution, and Mudcrest Tail Sweep.

Tail Sweep is species-owned in the existing Monster-01 attack driver at 3 AP / 18 Stamina, pure Impact, with rear/flank/pivot/arc legality, current attached-tail capability, shared Block handling, 14-Stamina successful Block impact drain, SOLID Off-Balance, and CLEAN Staggered still pending generic Staggered ownership.

## Current verified baseline

Verified gameplay/source head `80df7e0aef1b505ea3085f42af8c8710aa79c2a7`.
Production workflow `34760296459`: SUCCESS.
Job `103731848690`: SUCCESS.
Artifact `10318643114`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,477,142 bytes, SHA-256 `98ddaecdb732a2af49c91d702fddce931ed40c9901b86f9f3c717988cfdf0542`.

The stack through Mudcrest Tail Sweep is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Phone acceptance remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

For a new development chat, begin with `START_HERE_NEW_CHAT.md`; it defines the mandatory live-state reconstruction procedure before implementation.

## Current bounded piece

`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTATION`.

Extend the existing generic status application/timing owners with one refreshable Staggered instance and deterministic next-`TURN_START_PRE_RECOVERY` conversion to existing Off-Balance. Preserve existing Bleeding/Off-Balance behavior. Do not create a second status system, hidden turn skip, new randomness, Tail Sweep producer wiring, structural sever thresholds, Bleeding periodic HP magnitude, or unresolved withdrawal/recovery behavior in this piece.
