# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / HUNT-01 THROUGH HEAD SWEEP WOUND-CONTACT CLASSIFICATION ANDROID BUILD VERIFIED / GENERIC STATUS APPLICATION NEXT
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
- Region-01 scene/presentation and tracking/encounter owners;
- generic combat owners under `game/scripts/gameplay/combat/`;
- Monster-01 anatomy, species attack and wound/contact classifier under `game/scripts/gameplay/monsters/monster_01/`;
- `.github/workflows/production-hunt01-graybox-android.yml`.

Runtime notes include:
- `game/docs/HUNT01_HUNTER_REACTION_WINDOW_RUNTIME.md`;
- `game/docs/HUNT01_FIRST_HUNTER_ATTACK_RUNTIME.md`;
- `game/docs/HUNT01_MUDCREST_ANATOMY_INTEGRITY_RUNTIME.md`;
- `game/docs/HUNT01_MUDCREST_HEAD_SWEEP_ATTACK_RUNTIME.md`;
- `game/docs/HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME.md`;
- `game/docs/HUNT01_HUNTER_HEALTH_INJURY_RUNTIME.md`;
- `game/docs/HUNT01_MUDCREST_WOUND_CONTACT_RUNTIME.md`.

## Current verified baseline

Wound/contact implementation `6012235a958c0d4a73ff7c36201e2eff20715b70`.
Production workflow `33935813877`: SUCCESS.
Job `101223419039`: SUCCESS.
Artifact `9960134957`: `UnnamedHuntRPG-Hunt01-WoundContact-debug`.

The automated pipeline through species-owned Head Sweep wound/contact classification passes source gates, Godot parse/smoke, production integration/regressions, dedicated classifier headless, Android export and artifact upload.

Latest handoff:
`docs/70_handoff/HUNT01_MUDCREST_WOUND_CONTACT_RUNTIME_2026-09-04.md`.

## Layer ownership

World foundation/presentation: Region-01 presentation + world authorities.
Tracking/evidence: `game/scripts/gameplay/tracking/`.
Observation/ENGAGE: `game/scripts/gameplay/encounter/`.
Generic combat/status application: `game/scripts/gameplay/combat/`.
Monster-01 species/content qualification: `game/scripts/gameplay/monsters/monster_01/`.

Content/action owners decide whether successful consequences request statuses. The generic status system begins only after a valid application request exists.

## Verification boundary

`HUNT01_HEAD_SWEEP_WOUND_CONTACT_CLASSIFIER_IMPLEMENTED = YES`
`HUNT01_HEAD_SWEEP_WOUND_CONTACT_CLASSIFIER_HEADLESS_VERIFIED = YES`
`HUNT01_HEAD_SWEEP_WOUND_CONTACT_CLASSIFIER_ANDROID_BUILD_VERIFIED = YES`
`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTED = NO`
`CURRENT_POST_TRACKING_PHONE_ACCEPTANCE = DEFERRED`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Exact continuation

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTATION`.

Consume only valid pending requests; apply them idempotently to generic actor-level status instances; enforce Bleeding capped intensity and Off-Balance refresh; record timing metadata; leave periodic/timing-hook execution downstream.
