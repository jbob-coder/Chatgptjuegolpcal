# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 BASIC AUTORUN COMBAT EXCHANGE ANDROID BUILD VERIFIED / HUNTER ATTACK AUTORUN INTEGRATION NEXT
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

Generic combat/status/outcome lives under `game/scripts/gameplay/combat/`; Monster-01 anatomy/content/attacks remain under `game/scripts/gameplay/monsters/monster_01/`. The production workflow also owns a fresh-instance basic runtime autorun regression under `game/tests/` that exercises the real Region-01 tracking/ENGAGE/scheduler path and a deterministic Tail Sweep/Block combat exchange without altering normal gameplay controls.

## Current verified baseline

Latest full production-verified revision `c541c735fe93b049cc25d8c29a2c048ceb6139fe`.
Production workflow `34771386938`: SUCCESS.
Job `103761502217`: SUCCESS.
Artifact `10322166858`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,504,706 bytes, SHA-256 `a092e435471bd7411fd63902e67cb44608c7c1c1e8ff98e4401bbf969b6db6ff`.

Latest gameplay handoff:
`docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Verification boundary

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_MUDCREST_TAIL_SWEEP_CLEAN_STAGGERED_PRODUCER_IMPLEMENTED = YES`
`FIRST_SLICE_HUNT01_BASIC_RUNTIME_AUTORUN_IMPLEMENTED = YES`
`FIRST_SLICE_HUNT01_BASIC_RUNTIME_AUTORUN_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_HUNT01_BASIC_AUTORUN_COMBAT_EXCHANGE_IMPLEMENTED = YES`
`FIRST_SLICE_HUNT01_BASIC_AUTORUN_COMBAT_EXCHANGE_ANDROID_BUILD_VERIFIED = YES`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_REGRESSION`.

Extend the current verification-only autorun through one already-implemented Hunter Measured Cut/anatomy transaction while preserving the verified Tail Sweep/Block exchange, two-cycle fresh-instance repeatability and the full production Android gate.
