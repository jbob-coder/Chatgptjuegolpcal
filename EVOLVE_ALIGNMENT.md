# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 BASIC RUNTIME AUTORUN ANDROID BUILD VERIFIED / BASIC AUTORUN COMBAT EXCHANGE NEXT / PHONE VALIDATION BATCHED
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
- generic `status_staggered` application/refresh with exact-once next-`TURN_START_PRE_RECOVERY` conversion to existing Off-Balance without skipped activation;
- Hunter zero-Health `ACTIVE → DOWNED → HUNTERS_DEFEATED` and terminal scheduler commitment;
- living Mudcrest identity/anatomy/status/world preservation through Hunter defeat;
- `M01_TAIL_SWEEP` including SOLID→Off-Balance and CLEAN→generic Staggered producer integration;
- deterministic basic-runtime autorun regression using the real Region-01 scene across two fresh boot/run/teardown cycles with no detected Hunt-01 group/state leakage.

## Current verified automated baseline

Latest full production-verified revision:
`3c6a792851e5dec9756f6e99bd09de291fe266b2`.

Basic autorun implementation commit:
`07ad99f71fd0da45ff458fe8d5e770d02ab07783`.

Fresh-instance contract repair commit:
`3c6a792851e5dec9756f6e99bd09de291fe266b2`.

Production verification workflow:
`34763505121` — SUCCESS.

Workflow job:
`103740308986` — SUCCESS.

Artifact:
- ID `10319379031`;
- name `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`;
- size `57,495,532` bytes;
- SHA-256 `488a3f31bf589a194332402b8c8cf1ee8c9a9f57edb0d5d7a77adf5693b68b7f`.

Run 73 (`34763317831`) failed before Godot because the new autorun documentation did not contain the explicit `fresh-instance` governance phrase required by its own static preflight. Runtime/gameplay code was not implicated. The repair strengthened the documentation wording without weakening the gate. Run 74 then passed the full static layer, Godot 4.7.2 import/parse, AppShell and Region-01 smokes, production integration, the new two-cycle autorun, all current combat/anatomy/status/outcome regressions, Android debug export and artifact upload.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

Still intentionally open: forced-recovery destination/timing/costs; Bleeding periodic Health magnitude; Braced/Guarded runtime; Mudcrest structural crack/break/sever thresholds; Hunter withdrawal geometry; Monster escape/death execution; harvest/inventory/crafting/settlement/persistence; final Tail Sweep tuning.

Latest specialized handoff:
`docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Exact next bounded piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_COMBAT_EXCHANGE_REGRESSION`

Required boundary:
1. extend verification automation only; do not create player-facing autoplay;
2. use the real production Region-01 scene and existing runtime owners;
3. drive the already-verified tracking→ENGAGE path and one already-implemented deterministic combat exchange through existing APIs;
4. verify scheduler/resources/reaction/consequence/status readback without adding new gameplay rules;
5. preserve two fresh-instance repeatability and protected manual controls;
6. do not select unresolved Bleeding HP, structural thresholds, withdrawal/recovery values or Monster terminal semantics;
7. keep the full production Android workflow green.

NEXT THING I WILL DO: FIRST_SLICE_HUNT01_BASIC_AUTORUN_COMBAT_EXCHANGE_REGRESSION — deepen the automatic basic-loop smoke from combat ownership/idle scheduling into one real already-implemented combat exchange, without changing player-facing gameplay.
