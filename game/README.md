# Production Game Root

Status: HUNT-01 BASIC AUTORUN REAL STATUS LIFECYCLE STATIC/HEADLESS/ANDROID BUILD VERIFIED / HUNTER DEFEAT TERMINAL AUTORUN NEXT
Last reconciled: 2026-09-13

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter speed `6.25 m/s`; first-person FOV `115°`; protected analog movement + independent look.

Tracking/encounter: physical evidence through terminal `OBSERVATION_READY`, physical observation/engagement and same-location combat staging.

Generic combat `scripts/gameplay/combat/`: deterministic turn/resources/tactical movement, Hunter attack/reaction/defense/health, generic Bleeding/Staggered/Off-Balance status application/timing and generic encounter-outcome ownership.

Monster-01 `scripts/gameplay/monsters/monster_01/`: anatomy, Head Sweep, Tail Sweep, species wound/contact qualification and Tail Sweep CLEAN→generic Staggered producer integration.

Verification automation: `tests/hunt01_basic_runtime_autorun_test.gd` boots the real production Region-01 scene twice, drives tracking/ENGAGE, resolves the real Tail Sweep/Poleblade Block exchange, repositions through authored nodes and normal AP economy, resolves the real Dorsal Measured Cut/anatomy exchange, then drives a real unguarded Head Sweep into the generic Bleeding application/timing lifecycle. Round-5 `ROUND_END` emits the existing pending Bleeding periodic handoff without selecting HP magnitude or mutating Health. The test tears each instance down, rejects state leakage and does not alter normal gameplay input or create autoplay.

## Verification status

Verified gameplay/source head `9e854599780301e3e9c045b1bac73de9e27b5238`.
Workflow `34779190819`: SUCCESS.
Job `103782938270`: SUCCESS.
Artifact `10324690130`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,526,652 bytes, SHA-256 `5eda52a2aa21afb6777880a6c62bfd8205fe0b2116b945b7cf13b724737b4aa9`.

Stack through the integrated real-status lifecycle autorun is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.
Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

New chats must use root `START_HERE_NEW_CHAT.md` and reconstruct the live branch before changing this production tree.

## Current bounded production piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_DEFEAT_TERMINAL_REGRESSION`.

Extend the current test-only fresh-instance autorun through the already-implemented Hunter Downed/`HUNTERS_DEFEATED` terminal chain using existing health/outcome/scheduler owners and a real hostile final contact. Test-only health preparation is allowed only to reach the already-verified boundary efficiently. Preserve the existing Monster exchange, Hunter attack/anatomy exchange and real Bleeding lifecycle. Do not alter normal player controls, add player-facing autoplay, invent recovery/respawn, resolve voluntary withdrawal, select Bleeding HP magnitude or add new combat/terminal semantics.
