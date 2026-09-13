# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 BASIC AUTORUN HUNTER ATTACK EXCHANGE ANDROID BUILD VERIFIED / REAL STATUS LIFECYCLE AUTORUN NEXT
Last reconciled: 2026-09-13

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

Continuous Hunt-01 world/tracking/ENGAGE plus deterministic first-person tactical combat includes Hunter Measured Cut, Mudcrest anatomy, shared reaction/Block flow, Head Sweep, Tail Sweep, Hunter defense/health/injury, species wound/contact qualification, generic Bleeding/Staggered/Off-Balance status application/timing, Hunter Downed encounter-terminal execution and CLEAN Tail Sweep→generic Staggered producer integration.

The verification-only basic autorun now boots the real production Region-01 scene twice and reproduces tracking→ENGAGE, an initial scheduler cycle, authored movement into a real Tail Sweep/Poleblade Block exchange, authored reposition through normal AP economy, an existing Head Sweep/Block scheduler bridge, and a real Round-4 Dorsal Measured Cut/anatomy transaction. Both fresh cycles match and teardown rejects state leakage. It does not alter normal player movement/look or add gameplay autoplay.

## Current verified baseline

Latest full production-verified revision `72109e2d56205da85f6ce898d22bb9f8f0558b0b`.
Production workflow `34772015152`: SUCCESS.
Job `103763209477`: SUCCESS.
Artifact `10322585732`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,515,440 bytes, SHA-256 `b5ff76fe19528a5c88de3018e0e1366fd00432ea6ceaeaba09a42f497331f3b6`.

Stack through the integrated Hunter attack autorun exchange is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Phone acceptance remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

For a new development chat, begin with `START_HERE_NEW_CHAT.md`; it defines the mandatory live-state reconstruction procedure before implementation.

## Current bounded piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_REAL_STATUS_LIFECYCLE_REGRESSION`.

Extend the verification-only autorun through one already-implemented real hostile status producer and its generic lifecycle. Preserve both current combat exchanges and normal controls; introduce no player-facing autoplay, Bleeding HP magnitude, structural thresholds or new combat/status semantics.
