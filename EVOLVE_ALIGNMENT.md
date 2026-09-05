# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 THROUGH HEAD SWEEP WOUND-CONTACT CLASSIFICATION ANDROID BUILD VERIFIED / PHONE VALIDATION BATCHED
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
- Hunter `POLEBLADE_MEASURED_CUT`, Mudcrest per-target anatomy integrity, reaction window and real `M01_HEAD_SWEEP_GORE`;
- Head Sweep physical legality, telegraph, deterministic contact, Hunter defense consequence and 10-Stamina guard-impact drain;
- Hunter normalized first-slice health/injury transaction with replay idempotence and pending defeat boundary;
- species-owned Head Sweep wound/contact classification after health resolution;
- stable idempotent status-application request identity;
- unguarded SOLID/CLEAN `GORE_SWEEP` + resolved injury can classify provisional horn penetration and request `status_bleeding +1`;
- CLEAN residual contact through `BLOCK_PARTIAL/BLOCK_BROKEN` + resolved injury can classify provisional impact dominance and request `status_off_balance`;
- `BLOCK_STRONG`, no contact or zero applied injury produce explicit no-request classification;
- mixed `PIERCING + IMPACT` channels alone never establish penetration/dominance;
- classifier performs no RNG and mutates no Health, AP/RP/Stamina, anatomy, coordinates or status state.

Wound/contact owner:
`game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_wound_contact_runtime.gd`.

Schema:
`uhr.hunt01.mudcrest_wound_contact.v1`.

Fixture:
`PROVISIONAL_FIRST_SLICE_HEAD_SWEEP_WOUND_CONTACT_CLASSIFICATION_FIXTURE`.

Implementation commit:
`6012235a958c0d4a73ff7c36201e2eff20715b70`.

Production workflow:
`33935813877` — SUCCESS.

Workflow job:
`101223419039` — SUCCESS.

Artifact:
- ID `9960134957`;
- name `UnnamedHuntRPG-Hunt01-WoundContact-debug`;
- size `57,384,899` bytes;
- SHA-256 `54f942ec0d891a27c9ee702db58db8edf68cb905e2468b07f3097797976820b1`;
- APK output `UnnamedHuntRPG-Hunt01-WoundContact-debug.apk`.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

Status application, status hook scheduling/ticks/transitions, forced movement, structural crack/break/sever/detachment, remaining Mudcrest attacks/behavior, defeat/escape/reacquisition, harvest, inventory, crafting, settlement services and persistence runtime remain incomplete.

Latest handoff:
`docs/70_handoff/HUNT01_MUDCREST_WOUND_CONTACT_RUNTIME_2026-09-04.md`.

## Exact next bounded piece

`FIRST_SLICE_GENERIC_STATUS_APPLICATION_RUNTIME_IMPLEMENTATION`

Required boundary:
1. generic ownership belongs under `game/scripts/gameplay/combat/`; content owners only emit valid requests;
2. consume only request records whose consumer/status is `PENDING_GENERIC_STATUS_APPLICATION_RUNTIME` and whose stable request identity is valid;
3. support the currently produced `status_bleeding` and `status_off_balance` requests without inventing additional producers;
4. apply each request exactly once; replay/readback of the same request must not duplicate `ON_APPLY`, intensity, transitions or trace;
5. Bleeding uses one actor-level instance, `STACK_INTENSITY_CAPPED`, maximum intensity 3, and records `first_tick_round = application_round + 1` without executing a tick;
6. Off-Balance uses one instance and `REFRESH_DURATION`; record enough timing state for later natural removal after one completed normal activation, but do not implement TURN_END scheduling in this piece;
7. stable instance/application trace must record source, target, status, request/application identity, application round/sequence and relevant source metadata;
8. do not infer a status from Health loss or contact; only valid content-owned application requests are consumable;
9. no independent random proc, no AP/RP/Stamina refresh/spend, no Health/anatomy mutation, no Initiative edits and no presentation authority;
10. leave `ROUND_END` Bleeding periodic consequence and `TURN_START/TURN_END` status transition/expiry scheduling to a subsequent timing/scheduler layer;
11. add source/static, dedicated headless, regression and Android-build verification;
12. phone/performance remain deferred.

Do not bundle structural break/sever, other Mudcrest attacks, defeat/escape, harvest or status periodic damage into this piece.
