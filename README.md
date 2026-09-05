# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 THROUGH HUNTER HEALTH-INJURY ANDROID BUILD VERIFIED / HEAD SWEEP WOUND-CONTACT CLASSIFICATION NEXT
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

World/exploration uses one continuous 440×440 m Hunt-01 physical foundation, 6.25 m/s exploration speed, approximately 115° first-person FOV, and the protected shooter-style mobile movement/look law.

Tracking/encounter has seven physical clues, deterministic reasoning, no Monster GPS, terminal `OBSERVATION_READY`, and explicit same-location first-person ENGAGE.

Combat now includes deterministic turn/AP-RP-Stamina authority, authored tactical movement, Hunter `POLEBLADE_MEASURED_CUT`, Mudcrest anatomy integrity, reaction window, real `M01_HEAD_SWEEP_GORE`, Hunter defense consequence, and Hunter health/injury.

Hunter health/injury uses `PROVISIONAL_FIRST_SLICE_HUNTER_HEALTH_INJURY_FIXTURE`: normalized Health 100; GRAZE/SOLID/CLEAN loads 4/8/12; Strong/Partial/Broken/No-Guard residuals 25/60/90/100%; clamp at zero; replay idempotence; no inferred armor from art. These values are executable prototype balance, not final rules.

Zero Health emits a pending defeat handoff only. Actual status requests remain blocked until Head Sweep species content establishes wound/contact qualification.

## Current verified baseline

Health implementation `057928b30ddef3eac83a316a62c48b5e3fa22632`.
Verified source head `06bd3e6ee039bc0f975918d6cf5fef232bf36cdc`.
Production workflow `33934988066`: SUCCESS.
Job `101221044355`: SUCCESS.

Artifact:
- ID `9959871663`;
- `UnnamedHuntRPG-Hunt01-HunterHealth-debug`;
- 57,365,013 bytes;
- SHA-256 `ebb15c4b124e9b046e4194951414bc01cdcd5c28a8136d7ebb2f8b694fcf1f66`.

The stack through Hunter health/injury is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Phone acceptance for newer production gameplay remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

## Current bounded piece

`FIRST_SLICE_MUDCREST_HEAD_SWEEP_WOUND_CONTACT_CLASSIFICATION_RUNTIME_IMPLEMENTATION`.

This species/content layer must classify the already-resolved Head Sweep wound/contact without rerolling, determine whether Bleeding or Off-Balance prerequisites are actually satisfied, and emit only valid application-request records. Generic status application/timing remains downstream.