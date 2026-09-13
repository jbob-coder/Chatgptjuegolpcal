# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 BASIC AUTORUN COMBAT EXCHANGE ANDROID BUILD VERIFIED / HUNTER ATTACK AUTORUN INTEGRATION NEXT / PHONE VALIDATION BATCHED
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
- deterministic basic-runtime autorun regression using the real Region-01 scene across two fresh boot/run/teardown cycles with no detected Hunt-01 group/state leakage;
- deterministic autorun combat exchange: authored N01→N02→N05→N08→N10 movement, real `M01_TAIL_SWEEP`, existing `POLEBLADE_BLOCK`, deterministic SOLID / `BLOCK_STRONG` consequence, Hunter Health 100→98, no strong-Block status request, and scheduler return to Round 3 Hunter across two fresh instances.

## Current verified automated baseline

Latest full production-verified revision:
`b270ef14787043252648c18ff02df31936e2f9a2`.

Combat-exchange autorun implementation commit:
`c85db3c152dc798ed1a03508a77f5066c50f0e2c`.

Contract wording repair / verified source commit:
`b270ef14787043252648c18ff02df31936e2f9a2`.

Production verification workflow:
`34771120281` — SUCCESS.

Workflow job:
`103760780223` — SUCCESS.

Artifact:
- ID `10321349678`;
- name `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`;
- size `57,504,703` bytes;
- SHA-256 `898292db86fd3df24d213ef77e9d17e0c0a2e1d211ee4e8d3d20a67b59c659e8`.

Run 76 (`34771015107`) failed before Godot because the extended autorun documentation used hyphenated `combat-exchange` wording while its own static preflight required the explicit `combat exchange` governance phrase. Runtime/gameplay code was not implicated. Commit `b270ef14787043252648c18ff02df31936e2f9a2` repaired only that documentation wording without weakening the gate. Run 77 then passed the full static layer, Godot 4.7.2 import/parse, AppShell and Region-01 smokes, production integration, the two-cycle combat-exchange autorun, all current combat/anatomy/status/outcome regressions, Android debug export and artifact upload.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`

Still intentionally open: forced-recovery destination/timing/costs; Bleeding periodic Health magnitude; Braced/Guarded runtime; Mudcrest structural crack/break/sever thresholds; Hunter withdrawal geometry; Monster escape/death execution; harvest/inventory/crafting/settlement/persistence; final Tail Sweep tuning.

Latest specialized handoff:
`docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Exact next bounded piece

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_REGRESSION`

Required boundary:
1. extend verification automation only; do not create player-facing autoplay;
2. use the real production Region-01 scene, existing two-cycle autorun, and current Hunter attack/anatomy owners;
3. drive the already-implemented `POLEBLADE_MEASURED_CUT` transaction through authored tactical movement and existing test APIs;
4. verify legality/resources/contact/protection/anatomy/idempotent readback using already-selected values only;
5. preserve current Monster Tail Sweep/Block exchange coverage, fresh-instance repeatability, and protected manual controls;
6. do not add break/sever thresholds, Bleeding HP magnitude, Monster terminal semantics, new RNG or new balance values;
7. keep the full production Android workflow green.

NEXT THING I WILL DO: FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_REGRESSION — add the already-verified Hunter Measured Cut/anatomy transaction to the integrated automatic basic-loop smoke without changing player-facing gameplay.
