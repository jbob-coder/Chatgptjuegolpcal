# Production Game Root

Status: HUNT-01 BASIC RUNTIME AUTORUN STATIC/HEADLESS/ANDROID BUILD VERIFIED / BASIC AUTORUN COMBAT EXCHANGE NEXT
Last reconciled: 2026-09-13

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter speed `6.25 m/s`; first-person FOV `115°`; protected analog movement + independent look.

Tracking/encounter: physical evidence through terminal `OBSERVATION_READY`, physical observation/engagement and same-location combat staging.

Generic combat `scripts/gameplay/combat/`: deterministic turn/resources/tactical movement, Hunter attack/reaction/defense/health, generic Bleeding/Staggered/Off-Balance status application/timing and generic encounter-outcome ownership.

Monster-01 `scripts/gameplay/monsters/monster_01/`: anatomy, Head Sweep, Tail Sweep, species wound/contact qualification and Tail Sweep CLEAN→generic Staggered producer integration.

Verification automation: `tests/hunt01_basic_runtime_autorun_test.gd` boots the real production Region-01 scene twice, drives the existing tracking/ENGAGE/basic scheduler path, tears each instance down and rejects state leakage. It does not alter normal gameplay input or create autoplay.

## Verification status

Verified gameplay/source head `3c6a792851e5dec9756f6e99bd09de291fe266b2`.
Workflow `34763505121`: SUCCESS.
Job `103740308986`: SUCCESS.
Artifact `10319379031`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,495,532 bytes, SHA-256 `488a3f31bf589a194332402b8c8cf1ee8c9a9f57edb0d5d7a77adf5693b68b7f`.

Stack through the basic runtime autorun is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

New chats must use root `START_HERE_NEW_CHAT.md` and reconstruct the live branch before changing this production tree.

## Current bounded production piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_COMBAT_EXCHANGE_REGRESSION`.

Extend the current test-only fresh-instance autorun through one already-implemented deterministic combat exchange using existing owners. Do not alter normal player movement/look controls or add player-facing autoplay.
