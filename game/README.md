# Production Game Root

Status: HUNT-01 BASIC AUTORUN HUNTER DEFEAT TERMINAL STATIC/HEADLESS/ANDROID BUILD VERIFIED / 2 GB STORAGE CAP SELECTED / PACKAGE CAP CI GATE NEXT
Last reconciled: 2026-09-14

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter speed `6.25 m/s`; first-person FOV `115°`; protected analog movement + independent look.

Tracking/encounter: physical evidence through `OBSERVATION_READY`, physical engagement and same-location combat staging.

Generic combat `scripts/gameplay/combat/`: deterministic turn/resources/tactical movement, Hunter attack/reaction/defense/health, generic Bleeding/Staggered/Off-Balance application/timing and generic encounter-outcome ownership.

Monster-01 `scripts/gameplay/monsters/monster_01/`: anatomy, Head Sweep, Tail Sweep, species wound/contact qualification and Tail Sweep CLEAN→generic Staggered producer integration.

Verification automation: `tests/hunt01_basic_runtime_autorun_test.gd` boots the real Region-01 scene twice and repeats tracking/ENGAGE, Tail Sweep/Poleblade Block, authored reposition, Dorsal Measured Cut/anatomy, real unguarded Head Sweep→Bleeding timing, then a real final Round-6 Head Sweep causing Hunter 10→0, `DOWNED`, `HUNTERS_DEFEATED` and terminal scheduler freeze. Test-only Health preparation stops at 10 and cannot commit the outcome itself. Teardown rejects state leakage. Normal gameplay input is not replaced with autoplay.

## Storage product constraint

The player-required base-game installed/runtime footprint hard ceiling is `2 GB = 2,000,000,000 bytes`. Required runtime downloads count toward it. Development-only source/repository/CI files do not. Exported APK size is a package-level check only; full installed-footprint proof remains separate.

## Verification status

Latest fully verified production source `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.
Workflow `34880096112`: SUCCESS.
Job `104096962757`: SUCCESS.
Artifact `10362706279`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,536,941 bytes, SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

Stack through integrated Hunter defeat terminal is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`.

New chats must use root `START_HERE_NEW_CHAT.md` and reconstruct live branch state before changing this production tree.

## Current bounded production piece

`FIRST_SLICE_ANDROID_PACKAGE_2GB_STORAGE_CAP_CI_GATE`.

Add a workflow-only guard after Android export and before artifact upload. It must record package bytes and the 2,000,000,000-byte ceiling, fail if the exported APK exceeds that ceiling, and preserve the distinction between package size and installed footprint. No production gameplay, controls, balance or content changes belong in this slice.
