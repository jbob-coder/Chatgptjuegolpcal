# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / SIX CORE COMBAT CONTRACTS RECORDED / TERRAIN EFFECT SET NEXT
Last reconciled: 2026-09-03

## Mandatory pre-work rule

**Read the current repository copy of this file before every bounded design, documentation, asset, implementation, debugging, build, or verification pass.**

Then read:
1. `PROJECT_HANDOFF.md`;
2. `START_HERE_NEW_CHAT.md`;
3. `DOCUMENTATION_INDEX.md`;
4. newest relevant specialized handoff;
5. owning package/README/source/tests for the exact bounded task.

Do not rely on remembered state when repository/source/build/device evidence exists.

## Main-goal rule

The game is the objective.

Documentation exists to preserve:
- intent;
- ownership;
- dependencies;
- implementation readiness;
- verification evidence;
- continuity;
- exact next action.

Do not create documentation with no game/design/implementation/QA/continuity consumer.

## Authority order

For intended changes:
1. current explicit user instruction;
2. current verified source/tests;
3. current owning project documentation/locked decisions;
4. direct build/runtime/device evidence;
5. external research/documentation;
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
→ `STATE EXACT BOUNDED ACTION`
→ `RESEARCH IF REQUIRED`
→ `IMPLEMENT OR DOCUMENT`
→ `TEST/REVIEW AT HIGHEST AVAILABLE LEVEL`
→ `INSPECT REGRESSION`
→ `FIX SAME-PIECE FAILURES`
→ `UPDATE OWNER/HANDOFF/README/INDEX AS REQUIRED`
→ `SAVE/COMMIT`
→ `READ BACK`
→ `MARK EXACT STATUS`
→ `SELECT EXACT NEXT PIECE`
→ `WRITE NEXT PIECE INTO EVOLVE`
→ `STATE SAME NEXT ACTION TO USER`.

Never begin the next unrelated piece before closing the current verification/documentation boundary.

If the highest required verification is unavailable, record the highest achieved state and missing gate rather than claiming success.

## Documentation/navigation law

Every substantial durable piece must leave enough repository state to answer:

`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

Use:
- root `README.md` — human project front door/main game goal;
- `docs/README.md` — documentation/package placement rules;
- local package/folder `README.md` — local front door/file map;
- `DOCUMENTATION_INDEX.md` — cross-project authority/read-order map;
- `docs/70_handoff/` — bounded-pass continuity records;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- this file — operating contract + exact next actions.

An important authority not discoverable from its local README or `DOCUMENTATION_INDEX.md` is incompletely integrated documentation.

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

## Stage-1 engine/device candidate

- Godot 4.7 family;
- current CI/build tooling Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Android;
- Samsung Galaxy A03s baseline;
- stable `30 FPS` representative-scene minimum target.

`probes/android_stage1/` is disposable evidence-gathering source and must not silently become production game architecture.

Protected controls/camera authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Do not silently remove or materially retune the analog joystick, per-touch heading basis, Hunter-facing behavior, aerial follow/synchronization, Settings/Look Speed behavior, or Settings movement reset.

## Explicit phone-evidence rule

The user explicitly instructed development not to stop waiting for phone reports.

Therefore:
- record phone-only tests for later;
- never infer phone PASS from source/CI;
- continue independent non-phone work that does not consume missing phone evidence;
- do not close the Stage-1 engine-phone gate without direct Galaxy A03s evidence.

Current implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Current implementation action when device evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Deferred phone evidence includes:
- heading-reset controls / Look Speed regression;
- Monster solidity;
- boundary containment;
- aerial↔first-person visual/input/clipping continuity;
- lifecycle background/resume + lock/unlock;
- sustained frame pacing/thermal/input/transition behavior;
- crash/ANR observation.

## Current exact automated Stage-1 lineage

Current protocol revision built by CI:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Performance telemetry source:
`89394067971120df43b184a8509934f5458185f2`.

Workflow:
`33811355891` — `SUCCESS`.

Verified automated gates:
- protected static `154 / 154 PASS`;
- Monster collision `8 / 8 PASS`;
- world boundary `12 / 12 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot smoke PASS;
- ProbeWorld smoke PASS;
- aerial↔first-person `17 / 17 PASS`;
- lifecycle transient input `47 / 47 PASS`;
- performance telemetry `20 / 20 PASS`;
- Android debug export PASS;
- APK integrity PASS;
- artifact upload PASS.

Current exact inner APK:
- `UnnamedHuntRPG-Stage1Probe-debug.apk`;
- `57,570,361 bytes`;
- SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Current artifact ZIP:
- ID `9914945271`;
- `57,124,301 bytes`;
- SHA-256 `a02d8a1b79f3d0b87f4694c72f897beaf925016f86495a264bd72303563a6188`.

The APK and artifact ZIP are different files and must not exchange size/hash labels.

Sustained performance authority:
`probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

Prepared run:
`24` minutes with checkpoints `T+02 / T+07 / T+09 / T+14 / T+19 / T+24`, including 20 controlled aerial↔first-person transitions and a final ten-minute soak.

`SUSTAINED_PERFORMANCE_PROTOCOL_PREPARED = YES`
`SUSTAINED_PERFORMANCE_PHONE_EXECUTED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

## Combat design package

Authority front door:
`docs/20_gameplay/combat/README.md`.

### 1. Action Economy — RECORDED
`docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.

First-slice baseline:
- 4 AP;
- 1 RP;
- persistent Stamina;
- no AP banking;
- bounded reaction windows;
- one normal activation max per eligible actor/round.

### 2. Combat Resolution / Hit Quality / Defense — RECORDED
`docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`.

Recorded:
- deterministic legality/context;
- AttackControl vs DefenseControl;
- body/selected-part contact;
- exposure/directional cover;
- one bounded seeded variance source;
- `MISS / GRAZE / SOLID / CLEAN / PRECISION`;
- explainable local protection/anatomy trace.

### 3. First Weapon Family — RECORDED
`docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`.

Selected:
`WEAPON_FAMILY_FIELD_POLEBLADE`.

### 4. Stamina Prototype — RECORDED
`docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`.

Selected:
- neutral Max Stamina `100`;
- passive recovery `+10` once at normal activation start;
- delayed Catch Breath anti-loop recovery;
- explicit first-slice exertion costs.

### 5. Initiative and Turn Order — RECORDED
`docs/20_gameplay/combat/INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`.

Selected:
`InitiativeRating = (2 × EffectiveAgility) + EffectivePerception + ExplicitInitiativeModifier`.

Laws:
- no random Initiative/opener roll;
- snapshot on encounter entry;
- deterministic tie order;
- no ordinary mid-encounter resorting;
- one normal activation max per eligible actor/round;
- late entrants wait until next round;
- save/reload cannot duplicate schedule/resource hooks.

### 6. First-Slice Status / Tactical-State Set — RECORDED
`docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`.

Specialized handoff:
`docs/70_handoff/FIRST_SLICE_STATUS_SET_PASS_2026-09-03.md`.

Selected minimal set:
- `status_bleeding`;
- `status_staggered`;
- `status_off_balance`;
- `tactical_braced`;
- `tactical_guarded`.

Selected laws:
- `FIRST_SLICE_STATUS_RANDOM_PROC = NONE`;
- Bleeding `STACK_INTENSITY_CAPPED`, max `3`;
- Bleeding periodic cadence max once per affected actor/round;
- first Bleeding tick `application_round + 1` earliest;
- Staggered blocks Dodge/Parry while active but does not skip next normal activation;
- Staggered transitions once to Off-Balance at next activation start before recovery/AP-RP refresh;
- Off-Balance blocks Parry and clears through deliberate Brace or after one completed normal activation;
- Braced and Guarded are tactical states, not generic cure/resistance statuses;
- Braced improves stability/consequence context, not contact Evasion by default;
- Guarded records authoritative direction and enables compatible Block attempts but never auto-Blocks;
- Braced + Guarded may coexist;
- none of the five changes Initiative or grants extra normal activations.

Explicitly deferred:
- Exhausted;
- generic Wounded;
- Focused/Aimed;
- Concealed;
- environmental/toxin/psychological catalogs.

This is design-recorded. No combat runtime exists; no runtime verification is claimed.

`COMBAT_DESIGN_READINESS = PARTIAL / SIX_CORE_CONTRACTS_RECORDED`.

## Exact current active non-phone gate

`FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT`

Bounded scope:
1. read current terrain ownership in `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`, Region 01 terrain authority and the six combat contracts;
2. choose only the concrete surfaces/effects required by the first combat test;
3. define each selected terrain tag's movement/footing/cover/exposure/defense hooks through the shared modifier architecture;
4. keep values bounded and explainable;
5. do not create a broad biome catalog;
6. do not author Monster 01 attacks, berserk, party design or defeat/retreat behavior;
7. record future implementation tests without claiming runtime verification.

## Remaining combat-design sequence

After terrain-effect set:
- Monster 01 combat attack packet;
- first berserk prototype;
- solo/party baseline;
- defeat/retreat baseline;
- prerequisite production implementation/testing gates.

## Current gate truth

`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154`
`MONSTER_COLLISION_STATIC = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC = YES / 12_OF_12`
`VIEW_CONTINUITY_HEADLESS = YES / 17_OF_17`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS = YES / 47_OF_47`
`PERFORMANCE_TELEMETRY_HEADLESS = YES / 20_OF_20`
`SUSTAINED_PERFORMANCE_PROTOCOL_PREPARED = YES`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`ACTION_ECONOMY_CONTRACT = RECORDED`
`COMBAT_RESOLUTION_CONTRACT = RECORDED`
`FIRST_WEAPON_FAMILY_CONTRACT = RECORDED`
`STAMINA_PROTOTYPE_CONTRACT = RECORDED`
`INITIATIVE_TURN_ORDER_PROTOTYPE = RECORDED`
`FIRST_SLICE_STATUS_SET_PROTOTYPE = RECORDED`
`COMBAT_DESIGN_READINESS = PARTIAL / SIX_CORE_CONTRACTS_RECORDED`

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT`
`NEXT_INDEPENDENT_DESIGN_ACTION = FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT`