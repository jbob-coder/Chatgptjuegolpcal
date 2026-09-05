# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH GENERIC STATUS APPLICATION ANDROID BUILD VERIFIED / GENERIC STATUS TIMING NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-04

## Live project

Repository: `jbob-coder/Chatgptjuegolpcal`
Branch: `worldlife-reference-docs`
Production Godot root: `game/`
Stage-1 probe: `probes/android_stage1/` — evidence only.
WorldLife RPG is abandoned.

## Current playable production stack

World/exploration: continuous 440×440 m Hunt-01 foundation, protected mobile shooter controls, approximately 115° first-person FOV and 6.25 m/s exploration speed.

Tracking/encounter: seven physical clues, deterministic reasoning, no Monster GPS, terminal `OBSERVATION_READY`, physical observation/engagement and same-location ENGAGE.

Combat: deterministic turns/resources/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction window, real Head Sweep, defense consequence, Hunter health/injury, species wound/contact classification and generic status application.

The status owner consumes already-valid content requests. Bleeding is one actor-level capped-intensity instance (max 3) with first eligible tick metadata; Off-Balance is one refresh-duration instance with pending completed-activation expiry metadata. Duplicate request IDs are idempotent. Status-state snapshot/rehydration does not replay ON_APPLY.

## Current verified baseline

Implementation commit:
`6c9fc8592ce0de769f213790cc0e3e0a8ff95fdc`.

Production workflow `33936580266`: SUCCESS.
Job `101225581109`: SUCCESS.

Passed:
- manifest / production projection and all current source preflights;
- Godot 4.7.2 parse/import;
- AppShell and Region smoke;
- production integration;
- combat shell/tactical movement, reaction, Head Sweep, defense, health/injury and wound/contact regressions;
- dedicated generic status-application headless test;
- anatomy and Hunter attack regressions;
- Android debug APK export and artifact upload.

Artifact `9960395435`:
`UnnamedHuntRPG-Hunt01-StatusApplication-debug`, 57,410,444 bytes, SHA-256 `4606069697c5ae9128acf27ddad65724613ad8e83d53e8791a292339c8b0b15f`.

Verification labels:
- stack through generic status application: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest handoff:
`docs/70_handoff/HUNT01_GENERIC_STATUS_APPLICATION_RUNTIME_2026-09-04.md`.

## Explicitly incomplete

- status timing/lifecycle hook execution;
- Bleeding periodic Health magnitude/consequence;
- Off-Balance natural expiry execution and Brace integration;
- Staggered/Braced/Guarded producers/lifecycle;
- structural crack/break/sever/detached parts;
- remaining Mudcrest attacks/behavior/Berserk;
- defeat/escape/reacquisition;
- harvest/inventory/crafting/settlement/persistence;
- final phone/performance validation.

## Exact next action

`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTATION`.

Add generic lifecycle timing for TURN_START_PRE_RECOVERY, TURN_END and ROUND_END. First executable effects: Off-Balance natural removal after the target's next completed normal activation and deterministic Bleeding periodic-event emission no earlier than `first_tick_round`, max once per actor/round. Bleeding event must remain a pending Health consequence because authoritative periodic HP magnitude is still open.
