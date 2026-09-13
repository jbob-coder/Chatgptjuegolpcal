# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 BASIC AUTORUN HUNTER ATTACK EXCHANGE ANDROID BUILD VERIFIED / REAL STATUS LIFECYCLE AUTORUN NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-13

## Live project

Repository: `jbob-coder/Chatgptjuegolpcal`
Branch: `worldlife-reference-docs`
Production Godot root: `game/`
Stage-1 probe: `probes/android_stage1/` — evidence only.
WorldLife RPG is abandoned.

## Current playable production stack

World/tracking/encounter remain the continuous 440×440 m Hunt-01 foundation through physical `OBSERVATION_READY` and same-location ENGAGE.

Combat is deterministic and includes tactical movement, Hunter Measured Cut, Mudcrest anatomy, reaction/Block flow, Head Sweep, Tail Sweep, Hunter health/injury, generic Bleeding/Staggered/Off-Balance status ownership/timing, Hunter Downed/defeat terminal execution, and CLEAN Tail Sweep→generic Staggered producer integration.

The CI/development autorun boots the real Region-01 scene twice in one Godot process and reproduces a longer integrated basic loop: tracking→ENGAGE, initial idle scheduler cycle, authored movement to N10, real Tail Sweep/Block consequence, authored reposition to N09 through normal AP costs, real Head Sweep/Block scheduler bridge, and a real Round-4 Dorsal Measured Cut/anatomy transaction. Both fresh instances match and teardown rejects Hunt-01 state leakage. This remains verification automation, not player-facing autoplay.

## Current verified baseline

Latest full production-verified revision: `578f598e92719949ade1f669aa94ca319a41d94c`.
Hunter-attack autorun implementation: `72109e2d56205da85f6ce898d22bb9f8f0558b0b`.
Promotion / latest tested source: `578f598e92719949ade1f669aa94ca319a41d94c`.
Production workflow `34772248966`: SUCCESS.
Job `103763843357`: SUCCESS.
Artifact `10322267457`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,515,438 bytes, SHA-256 `638cecf15c678a6f06f36ee4e91139b24623b572b3b16353378878eb90d5fec9`.

Verification labels:
- stack through integrated Hunter attack autorun exchange: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest specialized handoff:
`docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Completed work

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_REGRESSION` is complete.

The integrated autorun preserves the Tail Sweep/Block exchange and then:
- proves Measured Cut is out of range at N10;
- uses authored N10→N08→N05→N07→N09 movement through the real movement owner;
- proves that four-step reposition consumes the Round-3 4 AP rather than bypassing economy;
- uses existing Head Sweep + Poleblade Block as the real Monster activation bridge;
- returns to Round-4 Hunter at N09;
- commits existing `POLEBLADE_MEASURED_CUT` into `DORSAL_PLATES`;
- preserves existing 2 AP / 12 Stamina cost, CLEAN selected-part contact, `MINERALIZED_DORSAL_PLATE`, anatomy 100→95 and idempotent handoff readback;
- repeats the same signature on a second fresh instance.

No production gameplay runtime or balance file changed in this implementation. Run 79 verified the implementation source; run 80 re-verified the promoted package/front-door state at exact revision `578f598e92719949ade1f669aa94ca319a41d94c`.

## Explicitly incomplete

Forced recovery/respawn; Hunter withdrawal geometry; Monster escape/death; Bleeding periodic Health magnitude; Braced/Guarded implementation; Mudcrest structural crack/break/sever/detachment thresholds; remaining Mudcrest behavior/attacks; harvest/inventory/crafting/settlement/persistence; phone acceptance; sustained performance.

## Exact next action

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_REAL_STATUS_LIFECYCLE_REGRESSION`.

Extend the same verification-only fresh-instance smoke through one already-implemented real hostile status producer and the current generic status application/timing owners. Preserve all existing combat exchanges. Do not choose a Bleeding HP magnitude or add player-facing autoplay/new status semantics.

Read first:
- `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- `game/tests/hunt01_status_application_runtime_test.gd`;
- `game/tests/hunt01_status_timing_runtime_test.gd`;
- current Mudcrest wound/contact, generic status application/timing, reaction, health and scheduler owners;
- `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- `.github/workflows/production-hunt01-graybox-android.yml`.

## Blockers / open questions

No blocker for a verification-only real-status lifecycle extension. It must not resolve blocked design questions as side effects.

## Phone / performance state

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
