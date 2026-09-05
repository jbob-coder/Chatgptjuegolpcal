# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 THROUGH GENERIC STATUS TIMING ANDROID BUILD VERIFIED / PHONE VALIDATION BATCHED
Last reconciled: 2026-09-05

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
- deterministic `TURN_START_PRE_RECOVERY`, `TURN_END`, and `ROUND_END` lifecycle hooks;
- Off-Balance natural recovery only after the affected actor completes the next normal activation;
- skipped/ineligible slots do not grant free Off-Balance expiry;
- Bleeding periodic cadence emits at most one `PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE` per actor/status/eligible round and carries no invented HP magnitude;
- hook/event idempotency prevents duplicate expiry or periodic emission;
- timing remains separate from Health mutation, AP/RP/Stamina ownership, Initiative ordering, anatomy mutation and presentation.

Generic status timing owner:
`game/scripts/gameplay/combat/hunt01_status_timing_runtime.gd`.

Schema:
`uhr.hunt01.status_timing.v1`.

Verified source head:
`57c205e1b2fb1fc69219f44033ef527ea756a353`.

Production workflow:
`33937504389` — SUCCESS.

Workflow job:
`101228175010` — SUCCESS.

Artifact:
- ID `9960678247`;
- name `UnnamedHuntRPG-Hunt01-StatusTiming-debug`;
- size `57,428,913` bytes;
- SHA-256 `f275b27c4f0f08a9ba0a45a6dd6c8bbb91a6410a564f947cee4efaed4fc88520`.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

Bleeding periodic Health magnitude is still not selected by authoritative content/balance data. Mudcrest structural crack/break/sever thresholds are also explicitly open and must not be invented. Remaining Mudcrest attacks/behavior, encounter outcomes/retreat, structural detachment, harvest, inventory, crafting, settlement services and persistence runtime remain incomplete.

Latest handoff:
`docs/70_handoff/HUNT01_GENERIC_STATUS_TIMING_RUNTIME_2026-09-05.md`.

## Exact next bounded piece

`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_IMPLEMENTATION`

Why this is executable now:
- the verified Hunter health owner already emits `PENDING_HUNTER_DEFEAT_OUTCOME_RUNTIME` at zero Health;
- `docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md` already selects `hunter_health <= 0 -> DOWNED` and `PLAYER_HUNTER_DOWNED -> HUNTERS_DEFEATED`;
- this outcome slice does not require final Health/damage balance or the still-open anatomy break/sever thresholds.

Required boundary:
1. create one generic encounter-outcome owner under `game/scripts/gameplay/combat/`;
2. consume the stable pending Hunter-defeat handoff exactly once;
3. transition the player Hunter to `DOWNED` and commit `HUNTERS_DEFEATED` only after the authoritative resolution boundary completes;
4. terminate/freeze the existing combat scheduler through its owner rather than creating a second scheduler;
5. prevent new normal activations/reactions after terminal commitment and mark remaining pending roster slots removed with the contract reason where the shell owns that state;
6. preserve the living Mudcrest instance/anatomy/status/world state; defeat must not reset the Monster;
7. do not implement respawn/recovery penalties, voluntary withdrawal, Monster escape/death, harvest rewards, structural thresholds or Bleeding HP magnitude in this bounded slice;
8. add static, dedicated headless, regression and Android-build verification;
9. document and promote only after green evidence.
