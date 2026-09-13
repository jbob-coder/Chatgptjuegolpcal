# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 BASIC AUTORUN REAL STATUS LIFECYCLE ANDROID BUILD VERIFIED / HUNTER DEFEAT TERMINAL AUTORUN NEXT
Last reconciled: 2026-09-13

## New-chat entry points

- `START_HERE_NEW_CHAT.md` — mandatory live-state reconstruction/bootstrap protocol.
- `NEW_CHAT_CONTINUATION_PROMPT.md` — reusable launcher; not implementation authority.

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
10. exact owning package/source/data/tests/static gates/workflow for the current bounded piece.

A fresh chat must fetch live branch HEAD before this read, re-check HEAD afterward, distinguish live documentation HEAD from the last source SHA actually proven by build evidence, inspect relevant workflow/artifact evidence and report contradictions.

## Production runtime map

Generic combat/status/outcome lives under `game/scripts/gameplay/combat/`; Monster-01 anatomy/content/attacks remain under `game/scripts/gameplay/monsters/monster_01/`. The production workflow owns a fresh-instance basic runtime autorun under `game/tests/` that exercises the real Region-01 tracking/ENGAGE/scheduler path, a deterministic Tail Sweep/Block combat exchange, a deterministic Hunter Measured Cut/anatomy exchange and a real hostile Bleeding application/timing lifecycle without altering normal gameplay controls.

## Current verified baseline

Latest full production-verified source revision `83dc865064980eaa3d29c5928b0f59e9a4132c79`.
Production workflow `34779563368`: SUCCESS.
Job `103783955039`: SUCCESS.
Artifact `10324451154`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,526,677 bytes, SHA-256 `411bb42819510e84d0f84d8c03033a49e86d3b35ab4cdc9b3251a3f320f22c6d`.

Run 82 was a pre-Godot documentation-governance failure only. Commit `83dc865064980eaa3d29c5928b0f59e9a4132c79` restored the required `combat exchange` wording, and run 83 fully verified that repaired promoted state.

Latest gameplay handoff:
`docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Verification boundary

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_MUDCREST_TAIL_SWEEP_CLEAN_STAGGERED_PRODUCER_IMPLEMENTED = YES`
`FIRST_SLICE_HUNT01_BASIC_RUNTIME_AUTORUN_IMPLEMENTED = YES`
`FIRST_SLICE_HUNT01_BASIC_AUTORUN_MONSTER_COMBAT_EXCHANGE_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_HUNT01_BASIC_AUTORUN_REAL_STATUS_LIFECYCLE_ANDROID_BUILD_VERIFIED = YES`
`HUNTER_DOWNED_DEFEAT_DEDICATED_RUNTIME_ANDROID_BUILD_VERIFIED = YES`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_DEFEAT_TERMINAL_REGRESSION`.

Extend the current verification-only two-cycle smoke through the already-implemented Hunter Downed/`HUNTERS_DEFEATED` terminal chain using existing health/outcome/scheduler owners and a real final hostile contact. Preserve all currently integrated exchanges and the real Bleeding lifecycle. Do not implement recovery/respawn or any still-open combat/content authority.
