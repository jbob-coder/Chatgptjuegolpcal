# Galaxy A03s Stage 1 Probe Test Protocol

Status: TEST CONTRACT ACTIVE / AUTOMATED FOUNDATION BUILD VERIFIED THROUGH VIEW CONTINUITY / LIFECYCLE TRANSIENT-INPUT VERIFICATION ADDED
Last reconciled: 2026-09-03

## Purpose

Convert the Stage-1 phone check into reproducible evidence instead of a subjective "it seems fine" decision.

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
- `HEADLESS_RUNTIME_REGRESSION_VERIFIED`;
- `APK_BUILD_VERIFIED`;
- `PHONE_INSTALL_VERIFIED`;
- `PHONE_RUNTIME_VERIFIED`;
- `PERFORMANCE_VERIFIED`;
- `ENGINE_PHONE_PROBE_VERIFIED`.

A later state requires evidence from all relevant earlier states.

Automated source/headless evidence never substitutes for Galaxy A03s OS-delivery, visual, touch, thermal or crash/ANR evidence.

## Test 0 — repository/readback + static preflight

From a real repository checkout, run from `probes/android_stage1/`:

```bash
python tests/static_preflight.py
python tests/monster_collision_preflight.py
python tests/world_boundary_preflight.py
```

Pass when:
- all referenced scene/script paths exist;
- project main scene exists;
- project requests GL Compatibility for desktop/mobile;
- expected 1600×720/landscape/frame-pacing settings remain present;
- scene external/sub-resource uses are declared;
- duplicate external/sub-resource IDs and duplicate node paths are rejected;
- child node parent paths resolve;
- current root scene scripts resolve;
- connected signal methods exist;
- current `@onready` node paths exist;
- Boot/ProbeWorld root-script pairings remain correct;
- probe source remains isolated;
- protected joystick/settings/look-speed/heading-reset/camera behavior remains present;
- Monster representative solid-collision source contract remains present;
- world-boundary source/geometry contract remains present;
- each script exits with code `0` and its expected gate marker.

Latest fully verified pre-lifecycle lineage:
- protected static preflight `154 / 154 PASS`;
- Monster collision guard `8 / 8 PASS`;
- world-boundary guard `12 / 12 PASS`.

The lifecycle source pass must rerun these unchanged guards. A static PASS does not prove Godot accepts the new GDScript or that Android delivers lifecycle notifications as expected.

## Test 1 — Godot import/parse

Run with Godot 4.7-family tooling.

Pass when:
- project imports;
- Boot and ProbeWorld resources load;
- current GDScript parses;
- no missing resource/node-path errors exist.

Latest fully verified pre-lifecycle lineage:
Godot 4.7.2 headless import/parse PASS.

## Test 2 — Boot / ProbeWorld smoke

Pass when:
- Boot starts without a repeatable runtime error;
- ProbeWorld starts without a repeatable runtime error;
- current scene/script/node ownership resolves.

Latest fully verified pre-lifecycle lineage:
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS.

These headless smokes do not claim interactive WASD/touch/camera usability.

## Test 3 — Android build/install

Automated build pass requires:
- Android export preset remains valid;
- debug APK export completes;
- APK archive integrity passes;
- APK size and SHA-256 are recorded.

Phone install/runtime pass additionally requires:
- APK installs on Galaxy A03s;
- launcher cold/normal launch reaches the probe without crash/ANR.

Latest fully verified automated APK before the lifecycle source change:
- source `c218b273a49dbdce78ce143698fd87d07bdd2643`;
- workflow `33807677829`;
- Android export PASS;
- APK integrity PASS;
- size `57,570,361 bytes`;
- SHA-256 `db046d03d778228e6343b5ada35f2fa9392a8c79c519d1e7cd58d632e701c6da`.

Prior Galaxy A03s install/runtime smoke exists on earlier Stage-1 APKs. It does not automatically verify later APKs.

## Test 4 — touch/orientation/control regression

Pass on Galaxy A03s when:
- landscape remains stable;
- analog joystick responds reliably;
- partial/diagonal input works;
- releasing/re-touching captures the Hunter's latest heading;
- a held touch does not curve into continuous circling;
- rapid input does not leave a stuck touch owner/vector;
- Settings opens/closes without teleporting the Hunter;
- Look Speed applies and persists;
- view toggle remains usable;
- Android system gestures do not make the primary controls unusable;
- HUD remains legible.

Current state:
phone regression bundle deferred by explicit user instruction. Missing evidence is not PASS.

## Test 5 — Monster / boundary / camera-state foundation

Automated source/runtime checks currently cover:
- Monster representative collider source contract `8 / 8 PASS`;
- world-boundary source/geometry contract `12 / 12 PASS`;
- aerial↔first-person executable state-continuity regression `17 / 17 PASS`.

Galaxy A03s still must verify:
- Monster solidity from front/sides/edge approaches;
- current-build world-boundary edge/corner containment;
- repeated aerial↔first-person visual/input continuity;
- first-person clipping/readability;
- no physical-position drift.

## Test 6 — representative performance

Use the same scene state for comparisons.

Observe at minimum:
- FPS;
- approximate frame time;
- debug static memory where available;
- frame-pacing instability;
- input responsiveness;
- transition hitch;
- directional-shadow cost impression;
- thermal degradation during sustained run.

Suggested initial sustained sample:
- 2 minutes Boot/initial load observation;
- 5 minutes aerial movement;
- 20 aerial↔first-person transitions;
- 5 minutes repeated movement/view changes;
- at least 10 minutes continuous run for an initial thermal signal.

Prior instantaneous Galaxy A03s sample:
- `60 FPS`;
- `~16.7 ms/frame`;
- `gl_compatibility / opengl3`;
- `40.9 MiB` debug static memory.

This is useful evidence but not `PERFORMANCE_VERIFIED`.

## Test 7 — lifecycle

### Source risk being protected

Transient movement ownership lives in:
- `_joystick_touch_id`;
- `_joystick_vector`.

If Android pauses/defocuses before a matching touch release reaches ProbeWorld, stale transient input could otherwise survive resume and cause stuck movement or block the next touch.

### Selected source behavior

`probe_world.gd` must reuse `_reset_joystick()` when receiving:
- `NOTIFICATION_APPLICATION_PAUSED`;
- `NOTIFICATION_APPLICATION_RESUMED`;
- `NOTIFICATION_APPLICATION_FOCUS_OUT`;
- `NOTIFICATION_APPLICATION_FOCUS_IN`.

This reset must not mutate:
- Hunter transform;
- first-person/aerial state;
- Settings open/closed state;
- saved Look Speed;
- Monster collision;
- world-boundary behavior;
- production save architecture.

### Automated lifecycle regression

Executable owner:
`ci/stage1/lifecycle_transient_input_test.gd`.

The test must:
1. instantiate the real ProbeWorld;
2. put it into non-default first-person + Settings-open state;
3. seed a nonzero joystick vector and active touch ID;
4. inject each of the four lifecycle/focus notifications through `Object.notification()`;
5. verify touch ID becomes `-1` and joystick vector becomes `Vector2.ZERO`;
6. verify Hunter transform, view/camera ownership, Settings state and Look Speed remain unchanged;
7. verify repeated notification delivery is idempotent;
8. verify no duplicate ProbeWorld node is created.

Expected CI gate marker:
`ANDROID_LIFECYCLE_TRANSIENT_INPUT_RUNTIME_VERIFIED`.

This headless test verifies the source response contract only. It does not prove Android OS lifecycle event delivery.

### Galaxy A03s lifecycle acceptance

Still requires direct device evidence that:
- app backgrounds and resumes;
- lock/unlock does not corrupt scene state;
- switching away/back does not duplicate ProbeWorld;
- no stuck movement/touch ownership survives resume;
- Settings/view/position remain coherent;
- no repeatable crash/ANR occurs.

Audio lifecycle remains deferred until audio exists.

## Test 8 — visual-cost isolation

If sustained performance is below target, change one major cost family at a time in this order:
1. directional shadows OFF;
2. decorative vegetation reduction once vegetation exists;
3. particles/VFX OFF once they exist;
4. lower internal render scale;
5. reduced monster/distance detail.

Record before/after evidence and do not remove gameplay-critical readability first.

## Evidence record template

For every executed gate record:
- date/time;
- branch/commit SHA;
- gate/test name;
- machine/device;
- Godot version when applicable;
- exact command/editor/device action;
- PASS/FAIL;
- warnings/errors;
- screenshots/logs/video references when available;
- files changed for a repair;
- rerun result.

## Current Stage-1 acceptance

`ENGINE_PHONE_PROBE_VERIFIED` may pass only when:
- current source/readback/static checks pass;
- Godot parse/smoke/runtime regressions pass;
- Android build/install passes;
- target-phone touch/camera/collision/boundary/lifecycle behavior is usable;
- no repeatable crash/ANR exists;
- sustained frame pacing/thermal behavior is acceptable or an evidence-based adjustment is approved.

## Failure handling

If a gate fails:
1. preserve the exact observed symptom;
2. identify the smallest reproducer;
3. classify source/config/device/export/renderer/performance cause;
4. fix one bounded root cause;
5. rerun the failed gate;
6. rerun adjacent regression checks;
7. update durable state.

Do not switch engines merely because the first configuration is imperfect. Switch only when evidence shows the engine/renderer cannot meet required behavior without unacceptable compromises.

## Current truth before lifecycle CI readback

`TEST_PROTOCOL_RECORDED = YES`
`STATIC_PREFLIGHT_PRE_LIFECYCLE = 154_OF_154_PASS`
`MONSTER_COLLISION_STATIC = 8_OF_8_PASS`
`WORLD_BOUNDARY_STATIC = 12_OF_12_PASS`
`VIEW_CONTINUITY_HEADLESS = 17_OF_17_PASS`
`LIFECYCLE_TRANSIENT_INPUT_SOURCE_IMPLEMENTED = YES`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS = PENDING_CURRENT_CI`
`GODOT_PARSE_CURRENT_LIFECYCLE_SOURCE = PENDING_CURRENT_CI`
`APK_BUILD_CURRENT_LIFECYCLE_SOURCE = PENDING_CURRENT_CI`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`LIFECYCLE_PHONE_VERIFIED = NO / DEFERRED`
`SUSTAINED_PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
