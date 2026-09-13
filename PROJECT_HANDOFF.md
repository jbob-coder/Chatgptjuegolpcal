# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH GENERIC STAGGERED ANDROID BUILD VERIFIED / TAIL SWEEP CLEAN STAGGERED PRODUCER NEXT / PHONE QA DEFERRED-BATCH
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

Generic Staggered is now one `TRANSIENT_PHYSICAL_DISRUPTION` / `REFRESH_DURATION` actor instance with no intensity stacking. Reapplication refreshes that instance. At the target's next `TURN_START_PRE_RECOVERY`, it is removed once, existing Off-Balance is applied/refreshed once and armed for that same activation's `TURN_END`; the normal activation continues and shell Stamina/AP/RP ownership proceeds normally.

Tail Sweep remains species-owned in the existing Monster-01 attack driver. Its SOLID route still requests Off-Balance and its CLEAN route still intentionally records a pending Staggered capability rather than emitting a producer request. That pending marker is now the exact next integration boundary.

## Current verified baseline

Verified source head: `29623181bfb758b322e47d83a1c2f652b225561a`.
Production workflow `34761564734`: SUCCESS.
Job `103735203468`: SUCCESS.
Artifact `10318917250`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,484,077 bytes, SHA-256 `9a881d020858aea018da82f4af40f650f374fb6291a6281c19b5419fdfc4b9d1`.

Verification labels:
- stack through Generic Staggered: IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED;
- phone acceptance: DEFERRED / NOT PHONE VERIFIED;
- sustained performance: NOT VERIFIED.

Latest specialized handoff:
`docs/70_handoff/HUNT01_GENERIC_STAGGERED_STATUS_RUNTIME_2026-09-13.md`.

## Explicitly incomplete

Tail Sweep CLEAN→Staggered producer integration; forced recovery/respawn; Hunter withdrawal geometry; Monster escape/death; Bleeding periodic Health magnitude; Braced/Guarded implementation; Mudcrest structural crack/break/sever/detachment thresholds; remaining Mudcrest attacks/behavior/Berserk; harvest/inventory/crafting/settlement/persistence; phone acceptance; sustained performance.

## Exact next action

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_CLEAN_STAGGERED_PRODUCER_INTEGRATION`.

Change only the existing Mudcrest species classifier/integration so the already-selected CLEAN Tail Sweep consequence emits one valid `status_staggered` request to the verified generic status owner. Preserve SOLID→Off-Balance, Strong Block→no status, deterministic contact/economy/geometry and all current deferrals. Do not add a second status system, new randomness, structural thresholds, Braced/Guarded behavior, Bleeding HP magnitude or forced displacement.

Read first:
- `docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_wound_contact_runtime.gd`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- `game/tests/hunt01_mudcrest_tail_sweep_runtime_test.gd`;
- `tests/quality/hunt01/hunt01_mudcrest_tail_sweep_preflight.py`;
- Generic Status Application/Timing owners and tests as protected consumer regressions;
- `.github/workflows/production-hunt01-graybox-android.yml`.
