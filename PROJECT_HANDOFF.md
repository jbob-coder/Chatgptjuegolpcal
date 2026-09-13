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

The CI/development autorun boots the real Region-01 scene twice in one Godot process. Each cycle starts fresh, drives seven-clue tracking to `OBSERVATION_READY`, reaches ENGAGE, proves the initial Monster idle scheduler path, follows N01→N02→N05→N08→N10, resolves real `M01_TAIL_SWEEP` through existing `POLEBLADE_BLOCK`, verifies SOLID / `BLOCK_STRONG`, Hunter Health 100→98, no strong-Block status request, Round-3 Hunter return, clean teardown and a matching second-cycle signature. This is verification automation, not player-facing autoplay.

## Current verified baseline

Latest full production-verified revision: `c541c735fe93b049cc25d8c29a2c048ceb6139fe`.
Combat-exchange implementation: `c85db3c152dc798ed1a03508a77f5066c50f0e2c`.
Contract repair: `b270ef14787043252648c18ff02df31936e2f9a2`.
Promotion/tested source: `c541c735fe93b049cc25d8c29a2c048ceb6139fe`.
Production workflow `34771386938`: SUCCESS.
Job `103761502217`: SUCCESS.
Artifact `10322166858`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,504,706 bytes, SHA-256 `a092e435471bd7411fd63902e67cb44608c7c1c1e8ff98e4401bbf969b6db6ff`.

Verification labels:
- stack through basic autorun combat exchange: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest specialized handoff:
`docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Completed work

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_COMBAT_EXCHANGE_REGRESSION` is complete. Run 76 exposed only a documentation/static contract mismatch (`combat exchange` wording), repaired without runtime changes or gate weakening. Run 77 verified the implementation. Run 78 verified the promoted authority/package state at exact source revision `c541c735fe93b049cc25d8c29a2c048ceb6139fe`.

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
