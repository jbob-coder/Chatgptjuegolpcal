# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / MONSTER 01 NORMAL ATTACK + BERSERK PACKETS RECORDED / SOLO-PARTY BASELINE NEXT
Last reconciled: 2026-09-03

## Mandatory pre-work rule

Read the current repository copy of this file before every bounded design, documentation, asset, implementation, debugging, build or verification pass.

Then read:
1. `PROJECT_HANDOFF.md`;
2. `START_HERE_NEW_CHAT.md`;
3. `DOCUMENTATION_INDEX.md`;
4. newest relevant `docs/70_handoff/`;
5. owning package/README/source/tests.

Current repository/source/build/device evidence outranks chat memory.

## Main-goal rule

The game is the objective.

Documentation exists to preserve intent, ownership, dependencies, implementation readiness, verification evidence, continuity and exact next action. Do not create documentation with no game/design/implementation/QA/continuity consumer.

## Authority order

For intended changes:
1. current explicit user instruction;
2. current verified source/tests;
3. current owning repository authorities;
4. direct build/runtime/device evidence;
5. external research/documentation;
6. chat summaries/memory.

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

Law: an open question blocks only the earliest implementation gate that genuinely consumes it.

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`

## Stage-1 engine/device candidate

- Godot 4.7 family;
- CI/build Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

`probes/android_stage1/` is disposable evidence-gathering source and must not silently become production architecture.

Protected control/camera authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

## Phone-evidence rule

Development must not stop waiting for phone reports.

Therefore:
- record phone-only tests for later;
- never infer phone PASS from CI/source;
- continue independent non-phone work;
- do not close Stage 1 without direct Galaxy A03s evidence.

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
- protected static 154/154;
- Monster collision 8/8;
- world boundary 12/12;
- Godot parse/smoke PASS;
- aerial↔first-person 17/17;
- lifecycle 47/47;
- performance telemetry 20/20;
- Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Prepared sustained phone run:
24 minutes with checkpoints T+02/T+07/T+09/T+14/T+19/T+24.

`SUSTAINED_PERFORMANCE_PHONE_EXECUTED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

## Generic combat package

Seven reusable authorities recorded:
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative/Turn Order;
6. Status Set;
7. Terrain Set.

These are generic rules. Species attacks/Berserk remain content.

## Monster 01 normal attack packet — RECORDED

Authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Selected normal attacks:
- Horn Charge 4 AP / 30 Stamina;
- Head Sweep/Gore 2 / 14;
- Shoulder Ram 3 / 22;
- Foreleg Stomp 2 / 12;
- Tail Sweep 3 / 18.

Hard laws:
- one normal activation per round;
- internal 4-AP budget;
- max one damaging attack/activation;
- normal attacks use Stamina but not Core Energy by default;
- no independent status RNG;
- anatomy/terrain/cover/range/bearing hard legality;
- behavior selects only legal candidates.

## Monster 01 Berserk prototype — RECORDED

Authority:
`docs/30_content/monsters/MONSTER_01/BERSERK_PROTOTYPE_CONTRACT.md`.

Handoff:
`docs/70_handoff/MONSTER_01_BERSERK_PROTOTYPE_PASS_2026-09-03.md`.

### Entry

Required:
- alive/nonterminal;
- not active/used;
- Core Energy ratio `>0.20` and `<=0.60`;
- at least one: Retreat Denied, Nest Defense, Severe Anatomy;
- Severe Anatomy requires at least two major capability losses.

No HP-only/random trigger.

`M01_ENTER_BERSERK`:
- consumes full 4-AP activation;
- no damaging attack same activation;
- costs 10% Max Core Energy;
- adds +20 strain;
- marks episode used;
- visibly telegraphed.

### Active cadence

Each later Berserk normal activation that continues:
- costs 5% Max Core Energy;
- adds +10 strain.

Attack Core surcharge / strain:
- Charge 5% / +12;
- Head 2% / +5;
- Ram 4% / +8;
- Stomp 2% / +4;
- Tail 3% / +6.

Berserk AP:
- Charge 3;
- Head 2;
- Ram 2;
- Stomp 2;
- Tail 2.

Existing Stamina costs remain unchanged.

### Invariants

- one normal activation max/round;
- one damaging attack max/activation;
- no Initiative reroll/extra turn;
- no reaction-window removal;
- no Precision/independent crit/status roll;
- no anatomy regeneration/substitution;
- status/terrain/cover/range legality remains active;
- attack surcharge cannot spend Energy to zero/below;
- zero Core Energy means immediate death.

### Critical exit

`BERSERK_CRITICAL = core_energy_ratio <= 0.12 OR core_strain >= 80`.

If critical + legal retreat + no active Nest Defense:
- Berserk exits to `EXHAUSTED_CRITICAL`;
- no 5% Berserk activation drain that activation;
- episode-used remains true.

If critical but retreat unavailable or Nest Defense remains:
- Berserk continues and can burn to death.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`MONSTER_01_BERSERK_RUNTIME_IMPLEMENTED = NO`
`MONSTER_01_BERSERK_RUNTIME_VERIFIED = NO`
`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_GENERIC_CONTRACTS + MONSTER_01_ATTACK + BERSERK_RECORDED`

## Exact current active non-phone gate

`SOLO_PARTY_BASELINE_CONTRACT`

Bounded scope:
1. reread current generic combat/Initiative/action-economy owners plus the current game-experience/master-plan party direction;
2. decide whether the first playable slice is solo-only, solo-with-optional-companions, or party-required;
3. define first-slice maximum active party size as a prototype target;
4. define who the player directly controls;
5. define how companion normal activations participate in the same deterministic round scheduler;
6. preserve one normal activation max per eligible actor/round;
7. define party/non-player companion command authority without runtime generative AI;
8. define join/leave/incapacitation scheduling boundaries needed before implementation;
9. do not define defeat/retreat resolution in this pass;
10. do not implement production combat source.

## Remaining combat-design sequence

After Solo/Party baseline:
- `DEFEAT_RETREAT_BASELINE_CONTRACT`;
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
`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_GENERIC_CONTRACTS + MONSTER_01_ATTACK + BERSERK_RECORDED`

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = SOLO_PARTY_BASELINE_CONTRACT`
`NEXT_INDEPENDENT_DESIGN_ACTION = SOLO_PARTY_BASELINE_CONTRACT`