# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / SEVEN CORE COMBAT CONTRACTS RECORDED / MONSTER 01 ATTACK PACKET NEXT
Last reconciled: 2026-09-03

## Mandatory pre-work rule

Read the current repository copy of this file before every bounded design, documentation, asset, implementation, debugging, build or verification pass.

Then read:
1. `PROJECT_HANDOFF.md`;
2. `START_HERE_NEW_CHAT.md`;
3. `DOCUMENTATION_INDEX.md`;
4. newest relevant specialized handoff;
5. owning package/README/source/tests.

Current repository/source/build/device evidence outranks chat memory.

## Main-goal rule

The game is the objective.

Documentation exists to preserve intent, ownership, dependencies, implementation readiness, verification evidence, continuity and the exact next action. Do not create documentation with no game/design/implementation/QA/continuity consumer.

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

Never begin the next unrelated piece before closing the current boundary.

## Documentation/navigation law

Every substantial durable piece must answer:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

Use:
- root `README.md` — human game/front door;
- `docs/README.md` — placement/package rules;
- local package README — local map;
- `DOCUMENTATION_INDEX.md` — global map/read order;
- `docs/70_handoff/` — bounded-pass continuity;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- this file — operating contract + exact next actions.

## Build-readiness taxonomy

Authority: `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Classes:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Law: an open question blocks only the earliest implementation gate that genuinely consumes its answer.

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`

## Stage-1 engine/device candidate

- Godot 4.7 family;
- CI/build Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Galaxy A03s baseline;
- stable `30 FPS` representative-scene minimum target.

`probes/android_stage1/` is disposable evidence-gathering source and must not silently become production architecture.

Protected control/camera authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

## Phone-evidence rule

Development must not stop waiting for phone reports.

Therefore:
- record phone-only tests for later;
- never infer phone PASS from CI/source;
- continue independent non-phone work;
- do not close the Stage-1 engine-phone gate without direct Galaxy A03s evidence.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

## Current automated Stage-1 lineage

Protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Performance telemetry source:
`89394067971120df43b184a8509934f5458185f2`.

Workflow `33811355891`: SUCCESS.

Verified automated gates:
- protected static `154/154`;
- Monster collision `8/8`;
- world boundary `12/12`;
- Godot parse/smoke PASS;
- aerial↔first-person `17/17`;
- lifecycle `47/47`;
- performance telemetry `20/20`;
- Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Prepared sustained phone run:
24 minutes with checkpoints T+02/T+07/T+09/T+14/T+19/T+24.

`SUSTAINED_PERFORMANCE_PHONE_EXECUTED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

## Combat design package

Front door:
`docs/20_gameplay/combat/README.md`.

### 1. Action Economy — RECORDED
4 AP / 1 RP / persistent Stamina / no AP banking / bounded reactions / one normal activation max per actor-round.

### 2. Combat Resolution — RECORDED
Deterministic legality/context; AttackControl vs DefenseControl; body/selected-part contact; directional cover; one bounded seeded variance source; `MISS/GRAZE/SOLID/CLEAN/PRECISION`.

### 3. First Weapon — RECORDED
`WEAPON_FAMILY_FIELD_POLEBLADE`.

### 4. Stamina — RECORDED
Neutral Max 100 / passive +10 / delayed Catch Breath / explicit exertion costs.

### 5. Initiative / Turn Order — RECORDED
`InitiativeRating = (2 × EffectiveAgility) + EffectivePerception + ExplicitInitiativeModifier`.
No random opener; snapshot on encounter entry; deterministic ties; no ordinary resorting/extra turns.

### 6. Status Set — RECORDED
`Bleeding / Staggered / Off-Balance / Braced / Guarded`.
No independent status-proc RNG; no status changes Initiative or grants extra turns.

### 7. Terrain Effect Set — RECORDED
Authority:
`docs/20_gameplay/combat/FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_TERRAIN_EFFECT_SET_PASS_2026-09-03.md`.

Primary surfaces:
- Stable Ground;
- Rough Ground;
- Shallow Water;
- Mud.

Context tags:
- Brush;
- High Ground;
- Narrow.

Prototype Stamina surcharge table:
- Stable: Move +0 / Sprint +0 / Dodge +0;
- Rough: +1 / +2 / +2;
- Shallow Water: +2 / +4 / +3;
- Mud: +3 / +5 / +4.

Selected terrain laws:
- one effective primary surface controls movement surcharge;
- normal move/Sprint use destination surface;
- Dodge uses `max(origin,destination)` surcharge;
- forced displacement does not charge voluntary terrain movement Stamina;
- `TERRAIN_RANDOM_SLIP_ROLL = NONE`;
- Brush affects visibility/exposure, not physical cover/armor;
- High Ground has no generic damage/Initiative/accuracy bonus;
- Narrow controls clearance/adjacency legality;
- terrain does not auto-apply Off-Balance/Staggered/Bleeding;
- `TERRAIN_INITIATIVE_MODIFIER = NONE`;
- physical cover remains owned by Combat Resolution.

Region 01 mapping:
- Riverbank Ford → Stable/Mud/Shallow Water;
- Meadow Edge → Stable + Brush;
- Root/Boulder Hollow → Rough + Brush + Narrow;
- Deep Nest Shelf → Stable/Rough + High Ground/Narrow as geometry warrants.

This is design-recorded only.

`FIRST_SLICE_TERRAIN_EFFECT_SET = RECORDED`
`TERRAIN_RUNTIME_IMPLEMENTED = NO`
`TERRAIN_RUNTIME_VERIFIED = NO`
`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS_RECORDED`

## Exact current active non-phone gate

`MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`

Bounded scope:
1. read current Monster 01 README/anatomy/behavior owners plus all seven combat contracts;
2. define only the minimum first-slice attack list;
3. for each attack define required anatomy/capability, range/bearing/clearance, commitment, telegraph, legal reactions, contact/damage channels, terrain/cover constraints, status consequence requests and guard-impact behavior;
4. preserve deterministic behavior/attack legality boundaries;
5. do not create berserk behavior in this pass;
6. do not design party or defeat/retreat rules;
7. record future implementation tests without claiming runtime verification.

## Remaining combat-design sequence

After Monster 01 attack packet:
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
`FIRST_SLICE_TERRAIN_EFFECT_SET = RECORDED`
`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS_RECORDED`

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`
`NEXT_INDEPENDENT_DESIGN_ACTION = MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`