# Production Game Root

Status: HUNT-01 THROUGH TAIL SWEEP CLEAN→STAGGERED ANDROID BUILD VERIFIED / BASIC RUNTIME AUTORUN NEXT
Last reconciled: 2026-09-13

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter speed `6.25 m/s`; first-person FOV `115°`; protected analog movement + independent look.

Tracking/encounter: physical evidence through terminal `OBSERVATION_READY`, physical observation/engagement and same-location combat staging.

Generic combat `scripts/gameplay/combat/`: deterministic turn/resources/tactical movement, Hunter attack/reaction/defense/health, generic Bleeding/Staggered/Off-Balance status application/timing and generic encounter-outcome ownership.

Monster-01 `scripts/gameplay/monsters/monster_01/`: anatomy, Head Sweep, Tail Sweep, species wound/contact qualification and Tail Sweep CLEAN→generic Staggered producer integration.

## Verification status

Verified gameplay/source head `fbfd30fde0ad74bdb73d384533287b884341cd93`.
Workflow `34762775881`: SUCCESS.
Job `103738398857`: SUCCESS.
Artifact `10319377979`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,485,460 bytes, SHA-256 `1760956f76d2d908d64f6efc7da3fc7e409d23a26cb4ccd65402c83739d82273`.

Stack through Tail Sweep CLEAN→Staggered producer integration is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

New chats must use root `START_HERE_NEW_CHAT.md` and reconstruct the live branch before changing this production tree.

## Current bounded production piece

`FIRST_SLICE_HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION`.

Add a deterministic fresh-instance headless repeatability gate around the already-implemented production basics. It may call test-only helpers but must not alter normal player movement/look controls or add player-facing autoplay.
