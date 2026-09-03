# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PERFORMANCE MEASUREMENT PREPARED / TARGET-PHONE EVIDENCE REQUIRED
Last reconciled: 2026-09-03

## Mandatory pre-work rule

**Read the current repository copy of this file before every bounded design, documentation, asset, implementation, debugging, build, or verification pass.**

Then read:
1. `PROJECT_HANDOFF.md`;
2. `START_HERE_NEW_CHAT.md`;
3. `DOCUMENTATION_INDEX.md`;
4. the newest relevant specialized handoff;
5. the owning source/package/tests for the exact bounded task.

Do not rely on remembered state when repository/source/build/device evidence exists.

## Authority order

For intended changes:
1. current explicit user instruction;
2. current verified source/tests;
3. current owning project documentation and locked decisions;
4. direct build/runtime/device evidence;
5. external documentation/research;
6. conversation summaries/memory.

For runtime claims:
1. direct target-device evidence;
2. logs/screenshots/video;
3. build/package evidence;
4. source/static expectations;
5. planning documents.

## Mandatory loop

`READ EVOLVE`
→ `READ CURRENT STATE/HANDOFF`
→ `VERIFY STATE`
→ `IDENTIFY EXACTLY ONE SMALL PIECE`
→ `IDENTIFY OWNER + READINESS GATE`
→ `STATE THE EXACT CURRENT BOUNDED ACTION TO THE USER`
→ `RESEARCH IF REQUIRED`
→ `IMPLEMENT OR DOCUMENT`
→ `TEST AT HIGHEST AVAILABLE LEVEL`
→ `INSPECT REGRESSION`
→ `FIX FAILURES WITHIN SAME PIECE`
→ `UPDATE OWNING DOCS/HANDOFF/README/INDEX AS REQUIRED`
→ `SAVE/COMMIT`
→ `READ BACK`
→ `MARK EXACT STATUS`
→ `SELECT EXACT NEXT PIECE`
→ `WRITE THAT NEXT PIECE INTO EVOLVE`
→ `STATE THE SAME NEXT ACTION TO THE USER`.

Never begin the next unrelated piece before closing the current verification/documentation boundary.

If the highest required verification is unavailable, stop at the highest achieved level and record the missing gate rather than claiming success.

## Documentation/navigation law

Every substantial durable piece must leave enough repository state to answer:

`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

Use:
- root `README.md` for the human project front door;
- `docs/README.md` for documentation/package placement rules;
- local package/folder `README.md` files as local front doors;
- `DOCUMENTATION_INDEX.md` for the cross-project authority/read-order map;
- `docs/70_handoff/` for bounded-pass continuity records;
- `PROJECT_HANDOFF.md` and `START_HERE_NEW_CHAT.md` for current-state reconstruction;
- this file for the exact operating contract and next-action state.

A new important authority that cannot be discovered from its local README or `DOCUMENTATION_INDEX.md` is incompletely integrated documentation.

## Mandatory next-action declaration rule

Before ending every bounded work pass:
1. decide the single exact next action for the active implementation lane;
2. keep an independent design lane separate;
3. write the implementation next action here;
4. state the same exact action to the user;
5. record unavailable phone evidence as deferred, never PASS.

Preferred wording:
`NEXT THING I WILL DO: <one exact bounded action>`

If blocked:
`BLOCKER: <exact missing evidence or action>`
`NEXT THING I WILL DO AFTER THAT: <one exact bounded action>`

## Build-readiness taxonomy

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Classes:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Primary law:
**an open question blocks only the earliest implementation gate that genuinely consumes its answer.**

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`

Current candidate:
- Godot 4.7 family;
- CI/build tooling Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Android;
- Samsung Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

`probes/android_stage1/` is disposable evidence-gathering probe source and must not silently become production game architecture.

## Protected control/camera contract

Authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Protected behavior includes:
- analog movement joystick;
- each new touch captures current Hunter heading as a stable movement reference;
- active touch keeps that basis stable;
- release/re-touch captures latest Hunter heading;
- Hunter faces resolved movement;
- aerial camera follows/trails Hunter heading;
- aerial camera stays synchronized while first person is active;
- Settings overlay + Controls → Look Speed;
- default Look Speed `35%`;
- persistence `user://stage1_settings.cfg` / `controls/look_speed`;
- opening Settings resets movement.

Do not silently remove, replace or materially retune this contract.

## Explicit phone-evidence rule

On 2026-09-03 the user explicitly instructed development not to stop waiting for phone reports.

Therefore:
- record each phone-only test for later;
- never infer phone PASS from source/CI;
- continue independent non-phone foundation/design work that can be validly advanced;
- do not close the Stage-1 engine-phone gate until its direct Galaxy A03s evidence exists.

Deferred Galaxy A03s evidence includes:
1. heading-reset joystick behavior;
2. current controls/Look-Speed regression;
3. Monster placeholder solidity;
4. current-build world-boundary containment;
5. aerial↔first-person visual/input continuity and clipping;
6. background/resume + lock/unlock lifecycle behavior;
7. sustained frame pacing/thermal/input/transition behavior.

## Completed Stage-1 automated foundation

### Controls / heading reset
`JOYSTICK_HEADING_RESET_SOURCE_IMPLEMENTED = YES`
`JOYSTICK_HEADING_RESET_APK_BUILD_VERIFIED = YES`
`JOYSTICK_HEADING_RESET_PHONE_VERIFIED = NO / DEFERRED`

### Monster placeholder collision
Representative fixed `StaticBody3D` + matching `BoxShape3D` exists without production Monster physics.

`MONSTER_COLLISION_STATIC_VERIFIED = YES / 8_OF_8`
`MONSTER_COLLISION_APK_BUILD_VERIFIED = YES`
`MONSTER_COLLISION_PHONE_VERIFIED = NO / DEFERRED`

Layout note:
full rear approach is unavailable because Monster rear extent is approximately `z=-8.4` and Hunter-center boundary is `z=-8.5`.

### World boundary
Existing `PROBE_BOUNDS = 8.5` behavior was not retuned.

`WORLD_BOUNDARY_STATIC_VERIFIED = YES / 12_OF_12`
`WORLD_BOUNDARY_APK_BUILD_VERIFIED = YES`
`WORLD_BOUNDARY_CURRENT_APK_PHONE_VERIFIED = NO / DEFERRED`

### Aerial ↔ first-person continuity
Executable owner:
`ci/stage1/state_continuity_test.gd`.

`AERIAL_FIRST_PERSON_STATE_CONTINUITY_HEADLESS_VERIFIED = YES / 17_OF_17`
`AERIAL_FIRST_PERSON_STATE_CONTINUITY_APK_BUILD_VERIFIED = YES`
`AERIAL_FIRST_PERSON_STATE_CONTINUITY_PHONE_VERIFIED = NO / DEFERRED`

### Android lifecycle transient-input reset
Source owner:
`probes/android_stage1/scripts/probe_world.gd`.

Executable regression:
`ci/stage1/lifecycle_transient_input_test.gd`.

Application pause/resume and focus-out/focus-in route only transient joystick/touch state through existing `_reset_joystick()`.

`LIFECYCLE_TRANSIENT_INPUT_SOURCE_IMPLEMENTED = YES`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS_VERIFIED = YES / 47_OF_47`
`LIFECYCLE_TRANSIENT_INPUT_APK_BUILD_VERIFIED = YES`
`LIFECYCLE_PHONE_VERIFIED = NO / DEFERRED`

### Sustained-performance evidence preparation
Source owner:
`probes/android_stage1/scripts/probe_world.gd`.

Executable telemetry regression:
`ci/stage1/performance_telemetry_test.gd`.

Phone procedure authority:
`probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

Preparation handoff:
`docs/70_handoff/STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION_2026-09-03.md`.

Telemetry source commit:
`89394067971120df43b184a8509934f5458185f2`.

Telemetry added without changing camera/control/Monster/boundary/render-quality/gameplay costs:
- engine FPS;
- rolling approximately one-second actual process-frame average/max;
- cumulative frames above `34 ms`;
- cumulative frames at/above `50 ms`;
- cumulative worst process-frame delta;
- existing debug static memory/renderer/view mode.

`PERFORMANCE_TELEMETRY_SOURCE_IMPLEMENTED = YES`
`PERFORMANCE_TELEMETRY_HEADLESS_VERIFIED = YES / 20_OF_20`
`SUSTAINED_PERFORMANCE_PROTOCOL_PREPARED = YES`
`SUSTAINED_PERFORMANCE_PHONE_EXECUTED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`

## Current exact build lineage

Current documentation/protocol revision built by CI:
`c02971996e35770bbaaaf9bf6c460af208db4f83`

Workflow:
`33811355891`

Workflow conclusion:
`SUCCESS`.

Verified gates on that exact revision:
- protected static preflight PASS (`154 / 154`);
- Monster collision guard PASS (`8 / 8`);
- world-boundary guard PASS (`12 / 12`);
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- aerial↔first-person runtime regression PASS (`17 / 17`);
- lifecycle transient-input runtime regression PASS (`47 / 47`);
- performance telemetry runtime regression PASS (`20 / 20`);
- Android debug export PASS;
- APK archive integrity PASS;
- artifact upload PASS.

Exact inner APK from workflow `33811355891`:
- file `UnnamedHuntRPG-Stage1Probe-debug.apk`;
- size `57,570,361 bytes`;
- SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Uploaded workflow artifact ZIP:
- name `UnnamedHuntRPG-Stage1Probe-debug`;
- artifact ID `9914945271`;
- archive size `57,124,301 bytes`;
- archive digest `sha256:a02d8a1b79f3d0b87f4694c72f897beaf925016f86495a264bd72303563a6188`.

The APK and uploaded artifact ZIP are different files. Never exchange their size/hash labels.

## Prepared Galaxy A03s sustained run

The phone protocol defines one uninterrupted `24` minute run:
1. `T+00–02` launch/baseline stabilization;
2. `T+02–07` sustained aerial analog movement;
3. `T+07–09` exactly 20 controlled aerial↔first-person transitions;
4. `T+09–14` mixed movement/view interaction;
5. `T+14–24` sustained thermal/frame-pacing soak;
6. checkpoints at `T+02`, `T+07`, `T+09`, `T+14`, `T+19`, `T+24`.

The protocol records FPS, rolling frame-time telemetry, hitch counters, worst frame, static memory, battery, thermal feel, input response, transition hitches and evidence identifiers, with explicit PASS/FAIL/REVIEW/STOP conditions.

The prior one-frame `60 FPS / ~16.7 ms / 40.9 MiB` Galaxy A03s sample is not sustained-performance verification.

## Exact current implementation gate

`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`

This gate is blocked only by target-phone evidence. It requires:
- the prepared sustained performance/thermal run;
- current controls/heading reset;
- Monster collision;
- world boundary;
- aerial↔first-person visual/input continuity;
- lifecycle background/resume + lock/unlock;
- crash/ANR observation.

Do not tune rendering/gameplay costs before measured evidence identifies a bounded failure.

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`

## Active non-phone lane

Because the user explicitly instructed development not to stop waiting for phone evidence, the next bounded action that can proceed independently is:

`NEXT_ACTIVE_NON_PHONE_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`

Authority package:
`docs/20_gameplay/combat/`.

Recorded combat authorities already exist for:
- action economy;
- hit-quality/defense resolution;
- first weapon family;
- Stamina prototype scale/recovery.

Do not combine initiative/turn order with statuses, terrain-number finalization, Monster 01 attacks, berserk, party design or defeat/retreat behavior.

## Current gate truth

`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154`
`MONSTER_COLLISION_STATIC = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC = YES / 12_OF_12`
`VIEW_CONTINUITY_HEADLESS = YES / 17_OF_17`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS = YES / 47_OF_47`
`PERFORMANCE_TELEMETRY_HEADLESS = YES / 20_OF_20`
`SUSTAINED_PERFORMANCE_PROTOCOL_PREPARED = YES`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD REGRESSION DEFERRED`
`LIFECYCLE_PHONE_VERIFIED = NO / DEFERRED`
`SUSTAINED_PERFORMANCE_PHONE_EXECUTED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`
