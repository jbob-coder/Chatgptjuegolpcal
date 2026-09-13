# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 BASIC RUNTIME AUTORUN ANDROID BUILD VERIFIED / BASIC AUTORUN COMBAT EXCHANGE NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-13

## Live project

Repository: `jbob-coder/Chatgptjuegolpcal`
Branch: `worldlife-reference-docs`
Production Godot root: `game/`
Stage-1 probe: `probes/android_stage1/` — evidence only.
WorldLife RPG is abandoned.

## Current playable production stack

World/tracking/encounter remain the continuous 440×440 m Hunt-01 foundation through physical `OBSERVATION_READY` and same-location ENGAGE.

Combat is deterministic and includes tactical movement, Hunter Measured Cut, Mudcrest anatomy, shared reaction/Block flow, Head Sweep, Hunter health/injury, generic Bleeding/Staggered/Off-Balance status ownership/timing, Hunter Downed/defeat terminal execution, and Mudcrest Tail Sweep with CLEAN→generic Staggered producer integration.

A dedicated CI/development autorun now boots the real Region-01 scene, proves stable identities and protected 6.25 m/s exploration speed, drives the existing seven-clue tracking runtime to `OBSERVATION_READY`, enters the physical engagement zone, stages same-location ENGAGE, verifies the current combat owners, advances one real scheduler cycle, tears the scene down, and repeats from a second fresh instance. The two deterministic signatures match and Hunt-01 groups are clean between cycles. This is verification automation, not player-facing autoplay.

## Current verified baseline

Latest full production-verified revision: `3c6a792851e5dec9756f6e99bd09de291fe266b2`.
Basic autorun implementation: `07ad99f71fd0da45ff458fe8d5e770d02ab07783`.
Fresh-instance documentation repair: `3c6a792851e5dec9756f6e99bd09de291fe266b2`.
Production workflow `34763505121`: SUCCESS.
Job `103740308986`: SUCCESS.
Artifact `10319379031`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,495,532 bytes, SHA-256 `488a3f31bf589a194332402b8c8cf1ee8c9a9f57edb0d5d7a77adf5693b68b7f`.

Verification labels:
- stack through basic runtime autorun: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest specialized handoff:
`docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Completed work

`FIRST_SLICE_HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION` is complete. Run 73 exposed only a documentation/static contract mismatch (`fresh-instance` wording), which was repaired without changing runtime behavior or weakening the gate. Run 74 passed the new autorun and every pre-existing production regression plus Android export.

## Explicitly incomplete

Forced recovery/respawn; Hunter withdrawal geometry; Monster escape/death; Bleeding periodic Health magnitude; Braced/Guarded implementation; Mudcrest structural crack/break/sever/detachment thresholds; remaining Mudcrest attacks/behavior/Berserk; harvest/inventory/crafting/settlement/persistence; phone acceptance; sustained performance.

## Exact next action

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_COMBAT_EXCHANGE_REGRESSION`.

Extend the existing test-only autorun so it performs one already-implemented deterministic combat exchange after tracking/ENGAGE using the current tactical movement/reaction/attack/consequence/status owners. Preserve the two fresh-instance repeatability proof. Do not add normal-game autoplay, automatic player locomotion or new gameplay semantics.

Read first:
- `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- `game/tests/hunt01_mudcrest_tail_sweep_runtime_test.gd`;
- existing combat shell/tactical movement/reaction/Mudcrest attack APIs used by those tests;
- `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- `.github/workflows/production-hunt01-graybox-android.yml`.

## Blockers / open questions

No blocker for the verification-only combat-exchange extension. It must not resolve currently blocked gameplay design decisions as side effects.

## Phone / performance state

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
