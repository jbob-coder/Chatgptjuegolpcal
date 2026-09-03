# Galaxy A03s Stage 1 Probe Test Protocol

Status: TEST CONTRACT READY / STATIC PREFLIGHT HARNESS RECORDED / GODOT-PHONE EXECUTION NOT STARTED
Last reconciled: 2026-09-02

## Purpose

Convert the Stage 1 phone check into reproducible evidence instead of a subjective "it seems fine" decision.

Baseline device:
Samsung Galaxy A03s.

Probe candidate:
Godot 4.7 + GDScript + GL Compatibility.

Primary representative frame target:
stable 30 FPS minimum goal.

## Gate vocabulary

Do not collapse these states:
- `SOURCE_CREATED`;
- `SOURCE_READBACK_VERIFIED`;
- `STATIC_PREFLIGHT_VERIFIED`;
- `GODOT_PARSE_VERIFIED`;
- `EDITOR_RUN_VERIFIED`;
- `APK_BUILD_VERIFIED`;
- `PHONE_INSTALL_VERIFIED`;
- `PHONE_RUNTIME_VERIFIED`;
- `PERFORMANCE_VERIFIED`;
- `ENGINE_PHONE_PROBE_VERIFIED`.

A later state requires evidence from all relevant earlier states.

`STATIC_PREFLIGHT_VERIFIED` is intentionally below `GODOT_PARSE_VERIFIED` because the Python harness is not a Godot parser.

## Test 0 — repository/readback + static preflight

From a real repository checkout, run from `probes/android_stage1/`:

```bash
python tests/static_preflight.py
```

Pass when:
- all referenced scene/script paths exist;
- project main scene exists;
- project requests GL Compatibility for desktop/mobile;
- expected 1600×720/landscape/frame-pacing settings remain present;
- current scene external/sub-resource uses are declared;
- current root scene scripts resolve;
- connected signal methods exist;
- current `@onready` node paths exist;
- Boot/ProbeWorld root-script pairings remain correct;
- probe is isolated under `probes/android_stage1/`;
- no unapproved extra GDScript source is mixed into the probe;
- the script exits with code `0` and reports `STATIC_PREFLIGHT_VERIFIED`.

Harness creation evidence:
- current fetched source snapshot produced `81 / 81` PASS;
- missing-scene negative test correctly failed;
- unexpected-GDScript negative test correctly failed.

Environment limitation:
that creation-time execution used the current fetched source snapshot because this runtime cannot clone GitHub. Therefore a real-checkout Test 0 run remains required before promoting the repository state to `STATIC_PREFLIGHT_VERIFIED` for an actual checkout.

A Test 0 PASS still does not prove that Godot accepts the project syntax/API usage.

## Test 1 — Godot import/parse

Run with Godot 4.7-family tooling.

Pass when:
- project opens;
- no project-setting parse failure;
- Boot scene imports;
- ProbeWorld scene imports;
- both GDScript files parse;
- no missing ext/sub-resource errors;
- no broken node paths/signals are reported.

Record exact errors before changing source.

## Test 2 — desktop/editor smoke

Pass when:
- project starts at Boot;
- Start 3D Probe changes to ProbeWorld;
- WASD moves hunter placeholder;
- hunter remains bounded to test area;
- aerial camera follows movement;
- view toggle enters first-person;
- return toggle restores aerial view;
- large monster placeholder visibly moves;
- renderer/driver appears in HUD;
- FPS/debug static memory values update;
- no repeatable runtime error appears in editor output.

This does not prove Android behavior.

## Test 3 — Android build/install

Pass when:
- Android export preset is valid;
- debug APK/export completes without unresolved export errors;
- device is recognized through ADB/Godot deploy path;
- APK installs on Galaxy A03s;
- app launches from the device launcher;
- cold launch reaches Boot without crash/ANR.

Record:
- export method;
- APK size;
- build warnings;
- install warnings;
- package ID used.

## Test 4 — touch/orientation

Pass when:
- display remains landscape;
- no unintended portrait rotation occurs;
- touch directional buttons respond reliably;
- simultaneous/rapid direction changes do not leave a stuck movement flag;
- view toggle responds reliably;
- Android system gestures do not make primary controls unusable;
- HUD text remains legible at 1600×720 physical display resolution.

If touch buttons are unreliable, fix input before adding joystick polish.

## Test 5 — camera/scale

Pass when:
- aerial camera shows enough forward terrain to navigate;
- 1.75 m hunter scale is visually plausible against probe ground;
- large monster reads as large from aerial view;
- first-person transition does not teleport hunter/monster;
- first-person monster framing is viable without severe clipping;
- toggling view repeatedly does not drift authoritative hunter position.

Do not judge final art quality here.

## Test 6 — representative performance

Use the same scene state for comparisons.

Observe at minimum:
- FPS;
- approximate frame time;
- debug static memory where available;
- visible frame-pacing instability;
- input responsiveness;
- transition hitch;
- shadow cost impression;
- thermal degradation during sustained run.

Suggested sustained sample:
- 2 minutes Boot/initial load observations;
- 5 minutes aerial movement;
- 20 aerial↔first-person transitions;
- 5 minutes repeated movement/view changes;
- at least 10 minutes continuous run for an initial thermal signal.

These durations are practical probe samples, not release certification.

## Test 7 — lifecycle

Pass when:
- app backgrounds and resumes;
- lock/unlock does not corrupt scene state;
- switching away and back does not create duplicate probe scenes;
- touch flags do not remain stuck after resume;
- audio behavior is recorded once audio is added;
- no repeatable crash/ANR occurs.

## Test 8 — visual-cost isolation

If performance is below target, change only one major cost family at a time.

Test order:
1. directional shadows OFF;
2. lower/reduced decorative vegetation once vegetation exists;
3. particles/VFX OFF once they exist;
4. lower internal render scale;
5. reduced monster/distance detail.

Record before/after evidence.

Do not remove gameplay-critical silhouette/readability first.

## Evidence record template

For every executed gate record:
- date/time;
- branch/commit SHA;
- test gate number/name;
- machine/device used;
- Godot version when applicable;
- exact command or editor action;
- PASS/FAIL;
- warnings/errors;
- screenshots/logs/video references when available;
- files changed to repair a failure;
- rerun result.

This prevents a later test from being attributed to the wrong source revision.

## Current Stage 1 acceptance

`ENGINE_PHONE_PROBE_VERIFIED` may pass only when:
- static repository preflight passes in the tested checkout;
- parse/editor smoke passes;
- Android build/install passes;
- phone runtime behavior passes;
- landscape/touch/camera transition are usable;
- no repeatable crash/ANR exists in the test loop;
- representative performance is acceptable or an explicit evidence-based adjustment is approved;
- memory/thermal behavior is understood enough to risk Stage 2.

## Failure handling

If a gate fails:
1. preserve exact observed symptom;
2. identify smallest reproducer;
3. classify source/config/device/export/renderer/performance cause;
4. fix one bounded cause;
5. rerun the failed gate;
6. rerun adjacent regression checks;
7. update recorded state.

Do not switch engines merely because the first configuration is imperfect. Switch only when evidence shows the engine/renderer cannot meet required behavior without unacceptable compromises.

## Current truth

`TEST_PROTOCOL_RECORDED = YES`
`STATIC_PREFLIGHT_HARNESS = RECORDED`
`HARNESS_LOGIC_SELF_TESTED = YES`
`CURRENT_FETCHED_SOURCE_SNAPSHOT_PREFLIGHT = 81_OF_81_PASS`
`REAL_CHECKOUT_PREFLIGHT_RUN = PENDING`
`GODOT_PARSE_VERIFIED = NO`
`EDITOR_RUN_VERIFIED = NO`
`APK_BUILD_VERIFIED = NO`
`PHONE_INSTALL_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
