# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 BASIC AUTORUN COMBAT EXCHANGE ANDROID BUILD VERIFIED / HUNTER ATTACK AUTORUN INTEGRATION NEXT
Last reconciled: 2026-09-13

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

Continuous Hunt-01 world/tracking/ENGAGE plus deterministic first-person tactical combat includes Hunter Measured Cut, Mudcrest anatomy, shared reaction/Block flow, Head Sweep, Hunter defense/health/injury, species wound/contact qualification, generic Bleeding/Staggered/Off-Balance status application/timing, Hunter Downed encounter-terminal execution, Mudcrest Tail Sweep and CLEAN Tail Sweep→generic Staggered producer integration.

The verification-only basic autorun boots the real production Region-01 scene twice in one Godot process, drives existing tracking to `OBSERVATION_READY`, enters physical ENGAGE, proves the initial scheduler path, follows authored tactical movement into a real Mudcrest Tail Sweep and existing Poleblade Block reaction, verifies deterministic SOLID / `BLOCK_STRONG`, Hunter Health 100→98, no strong-Block status request, Round-3 Hunter return, clean teardown and matching fresh-instance signatures. It does not alter normal player movement/look or add gameplay autoplay.

## Current verified baseline

Latest full production-verified revision `c541c735fe93b049cc25d8c29a2c048ceb6139fe`.
Production workflow `34771386938`: SUCCESS.
Job `103761502217`: SUCCESS.
Artifact `10322166858`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,504,706 bytes, SHA-256 `a092e435471bd7411fd63902e67cb44608c7c1c1e8ff98e4401bbf969b6db6ff`.

Stack through the basic autorun combat exchange is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Phone acceptance remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

For a new development chat, begin with `START_HERE_NEW_CHAT.md`; it defines the mandatory live-state reconstruction procedure before implementation.

## Current bounded piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_REGRESSION`.

Extend the verification-only autorun through one already-implemented Hunter Measured Cut/anatomy transaction. Preserve the existing Tail Sweep/Block exchange and normal controls, and introduce no player-facing autoplay, new combat balance, structural thresholds or terminal Monster rules.
