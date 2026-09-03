# Unnamed Hunt RPG — EVOLVE Alignment

Status: ACTIVE OPERATING CONTRACT / STAGE 1 PHONE GATE DEFERRED / MONSTER 01 NORMAL ATTACK PACKET RECORDED / BERSERK NEXT
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

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

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

## Generic combat design package

Front door:
`docs/20_gameplay/combat/README.md`.

Recorded generic authorities:
1. Action Economy — 4 AP / 1 RP / persistent Stamina / one normal activation max.
2. Combat Resolution — deterministic legality/contact/defense/hit-quality / one bounded seeded variance source.
3. First Weapon — Field Poleblade.
4. Stamina — normalized 100-point reference / passive +10 / Catch Breath / explicit exertion costs.
5. Initiative — deterministic snapshot/no random opener/no ordinary resorting/extra turns.
6. Status Set — Bleeding/Staggered/Off-Balance/Braced/Guarded / no independent status RNG.
7. Terrain Set — Stable/Rough/Shallow Water/Mud + Brush/High Ground/Narrow / no terrain random-slip RNG.

These are reusable rules. One species' attacks remain in that species content package.

## Monster 01 normal attack packet — RECORDED

Package front door:
`docs/30_content/monsters/MONSTER_01/README.md`.

Attack authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Handoff:
`docs/70_handoff/MONSTER_01_COMBAT_ATTACK_PACKET_PASS_2026-09-03.md`.

Selected normal attacks:
- `M01_HORN_CHARGE` — 4 AP / 30 Stamina;
- `M01_HEAD_SWEEP_GORE` — 2 / 14;
- `M01_SHOULDER_RAM` — 3 / 22;
- `M01_FORELEG_STOMP` — 2 / 12;
- `M01_TAIL_SWEEP` — 3 / 18.

Selected Monster 01 attack laws:
- one normal activation per round;
- internal 4-AP activation budget;
- maximum one damaging attack per normal activation;
- normal attacks use persistent Stamina but do not spend Crystal Energy by default;
- all five selected attacks open authoritative telegraph/reaction windows;
- first-slice Monster 01 normal attack hit-quality ceiling = `CLEAN`;
- no separate random critical or status-proc roll;
- anatomy/capability/range/bearing/clearance/cover are hard legality inputs;
- animation/UI cannot expand legal range or restore disabled attacks;
- physical full cover can stop/directly invalidate attacks;
- same state/seed/action sequence must replay deterministically.

Anatomy consequences:
- full Horn Charge requires full horn + forequarter support capability;
- broken full horn capability removes Horn Charge;
- both horns broken convert Head Sweep/Gore to impact-only Head Sweep;
- severe forequarter support loss removes full Charge/Ram as defined;
- each Stomp is tied to a functional side-specific foreleg;
- distal tail sever removes Tail Sweep immediately/persistently.

Reaction/guard-impact highlights:
- Horn Charge: Dodge/Reactive Brace; normal Poleblade Block/Parry incompatible;
- Head Sweep/Gore: compatible Block / limited compatible Parry; impact drain 10;
- Shoulder Ram: Dodge/Brace; only conditional Braced+Guarded Block; impact drain 18;
- Foreleg Stomp: Dodge/Brace; normal Block/Parry incompatible;
- Tail Sweep: compatible Block/Parry/Dodge/Brace; impact drain 14.

Status consequence requests remain deterministic and route through the generic status owner after contact/protection/anatomy resolution.

Behavior boundary:
- `COMBAT_ATTACK_PACKET.md` decides attack legality/profile;
- `BEHAVIOR_AND_REGION.md` deterministically selects from legal candidates;
- no runtime generative AI attack selection.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_ATTACK_RUNTIME_IMPLEMENTED = NO`
`MONSTER_01_ATTACK_RUNTIME_VERIFIED = NO`
`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS + MONSTER_01_ATTACK_PACKET_RECORDED`

## Exact current active non-phone gate

`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`

Bounded scope:
1. reread current Monster 01 README, `COMBAT_ATTACK_PACKET.md`, `CRYSTAL_AND_MUTATION.md`, `BEHAVIOR_AND_REGION.md`, anatomy and owning generic Crystal/combat/behavior authorities;
2. define exact first-slice berserk entry conditions;
3. define Crystal Energy/strain drain cadence and affordability/death boundary;
4. define readable authoritative berserk telegraph/state transition;
5. define only bounded changes to availability/commitment/priority of the **existing anatomy-legal attacks**;
6. preserve lost anatomy permanently — no horn/tail/leg restoration;
7. define stop/critical/death behavior and deterministic trace;
8. do not design party systems;
9. do not define defeat/retreat resolution;
10. record future implementation tests without claiming runtime verification.

## Remaining combat-design sequence

After berserk:
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
`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS + MONSTER_01_ATTACK_PACKET_RECORDED`

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`
`NEXT_INDEPENDENT_DESIGN_ACTION = MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`