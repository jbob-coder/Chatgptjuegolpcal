# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 THROUGH GENERIC STAGGERED ANDROID BUILD VERIFIED / TAIL SWEEP CLEAN STAGGERED PRODUCER NEXT
Last reconciled: 2026-09-13

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

Continuous Hunt-01 world/tracking/ENGAGE plus deterministic first-person tactical combat includes Hunter Measured Cut, Mudcrest anatomy, shared reaction/Block flow, Head Sweep, Hunter defense/health/injury, species wound/contact qualification, generic Bleeding/Staggered/Off-Balance status application/timing, Hunter Downed encounter-terminal execution and Mudcrest Tail Sweep.

Generic Staggered is verified as one refreshable non-stacking transient disruption. At the target's next `TURN_START_PRE_RECOVERY` it converts exactly once to existing Off-Balance without skipping the activation; normal shell recovery/AP/RP ownership continues.

Tail Sweep CLEAN remains intentionally pending at the species producer boundary. The generic owner now exists, so that pending marker is the next integration piece rather than an unresolved generic-status prerequisite.

## Current verified baseline

Verified gameplay/source head `29623181bfb758b322e47d83a1c2f652b225561a`.
Production workflow `34761564734`: SUCCESS.
Job `103735203468`: SUCCESS.
Artifact `10318917250`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,484,077 bytes, SHA-256 `9a881d020858aea018da82f4af40f650f374fb6291a6281c19b5419fdfc4b9d1`.

Stack through Generic Staggered is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Phone acceptance remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

For a new development chat, begin with `START_HERE_NEW_CHAT.md`; it defines the mandatory live-state reconstruction procedure before implementation.

## Current bounded piece

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_CLEAN_STAGGERED_PRODUCER_INTEGRATION`.

Use the existing species classifier to emit exactly one valid `status_staggered` request on the already-selected CLEAN Tail Sweep consequence. Preserve SOLID→Off-Balance, Strong Block→no-status, deterministic attack/contact behavior and all structural/balance deferrals. Do not create a second status system or add unrelated mechanics.
