# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 THROUGH HUNTER DOWNED OUTCOME ANDROID BUILD VERIFIED / TAIL SWEEP NEXT
Last reconciled: 2026-09-06

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

Core production includes Region-01 world/presentation, tracking/encounter owners, generic combat owners under `game/scripts/gameplay/combat/`, Monster-01 species/content under `game/scripts/gameplay/monsters/monster_01/`, and the production Android workflow.

Current combat runtime notes include `HUNT01_HUNTER_REACTION_WINDOW_RUNTIME.md`, `HUNT01_FIRST_HUNTER_ATTACK_RUNTIME.md`, `HUNT01_MUDCREST_ANATOMY_INTEGRITY_RUNTIME.md`, `HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME.md`, `HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME.md`, `HUNT01_HUNTER_HEALTH_INJURY_RUNTIME.md`, `HUNT01_MUDCREST_WOUND_CONTACT_RUNTIME.md`, `HUNT01_GENERIC_STATUS_APPLICATION_RUNTIME.md`, `HUNT01_GENERIC_STATUS_TIMING_RUNTIME.md`, and `HUNT01_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME.md`.

## Current verified baseline

Hunter Downed verified source head `f363998334bb752b037ed524cb909ad12634b71f`.
Implementation commit `a6476483c7f187f5e4904d7901c28e1abe0f9996`.
Production workflow `33985410020`: SUCCESS.
Job `101357889357`: SUCCESS.
Artifact `9975014310`: `UnnamedHuntRPG-Hunt01-HunterDownedOutcome-debug`, 57,446,932 bytes, SHA-256 `ab431361b3be3b325300d7d2242cd622afdb376f6426d8d2228fab0388cae196`.

The automated pipeline through Hunter Downed passes current source gates, Godot parse/smoke, production integration/regressions, dedicated outcome headless verification, Android export and artifact upload.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_2026-09-06.md`.

## Layer ownership

World/presentation: Region-01 authorities.
Tracking/evidence: `game/scripts/gameplay/tracking/`.
Observation/ENGAGE: `game/scripts/gameplay/encounter/`.
Generic combat/status application/timing/outcome: `game/scripts/gameplay/combat/`.
Monster-01 content qualification/anatomy/attacks: `game/scripts/gameplay/monsters/monster_01/`.

## Verification boundary

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_HEADLESS_VERIFIED = YES`
`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_IMPLEMENTED = NO`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`.

Extend the existing Monster-01 attack owner with the authored intact-tail rear/flank Tail Sweep, reusing the current reaction/Block/status/scheduler owners. Structural sever thresholds, Staggered runtime, Bleeding periodic HP magnitude and Hunter withdrawal geometry remain outside this slice.
