# Unnamed Hunt RPG

Status: PRODUCTION GAME ACTIVE / HUNT-01 THROUGH HEAD SWEEP WOUND-CONTACT CLASSIFICATION ANDROID BUILD VERIFIED / GENERIC STATUS APPLICATION NEXT
Last reconciled: 2026-09-04

Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main loop

`SETTLEMENT → PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → SAME-LOCATION FIRST-PERSON TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → ESCAPE/DEFEAT → REACQUIRE/HARVEST → INVENTORY → RETURN → PROCESS/CRAFT/EQUIP → NEXT HUNT`.

## Production root

`game/`. `probes/android_stage1/` is evidence only.

## Current production stack

World/exploration uses one continuous 440×440 m Hunt-01 physical foundation, 6.25 m/s exploration speed, approximately 115° first-person FOV, and the protected shooter-style mobile movement/look law.

Tracking/encounter has seven physical clues, deterministic reasoning, no Monster GPS, terminal `OBSERVATION_READY`, and explicit same-location first-person ENGAGE.

Combat includes deterministic turn/AP-RP-Stamina authority, authored tactical movement, Hunter `POLEBLADE_MEASURED_CUT`, Mudcrest anatomy integrity, reaction window, real `M01_HEAD_SWEEP_GORE`, Hunter defense consequence, Hunter health/injury, and species-owned Head Sweep wound/contact classification.

The classifier can emit valid Bleeding or Off-Balance application requests only after explicit provisional wound/contact prerequisites are established. It performs no status mutation itself.

## Current verified baseline

Implementation `6012235a958c0d4a73ff7c36201e2eff20715b70`.
Production workflow `33935813877`: SUCCESS.
Job `101223419039`: SUCCESS.
Artifact `9960134957`: `UnnamedHuntRPG-Hunt01-WoundContact-debug`, 57,384,899 bytes, SHA-256 `54f942ec0d891a27c9ee702db58db8edf68cb905e2468b07f3097797976820b1`.

The stack through Head Sweep wound/contact classification is IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED.

Phone acceptance for newer production gameplay remains deferred/batched. `PERFORMANCE_VERIFIED = NO`.

## Current bounded piece

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTATION`.

The generic combat owner consumes valid `PENDING_GENERIC_STATUS_APPLICATION_RUNTIME` requests. First scope applies/refreshes Bleeding and Off-Balance idempotently and records timing metadata. Periodic Bleeding damage and turn-hook scheduling remain downstream.
