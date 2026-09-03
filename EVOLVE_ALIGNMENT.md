# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 LIFECYCLE REVIEW COMPLETE / TRANSIENT INPUT RESET NEXT
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
→ `STATE THE SAME NEXT ACTION TO THE USER`

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

Latest fully build-verified source piece:
`c218b273a49dbdce78ce143698fd87d07bdd2643`

Workflow:
`33807677829`

Results:
- protected static preflight `154 / 154 PASS`;
- Monster collision guard `8 / 8 PASS`;
- world-boundary guard `12 / 12 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot smoke PASS;
- ProbeWorld smoke PASS;
- aerial↔first-person executable runtime regression `17 / 17 PASS`;
- Android export PASS;
- APK integrity PASS.

APK:
`UnnamedHuntRPG-Stage1Probe-debug.apk`

Size:
`57,570,361 bytes`

SHA-256:
`db046d03d778228e6343b5ada35f2fa9392a8c79c519d1e7cd58d632e701c6da`

Current documentation reconciliation commit before lifecycle review:
`01418118d0d3b3a44be147dbe1d3ad35a121fdb5`.

## Completed Stage-1 source/build foundation pieces

### Heading-reset joystick
`JOYSTICK_HEADING_RESET_SOURCE_IMPLEMENTED = YES`
`JOYSTICK_HEADING_RESET_APK_BUILD_VERIFIED = YES`
`JOYSTICK_HEADING_RESET_PHONE_VERIFIED = NO / DEFERRED`

### Monster placeholder collision
Representative `StaticBody3D` + matching `BoxShape3D` added without production Monster physics.

`MONSTER_COLLISION_STATIC_VERIFIED = YES / 8_OF_8`
`MONSTER_COLLISION_APK_BUILD_VERIFIED = YES`
`MONSTER_COLLISION_PHONE_VERIFIED = NO / DEFERRED`

Current layout note:
full rear approach is unavailable because Monster rear extent is approximately `z=-8.4` and Hunter-center boundary is `z=-8.5`.

### World boundary
Existing phone-positive `PROBE_BOUNDS = 8.5` behavior was not retuned.

`WORLD_BOUNDARY_STATIC_VERIFIED = YES / 12_OF_12`
`WORLD_BOUNDARY_APK_BUILD_VERIFIED = YES`
`WORLD_BOUNDARY_CURRENT_APK_PHONE_VERIFIED = NO / DEFERRED`

### Aerial ↔ first-person continuity
Executable test:
`ci/stage1/state_continuity_test.gd`.

`AERIAL_FIRST_PERSON_STATE_CONTINUITY_HEADLESS_VERIFIED = YES / 17_OF_17`
`AERIAL_FIRST_PERSON_STATE_CONTINUITY_APK_BUILD_VERIFIED = YES`
`AERIAL_FIRST_PERSON_STATE_CONTINUITY_PHONE_VERIFIED = NO / DEFERRED`

## Lifecycle foundation review — current truth

Specialized handoff:
`docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_FOUNDATION_REVIEW_2026-09-03.md`.

Reviewed owners:
- `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`;
- `probes/android_stage1/project.godot`;
- `probes/android_stage1/scripts/boot.gd`;
- `probes/android_stage1/scripts/probe_world.gd`;
- official Godot 4.7 Node/InputEventScreenTouch documentation.

Confirmed source facts:
- no lifecycle-triggered scene creation/autoload path exists;
- Boot changes to ProbeWorld only through the explicit Start Probe action;
- Look Speed already persists independently through ConfigFile;
- view-continuity source is executable/headless verified;
- no evidence currently justifies forcing aerial view, closing Settings, recreating scenes, or adding production save/lifecycle architecture.

Actual bounded risk:
- `_joystick_touch_id` and `_joystick_vector` are transient active-touch state;
- a matching release is normally required by `_input()` to call `_reset_joystick()`;
- if Android pauses/defocuses before that release reaches the node, stale touch/vector state can survive and cause stuck movement or block the next touch.

Godot 4.7 verified API surface:
- `NOTIFICATION_APPLICATION_RESUMED = 2014` — Android/iOS;
- `NOTIFICATION_APPLICATION_PAUSED = 2015` — Android/iOS;
- `NOTIFICATION_APPLICATION_FOCUS_IN = 2016` — desktop/mobile;
- `NOTIFICATION_APPLICATION_FOCUS_OUT = 2017` — desktop/mobile;
- `InputEventScreenTouch.canceled` exists.

Selected smallest correct behavior:
**reuse `_reset_joystick()` on application pause/resume and focus-out/focus-in.**

This is intentionally a transient-input cleanup only. It must not mutate Hunter transform, view state, Settings state, saved Look Speed, world boundary or Monster collision.

`LIFECYCLE_FOUNDATION_REVIEW_COMPLETE = YES`
`LIFECYCLE_SOURCE_CHANGE_MADE = NO`
`LIFECYCLE_PHONE_VERIFIED = NO`

## Exact current implementation gate

**ANDROID_LIFECYCLE_TRANSIENT_INPUT_RESET_IMPLEMENTATION_AND_HEADLESS_REGRESSION**

Bounded implementation scope:
1. add the smallest lifecycle/focus notification handler in `probe_world.gd`;
2. route all four relevant boundaries to the existing `_reset_joystick()`;
3. add a separate executable Godot headless regression that seeds stale joystick state and injects lifecycle/focus notifications;
4. verify transient input clears while Hunter transform, view state, Settings state and Look Speed remain unchanged;
5. verify repeated notification handling is idempotent and does not create duplicate ProbeWorld nodes;
6. rerun static/collision/boundary/view-continuity regressions, Godot parse/smoke, Android export and APK integrity;
7. reconcile `PROBE_TEST_PROTOCOL.md` current counts/analog-control/lifecycle evidence;
8. record phone background/resume + lock/unlock as still deferred.

Do not add performance tuning, production lifecycle architecture, production save/load, combat or domain systems.

## Remaining Stage-1 sequence

1. lifecycle transient-input reset implementation + automated verification;
2. prepare/execute sustained Galaxy A03s frame-pacing/thermal evidence when device access exists;
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

`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154_CURRENT_BUILD`
`MONSTER_COLLISION_STATIC = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC = YES / 12_OF_12`
`VIEW_CONTINUITY_HEADLESS = YES / 17_OF_17`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`LIFECYCLE_FOUNDATION_REVIEW_COMPLETE = YES`
`LIFECYCLE_PHONE_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = ANDROID_LIFECYCLE_TRANSIENT_INPUT_RESET_IMPLEMENTATION_AND_HEADLESS_REGRESSION`
`NEXT_IMPLEMENTATION_AFTER_PASS = STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`
