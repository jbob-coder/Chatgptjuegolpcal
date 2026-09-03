# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 CONTROL-CAMERA FOUNDATION RETEST
Last reconciled: 2026-09-03

## Mandatory pre-work rule

**Read the current repository copy of this file before every bounded design, documentation, asset, implementation, debugging, build, or verification pass.**

Then read:
1. `PROJECT_HANDOFF.md`;
2. the newest relevant specialized handoff;
3. the owning source/package for the exact bounded task.

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
→ `RESEARCH IF REQUIRED`
→ `IMPLEMENT OR DOCUMENT`
→ `TEST AT HIGHEST AVAILABLE LEVEL`
→ `INSPECT REGRESSION`
→ `FIX FAILURES WITHIN SAME PIECE`
→ `UPDATE OWNING DOCS/HANDOFF`
→ `SAVE/COMMIT`
→ `READ BACK`
→ `MARK EXACT STATUS`
→ `SELECT NEXT PIECE`

Never begin the next unrelated piece before closing the current verification/documentation boundary.

If the highest required verification is unavailable, stop at the highest achieved level and record the missing gate rather than claiming success.

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

Do not advance into Stage 2 while the Stage-1 phone foundation gate still has unresolved control/collision/lifecycle/performance evidence.

## Current implementation authorization

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`

Current candidate:
- Godot 4.7 family;
- current build tooling: Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Android;
- Samsung Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

The isolated source under `probes/android_stage1/` remains evidence-gathering probe source. It must not silently become the production domain/game project.

## Verified Stage-1 evidence

Previously verified:
- source/readback;
- real-checkout static preflight;
- Godot import/parse;
- Boot/ProbeWorld headless smoke;
- Android debug export and APK integrity;
- Galaxy A03s install and 3D runtime smoke;
- GL Compatibility/OpenGL3 observed on device;
- one instantaneous device sample showed 60 FPS / ~16.7 ms and 40.9 MiB debug static memory;
- basic prior touch movement, first-person entry and outer-boundary containment received positive user evidence.

The one-frame FPS sample is not sustained-performance verification.

## Current user-directed control/camera baseline

Latest direct Galaxy A03s feedback established that the heading-follow camera concept was correct but its turn response was too aggressive.

The user explicitly requested:
- replace the four directional touch keys with an analog joystick;
- add a Settings button;
- Settings must use tabs;
- Controls tab must contain `Look Speed`;
- Look Speed must be saved;
- document/protect the chosen behavior so it is not later changed silently.

Protected authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Specialized implementation handoff:
`docs/70_handoff/STAGE1_CONTROL_CAMERA_REFINEMENT_2026-09-03.md`.

### Implemented control behavior

- lower-left analog `MoveJoystick`;
- normalized analog magnitude + `0.12` deadzone;
- joystick release resets movement;
- Settings opening resets movement;
- Hunter turns toward movement heading;
- aerial camera follows/trails Hunter heading rather than world-fixed `-Z`;
- aerial camera remains synchronized while first-person is active;
- tabbed Settings overlay;
- Controls tab with Look Speed slider;
- Look Speed default `35%`;
- Look Speed persists through `ConfigFile` at `user://stage1_settings.cfg`;
- persistence key `controls/look_speed`;
- Look Speed changes turn/follow response, not movement speed.

### No-silent-change law

**Do not remove, replace or materially retune the joystick/settings/look-speed/camera interaction contract without first reading the protected README and explicitly documenting/warning about the reason for the change.**

The static preflight now also enforces this baseline and rejects restoration of the old Up/Down/Left/Right touch buttons.

## Current exact build evidence

Exact tested control-refinement revision:
`1a90569e4b625c929274dffbeaf4f9ede368fe43`

Workflow run:
`33781148418`

Results:
- static preflight `147 / 147 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- Android debug export PASS;
- APK integrity PASS.

Current retest APK:
`UnnamedHuntRPG-Stage1Probe-joystick-settings.apk`

Size:
`57,570,361 bytes`

SHA-256:
`afb007424b9abfc6108b5759b2bbe974ae1db754b45b71fab58ca927a227a3cd`

Build verification is not phone-control verification.

## Exact current implementation gate

Next action is **phone-test this exact joystick/settings APK on the Galaxy A03s**.

Test only:
1. partial/full joystick travel;
2. diagonal movement;
3. release → immediate stop/no stuck input;
4. Settings opens and zeros movement;
5. Controls tab Look Speed visibly changes turn/camera response;
6. preferred Look Speed remains after app restart;
7. aerial camera remains smooth/coherent at the chosen setting;
8. aerial ↔ first-person still preserves position.

Do not begin the next unrelated repair until this bounded control/camera pass has phone evidence unless a newer explicit user instruction supersedes the sequence.

## Next separate foundation defect

Already confirmed on the prior phone build:
`MONSTER_PLACEHOLDER_SOLID_COLLISION = FAIL_EVIDENCE`.

After the current control/camera retest passes, the next bounded implementation piece is:
**MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR**.

That piece must not expand into combat, Monster AI, damage, navigation, harvesting, or production physics.

## Remaining Stage-1 foundation sequence

Before broad game construction:
1. joystick/control behavior phone-verified;
2. camera/look-speed behavior phone-verified;
3. solid Monster/world obstacle collision;
4. world-boundary regression;
5. aerial ↔ first-person state continuity;
6. background/resume + lock/unlock stability;
7. sustained Galaxy A03s frame pacing/thermal evidence.

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

Next independent design packet remains:
**Initiative and Turn-Order Prototype Contract**.

Do not combine it with statuses, terrain numbers, Monster 01 attacks, berserk, party design, or defeat/retreat behavior.

## Root-cause / performance rules

For a defect:
1. preserve the observed symptom;
2. identify the owning system/root cause;
3. fix the smallest correct cause;
4. rerun relevant static/Godot/APK gates;
5. rerun target-phone behavior when player-facing;
6. update durable state.

Performance is verified on the target phone, not inferred from source, CI, or one FPS screenshot.

Protect in order:
1. input responsiveness;
2. gameplay correctness;
3. monster/anatomy readability;
4. telegraph/camera stability;
5. frame pacing;
6. navigation/audio readability;
7. decoration.

## Current stop / next condition

`STATIC_PREFLIGHT_VERIFIED = YES / 147_OF_147_CURRENT_CONTROL_BUILD`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`ANDROID_PRESET_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES_ON_PRIOR_STAGE1_APKS`
`ANALOG_JOYSTICK_SOURCE_IMPLEMENTED = YES`
`LOOK_SPEED_SETTING_SOURCE_IMPLEMENTED = YES`
`LOOK_SPEED_PERSISTENCE_IMPLEMENTED = YES`
`CONTROL_CAMERA_PROTECTED_README = RECORDED`
`CONTROL_CAMERA_CURRENT_APK_BUILD_VERIFIED = YES`
`CONTROL_CAMERA_PHONE_RUNTIME_VERIFIED = NO / RETEST_PENDING`
`MONSTER_PLACEHOLDER_SOLID_COLLISION = FAIL_EVIDENCE / NEXT_REPAIR_AFTER_RETEST`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = PHONE_RETEST_JOYSTICK_SETTINGS_LOOK_SPEED_APK`
`NEXT_IMPLEMENTATION_AFTER_PASS = MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`
