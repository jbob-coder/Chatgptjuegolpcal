# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 VIEW-CONTINUITY BUILD VERIFIED / PHONE EVIDENCE DEFERRED
Last reconciled: 2026-09-03

## Mandatory pre-work rule

**Read the current repository copy of this file before every bounded design, documentation, asset, implementation, debugging, build, or verification pass.**

Then read:
1. `PROJECT_HANDOFF.md`;
2. `START_HERE_NEW_CHAT.md`;
3. `DOCUMENTATION_INDEX.md`;
4. the newest relevant specialized handoff;
5. the owning source/package for the exact bounded task.

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

Before ending **every** bounded work pass:
1. decide the single exact next action for the active implementation lane;
2. keep any independent design-lane action separate;
3. update this file so the repository records the exact next action;
4. state the same exact next action to the user;
5. if blocked on device/external evidence, record the blocker without claiming PASS;
6. never use vague next actions such as `continue`, `work on gameplay`, `improve the game`, or `do more testing`.

Preferred wording:
`NEXT THING I WILL DO: <one exact bounded action>`

If blocked:
`BLOCKER: <exact missing evidence or action>`
`NEXT THING I WILL DO AFTER THAT: <one exact bounded action>`

The next step must never exist only in chat.

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

Do not advance into Stage 2 while Stage-1 phone foundation still has unresolved control/collision/lifecycle/performance evidence.

## Current implementation authorization

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`

Current candidate:
- Godot 4.7 family;
- build tooling: Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Android;
- Samsung Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

The isolated source under `probes/android_stage1/` remains evidence-gathering probe source. It must not silently become the production domain/game project.

## Protected user-directed control/camera baseline

Protected authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

User-approved/protected direction includes:
- analog movement joystick instead of four arrow keys;
- tabbed Settings overlay;
- Controls → Look Speed;
- default Look Speed `35%`;
- persistence `user://stage1_settings.cfg`, key `controls/look_speed`;
- Hunter turns toward resolved movement heading;
- aerial camera follows/trails Hunter heading;
- camera stays synchronized during first person;
- opening Settings resets movement;
- each new joystick touch captures the Hunter's current heading as the movement reference;
- active touch keeps that reference stable;
- release/re-touch resets joystick forward to the Hunter's latest heading.

Example:
`face north → push right → turn/move east → release → touch again → push up → continue east/forward`.

**Do not remove, replace or materially retune this contract without reading the protected README and explicitly documenting the reason.**

## Deferred target-phone evidence rule — current user instruction

On 2026-09-03 the user explicitly instructed development **not to stop waiting for phone reports**.

When a phone-only gate is unavailable:
- record the exact deferred phone test;
- do not mark it PASS;
- do not use it to claim `ENGINE_PHONE_PROBE_VERIFIED`;
- continue only with the next independent Stage-1 foundation piece that can be validly advanced without the missing phone evidence.

Deferred target-phone work currently includes:
1. heading-reset joystick behavior;
2. current control/Look-Speed regression;
3. Monster placeholder solidity;
4. current-build world-boundary containment;
5. aerial ↔ first-person visual/input continuity and clipping;
6. lifecycle background/resume and lock/unlock behavior;
7. sustained performance/thermal evidence.

## Current exact automated build evidence

View-continuity source commit:
`c218b273a49dbdce78ce143698fd87d07bdd2643`

Workflow run:
`33807677829`

Results:
- protected Stage-1 static preflight `154 / 154 PASS`;
- Monster collision preflight `8 / 8 PASS`;
- world-boundary preflight `12 / 12 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- executable aerial/first-person continuity regression `17 / 17 PASS`;
- Android debug export PASS;
- APK archive integrity PASS;
- workflow artifact upload PASS.

Continuity runtime specifically verified:
- initial aerial ownership;
- first-person camera ownership + Hunter body hiding;
- no Hunter position/rotation mutation on entry;
- authoritative Hunter moved position/heading retained while first person active;
- hidden aerial camera continued synchronizing through physics frames;
- no Hunter transform mutation on return to aerial;
- no stale aerial-camera revival;
- twenty additional toggles produced no Hunter transform drift.

Current build APK:
`UnnamedHuntRPG-Stage1Probe-debug.apk`

Size:
`57,570,361 bytes`

SHA-256:
`db046d03d778228e6343b5ada35f2fa9392a8c79c519d1e7cd58d632e701c6da`

Artifact ID:
`9913594654`

Build/headless verification does not prove Galaxy A03s visual/touch/lifecycle/performance behavior.

## Foundation piece truth

### Heading-reset joystick
`JOYSTICK_HEADING_RESET_SOURCE_IMPLEMENTED = YES`
`JOYSTICK_HEADING_RESET_APK_BUILD_VERIFIED = YES`
`JOYSTICK_HEADING_RESET_PHONE_VERIFIED = NO / DEFERRED_PENDING_USER_PHONE_EVIDENCE`

### Monster placeholder solid collision
`MONSTER_PLACEHOLDER_SOLID_COLLISION_SOURCE_IMPLEMENTED = YES`
`MONSTER_PLACEHOLDER_SOLID_COLLISION_STATIC_VERIFIED = YES / 8_OF_8`
`MONSTER_PLACEHOLDER_SOLID_COLLISION_APK_BUILD_VERIFIED = YES`
`MONSTER_PLACEHOLDER_SOLID_COLLISION_PHONE_VERIFIED = NO / DEFERRED_PENDING_USER_PHONE_EVIDENCE`

Current test-layout constraint:
Monster rear extent is approximately `z = -8.4` while the Hunter-center boundary is `z = -8.5`; full rear approach is unavailable. Deferred collision test uses front + both accessible sides + edge/corner pressure unless a separate test-layout pass repositions it.

### World boundary
`WORLD_BOUNDARY_PRIOR_PHONE_EVIDENCE = PASS_ON_EARLIER_STAGE1_APK`
`WORLD_BOUNDARY_STATIC_VERIFIED = YES / 12_OF_12`
`WORLD_BOUNDARY_APK_BUILD_VERIFIED = YES`
`WORLD_BOUNDARY_CURRENT_APK_PHONE_VERIFIED = NO / DEFERRED_PENDING_USER_PHONE_EVIDENCE`

Protected current source behavior:
- `PROBE_BOUNDS = 8.5`;
- X/Z clamp after `move_and_slide()`;
- no hard Y clamp;
- 1.5 m floor-edge center margin versus 0.32 m Hunter collision radius.

### Aerial ↔ first-person state continuity
Runtime regression:
`ci/stage1/state_continuity_test.gd`.

`AERIAL_FIRST_PERSON_STATE_CONTINUITY_HEADLESS_VERIFIED = YES / 17_OF_17`
`AERIAL_FIRST_PERSON_STATE_CONTINUITY_APK_BUILD_VERIFIED = YES`
`AERIAL_FIRST_PERSON_STATE_CONTINUITY_PHONE_VERIFIED = NO / DEFERRED_PENDING_USER_PHONE_EVIDENCE`

Latest specialized handoff:
`docs/70_handoff/STAGE1_AERIAL_FIRST_PERSON_STATE_CONTINUITY_2026-09-03.md`.

## Exact current implementation gate

The next bounded implementation-lane action is:
**ANDROID_LIFECYCLE_BACKGROUND_RESUME_FOUNDATION_REVIEW**.

This is a review-first piece, not immediate coding.

Scope:
1. read the current lifecycle test contract in `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`;
2. inspect current input/settings/view state ownership in `probe_world.gd`;
3. verify Godot 4.7 lifecycle notification APIs from official documentation;
4. identify the smallest source behavior/observability needed to prevent or diagnose stuck touch state, duplicate state, or view/control corruption after pause/resume;
5. classify what can be headless/build-verified and what remains target-phone-only;
6. record the exact next implementation piece before any lifecycle source change.

Do not combine the review with performance tuning, combat, production save architecture or Android production lifecycle architecture.

## Remaining Stage-1 sequence

Before broad game construction:
1. lifecycle foundation review;
2. smallest lifecycle source/verification piece selected by that review;
3. sustained Galaxy A03s frame-pacing/thermal evidence;
4. execute deferred target-phone regression bundle when the user can provide device evidence;
5. close any evidence-driven defects one at a time.

Only then consider `ENGINE_PHONE_PROBE_VERIFIED = YES` and Stage 2 production-domain implementation.

## Independent gameplay-design lane

Recorded combat authorities remain:
- `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`;
- `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`;
- `docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`.

Selected first weapon:
`WEAPON_FAMILY_FIELD_POLEBLADE`.

Selected first-slice Stamina baseline:
`MAX_STAMINA = 100`.

Next independent design packet:
**INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT**.

Do not combine it with statuses, terrain numbers, Monster 01 attacks, berserk, party design, or defeat/retreat behavior.

## Current gate truth

`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154_CURRENT_BUILD`
`MONSTER_COLLISION_STATIC_PREFLIGHT = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC_PREFLIGHT = YES / 12_OF_12`
`AERIAL_FIRST_PERSON_STATE_CONTINUITY_HEADLESS = YES / 17_OF_17`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`ANDROID_PRESET_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES_ON_PRIOR_STAGE1_APKS`
`PHONE_RUNTIME_VERIFIED = PARTIAL / DEFERRED_CURRENT_BUILD_REGRESSION`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = ANDROID_LIFECYCLE_BACKGROUND_RESUME_FOUNDATION_REVIEW`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`
