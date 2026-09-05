# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 THROUGH GENERIC STATUS TIMING ANDROID BUILD VERIFIED / HUNTER DOWNED OUTCOME NEXT
Last reconciled: 2026-09-05

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

Current combat runtime notes include `HUNT01_HUNTER_REACTION_WINDOW_RUNTIME.md`, `HUNT01_FIRST_HUNTER_ATTACK_RUNTIME.md`, `HUNT01_MUDCREST_ANATOMY_INTEGRITY_RUNTIME.md`, `HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME.md`, `HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME.md`, `HUNT01_HUNTER_HEALTH_INJURY_RUNTIME.md`, `HUNT01_MUDCREST_WOUND_CONTACT_RUNTIME.md`, `HUNT01_GENERIC_STATUS_APPLICATION_RUNTIME.md`, and `HUNT01_GENERIC_STATUS_TIMING_RUNTIME.md`.

## Current verified baseline

Status timing verified source head `57c205e1b2fb1fc69219f44033ef527ea756a353`.
Production workflow `33937504389`: SUCCESS.
Job `101228175010`: SUCCESS.
Artifact `9960678247`: `UnnamedHuntRPG-Hunt01-StatusTiming-debug`, 57,428,913 bytes, SHA-256 `f275b27c4f0f08a9ba0a45a6dd6c8bbb91a6410a564f947cee4efaed4fc88520`.

The full automated pipeline through generic status timing passes current source gates, Godot parse/smoke, production integration/regressions, dedicated timing headless verification, Android export and artifact upload.

Latest handoff:
`docs/70_handoff/HUNT01_GENERIC_STATUS_TIMING_RUNTIME_2026-09-05.md`.

## Layer ownership

World/presentation: Region-01 authorities.
Tracking/evidence: `game/scripts/gameplay/tracking/`.
Observation/ENGAGE: `game/scripts/gameplay/encounter/`.
Generic combat/status application/timing/outcome: `game/scripts/gameplay/combat/`.
Monster-01 content qualification/anatomy/attacks: `game/scripts/gameplay/monsters/monster_01/`.

## Verification boundary

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_GENERIC_STATUS_TIMING_HEADLESS_VERIFIED = YES`
`FIRST_SLICE_GENERIC_STATUS_TIMING_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_IMPLEMENTED = NO`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_IMPLEMENTATION`.

Implement only the selected player-Hunter zero-Health path from `PENDING_HUNTER_DEFEAT_OUTCOME_RUNTIME` through `DOWNED` to terminal `HUNTERS_DEFEATED`, using the existing combat scheduler and preserving the living Monster instance. Structural thresholds and Bleeding periodic HP magnitude remain open and are not part of this slice.
