# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 BASIC AUTORUN HUNTER DEFEAT TERMINAL ANDROID BUILD VERIFIED / 2 GB STORAGE CAP SELECTED / PACKAGE CAP CI GATE NEXT
Last reconciled: 2026-09-14

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
10. exact owning package/source/data/tests/static gates/workflow.

Fetch live branch HEAD before reading and re-check it afterward. Distinguish live documentation HEAD from the last source SHA actually proven by build evidence.

## Runtime map

Generic combat/status/outcome lives under `game/scripts/gameplay/combat/`; Monster-01 anatomy/content/attacks live under `game/scripts/gameplay/monsters/monster_01/`. The production fresh-instance autorun under `game/tests/` now exercises tracking/ENGAGE, a real Monster combat exchange, Hunter attack/anatomy exchange, real Bleeding lifecycle and Hunter defeat-terminal chain.

## Storage authority

`PERFORMANCE_BUDGETS_AND_CAPS.md` owns the user-selected hard game-storage rule:
- total player-required installed/runtime footprint ≤ `2,000,000,000` bytes;
- mandatory runtime downloads count;
- development-only source/repo/CI files do not count;
- APK/AAB size is package evidence, not full installed-footprint proof.

## Current verified baseline

Latest full production-verified source revision `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.
Production workflow `34880096112`: SUCCESS.
Job `104096962757`: SUCCESS.
Artifact `10362706279`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,536,941 bytes, SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

Latest gameplay handoff: `docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Verification boundary

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_MUDCREST_TAIL_SWEEP_CLEAN_STAGGERED_PRODUCER_IMPLEMENTED = YES`
`FIRST_SLICE_HUNT01_BASIC_RUNTIME_AUTORUN_IMPLEMENTED = YES`
`FIRST_SLICE_HUNT01_BASIC_AUTORUN_MONSTER_COMBAT_EXCHANGE_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_HUNT01_BASIC_AUTORUN_REAL_STATUS_LIFECYCLE_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_DEFEAT_TERMINAL_ANDROID_BUILD_VERIFIED = YES`
`TOTAL_GAME_STORAGE_CAP_SELECTED = YES / 2_GB_DECIMAL`
`ANDROID_PACKAGE_2GB_CAP_CI_ENFORCED = NO / NEXT`
`INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_ANDROID_PACKAGE_2GB_STORAGE_CAP_CI_GATE`.

Add a production-workflow gate after Android export that records package bytes and fails above 2,000,000,000 bytes. This is package-size verification only; do not claim installed-footprint compliance. No gameplay/runtime/content changes belong in this slice.
