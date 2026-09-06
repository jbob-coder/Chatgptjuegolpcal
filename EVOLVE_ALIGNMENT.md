# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 THROUGH HUNTER DOWNED OUTCOME ANDROID BUILD VERIFIED / PHONE VALIDATION BATCHED
Last reconciled: 2026-09-06

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
- deterministic initiative/round/activation shell and authored 10-node / 14-link tactical movement;
- Hunter `POLEBLADE_MEASURED_CUT`, Mudcrest anatomy, reaction window and real `M01_HEAD_SWEEP_GORE`;
- Head Sweep legality/telegraph/contact, Hunter defense consequence and normalized Hunter health/injury;
- species-owned wound/contact classification and stable valid status-request emission;
- generic status application owner `uhr.hunt01.status_application.v1`;
- generic status timing owner `uhr.hunt01.status_timing.v1`;
- deterministic status lifecycle hooks, Off-Balance recovery and pending Bleeding periodic-event cadence without invented HP magnitude;
- generic encounter-outcome owner `uhr.hunt01.encounter_outcome.v1`;
- zero-Health player Hunter transition `ACTIVE → DOWNED → HUNTERS_DEFEATED`;
- terminal scheduler commitment through the existing combat shell, with remaining pending slots removed and future gameplay commitments rejected;
- living Mudcrest identity/anatomy/status/world state preserved through Hunter defeat;
- exact defeat-handoff replay idempotency.

Hunter Downed outcome owner:
`game/scripts/gameplay/combat/hunt01_encounter_outcome_runtime.gd`.

Schema:
`uhr.hunt01.encounter_outcome.v1`.

Verified source head:
`f363998334bb752b037ed524cb909ad12634b71f`.

Implementation commit:
`a6476483c7f187f5e4904d7901c28e1abe0f9996`.

Static-contract repair commits:
`31d046b19a984c8234af788a09b3d0b6f8f8716b`, `f363998334bb752b037ed524cb909ad12634b71f`.

Production workflow:
`33985410020` — SUCCESS.

Workflow job:
`101357889357` — SUCCESS.

Artifact:
- ID `9975014310`;
- name `UnnamedHuntRPG-Hunt01-HunterDownedOutcome-debug`;
- size `57,446,932` bytes;
- SHA-256 `ab431361b3be3b325300d7d2242cd622afdb376f6426d8d2228fab0388cae196`.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

Forced-recovery destination/timing/costs remain intentionally unselected. Bleeding periodic Health magnitude remains open. Mudcrest structural crack/break/sever thresholds remain explicitly open and must not be invented. Voluntary withdrawal needs an authored Hunter escape-node/equivalent boundary before runtime commitment. Monster retreat/escape needs behavior-route execution. Harvest, inventory, crafting, settlement services and persistence remain incomplete.

Latest handoff:
`docs/70_handoff/HUNT01_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_2026-09-06.md`.

## Exact next bounded piece

`FIRST_SLICE_MUDCREST_TAIL_SWEEP_ATTACK_RUNTIME_IMPLEMENTATION`

Why this is executable now:
- `COMBAT_ATTACK_PACKET.md` already selects `M01_TAIL_SWEEP`, 3 AP, 18 Stamina, Impact channel, 14-Stamina successful Block impact drain, rear/flank relation, pivot/arc-clearance requirements and anatomy capability `CAP_M01_TAIL_SWEEP`;
- deterministic behavior gives legal rear/flank Tail Sweep priority over other normal attacks;
- existing runtime already owns Block commitment/impact drain and generic Off-Balance application/timing;
- the baseline tail is attached and no structural threshold is required merely to execute the intact-tail attack;
- the slice can remain independent from still-open sever thresholds and Staggered implementation.

Required boundary:
1. extend the existing Monster-01 attack owner rather than create a second Monster scheduler/driver;
2. add deterministic Tail Sweep legality using real tactical position, rear/flank bearing, body/pivot clearance and line-of-effect/arc blockers;
3. commit exactly 3 AP / 18 Stamina and open one reaction window with only currently executable legal reactions plus decline;
4. route valid Poleblade Block through the existing reaction/defense resource authority with 14 impact Stamina drain;
5. resolve pure `IMPACT` contact with one stable seeded-variance boundary and no extra random proc;
6. emit/apply Off-Balance only where the existing status contract already authorizes it; leave Staggered pending until its generic owner exists;
7. preserve `TAIL_DISTAL attached` as an explicit current capability fact without inventing sever thresholds;
8. add a presentation telegraph asset that is non-colliding and cannot decide legality;
9. add static, dedicated headless, regression and Android-build verification;
10. document and promote only after green evidence.
