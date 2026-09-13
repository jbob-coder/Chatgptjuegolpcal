# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 BASIC AUTORUN REAL STATUS LIFECYCLE ANDROID BUILD VERIFIED / HUNTER DEFEAT TERMINAL AUTORUN NEXT
Last reconciled: 2026-09-13

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

Continuous Hunt-01 world/tracking/ENGAGE plus deterministic first-person tactical combat includes Hunter Measured Cut, Mudcrest anatomy, reaction/Block flow, Head Sweep, Tail Sweep, Hunter defense/health/injury, species wound/contact qualification, generic Bleeding/Staggered/Off-Balance status application/timing, CLEAN Tail Sweep→generic Staggered producer integration and Hunter Downed/defeat terminal execution.

The verification-only basic autorun boots the real production Region-01 scene twice in one Godot process and reproduces tracking/ENGAGE, the real Tail Sweep/Poleblade Block combat exchange, authored reposition, the real Dorsal Measured Cut/anatomy exchange, and a real unguarded Head Sweep→Bleeding→Round-5 pending periodic status lifecycle. It proves the pending Bleeding event has no selected HP magnitude and does not mutate Health. It does not alter normal player movement/look or add gameplay autoplay.

## Current verified baseline

Latest full production-verified source revision `83dc865064980eaa3d29c5928b0f59e9a4132c79`.
Production workflow `34779563368`: SUCCESS.
Job `103783955039`: SUCCESS.
Artifact `10324451154`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,526,677 bytes, SHA-256 `411bb42819510e84d0f84d8c03033a49e86d3b35ab4cdc9b3251a3f320f22c6d`.

Run 82 failed before Godot only on a promoted documentation wording check. Commit `83dc865064980eaa3d29c5928b0f59e9a4132c79` restored the required `combat exchange` wording without changing runtime/test logic, and run 83 then passed the full production pipeline.

Stack through the real-status lifecycle autorun is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Phone acceptance remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

For a new development chat, begin with `START_HERE_NEW_CHAT.md`; it defines the mandatory live-state reconstruction procedure before implementation.

## Current bounded piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_DEFEAT_TERMINAL_REGRESSION`.

Extend the verification-only autorun through the already-implemented Hunter Downed/`HUNTERS_DEFEATED` terminal path. Preserve all existing integrated basics. Use existing health/outcome/scheduler owners and require a real hostile final contact. Do not add recovery/respawn, Monster terminal rules, Bleeding HP magnitude, structural thresholds, withdrawal rules, new RNG or new balance.
