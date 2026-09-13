# Production Game Root

Status: HUNT-01 BASIC AUTORUN HUNTER ATTACK EXCHANGE STATIC/HEADLESS/ANDROID BUILD VERIFIED / REAL STATUS LIFECYCLE AUTORUN NEXT
Last reconciled: 2026-09-13

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter speed `6.25 m/s`; first-person FOV `115°`; protected analog movement + independent look.

Tracking/encounter: physical evidence through terminal `OBSERVATION_READY`, physical observation/engagement and same-location combat staging.

Generic combat `scripts/gameplay/combat/`: deterministic turn/resources/tactical movement, Hunter attack/reaction/defense/health, generic Bleeding/Staggered/Off-Balance status application/timing and generic encounter-outcome ownership.

Monster-01 `scripts/gameplay/monsters/monster_01/`: anatomy, Head Sweep, Tail Sweep, species wound/contact qualification and Tail Sweep CLEAN→generic Staggered producer integration.

Verification automation: `tests/hunt01_basic_runtime_autorun_test.gd` boots the real production Region-01 scene twice, drives tracking/ENGAGE, follows authored movement to the real Tail Sweep/Poleblade Block exchange, repositions through authored nodes and normal AP economy, uses an existing Head Sweep/Block activation bridge, then commits the real Dorsal Measured Cut/anatomy transaction. It tears each instance down, rejects state leakage and does not alter normal gameplay input or create autoplay.

## Verification status

Verified gameplay/source head `72109e2d56205da85f6ce898d22bb9f8f0558b0b`.
Workflow `34772015152`: SUCCESS.
Job `103763209477`: SUCCESS.
Artifact `10322585732`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,515,440 bytes, SHA-256 `b5ff76fe19528a5c88de3018e0e1366fd00432ea6ceaeaba09a42f497331f3b6`.

Stack through the integrated Hunter attack autorun exchange is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

New chats must use root `START_HERE_NEW_CHAT.md` and reconstruct the live branch before changing this production tree.

## Current bounded production piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_REAL_STATUS_LIFECYCLE_REGRESSION`.

Extend the current test-only fresh-instance autorun through one already-implemented real hostile status producer and the existing generic status lifecycle. Preserve both current combat exchanges. Do not alter normal player movement/look controls, add player-facing autoplay, select Bleeding HP magnitude, or invent new status/combat semantics.
