# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 THROUGH HUNTER HEALTH-INJURY ANDROID BUILD VERIFIED / HEAD SWEEP WOUND-CONTACT CLASSIFICATION NEXT
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

Core production:
- `game/project.godot` / `game/export_presets.cfg`;
- Region-01 scene/presentation;
- `game/scripts/gameplay/tracking/`;
- `game/scripts/gameplay/encounter/hunt01_encounter_trigger_runtime.gd`;
- generic combat owners under `game/scripts/gameplay/combat/`, including turn shell, tactical movement, reaction, Hunter attack, defense consequence and Hunter health/injury;
- Monster-01 anatomy + species attack under `game/scripts/gameplay/monsters/monster_01/`;
- Head Sweep telegraph under `game/assets/effects/`;
- `.github/workflows/production-hunt01-graybox-android.yml`.

Runtime notes:
- `game/docs/HUNT01_HUNTER_REACTION_WINDOW_RUNTIME.md`;
- `game/docs/HUNT01_FIRST_HUNTER_ATTACK_RUNTIME.md`;
- `game/docs/HUNT01_MUDCREST_ANATOMY_INTEGRITY_RUNTIME.md`;
- `game/docs/HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME.md`;
- `game/docs/HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME.md`;
- `game/docs/HUNT01_HUNTER_HEALTH_INJURY_RUNTIME.md`.

## Current verified baseline

Health implementation `057928b30ddef3eac83a316a62c48b5e3fa22632`.
Verified source head `06bd3e6ee039bc0f975918d6cf5fef232bf36cdc`.
Production workflow `33934988066`: SUCCESS.
Job `101221044355`: SUCCESS.
Artifact `9959871663`: `UnnamedHuntRPG-Hunt01-HunterHealth-debug`.

The full automated pipeline through Hunter health/injury passes source gates, Godot parse/smoke, production integration/regressions, dedicated health headless, Android export and artifact upload.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_HEALTH_INJURY_RUNTIME_2026-09-04.md`.

## Layer ownership

World foundation/presentation: Region-01 presentation + world authorities.
Tracking/evidence: `game/scripts/gameplay/tracking/`.
Observation/ENGAGE: `game/scripts/gameplay/encounter/`.
Generic combat: `game/scripts/gameplay/combat/`.
Monster-01 species/content: `game/scripts/gameplay/monsters/monster_01/`.

The next wound/contact qualification layer belongs to Monster-01 species/content because the status contract says content/action owners decide whether a successful consequence requests a status. The generic status system must only consume a valid request.

Relevant next-layer authorities:
- `docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
- current Head Sweep/defense/health source and tests.

## Verification boundary

`HUNT01_HUNTER_HEALTH_INJURY_RUNTIME_IMPLEMENTED = YES`
`HUNT01_HUNTER_HEALTH_INJURY_HEADLESS_VERIFIED = YES`
`HUNT01_HUNTER_HEALTH_INJURY_ANDROID_BUILD_VERIFIED = YES`
`HUNT01_HEAD_SWEEP_WOUND_CONTACT_CLASSIFIER_IMPLEMENTED = NO`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_WOUND_CONTACT_CLASSIFICATION_RUNTIME_IMPLEMENTATION`.

Classify the already-resolved wound/contact without rerolling or mutating Health; establish the Monster packet's penetration/dominance prerequisites idempotently; emit explicit status application-request data only after qualification; leave generic status application/timing downstream.