# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 FOUNDATION VERIFICATION + BOUNDED REPAIR
Last reconciled: 2026-09-03

## Mandatory pre-work rule

**Read the current repository copy of this file before every bounded design, documentation, asset, implementation, debugging, build, or verification pass.**

After EVOLVE, read `PROJECT_HANDOFF.md`, the newest relevant specialized handoff, and the owning source/package for the exact task. Do not rely on remembered state.

## Authority order

For intended changes:
1. current explicit user instruction;
2. current verified source/tests;
3. current owning project documentation and locked decisions;
4. verified build/runtime/device evidence;
5. external documentation/research;
6. chat summaries/memory.

For runtime claims:
1. direct target-device evidence;
2. logs/screenshots/video;
3. build/package evidence;
4. source/static expectations;
5. planning documents.

Current source and direct phone evidence outrank stale planning language.

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

Authority: `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Every unresolved requirement belongs to one of:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Primary law:
**an open question blocks only the earliest implementation gate that genuinely consumes its answer.**

Do not hold Stage 1 because expansion-level lore/content is open. Do not advance into Stage 2 while Stage 1 foundation evidence is still incomplete.

## Current implementation authorization

User authorization was explicitly granted on 2026-09-02.

Current candidate:
- Godot 4.7 family;
- GDScript;
- GL Compatibility;
- Android;
- Samsung Galaxy A03s baseline;
- stable 30 FPS representative-scene target.

`IMPLEMENTATION_AUTHORIZED = YES`
`STAGE_1_ENGINE_ANDROID_PROBE_AUTHORIZED = YES`
`FINAL_ENGINE_SELECTED = NO / PHONE FOUNDATION GATE PENDING`

The isolated probe remains disposable evidence-gathering source under `probes/android_stage1/`. It must not silently become the production domain/game project.

## Verified Stage 1 build chain

The original probe has already achieved:
- source created and read back;
- real-checkout static preflight `123 / 123 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- Android export preset exercised successfully;
- debug APK build PASS;
- APK archive integrity PASS;
- Galaxy A03s install PASS;
- target-device ProbeWorld visual runtime smoke PASS;
- observed target-device renderer `gl_compatibility / opengl3`;
- observed instantaneous sample `60 FPS / ~16.7 ms/frame / 40.9 MiB debug static memory`.

That instantaneous FPS sample is not sustained-performance proof.

## Direct Galaxy A03s feedback — current authority

Latest user feedback on the prior APK establishes:
- probe generally runs well;
- four directional touch controls provide basic movement;
- basic first-person entry works;
- outer invisible world-boundary containment works well;
- aerial camera framing remains biased toward a fixed world-forward direction rather than following Hunter heading as desired;
- Hunter can move inside/through the brown Monster placeholder.

Evidence record:
`docs/70_handoff/STAGE1_TARGET_DEVICE_FEEDBACK_CAMERA_COLLISION_2026-09-03.md`.

## Current bounded repair — camera follow

Root cause found in `probes/android_stage1/scripts/probe_world.gd`:
- old camera look-ahead was hard-coded to world `-Z`;
- Hunter did not rotate toward movement.

Camera repair commit:
`af83b5451996fba46f584a7fd8091cdee6d49b47`.

Repair behavior:
- Hunter rotates toward non-zero movement direction;
- aerial camera derives forward from Hunter transform;
- camera trails behind Hunter heading;
- look target uses heading-based forward look-ahead;
- camera position follows with bounded smoothing;
- first-person camera inherits Hunter heading.

Build verification for that exact repair:
- GitHub Actions run `33778332943`;
- static preflight `123 / 123 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot smoke PASS;
- ProbeWorld smoke PASS;
- Android debug export PASS;
- APK integrity PASS.

Revised APK:
`UnnamedHuntRPG-Stage1Probe-camera-follow.apk`

SHA-256:
`33b6a98063393c1916455cf3c740bc0a938d3ab9a8b2e664342b61852dbfd3a0`

`CAMERA_FOLLOW_SOURCE_IMPLEMENTED = YES`
`CAMERA_FOLLOW_APK_BUILD_VERIFIED = YES`
`CAMERA_FOLLOW_PHONE_RUNTIME_VERIFIED = NO / RETEST_PENDING`

## Exact current implementation gate

Do not add another Stage 1 feature before the revised camera build is phone-tested.

Next test against the revised APK:
1. move in all four directions;
2. verify Hunter visibly turns toward movement;
3. verify aerial camera relocates/trails behind that heading rather than staying world-forward;
4. verify camera remains centered/following during movement;
5. enter first person after changing movement direction and verify view heading follows the Hunter;
6. toggle AERIAL ↔ FIRST PERSON repeatedly and check for teleport/position drift;
7. report clipping, nausea-inducing snapping, control confusion, or other repeatable camera defects.

If that test passes, close the camera piece and begin exactly one next implementation piece:
**MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR**.

Do not combine that future collision repair with combat, monster AI, damage, navigation, production physics, or content expansion.

## Foundation-first build sequence

Before attempting the game in full, prove the starting elements in this order:
1. touch input starts/stops reliably;
2. Hunter movement/facing is coherent;
3. camera framing/follow is coherent;
4. solid world/creature obstacles block movement correctly;
5. world boundaries are trustworthy;
6. aerial ↔ first-person transition preserves physical state;
7. background/resume and lock/unlock are stable;
8. sustained target-device performance/thermal behavior is acceptable.

Only after those are sufficiently green may `ENGINE_PHONE_PROBE_VERIFIED` be considered for PASS and Stage 2 domain implementation be reconsidered.

## Independent gameplay-design lane

Recorded combat authorities:
- `ACTION_ECONOMY_CONTRACT.md`;
- `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `FIRST_WEAPON_FAMILY_CONTRACT.md`;
- `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`.

Selected first weapon family: `WEAPON_FAMILY_FIELD_POLEBLADE`.
Selected first-slice Stamina baseline: `MAX_STAMINA = 100`.

Next independent design packet remains:
**Initiative and Turn-Order Prototype Contract**.

Do not combine it with statuses, terrain numbers, Monster 01 attacks, berserk, party design, or defeat/retreat behavior.

## Status vocabulary

Keep gates separate:
- DESIGNED
- IMPLEMENTED
- STATIC_VERIFIED
- TESTED
- COMPILED
- APK_BUILD_VERIFIED
- PHONE_INSTALL_VERIFIED
- PHONE_RUNTIME_VERIFIED
- VISUAL_QUALITY_VERIFIED
- PERFORMANCE_VERIFIED
- ENGINE_PHONE_PROBE_VERIFIED

Never call source phone-verified, performance-verified, or the engine selected without direct evidence for that exact gate.

## Root-cause rule

When a bug appears:
1. preserve the observed symptom;
2. reproduce/collect evidence;
3. identify owning system and root cause;
4. fix the smallest correct cause;
5. test the bounded repair;
6. regression-check adjacent contracts;
7. update durable state.

Do not expand unrelated scope while repairing one defect unless evidence proves a shared root cause.

## Performance rule

Performance is verified on the target phone, not inferred from source quality, CI, or one FPS screenshot.

Protect in order:
1. input responsiveness;
2. gameplay correctness;
3. monster/anatomy readability;
4. telegraph/camera stability;
5. frame pacing;
6. navigation/audio readability;
7. decoration.

Measure before optimizing.

## New-game / destructive-operation rule

This project is not WorldLife. Do not resurrect old WorldLife gameplay architecture, saves, coordinates, NPCs, or source by default.

Destructive changes require explicit intent and exact scope. Do not remove current authoritative files merely to simplify structure.

## Current stop / next condition

`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`
`IMPLEMENTATION_AUTHORIZED = YES`
`STATIC_PREFLIGHT_VERIFIED = YES`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`ANDROID_PRESET_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES`
`BASIC_TOUCH_DIRECTIONAL_MOVEMENT = PASS_EVIDENCE_ON_PRIOR_APK`
`FIRST_PERSON_BASIC_ENTRY = PASS_EVIDENCE_ON_PRIOR_APK`
`OUTER_BOUNDARY_CONTAINMENT = PASS_EVIDENCE_ON_PRIOR_APK`
`CAMERA_FOLLOW_SOURCE_IMPLEMENTED = YES`
`CAMERA_FOLLOW_APK_BUILD_VERIFIED = YES`
`CAMERA_FOLLOW_PHONE_RUNTIME_VERIFIED = NO`
`MONSTER_PLACEHOLDER_SOLID_COLLISION = FAIL_EVIDENCE / NEXT_REPAIR_AFTER_CAMERA_RETEST`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = PHONE_RETEST_CAMERA_FOLLOW_REVISED_APK`
`NEXT_IMPLEMENTATION_AFTER_PASS = MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`
