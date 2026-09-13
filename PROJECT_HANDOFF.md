# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH TAIL SWEEP CLEAN→STAGGERED ANDROID BUILD VERIFIED / BASIC RUNTIME AUTORUN NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-13

## Live project

Repository: `jbob-coder/Chatgptjuegolpcal`
Branch: `worldlife-reference-docs`
Production Godot root: `game/`
Stage-1 probe: `probes/android_stage1/` — evidence only.
WorldLife RPG is abandoned.

## Current playable production stack

World/tracking/encounter remain the continuous 440×440 m Hunt-01 foundation through physical `OBSERVATION_READY` and same-location ENGAGE.

Combat is deterministic and includes tactical movement, Hunter Measured Cut, Mudcrest anatomy, shared reaction/Block flow, Head Sweep, Hunter health/injury, generic Bleeding/Staggered/Off-Balance status ownership/timing, Hunter Downed/defeat terminal execution, and Mudcrest Tail Sweep.

Generic Staggered is one `TRANSIENT_PHYSICAL_DISRUPTION` / `REFRESH_DURATION` actor instance with no intensity stacking. Reapplication refreshes that instance. At the target's next `TURN_START_PRE_RECOVERY`, it is removed once, existing Off-Balance is applied/refreshed once and armed for that same activation's `TURN_END`; the normal activation continues and shell Stamina/AP/RP ownership proceeds normally.

Tail Sweep remains species-owned in the existing Monster-01 attack driver. SOLID contact requests Off-Balance. CLEAN contact now emits exactly one valid `status_staggered` application request through the existing generic status owner. Strong Block still emits no Tail Sweep status, and replay is idempotent.

## Current verified baseline

Latest full production-verified revision: `fbfd30fde0ad74bdb73d384533287b884341cd93`.
Tail Sweep CLEAN→Staggered implementation commit: `fbfd30fde0ad74bdb73d384533287b884341cd93`.
Production workflow `34762775881`: SUCCESS.
Job `103738398857`: SUCCESS.
Artifact `10319377979`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,485,460 bytes, SHA-256 `1760956f76d2d908d64f6efc7da3fc7e409d23a26cb4ccd65402c83739d82273`.
Manifest-static run `34762775845`: SUCCESS.

Verification labels:
- stack through Tail Sweep CLEAN→Staggered producer: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest specialized handoff:
`docs/70_handoff/HUNT01_TAIL_SWEEP_CLEAN_STAGGERED_PRODUCER_2026-09-13.md`.

## Completed work

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_CLEAN_STAGGERED_PRODUCER_INTEGRATION` is complete. The existing Mudcrest wound/contact classifier now constructs one Staggered request only for already-qualified CLEAN Tail Sweep contact. SOLID remains Off-Balance, Strong Block remains no-status, and no second status system, RNG, displacement, structural threshold or Bleeding HP rule was introduced.

## Explicitly incomplete

Forced recovery/respawn; Hunter withdrawal geometry; Monster escape/death; Bleeding periodic Health magnitude; Braced/Guarded implementation; Mudcrest structural crack/break/sever/detachment thresholds; remaining Mudcrest attacks/behavior/Berserk; harvest/inventory/crafting/settlement/persistence; phone acceptance; sustained performance.

## Exact next action

`FIRST_SLICE_HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION`.

Create a deterministic development/CI autorun around the already-implemented production basics. It must boot the real Region-01 scene, drive the current tracking→observation→ENGAGE→basic combat ownership path, tear the instance down, repeat from a fresh instance, and fail on state leakage or missing owners. This is verification automation, not player-facing autoplay and not automatic player locomotion.

Read first:
- `game/tests/region01_hunt01_graybox_runtime_test.gd`;
- `game/scenes/regions/region_01_hunt01_graybox.tscn` and its owning runtime script(s);
- current tracking/encounter/combat shell APIs used by the production integration test;
- existing headless test conventions under `game/tests/`;
- static quality conventions under `tests/quality/hunt01/`;
- `.github/workflows/production-hunt01-graybox-android.yml`.

## Blockers / open questions

No blocker for the autorun regression. It must not resolve currently blocked design decisions as side effects.

## Phone / performance state

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`.
`PERFORMANCE_VERIFIED = NO`.
