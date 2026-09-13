# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 BASIC AUTORUN COMBAT EXCHANGE ANDROID BUILD VERIFIED / HUNTER ATTACK AUTORUN INTEGRATION NEXT / PHONE QA DEFERRED-BATCH
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

The CI/development autorun boots the real Region-01 scene twice in one Godot process. Each cycle starts from fresh tracking/encounter state, drives all seven clues to `OBSERVATION_READY`, reaches the physical engagement zone, stages same-location ENGAGE, verifies current combat owners, advances the initial out-of-range Monster idle to Round 2, follows authored tactical movement N01→N02→N05→N08→N10, resolves a real `M01_TAIL_SWEEP` through the existing Field Poleblade Block reaction, verifies deterministic SOLID / `BLOCK_STRONG`, Hunter Health 100→98, no strong-Block status request, and returns the scheduler to Round 3 Hunter. It then tears the world down and proves the second fresh instance produces the same signature with no Hunt-01 group leakage. This remains verification automation, not player-facing autoplay.

## Current verified baseline

Latest full production-verified revision: `b270ef14787043252648c18ff02df31936e2f9a2`.
Combat-exchange autorun implementation: `c85db3c152dc798ed1a03508a77f5066c50f0e2c`.
Documentation contract repair / verified source: `b270ef14787043252648c18ff02df31936e2f9a2`.
Production workflow `34771120281`: SUCCESS.
Job `103760780223`: SUCCESS.
Artifact `10321349678`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,504,703 bytes, SHA-256 `898292db86fd3df24d213ef77e9d17e0c0a2e1d211ee4e8d3d20a67b59c659e8`.

Verification labels:
- stack through basic autorun combat exchange: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest specialized handoff:
`docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Completed work

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_COMBAT_EXCHANGE_REGRESSION` is complete. Run 76 exposed only a documentation/static contract mismatch (`combat exchange` wording), which was repaired without changing runtime behavior or weakening the gate. Run 77 passed the extended two-cycle autorun, every pre-existing production regression and Android export.

## Explicitly incomplete

Forced recovery/respawn; Hunter withdrawal geometry; Monster escape/death; Bleeding periodic Health magnitude; Braced/Guarded implementation; Mudcrest structural crack/break/sever/detachment thresholds; remaining Mudcrest attacks/behavior/Berserk; harvest/inventory/crafting/settlement/persistence; phone acceptance; sustained performance.

## Exact next action

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_REGRESSION`.

Extend the existing verification-only fresh-instance autorun so it also performs one already-implemented Hunter `POLEBLADE_MEASURED_CUT` transaction through the current tactical movement, Hunter attack and Mudcrest anatomy owners. Preserve the verified Tail Sweep/Block exchange and two-cycle repeatability proof. Do not add normal-game autoplay, automatic player locomotion, new RNG, balance values, break/sever thresholds or Monster terminal semantics.

Read first:
- `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- `game/tests/hunt01_hunter_attack_runtime_test.gd`;
- existing combat shell/tactical movement/Hunter attack/Mudcrest anatomy APIs used by those tests;
- `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- `.github/workflows/production-hunt01-graybox-android.yml`.

## Blockers / open questions

No blocker for the verification-only Hunter-attack integration. It must not resolve currently blocked gameplay design decisions as side effects.

## Phone / performance state

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
