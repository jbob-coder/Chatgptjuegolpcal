# Production Game Root

Status: HUNT-01 THROUGH GENERIC STAGGERED ANDROID BUILD VERIFIED / TAIL SWEEP CLEAN STAGGERED PRODUCER NEXT
Last reconciled: 2026-09-13

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter speed `6.25 m/s`; first-person FOV `115°`; protected analog movement + independent look.

Tracking/encounter: physical evidence through terminal `OBSERVATION_READY`, physical observation/engagement and same-location combat staging.

Generic combat `scripts/gameplay/combat/`: deterministic turn/resources/tactical movement, Hunter attack/reaction/defense/health, generic Bleeding/Staggered/Off-Balance status application/timing and generic encounter-outcome ownership.

Monster-01 `scripts/gameplay/monsters/monster_01/`: anatomy, Head Sweep, Tail Sweep and species wound/contact qualification.

## Verification status

Verified gameplay/source head `29623181bfb758b322e47d83a1c2f652b225561a`.
Workflow `34761564734`: SUCCESS.
Job `103735203468`: SUCCESS.
Artifact `10318917250`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,484,077 bytes, SHA-256 `9a881d020858aea018da82f4af40f650f374fb6291a6281c19b5419fdfc4b9d1`.

Stack through Generic Staggered is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

New chats must use root `START_HERE_NEW_CHAT.md` and reconstruct the live branch before changing this production tree.

## Current bounded production piece

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_CLEAN_STAGGERED_PRODUCER_INTEGRATION`.

Wire only the existing Tail Sweep CLEAN species consequence to one valid generic Staggered application request. Preserve SOLID Off-Balance, Strong Block no-status, attack economy/contact/geometry, Generic Status Application/Timing idempotency and all current deferrals.
