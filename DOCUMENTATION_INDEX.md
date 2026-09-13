# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 THROUGH MUDCREST TAIL SWEEP ANDROID BUILD VERIFIED / GENERIC STAGGERED STATUS NEXT
Last reconciled: 2026-09-13

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. this index
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. `game/README.md`
10. exact owning package/source/data/tests.

## Production runtime map

Current combat runtime notes include Hunter reaction, first Hunter attack, Mudcrest anatomy, Head Sweep, defense consequence, Hunter health/injury, Mudcrest wound/contact, generic status application/timing, Hunter Downed encounter outcome, and `game/docs/HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME.md`.

Layer ownership remains:
- world/presentation: Region-01 authorities;
- tracking/evidence: `game/scripts/gameplay/tracking/`;
- observation/ENGAGE: `game/scripts/gameplay/encounter/`;
- generic combat/status/outcome: `game/scripts/gameplay/combat/`;
- Monster-01 anatomy/content/attacks: `game/scripts/gameplay/monsters/monster_01/`.

## Current verified baseline

Verified source head `80df7e0aef1b505ea3085f42af8c8710aa79c2a7`.
Production workflow `34760296459`: SUCCESS.
Job `103731848690`: SUCCESS.
Artifact `10318643114`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,477,142 bytes, SHA-256 `98ddaecdb732a2af49c91d702fddce931ed40c9901b86f9f3c717988cfdf0542`.

Latest handoff:
`docs/70_handoff/HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_2026-09-13.md`.

## Verification boundary

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_HEADLESS_VERIFIED = YES`
`FIRST_SLICE_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTED = NO`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTATION`.

Extend only the existing generic status application/timing owners with the selected Staggered storage/refresh/next-turn-start transition. Tail Sweep CLEAN remains a pending producer boundary until a separate integration piece.
