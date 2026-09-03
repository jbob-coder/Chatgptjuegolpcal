# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 LIFECYCLE TRANSIENT-INPUT BUILD VERIFIED / PERFORMANCE EVIDENCE PREPARATION NEXT
Last reconciled: 2026-09-03

## Mandatory pre-work rule

**Read the current repository copy of this file before every bounded design, documentation, asset, implementation, debugging, build, or verification pass.**

Then read:
1. `PROJECT_HANDOFF.md`;
2. `START_HERE_NEW_CHAT.md`;
3. `DOCUMENTATION_INDEX.md`;
4. the newest relevant specialized handoff;
5. the owning source/package/tests for the exact bounded task.

Do not rely on remembered state when repository/source or phone evidence exists.

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
→ `UPDATE OWNING DOCS/HANDOFF`
→ `SAVE/COMMIT`
→ `READ BACK`
→ `MARK EXACT STATUS`
→ `SELECT EXACT NEXT PIECE`
→ `WRITE THAT NEXT PIECE INTO EVOLVE`
→ `STATE THE SAME NEXT ACTION TO THE USER`.

Never begin the next unrelated piece before closing the current verification/documentation boundary.

If the highest required verification is unavailable, stop at the highest achieved level and record the missing gate rather than claiming success.

## Mandatory next-action declaration rule

Before ending every bounded work pass:
1. decide the single exact next action for the active implementation lane;
2. keep an independent design-lane action separate;
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

## Current explicit phone-evidence rule

On 2026-09-03 the user explicitly instructed development not to stop waiting for phone reports.

Therefore:
- record each phone-only test for later;
- never infer phone PASS from source/CI;
- continue independent Stage-1 foundation work that can be validly advanced without the phone report.

Deferred Galaxy A03s evidence currently includes:
1. heading-reset joystick behavior;
2. current controls/Look-Speed regression;
3. Monster placeholder solidity;
4. current-build world-boundary containment;
5. aerial↔first-person visual/input continuity and clipping;
6. background/resume + lock/unlock lifecycle behavior;
7. sustained frame pacing/thermal behavior.

## Current exact automated lineage

Lifecycle implementation source commit:
`9bcde8404d787180e399b9e44e89cc6760d31c3c`

Workflow:
`33809412041`

Workflow conclusion:
`SUCCESS`.

Verified gates on that exact revision:
- protected static preflight PASS (`154 / 154` existing protected suite);
- Monster collision guard PASS (`8 / 8`);
- world-boundary guard PASS (`12 / 12`);
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- aerial↔first-person executable runtime regression PASS (`17 / 17`);
- Android lifecycle transient-input executable runtime regression PASS (`47 / 47` by deterministic test definition);
- Android debug export PASS;
- APK archive integrity PASS;
- build evidence/APK artifact upload PASS.

Artifact:
`UnnamedHuntRPG-Stage1Probe-debug`

Artifact ID:
`9914228633`

Artifact archive size:
`57,122,507 bytes`.

Artifact archive digest:
`sha256:7ccf8396616f85d582ec325e3c3b92829153864b1777eb2d170f0e222ef75687`.

Important:
that digest/size describe the uploaded workflow artifact archive, not the inner APK. Do not relabel them as the APK SHA/size.

## Completed Stage-1 foundation pieces

### Heading-reset joystick
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
Existing phone-positive `PROBE_BOUNDS = 8.5` behavior was not retuned.

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
Specialized handoff:
`docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_TRANSIENT_INPUT_RESET_2026-09-03.md`.

Source owner:
`probes/android_stage1/scripts/probe_world.gd`.

Executable regression:
`ci/stage1/lifecycle_transient_input_test.gd`.

Behavior:
- application pause;
- application resume;
- focus-out;
- focus-in
all route only transient joystick/touch state through existing `_reset_joystick()`.

Verified invariants in headless regression:
- stale touch ID clears;
- joystick vector clears;
- Hunter transform does not change;
- first-person/aerial state does not change;
- camera ownership does not change;
- Settings state does not change;
- Look Speed does not change;
- repeated notifications are idempotent;
- no duplicate ProbeWorld node appears.

`LIFECYCLE_TRANSIENT_INPUT_SOURCE_IMPLEMENTED = YES`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS_VERIFIED = YES / 47_OF_47`
`LIFECYCLE_TRANSIENT_INPUT_APK_BUILD_VERIFIED = YES`
`LIFECYCLE_PHONE_VERIFIED = NO / DEFERRED`

Headless notification injection proves the source response contract; it does not prove Android OS lifecycle delivery, lock/unlock, crash/ANR or touch delivery behavior.

## Exact current implementation gate

`STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION`

Bounded scope:
1. read the current performance budget and Test 6 protocol;
2. define one reproducible Galaxy A03s sustained-run procedure for frame pacing, thermal signal, input responsiveness and transition hitch;
3. define exact evidence fields and pass/fail/stop conditions;
4. prepare any non-invasive instrumentation/documentation needed without retuning gameplay/rendering costs;
5. record the phone execution as deferred until device access exists;
6. do not claim sustained performance from the existing one-frame `60 FPS / ~16.7 ms` screenshot.

Do not tune shadows, render scale, camera, controls, Monster detail or gameplay unless later measured performance evidence identifies a bounded failure.

## Remaining Stage-1 sequence

1. sustained-performance evidence preparation;
2. execute sustained Galaxy A03s performance/thermal procedure when device access exists;
3. execute the deferred Galaxy A03s regression bundle when the user can test;
4. repair only evidence-driven failures one bounded piece at a time;
5. only then consider Stage 1 closed and Stage 2 production-domain implementation.

## Independent gameplay-design lane

Recorded authorities remain:
- `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`;
- `docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`.

`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`

Do not combine it with statuses, terrain numbers, Monster 01 attacks, berserk, party design or defeat/retreat behavior.

## Current gate truth

`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154`
`MONSTER_COLLISION_STATIC = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC = YES / 12_OF_12`
`VIEW_CONTINUITY_HEADLESS = YES / 17_OF_17`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS = YES / 47_OF_47`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`LIFECYCLE_PHONE_VERIFIED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION`
`NEXT_IMPLEMENTATION_AFTER_PASS = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`
