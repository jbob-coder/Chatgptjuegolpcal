# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH HEAD SWEEP WOUND-CONTACT CLASSIFICATION ANDROID BUILD VERIFIED / GENERIC STATUS APPLICATION NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-04

## Live project

Repository: `jbob-coder/Chatgptjuegolpcal`
Branch: `worldlife-reference-docs`
Production Godot root: `game/`
Stage-1 probe: `probes/android_stage1/` — evidence only.
WorldLife RPG is abandoned.

## Current playable production stack

World/exploration: continuous 440×440 m Hunt-01 physical foundation, 6.25 m/s exploration speed, approximately 115° first-person FOV, accepted shooter-style mobile controls.

Tracking/encounter: seven physical evidence items, deterministic reasoning, no Monster GPS, terminal `OBSERVATION_READY`, physical observation/engagement zones, explicit same-location ENGAGE.

Combat: deterministic turn/AP-RP-Stamina shell, tactical-node movement, Hunter Measured Cut, Mudcrest anatomy integrity, reaction window, real Head Sweep, Hunter defense consequence, normalized provisional Hunter Health/injury and the first species-owned wound/contact classifier.

The classifier consumes the already-resolved Head Sweep consequence exactly once and can emit valid `status_bleeding` or `status_off_balance` application requests only after its explicit provisional penetration/impact-dominance prerequisites are satisfied. It does not apply statuses.

## Current verified baseline

Implementation commit:
`6012235a958c0d4a73ff7c36201e2eff20715b70`.

Production workflow `33935813877`: SUCCESS.
Job `101223419039`: SUCCESS.

Passed:
- manifest / production projection;
- all current source preflights including wound/contact classification;
- Godot 4.7.2 parse/import;
- AppShell and Region smoke;
- production integration;
- combat shell + tactical movement;
- reaction, Head Sweep, defense consequence and Hunter health/injury regressions;
- dedicated Mudcrest wound/contact classifier headless test;
- Mudcrest anatomy and Hunter attack headless regressions;
- Android debug APK export;
- artifact upload.

Artifact `9960134957`:
`UnnamedHuntRPG-Hunt01-WoundContact-debug`, 57,384,899 bytes, SHA-256 `54f942ec0d891a27c9ee702db58db8edf68cb905e2468b07f3097797976820b1`.

Verification labels:
- stack through wound/contact classification: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest handoff:
`docs/70_handoff/HUNT01_MUDCREST_WOUND_CONTACT_RUNTIME_2026-09-04.md`.

## Explicitly incomplete

- generic status application/state owner;
- status timing hooks, Bleeding periodic consequences and Off-Balance natural expiry;
- final Hunter Max Health/damage/armor balance;
- structural crack/break/sever/detached parts;
- remaining four normal Mudcrest attacks and deterministic behavior selection;
- Berserk;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence runtime;
- final phone/performance validation.

## Exact next action

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTATION`.

Create the generic combat owner that consumes already-valid content requests without re-deciding wound qualification. First executable scope supports current Bleeding and Off-Balance producers, deterministic idempotent application, stack/refresh policy and timing metadata only. Do not execute periodic Bleeding damage, TURN_START/TURN_END transitions, resource refresh, Health/anatomy mutation or Initiative edits in this layer.
