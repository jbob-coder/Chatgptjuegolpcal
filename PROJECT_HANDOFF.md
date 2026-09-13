# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH MUDCREST TAIL SWEEP ANDROID BUILD VERIFIED / GENERIC STAGGERED STATUS NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-13

## Live project

Repository: `jbob-coder/Chatgptjuegolpcal`
Branch: `worldlife-reference-docs`
Production Godot root: `game/`
Stage-1 probe: `probes/android_stage1/` — evidence only.
WorldLife RPG is abandoned.

## Current playable production stack

World/tracking/encounter remain the continuous 440×440 m Hunt-01 foundation through physical `OBSERVATION_READY` and same-location ENGAGE.

Combat is deterministic and currently includes tactical movement, Hunter Measured Cut, Mudcrest anatomy, shared reaction/Block flow, Head Sweep, Hunter health/injury, generic Bleeding/Off-Balance status application/timing, Hunter Downed/defeat terminal execution, and Mudcrest Tail Sweep.

Tail Sweep remains species-owned in the existing Monster-01 attack driver. It is 3 AP / 18 Stamina, pure Impact, rear/flank constrained, requires the current attached-tail capability fact, validates pivot/arc/line-of-effect geometry, uses one seeded contact boundary, routes successful Poleblade Block through the existing defense owner with 14-Stamina impact drain, requests Off-Balance on the selected SOLID consequence, and leaves CLEAN Staggered explicitly pending until a generic Staggered owner exists.

## Current verified baseline

Verified source head: `80df7e0aef1b505ea3085f42af8c8710aa79c2a7`.
Final production workflow `34760296459`: SUCCESS.
Job `103731848690`: SUCCESS.
Artifact `10318643114`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,477,142 bytes, SHA-256 `98ddaecdb732a2af49c91d702fddce931ed40c9901b86f9f3c717988cfdf0542`.

Verification labels:
- stack through Mudcrest Tail Sweep: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest specialized handoff:
`docs/70_handoff/HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_2026-09-13.md`.

## Explicitly incomplete

Forced recovery/respawn; Hunter withdrawal geometry; Monster escape/death; Bleeding periodic Health magnitude; generic Staggered/Braced/Guarded implementation; Mudcrest structural crack/break/sever/detachment thresholds; remaining Mudcrest attacks/behavior/Berserk; harvest/inventory/crafting/settlement/persistence; phone acceptance; sustained performance.

## Exact next action

`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTATION`.

Extend the existing generic status application/timing owners only: support one refreshable `status_staggered` instance and convert it exactly once at the target's next `TURN_START_PRE_RECOVERY` into existing Off-Balance without skipping the activation. Preserve Bleeding/Off-Balance behavior. Do not wire Tail Sweep CLEAN as a Staggered producer in this piece.

Read first:
- `docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
- `game/scripts/gameplay/combat/hunt01_status_application_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_status_timing_runtime.gd`;
- current status tests/static gates;
- Tail Sweep classifier/test only to preserve the existing pending boundary.
