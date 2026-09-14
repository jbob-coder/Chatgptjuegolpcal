# EVOLVE ALIGNMENT — Unnamed Hunt RPG

Status: PRODUCTION DEVELOPMENT ACTIVE / HUNT-01 BASIC AUTORUN HUNTER DEFEAT TERMINAL ANDROID BUILD VERIFIED / 2 GB GAME STORAGE CAP SELECTED / PACKAGE CAP CI GATE NEXT / PHONE VALIDATION BATCHED
Last reconciled: 2026-09-14

## Operating law

The game is the objective. Documentation preserves ownership, evidence and continuation.

`READ LIVE STATE → VERIFY → ONE BOUNDED LAYER → IMPLEMENT → STATIC/HEADLESS/BUILD QA → FIX SAME-LAYER FAILURES → RECORD → CONTINUE`.

Current repository/source/build evidence outranks chat memory and older handoffs.

## User-selected storage law

`TOTAL_PLAYER_REQUIRED_GAME_STORAGE_CAP = 2 GB`
`TOTAL_PLAYER_REQUIRED_GAME_STORAGE_CAP_BYTES = 2000000000`
`TOTAL_GAME_STORAGE_CAP_SELECTED = YES`

The complete player-required installed/runtime base-game footprint must stay at or below 2,000,000,000 bytes. Mandatory split/downloaded runtime content counts toward the same ceiling. Development-only source masters, repository history, CI artifacts and debug-only files that never ship do not count. APK/AAB size is a necessary package constraint but is not proof of installed footprint.

## User validation policy

`USER_PHONE_VALIDATION_POLICY = DEFERRED_BATCH`
`PHONE_ACCEPTANCE_DOES_NOT_BLOCK_INDEPENDENT_LAYER_DEVELOPMENT = YES`

Do not convert CI/headless/APK evidence into phone, installed-footprint or sustained-performance proof.

## Protected controls / world foundation

Protected shooter-style controls remain direct continuous analog left-stick movement, independent right-side look, simultaneous movement/look, no forced joystick release/center/rebase, approximately 115° first-person FOV and approximately 6.25 m/s exploration speed.

Production world remains the continuous 440×440 m Hunt-01 foundation. `probes/android_stage1/` remains evidence only.

## Verified production stack

IMPLEMENTED / STATIC VERIFIED where gated / HEADLESS VERIFIED / ANDROID BUILD VERIFIED:
- continuous Hunt-01 tracking through `OBSERVATION_READY` and same-location ENGAGE;
- deterministic combat shell/resources/authored tactical movement;
- Hunter `POLEBLADE_MEASURED_CUT`, Mudcrest anatomy, reaction/Block, Head Sweep and Tail Sweep;
- Hunter defense, health/injury and generic encounter-outcome ownership;
- species wound/contact classification;
- generic Bleeding/Off-Balance/Staggered application and lifecycle timing;
- exact-once Staggered→Off-Balance transition and CLEAN Tail Sweep→Staggered producer in dedicated regressions;
- deterministic two-fresh-instance basic autorun with clean teardown;
- integrated Tail Sweep/Poleblade Block exchange, Hunter Measured Cut/anatomy transaction and real Bleeding lifecycle;
- integrated Hunter defeat terminal chain: after test-only Health preparation stops at 10, real Round-6 Head Sweep action sequence 5 causes the final 10→0 transition, Hunter becomes `DOWNED`, outcome commits `HUNTERS_DEFEATED`, current actor freezes empty in Round 6, further scheduler commitments are rejected and outcome replay is idempotent.

## Current verified automated baseline

Latest full production-verified revision:
`01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

Storage-cap policy commit:
`f3b5dfb672127fa90303e689466f41a3cbe439ff`.

Hunter defeat-terminal autorun implementation commit:
`01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

Production verification workflow:
`34880096112` — SUCCESS.

Workflow job:
`104096962757` — SUCCESS.

Artifact:
- ID `10362706279`;
- name `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`;
- size `57,536,941` bytes;
- SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

Run 84 passed static/manifest governance, Godot 4.7.2 parse/import, production smokes, the extended two-cycle autorun through `HUNTERS_DEFEATED`, every current combat/anatomy/status/outcome regression, Android debug export and artifact upload.

The artifact is far below the 2 GB cap, but package size alone does not establish installed-footprint compliance.

## Verification boundary

`PHONE_VERIFIED_NEWER_PRODUCTION_LAYERS = NO / DEFERRED_BATCH`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`H01VAL005_FINAL_SMOOTHED_ROUTE_LENGTH = NOT_EXECUTED`
`INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`

Still intentionally open: forced-recovery destination/timing/costs; Bleeding periodic Health magnitude; Braced/Guarded runtime; Mudcrest structural crack/break/sever thresholds; Hunter withdrawal geometry; Monster escape/death execution; harvest/inventory/crafting/settlement/persistence; final combat tuning; target-device installed-footprint measurement.

Latest specialized handoff:
`docs/70_handoff/HUNT01_BASIC_RUNTIME_AUTORUN_2026-09-13.md`.

## Exact next bounded piece

`FIRST_SLICE_ANDROID_PACKAGE_2GB_STORAGE_CAP_CI_GATE`

Required boundary:
1. add a production-workflow package-size gate after Android export and before artifact upload;
2. hard limit is exactly `2,000,000,000` bytes;
3. fail the workflow if the exported production APK exceeds the cap;
4. record measured APK bytes and cap bytes in build evidence;
5. explicitly label this as package-size evidence only, not installed-footprint proof;
6. do not alter production gameplay, controls, balance, assets or runtime behavior;
7. keep every existing Hunt-01 static/headless regression and Android export green.

NEXT THING I WILL DO: `FIRST_SLICE_ANDROID_PACKAGE_2GB_STORAGE_CAP_CI_GATE` — enforce the newly selected storage ceiling at the Android package layer while preserving the separate future installed-footprint gate.
