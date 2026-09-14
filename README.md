# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 BASIC AUTORUN HUNTER DEFEAT TERMINAL ANDROID BUILD VERIFIED / 2 GB STORAGE CAP SELECTED / PACKAGE CAP CI GATE NEXT
Last reconciled: 2026-09-14

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

Production Godot root: `game/`. `probes/android_stage1/` is evidence only.

## Hard storage ceiling

The user-selected total player-required game footprint cap is exactly `2 GB = 2,000,000,000 bytes`. Required split/downloaded runtime content counts toward the same cap. Development-only source/repository/CI-only files do not. Package-size evidence does not by itself prove installed-footprint compliance.

## Current production stack

Continuous Hunt-01 world/tracking/ENGAGE plus deterministic tactical combat includes Hunter Measured Cut, Mudcrest anatomy, reaction/Block, Head Sweep, Tail Sweep, Hunter defense/health/injury, species wound/contact, generic Bleeding/Staggered/Off-Balance status application/timing and Hunter Downed/defeat terminal execution.

The verification-only two-fresh-instance autorun now reproduces tracking/ENGAGE, the Tail Sweep/Poleblade Block combat exchange, authored reposition, Dorsal Measured Cut/anatomy, real Head Sweep→Bleeding→pending periodic lifecycle, and a real Round-6 Head Sweep that causes the final Hunter 10→0 transition and commits `HUNTERS_DEFEATED` with terminal scheduler freeze. It does not alter normal movement/look or create player-facing autoplay.

## Current verified baseline

Latest full production-verified source revision `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.
Production workflow `34880096112`: SUCCESS.
Job `104096962757`: SUCCESS.
Artifact `10362706279`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,536,941 bytes, SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

Phone acceptance remains deferred/batched. `PERFORMANCE_VERIFIED = NO`. `INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`.

For a new development chat, begin with `START_HERE_NEW_CHAT.md` and reconstruct the live branch before implementation.

## Current bounded piece

`FIRST_SLICE_ANDROID_PACKAGE_2GB_STORAGE_CAP_CI_GATE`.

Add a CI guard after production Android export and before upload. It must fail if the APK exceeds `2,000,000,000` bytes, record measured package bytes/cap in build evidence, preserve the distinction between package and installed footprint, and make no gameplay/runtime/content changes.
