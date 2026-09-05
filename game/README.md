# Production Game Root

Status: HUNT-01 THROUGH HEAD SWEEP WOUND-CONTACT CLASSIFICATION ANDROID BUILD VERIFIED / GENERIC STATUS APPLICATION NEXT
Last reconciled: 2026-09-04

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration: continuous `440 x 440 m` Hunt-01 foundation; Hunter exploration speed `6.25 m/s`; first-person FOV `115°`; accepted direct analog movement + independent right-side look retained.

Tracking/encounter: seven physical evidence types through terminal `OBSERVATION_READY`; no Monster GPS; explicit physical observation/engagement; same-location first-person combat staging.

Generic combat owner `scripts/gameplay/combat/`: deterministic turn/AP-RP-Stamina authority, tactical movement, Hunter attack/reaction/defense and Hunter health/injury.

Monster-01 owner `scripts/gameplay/monsters/monster_01/`: normalized anatomy, real `M01_HEAD_SWEEP_GORE`, physical legality/telegraph/contact, and verified species-owned wound/contact qualification that may emit valid status application requests.

## Verification status

Wound/contact implementation `6012235a958c0d4a73ff7c36201e2eff20715b70`.
Production workflow `33935813877`: SUCCESS.
Job `101223419039`: SUCCESS.
Artifact `9960134957`: `UnnamedHuntRPG-Hunt01-WoundContact-debug`.

The current stack through wound/contact classification is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

## Current bounded production piece

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTATION`.

Generic combat must consume already-valid requests without re-deciding content qualification, apply/refresh actor status state exactly once, enforce Bleeding capped intensity and Off-Balance refresh policy, and record future timing metadata. It must not own periodic Bleeding damage, turn-hook scheduling, resources, Initiative, anatomy or presentation.
