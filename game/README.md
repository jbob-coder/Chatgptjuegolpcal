# Production Game Root

Status: HUNT-01 BASIC AUTORUN COMBAT EXCHANGE STATIC/HEADLESS/ANDROID BUILD VERIFIED / HUNTER ATTACK AUTORUN INTEGRATION NEXT
Last reconciled: 2026-09-13

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter speed `6.25 m/s`; first-person FOV `115°`; protected analog movement + independent look.

Tracking/encounter: physical evidence through terminal `OBSERVATION_READY`, physical observation/engagement and same-location combat staging.

Generic combat `scripts/gameplay/combat/`: deterministic turn/resources/tactical movement, Hunter attack/reaction/defense/health, generic Bleeding/Staggered/Off-Balance status application/timing and generic encounter-outcome ownership.

Monster-01 `scripts/gameplay/monsters/monster_01/`: anatomy, Head Sweep, Tail Sweep, species wound/contact qualification and Tail Sweep CLEAN→generic Staggered producer integration.

Verification automation: `tests/hunt01_basic_runtime_autorun_test.gd` boots the real production Region-01 scene twice, drives the existing tracking/ENGAGE/basic scheduler path, follows authored movement to N10, resolves the real Tail Sweep through the existing Poleblade Block reaction, verifies deterministic consequence/status/scheduler readback, tears each instance down and rejects state leakage. It does not alter normal gameplay input or create autoplay.

## Verification status

Verified gameplay/source head `b270ef14787043252648c18ff02df31936e2f9a2`.
Workflow `34771120281`: SUCCESS.
Job `103760780223`: SUCCESS.
Artifact `10321349678`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,504,703 bytes, SHA-256 `898292db86fd3df24d213ef77e9d17e0c0a2e1d211ee4e8d3d20a67b59c659e8`.

Stack through the basic autorun combat exchange is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

New chats must use root `START_HERE_NEW_CHAT.md` and reconstruct the live branch before changing this production tree.

## Current bounded production piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_REGRESSION`.

Extend the current test-only fresh-instance autorun through one already-implemented Hunter `POLEBLADE_MEASURED_CUT`/Mudcrest anatomy transaction using existing owners. Preserve the verified Tail Sweep/Block exchange. Do not alter normal player movement/look controls, add player-facing autoplay, select new structural thresholds or invent new combat semantics.
