# Production Game Root

Status: HUNT-01 THROUGH MUDCREST TAIL SWEEP ANDROID BUILD VERIFIED / GENERIC STAGGERED STATUS NEXT
Last reconciled: 2026-09-13

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter speed `6.25 m/s`; first-person FOV `115°`; protected analog movement + independent look.

Tracking/encounter: physical evidence through terminal `OBSERVATION_READY`, physical observation/engagement and same-location combat staging.

Generic combat `scripts/gameplay/combat/`: deterministic turn/resources/tactical movement, Hunter attack/reaction/defense/health, generic Bleeding/Off-Balance status application/timing and generic encounter-outcome ownership.

Monster-01 `scripts/gameplay/monsters/monster_01/`: anatomy, Head Sweep, Tail Sweep and species wound/contact qualification.

## Verification status

Verified gameplay/source head `80df7e0aef1b505ea3085f42af8c8710aa79c2a7`.
Workflow `34760296459`: SUCCESS.
Job `103731848690`: SUCCESS.
Artifact `10318643114`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,477,142 bytes, SHA-256 `98ddaecdb732a2af49c91d702fddce931ed40c9901b86f9f3c717988cfdf0542`.

Stack through Tail Sweep is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

New chats must use root `START_HERE_NEW_CHAT.md` and reconstruct the live branch before changing this production tree.

## Current bounded production piece

`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTATION`.

Extend the existing generic status application/timing owners with deterministic Staggered storage, `REFRESH_DURATION`, no intensity stacking, and one next-`TURN_START_PRE_RECOVERY` transition into existing Off-Balance without skipping the activation. Preserve current status regressions and do not wire Tail Sweep CLEAN as a producer in this piece.
