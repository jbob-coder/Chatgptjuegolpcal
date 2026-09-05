# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 THROUGH GENERIC STATUS APPLICATION ANDROID BUILD VERIFIED / PHONE VALIDATION BATCHED
Last reconciled: 2026-09-04

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
- generic status application owner `uhr.hunt01.status_application.v1` under the combat shell;
- request validation against `uhr.status_application_request.v1` + `PENDING_GENERIC_STATUS_APPLICATION_RUNTIME`;
- exact request idempotency: one accepted request commits one `STATUS_ON_APPLY_COMMITTED`; replay cannot restack/refresh or rerun ON_APPLY;
- actor-level `status_bleeding` with `STACK_INTENSITY_CAPPED`, max intensity 3, and `first_tick_round = application_round + 1` metadata;
- actor-level `status_off_balance` with `REFRESH_DURATION` and pending completed-activation `TURN_END` expiry metadata;
- deterministic in-memory persistence snapshot/rehydration that does not replay ON_APPLY;
- no status RNG, AP/RP/Stamina ownership, Initiative edits, Health/anatomy mutation or presentation authority in the application layer.

Generic status application owner:
`game/scripts/gameplay/combat/hunt01_status_application_runtime.gd`.

Schema:
`uhr.hunt01.status_application.v1`.

Implementation commit:
`6c9fc8592ce0de769f213790cc0e3e0a8ff95fdc`.

Production workflow:
`33936580266` — SUCCESS.

Workflow job:
`101225581109` — SUCCESS.

Artifact:
- ID `9960395435`;
- name `UnnamedHuntRPG-Hunt01-StatusApplication-debug`;
- size `57,410,444` bytes;
- SHA-256 `4606069697c5ae9128acf27ddad65724613ad8e83d53e8791a292339c8b0b15f`;
- APK output `UnnamedHuntRPG-Hunt01-StatusApplication-debug.apk`.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

Bleeding periodic Health magnitude is still not selected by authoritative content/balance data. Status lifecycle timing, structural crack/break/sever/detachment, remaining Mudcrest attacks/behavior, defeat/escape/reacquisition, harvest, inventory, crafting, settlement services and persistence runtime remain incomplete.

Latest handoff:
`docs/70_handoff/HUNT01_GENERIC_STATUS_APPLICATION_RUNTIME_2026-09-04.md`.

## Exact next bounded piece

`FIRST_SLICE_GENERIC_STATUS_TIMING_RUNTIME_IMPLEMENTATION`

Required boundary:
1. create a generic timing/lifecycle owner under `game/scripts/gameplay/combat/`, separate from status qualification and status application;
2. integrate only standardized combat-domain hooks needed now: `TURN_START_PRE_RECOVERY`, `TURN_END`, and `ROUND_END`;
3. hook order must follow the contracts: TURN_START status processing before passive Stamina recovery/AP-RP refresh; TURN_END before the scheduler advances; ROUND_END after every current roster slot is terminal and before the next `round_id`/roster begins;
4. Off-Balance natural recovery: remove exactly once at the end of the target's next completed normal activation; a skipped/ineligible slot must not grant free expiry;
5. Bleeding: when `round_id >= first_tick_round`, emit at most one deterministic pending periodic-consequence event per affected actor per round, ordered by stable target/status identity;
6. because authoritative periodic Bleeding Health magnitude is still open, this slice must not invent or apply HP loss; emit `PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE` with intensity/source/round context for the future consequence owner;
7. update status-instance timing metadata idempotently so repeated hook delivery cannot duplicate an expiry or periodic event;
8. no Staggered producer exists yet, so do not invent Staggered applications merely to exercise TURN_START; the timing interface may remain extensible for that later transition;
9. do not refresh/spend AP/RP/Stamina, alter Initiative ordering, reroll status qualification, re-run ON_APPLY, mutate anatomy, move actors or let presentation drive timing;
10. add source/static, dedicated headless, regression and Android-build verification;
11. phone/performance remain deferred.

Do not bundle Bleeding damage magnitude, structural damage, new Mudcrest attacks, defeat/escape, harvest or full save persistence into this piece.
