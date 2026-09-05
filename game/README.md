# Production Game Root

Status: HUNT-01 THROUGH HUNTER HEALTH-INJURY ANDROID BUILD VERIFIED / HEAD SWEEP WOUND-CONTACT CLASSIFICATION NEXT
Last reconciled: 2026-09-04

This folder is the production Godot project for Unnamed Hunt RPG. `probes/android_stage1/` remains Stage-1 evidence/testing infrastructure only.

## Current production stack

World/exploration:
- continuous `440 x 440 m` Hunt-01 foundation;
- Hunter exploration speed `6.25 m/s`;
- first-person FOV `115°`;
- accepted direct analog movement + independent right-side look retained.

Tracking/encounter:
- seven physical evidence types through terminal `OBSERVATION_READY`;
- no Monster GPS;
- explicit physical observation/engagement;
- same-location first-person combat staging.

Generic combat owner `scripts/gameplay/combat/`:
- deterministic turn/AP-RP-Stamina authority;
- adjacent tactical-node movement;
- Hunter `POLEBLADE_MEASURED_CUT`;
- Hunter reaction window;
- Hunter defense consequence with separate guard-impact drain;
- Hunter health/injury runtime `uhr.hunt01.hunter_health_injury.v1`;
- normalized reversible Health fixture, no inferred gameplay armor, zero clamp and pending defeat boundary.

Monster-01 owner `scripts/gameplay/monsters/monster_01/`:
- normalized per-target anatomy integrity;
- real `M01_HEAD_SWEEP_GORE` at exactly `2 AP / 14 Stamina`;
- physical legality, telegraph and deterministic hostile contact;
- next: wound/contact qualification for Head Sweep status-request prerequisites.

## Verification status

Health implementation `057928b30ddef3eac83a316a62c48b5e3fa22632`.
Verified source head `06bd3e6ee039bc0f975918d6cf5fef232bf36cdc`.
Production workflow `33934988066`: SUCCESS.
Job `101221044355`: SUCCESS.
Artifact `9959871663`: `UnnamedHuntRPG-Hunt01-HunterHealth-debug`.

The current stack through Hunter health/injury is STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Post-tracking phone acceptance remains `DEFERRED_BATCH`. `PERFORMANCE_VERIFIED = NO`. `FINAL_ENGINE_SELECTED = NO`.

## Current bounded production piece

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_WOUND_CONTACT_CLASSIFICATION_RUNTIME_IMPLEMENTATION`.

Species content must classify the already-resolved Head Sweep wound/contact once. It may emit valid status application-request records only after the Monster attack packet's prerequisites are established. It must not apply statuses, alter Health/resources/anatomy, or reroll contact.