# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 THROUGH GENERIC STATUS APPLICATION ANDROID BUILD VERIFIED / GENERIC STATUS TIMING NEXT
Last reconciled: 2026-09-04

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

Current combat runtime notes include `HUNT01_HUNTER_REACTION_WINDOW_RUNTIME.md`, `HUNT01_FIRST_HUNTER_ATTACK_RUNTIME.md`, `HUNT01_MUDCREST_ANATOMY_INTEGRITY_RUNTIME.md`, `HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME.md`, `HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME.md`, `HUNT01_HUNTER_HEALTH_INJURY_RUNTIME.md`, `HUNT01_MUDCREST_WOUND_CONTACT_RUNTIME.md`, and `HUNT01_GENERIC_STATUS_APPLICATION_RUNTIME.md`.

## Current verified baseline

Generic status implementation `6c9fc8592ce0de769f213790cc0e3e0a8ff95fdc`.
Production workflow `33936580266`: SUCCESS.
Job `101225581109`: SUCCESS.
Artifact `9960395435`: `UnnamedHuntRPG-Hunt01-StatusApplication-debug`.

The full automated pipeline through generic status application passes source gates, Godot parse/smoke, production integration/regressions, dedicated status headless, Android export and artifact upload.

Latest handoff:
`docs/70_handoff/HUNT01_GENERIC_STATUS_APPLICATION_RUNTIME_2026-09-04.md`.

## Layer ownership

World/presentation: Region-01 authorities.
Tracking/evidence: `game/scripts/gameplay/tracking/`.
Observation/ENGAGE: `game/scripts/gameplay/encounter/`.
Generic combat/status application/timing: `game/scripts/gameplay/combat/`.
Monster-01 content qualification: `game/scripts/gameplay/monsters/monster_01/`.

## Verification boundary

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTED = YES`
`FIRST_SLICE_GENERIC_STATUS_APPLICATION_HEADLESS_VERIFIED = YES`
`FIRST_SLICE_GENERIC_STATUS_APPLICATION_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTED = NO`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTATION`.

Wire contract-ordered TURN_START_PRE_RECOVERY, TURN_END and ROUND_END lifecycle hooks. Expire Off-Balance only after the target completes its next normal activation. Emit idempotent pending Bleeding periodic consequences at eligible round end without selecting/applying HP magnitude.
