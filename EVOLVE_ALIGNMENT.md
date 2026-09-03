# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 MONSTER COLLISION BUILD VERIFIED / PHONE EVIDENCE DEFERRED
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

Before ending **every** bounded work pass, the assistant must do all of the following:
1. decide the single exact next action for the active implementation lane;
2. if an independent design lane is active, keep its next action separately identified rather than mixing it into implementation;
3. update the current-state section of this file so the repository records the exact next action;
4. state to the user, in plain language, **what the assistant will do next**;
5. make the user-visible next action match the action recorded in EVOLVE;
6. if progress is blocked on user/device/external evidence, state the blocker and then state exactly what the assistant will do once that evidence arrives;
7. do not write vague next actions such as `continue`, `work on gameplay`, `improve the game`, or `do more testing`.

Preferred wording at the end of a pass:
`NEXT THING I WILL DO: <one exact bounded action>`

If blocked:
`BLOCKER: <exact missing evidence or action>`
`NEXT THING I WILL DO AFTER THAT: <one exact bounded action>`

The same exact action must be represented in the current-state keys below, such as:
- `NEXT_IMPLEMENTATION_ACTION`;
- `NEXT_IMPLEMENTATION_AFTER_PASS`;
- `NEXT_INDEPENDENT_DESIGN_ACTION`.

**Do not finish a work pass with the next step existing only in chat. The repository EVOLVE file must carry it forward.**

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

Verified before the current collision repair:
- source/readback;
- real-checkout static preflight;
- Godot import/parse;
- Boot/ProbeWorld headless smoke;
- Android debug export/APK integrity;
- Galaxy A03s install and 3D runtime smoke on prior Stage-1 APKs;
- GL Compatibility/OpenGL3 observed on device;
- instantaneous device sample `60 FPS / ~16.7 ms / 40.9 MiB debug static memory`;
- basic touch movement, first-person entry and outer-boundary containment received positive user evidence.

The one-frame FPS sample is not sustained-performance verification.

## Protected user-directed control/camera baseline

Protected authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Latest specialized handoff:
`docs/70_handoff/STAGE1_MONSTER_PLACEHOLDER_SOLID_COLLISION_2026-09-03.md`.

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

## Deferred target-phone evidence rule — current user instruction

On 2026-09-03 the user explicitly instructed development **not to stop waiting for phone reports**. When a phone-only gate is unavailable:
- record the exact deferred phone test;
- do not mark it PASS;
- do not use the missing phone result to claim `ENGINE_PHONE_PROBE_VERIFIED`;
- continue only with the next independent Stage-1 foundation piece whose correctness can be advanced and build-verified without that missing phone evidence.

This instruction supersedes the earlier sequence requirement that the heading-reset phone retest had to complete before the collision source repair could begin.

Deferred phone tests currently include:
1. heading-reset joystick behavior on Galaxy A03s;
2. Monster placeholder solidity on Galaxy A03s;
3. adjacent control/camera regression checks associated with those builds.

## Current exact automated build evidence

Monster collision source commit:
`c5e8fc8ceb5633d574ef49cd684a9d39a5bd643f`

Workflow run:
`33806628904`

Runner/tool evidence:
- Godot `4.7.2.stable.official.ed1daf0bf`;
- OpenJDK 17;
- Android build-tools `35.0.1`;
- Android platform `35`.

Results:
- existing static preflight `154 / 154 PASS`;
- dedicated Monster collision preflight `8 / 8 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- Android debug export PASS;
- APK archive integrity PASS;
- workflow artifact upload PASS.

Current build APK:
`UnnamedHuntRPG-Stage1Probe-debug.apk`

Size:
`57,570,361 bytes`

SHA-256:
`0d2fa6c0accf1964d5a98dae07a2d03a2e59fa00ee0b0a10c9781c507a89a523`

Build verification does not prove target-phone collision or control behavior.

## Monster placeholder collision repair — current truth

Prior direct phone symptom:
Hunter could pass through the brown Monster placeholder.

Verified root cause:
`Monster` was only a `MeshInstance3D` and had no physics body/collision shape.

Bounded repair:
- preserve the existing visual Monster mesh;
- add `MonsterCollider` as `StaticBody3D` at the same base position;
- add a matching `BoxShape3D` of `Vector3(2.5, 2.4, 5.8)`;
- keep the current small visual bob/yaw cosmetic only;
- do not introduce production Monster physics, combat, AI, damage, navigation or harvesting.

Automated source/build status:
`MONSTER_PLACEHOLDER_SOLID_COLLISION_SOURCE_IMPLEMENTED = YES`
`MONSTER_PLACEHOLDER_SOLID_COLLISION_STATIC_VERIFIED = YES`
`MONSTER_PLACEHOLDER_SOLID_COLLISION_APK_BUILD_VERIFIED = YES`

Target-phone status:
`MONSTER_PLACEHOLDER_SOLID_COLLISION_PHONE_VERIFIED = NO / DEFERRED_PENDING_USER_PHONE_EVIDENCE`

Deferred Galaxy A03s acceptance:
1. approach front/rear/both sides;
2. hold movement into the Monster;
3. confirm Hunter cannot cross the solid volume;
4. test edge/corner sliding for obvious penetration/tunneling;
5. confirm outer boundary still contains Hunter;
6. confirm joystick/settings/look-speed and aerial ↔ first-person behavior did not regress.

## Exact current implementation gate

The next independent Stage-1 source/build piece is:
**WORLD_BOUNDARY_REGRESSION_GUARD_AND_BUILD_VERIFICATION**.

Scope:
- inspect the current `PROBE_BOUNDS` clamp ownership and existing positive phone evidence;
- add the smallest executable/static regression guard that prevents accidental loss of outer-boundary containment;
- use the existing CI path for static/Godot/smoke/APK verification;
- do not retune the boundary size, movement controls, camera, collision repair, combat or production world architecture unless evidence requires it.

The prior phone-positive boundary evidence remains historical device evidence; the new current build still requires later phone regression before Stage 1 can close.

## Remaining Stage-1 foundation sequence

Before broad game construction:
1. deferred joystick/input/reference-frame phone verification;
2. deferred camera/look-speed phone verification;
3. deferred Monster solid-collision phone verification;
4. world-boundary regression guard/build verification;
5. aerial ↔ first-person state continuity guard/build verification;
6. background/resume + lock/unlock stability;
7. sustained Galaxy A03s frame pacing/thermal evidence;
8. execute deferred target-phone regression bundle when user can provide device evidence.

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

`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154_CURRENT_COLLISION_BUILD`
`MONSTER_COLLISION_STATIC_PREFLIGHT = YES / 8_OF_8`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`ANDROID_PRESET_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES_ON_PRIOR_STAGE1_APKS`
`ANALOG_JOYSTICK_SOURCE_IMPLEMENTED = YES`
`JOYSTICK_HEADING_RESET_SOURCE_IMPLEMENTED = YES`
`JOYSTICK_HEADING_RESET_APK_BUILD_VERIFIED = YES`
`JOYSTICK_HEADING_RESET_PHONE_VERIFIED = NO / DEFERRED_PENDING_USER_PHONE_EVIDENCE`
`LOOK_SPEED_SETTING_SOURCE_IMPLEMENTED = YES`
`LOOK_SPEED_PERSISTENCE_IMPLEMENTED = YES`
`CONTROL_CAMERA_PROTECTED_README = RECORDED`
`MONSTER_PLACEHOLDER_SOLID_COLLISION_SOURCE_IMPLEMENTED = YES`
`MONSTER_PLACEHOLDER_SOLID_COLLISION_STATIC_VERIFIED = YES`
`MONSTER_PLACEHOLDER_SOLID_COLLISION_APK_BUILD_VERIFIED = YES`
`MONSTER_PLACEHOLDER_SOLID_COLLISION_PHONE_VERIFIED = NO / DEFERRED_PENDING_USER_PHONE_EVIDENCE`
`WORLD_BOUNDARY_PRIOR_PHONE_EVIDENCE = PASS_ON_EARLIER_STAGE1_APK`
`WORLD_BOUNDARY_CURRENT_BUILD_REGRESSION_VERIFIED = NO / NEXT_PIECE`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = WORLD_BOUNDARY_REGRESSION_GUARD_AND_BUILD_VERIFICATION`
`NEXT_IMPLEMENTATION_AFTER_PASS = AERIAL_FIRST_PERSON_STATE_CONTINUITY_REGRESSION_GUARD_AND_BUILD_VERIFICATION`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`
