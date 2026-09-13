# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 THROUGH MUDCREST TAIL SWEEP ANDROID BUILD VERIFIED / PHONE VALIDATION BATCHED
Last reconciled: 2026-09-13

## Operating law

The game is the objective. Documentation preserves ownership, evidence, dimensions, coordinates and continuation.

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → CONTINUE`.

Current repository/source/build evidence outranks chat memory and older handoffs.

## User validation policy

`USER_PHONE_VALIDATION_POLICY = DEFERRED_BATCH`
`PHONE_ACCEPTANCE_DOES_NOT_BLOCK_INDEPENDENT_LAYER_DEVELOPMENT = YES`

Do not convert automated evidence into a phone/performance claim.

## Protected controls / world foundation

Stage-1 shooter-style controls remain user accepted 100% and must not regress: direct continuous analog movement from the left joystick, independent right-side look, simultaneous move/look, no forced release/center/rebase logic, approximately 115° first-person FOV, and approximately 6.25 m/s exploration speed.

Current production world remains the continuous 440×440 m Hunt-01 foundation. `probes/android_stage1/` remains evidence only.

## Verified production stack

IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED:
- continuous Hunt-01 world, physical tracking through `OBSERVATION_READY`, and same-location ENGAGE;
- deterministic initiative/round/activation shell and authored tactical movement;
- Hunter `POLEBLADE_MEASURED_CUT`, Mudcrest anatomy, reaction window and real `M01_HEAD_SWEEP_GORE`;
- Hunter defense consequence and normalized Hunter health/injury;
- species-owned wound/contact classification;
- generic Bleeding/Off-Balance application and lifecycle timing;
- Hunter zero-Health `ACTIVE → DOWNED → HUNTERS_DEFEATED` and terminal scheduler commitment;
- living Mudcrest identity/anatomy/status/world preservation through Hunter defeat;
- `M01_TAIL_SWEEP` in the existing Monster-01 driver with exact 3 AP / 18 Stamina economy, pure Impact, rear/flank/pivot/arc legality, shared reaction/Block flow, 14-Stamina successful Block impact drain, one seeded contact boundary, SOLID Off-Balance, CLEAN Staggered-pending boundary and presentation-only telegraph.

## Current automated baseline

Verified source head:
`91f554d5ad53b69436f5ee4eb84aad2caa409a23`.

Tail Sweep implementation commit:
`539a50a893b8c683de4095ddd2689a253c95253f`.

Verification-contract repair commits:
- `71aa836f0d5ecb3de6f1292b5e75d81c87a4d4a6` — Hunter Downed preflight stale evidence assertion;
- `91f554d5ad53b69436f5ee4eb84aad2caa409a23` — Mudcrest anatomy preflight stale structural wording assertion.

Production workflow:
`34759688551` — SUCCESS.

Workflow job:
`103730201523` — SUCCESS.

Artifact:
- ID `10317819786`;
- name `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`;
- size `57,477,122` bytes;
- SHA-256 `5c02fe4b8e1a45a75f1068a68a8081a6e8847818a2763172aa1753f49acb2948`.

The successful run executed the current static chain, Godot 4.7.2 import/parse, production scene smokes, dedicated/current headless combat regressions including Tail Sweep, Android APK export, artifact validation and artifact upload.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

Still intentionally open: forced-recovery destination/timing/costs; Bleeding periodic Health magnitude; Mudcrest structural crack/break/sever thresholds; Hunter withdrawal geometry; Monster escape/death execution; harvest/inventory/crafting/settlement/persistence; final Tail Sweep tuning; Staggered/Braced/Guarded runtime coverage beyond currently implemented Off-Balance behavior.

Latest handoff:
`docs/70_handoff/HUNT01_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_2026-09-13.md`.

## Exact next bounded piece

`FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTATION`

Why this is executable now:
- `FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md` already selects `status_staggered`, category `TRANSIENT_PHYSICAL_DISRUPTION`, `REFRESH_DURATION`, no intensity stacking, no hidden turn skip, and next `TURN_START_PRE_RECOVERY` conversion to Off-Balance;
- current generic status application/timing owners already provide the reusable deterministic status storage and lifecycle boundary but currently support only Bleeding and Off-Balance;
- Tail Sweep CLEAN already records `TAIL_SWEEP_CLEAN_IMPACT_STAGGERED_PENDING`, proving a real current consumer exists without requiring that producer to be changed in this piece;
- no structural threshold, Bleeding HP magnitude, withdrawal geometry, final attack balance or new randomness is required.

Required boundary:
1. extend `game/scripts/gameplay/combat/hunt01_status_application_runtime.gd`; do not create a parallel status owner;
2. add `status_staggered` definition and valid-request handling with `REFRESH_DURATION`, one instance and no intensity stacking;
3. extend `game/scripts/gameplay/combat/hunt01_status_timing_runtime.gd` so the target's next `TURN_START_PRE_RECOVERY` removes Staggered once, applies/refreshes Off-Balance once, and does not skip or duplicate the activation;
4. preserve existing Bleeding and Off-Balance behavior and idempotency;
5. do not yet wire a new Tail Sweep Staggered producer in this bounded piece;
6. add/update static and dedicated headless coverage plus regressions;
7. update the production workflow only as required to execute those gates;
8. promote only after green source/headless/Android-build evidence.

NEXT THING I WILL DO: FIRST_SLICE_GENERIC_STAGGERED_STATUS_RUNTIME_IMPLEMENTATION — extend the existing generic status application/timing owners with deterministic Staggered storage, refresh and next-turn-start conversion to Off-Balance, with dedicated static/headless/build verification and no Tail Sweep producer wiring yet.
