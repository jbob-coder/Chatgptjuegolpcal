# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 BASIC RUNTIME AUTORUN ANDROID BUILD VERIFIED / BASIC AUTORUN COMBAT EXCHANGE NEXT
Last reconciled: 2026-09-13

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

Continuous Hunt-01 world/tracking/ENGAGE plus deterministic first-person tactical combat includes Hunter Measured Cut, Mudcrest anatomy, shared reaction/Block flow, Head Sweep, Hunter defense/health/injury, species wound/contact qualification, generic Bleeding/Staggered/Off-Balance status application/timing, Hunter Downed encounter-terminal execution, Mudcrest Tail Sweep and CLEAN Tail Sweep→generic Staggered producer integration.

A verification-only basic autorun now boots the real production Region-01 scene twice in one Godot process, drives existing tracking to `OBSERVATION_READY`, enters physical ENGAGE, verifies current combat ownership and one scheduler cycle, tears down each instance, and proves the second cycle starts clean. It does not alter normal player movement/look or add gameplay autoplay.

## Current verified baseline

Latest full production-verified revision `3c6a792851e5dec9756f6e99bd09de291fe266b2`.
Production workflow `34763505121`: SUCCESS.
Job `103740308986`: SUCCESS.
Artifact `10319379031`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,495,532 bytes, SHA-256 `488a3f31bf589a194332402b8c8cf1ee8c9a9f57edb0d5d7a77adf5693b68b7f`.

Stack through the basic runtime autorun is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Phone acceptance remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

For a new development chat, begin with `START_HERE_NEW_CHAT.md`; it defines the mandatory live-state reconstruction procedure before implementation.

## Current bounded piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_COMBAT_EXCHANGE_REGRESSION`.

Extend the verification-only autorun through one already-implemented deterministic combat exchange. This must preserve normal controls and introduce no player-facing autoplay or new gameplay semantics.
