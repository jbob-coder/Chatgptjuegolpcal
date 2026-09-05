# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH GENERIC STATUS TIMING ANDROID BUILD VERIFIED / HUNTER DOWNED OUTCOME NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-05

## Live project

Repository: `jbob-coder/Chatgptjuegolpcal`
Branch: `worldlife-reference-docs`
Production Godot root: `game/`
Stage-1 probe: `probes/android_stage1/` — evidence only.
WorldLife RPG is abandoned.

## Current playable production stack

World/exploration: continuous 440×440 m Hunt-01 foundation, protected mobile shooter controls, approximately 115° first-person FOV and 6.25 m/s exploration speed.

Tracking/encounter: seven physical clues, deterministic reasoning, no Monster GPS, terminal `OBSERVATION_READY`, physical observation/engagement and same-location ENGAGE.

Combat: deterministic turns/resources/tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction window, real Head Sweep, defense consequence, Hunter health/injury, species wound/contact classification, generic status application and generic status timing.

Status timing now executes deterministic `TURN_START_PRE_RECOVERY`, `TURN_END`, and `ROUND_END` lifecycle hooks. Off-Balance naturally clears only after the target's next completed normal activation. Bleeding emits a stable pending periodic Health consequence no earlier than its recorded first tick and at most once per eligible actor/status/round; it still does not invent periodic HP magnitude.

## Current verified baseline

Verified source head:
`57c205e1b2fb1fc69219f44033ef527ea756a353`.

Production workflow `33937504389`: SUCCESS.
Job `101228175010`: SUCCESS.

Artifact `9960678247`:
`UnnamedHuntRPG-Hunt01-StatusTiming-debug`, 57,428,913 bytes, SHA-256 `f275b27c4f0f08a9ba0a45a6dd6c8bbb91a6410a564f947cee4efaed4fc88520`.

Verification labels:
- stack through generic status timing: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest handoff:
`docs/70_handoff/HUNT01_GENERIC_STATUS_TIMING_RUNTIME_2026-09-05.md`.

## Explicitly incomplete

- Bleeding periodic Health magnitude/application;
- Staggered/Braced/Guarded producers and full action restrictions;
- structural crack/break/sever/detachment; numeric thresholds are still open;
- remaining Mudcrest attacks/behavior/Berserk;
- Hunter Downed encounter-terminal execution;
- voluntary withdrawal, Monster escape/death and reacquisition outcome execution;
- harvest/inventory/crafting/settlement/persistence;
- final phone/performance validation.

## Exact next action

`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_IMPLEMENTATION`.

Consume the already-verified zero-Health pending defeat boundary. Implement `DOWNED` + `HUNTERS_DEFEATED` terminal execution through one generic outcome owner and the existing scheduler. Preserve the living Monster's persistent state. Do not bundle respawn, recovery costs, voluntary withdrawal, Monster escape/death, structural thresholds, harvest or Bleeding periodic damage.

Read before implementation:
- `docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md`;
- `game/scripts/gameplay/combat/hunt01_hunter_health_injury_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`;
- current reaction/status timing owners and their regression tests.
