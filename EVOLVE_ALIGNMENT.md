# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 HEADING-RESET JOYSTICK RETEST
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

## Verified Stage-1 evidence

Verified before the current change:
- source/readback;
- real-checkout static preflight;
- Godot import/parse;
- Boot/ProbeWorld headless smoke;
- Android debug export/APK integrity;
- Galaxy A03s install and 3D runtime smoke;
- GL Compatibility/OpenGL3 observed on device;
- instantaneous device sample `60 FPS / ~16.7 ms / 40.9 MiB debug static memory`;
- basic touch movement, first-person entry and outer-boundary containment received positive user evidence.

The one-frame FPS sample is not sustained-performance verification.

## Protected user-directed control/camera baseline

Protected authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Latest specialized handoff:
`docs/70_handoff/STAGE1_JOYSTICK_HEADING_RESET_2026-09-03.md`.

User-approved/protected direction now includes:
- analog movement joystick instead of four arrow keys;
- tabbed Settings overlay;
- Controls → Look Speed;
- default Look Speed `35%`;
- persistence `user://stage1_settings.cfg`, key `controls/look_speed`;
- Hunter turns toward resolved movement heading;
- aerial camera follows/trails Hunter heading;
- camera stays synchronized during first person;
- opening Settings resets movement;
- **each new joystick touch captures the Hunter's current heading as the movement reference**;
- active touch keeps that reference stable;
- release/re-touch resets joystick forward to the Hunter's latest heading.

Example:
`face north → push right → turn/move east → release → touch again → push up → continue east/forward`.

Reason:
the prior world-axis mapping forced the player to keep holding an absolute east direction after turning east.

A continuously rotating control basis was rejected because it can curve/circle while the same input remains held.

### No-silent-change law

**Do not remove, replace or materially retune the joystick/settings/look-speed/heading-reset/camera interaction contract without first reading the protected README and explicitly documenting/warning about the reason for the change.**

Static preflight enforces the protected baseline.

## Current exact build evidence

Heading-reset source commit:
`9d9e83898616e16c902d0d3caf8e9c82253bf8a7`

Exact tested revision:
`2e112210c60b62335f94adfd1a1573afb81426f6`

Workflow run:
`33783404093`

Results:
- static preflight `151 / 151 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- Android debug export PASS;
- APK archive integrity PASS.

Current retest APK:
`UnnamedHuntRPG-Stage1Probe-heading-reset.apk`

Size:
`57,570,361 bytes`

SHA-256:
`1727750c3fc1f8385ed8c9bf1e4ccc3c559cede156e750380a1ff462c2bcfa8c`

Build verification is not phone-control verification.

## Exact current implementation gate

Phone-test this exact heading-reset APK on Galaxy A03s:
1. turn/move east using joystick-right;
2. release fully;
3. touch again and push joystick-up;
4. verify up now continues east/forward;
5. repeat for multiple headings;
6. verify an active held gesture remains stable and does not spiral/circle;
7. verify partial/diagonal movement;
8. verify Settings + saved Look Speed;
9. verify aerial ↔ first-person still preserves physical position.

Do not begin the next unrelated implementation repair before this control behavior receives phone evidence unless a newer explicit user instruction supersedes the sequence.

## Next separate foundation defect

Already confirmed on prior phone build:
`MONSTER_PLACEHOLDER_SOLID_COLLISION = FAIL_EVIDENCE`.

After the heading-reset joystick retest passes, next bounded implementation piece:
**MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR**.

Do not expand that piece into combat, Monster AI, damage, navigation, harvesting, or production physics.

## Remaining Stage-1 foundation sequence

Before broad game construction:
1. joystick/input/reference-frame behavior phone-verified;
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
1. preserve observed symptom;
2. identify owning system/root cause;
3. fix smallest correct cause;
4. rerun static/Godot/APK gates;
5. rerun target-phone behavior when player-facing;
6. update durable state.

Performance is verified on target phone, not inferred from source, CI, or one FPS screenshot.

Protect in order:
1. input responsiveness;
2. gameplay correctness;
3. monster/anatomy readability;
4. telegraph/camera stability;
5. frame pacing;
6. navigation/audio readability;
7. decoration.

## Current stop / next condition

`STATIC_PREFLIGHT_VERIFIED = YES / 151_OF_151_CURRENT_CONTROL_BUILD`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`ANDROID_PRESET_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES_ON_PRIOR_STAGE1_APKS`
`ANALOG_JOYSTICK_SOURCE_IMPLEMENTED = YES`
`JOYSTICK_HEADING_RESET_SOURCE_IMPLEMENTED = YES`
`JOYSTICK_HEADING_RESET_APK_BUILD_VERIFIED = YES`
`JOYSTICK_HEADING_RESET_PHONE_VERIFIED = NO / RETEST_PENDING`
`LOOK_SPEED_SETTING_SOURCE_IMPLEMENTED = YES`
`LOOK_SPEED_PERSISTENCE_IMPLEMENTED = YES`
`CONTROL_CAMERA_PROTECTED_README = RECORDED`
`MONSTER_PLACEHOLDER_SOLID_COLLISION = FAIL_EVIDENCE / NEXT_REPAIR_AFTER_RETEST`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = PHONE_RETEST_HEADING_RESET_JOYSTICK_APK`
`NEXT_IMPLEMENTATION_AFTER_PASS = MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`
