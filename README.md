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

The verification-only basic autorun boots the real production Region-01 scene twice in one Godot process, drives existing tracking to `OBSERVATION_READY`, enters physical ENGAGE, proves the initial scheduler path, then follows authored tactical movement into a real Mudcrest Tail Sweep and existing Poleblade Block reaction. It verifies the deterministic SOLID / `BLOCK_STRONG` consequence, Hunter Health 100→98, no strong-Block status request, Round-3 Hunter return, clean teardown and matching fresh-instance signatures. It does not alter normal player movement/look or add gameplay autoplay.

## Current verified baseline

Latest full production-verified revision `b270ef14787043252648c18ff02df31936e2f9a2`.
Production workflow `34771120281`: SUCCESS.
Job `103760780223`: SUCCESS.
Artifact `10321349678`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,504,703 bytes, SHA-256 `898292db86fd3df24d213ef77e9d17e0c0a2e1d211ee4e8d3d20a67b59c659e8`.

Stack through the basic autorun combat exchange is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Phone acceptance remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

For a new development chat, begin with `START_HERE_NEW_CHAT.md`; it defines the mandatory live-state reconstruction procedure before implementation.

## Current bounded piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_REGRESSION`.

Extend the verification-only autorun through one already-implemented Hunter Measured Cut/anatomy transaction. Preserve the existing Tail Sweep/Block exchange and normal controls, and introduce no player-facing autoplay, new combat balance, structural thresholds or terminal Monster rules.
