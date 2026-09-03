# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / STAGE 1 PHONE GATE DEFERRED / COMBAT SEVEN-CORE-CONTRACT FOUNDATION RECORDED
Last reconciled: 2026-09-03

## Purpose

Classify each requirement by the earliest implementation stage that genuinely consumes it.

Primary law:
**an open question blocks only the earliest gate that actually needs its answer.**

Readiness classes:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

## 1. Current gate summary

| Gate | Current status | Meaning |
|---|---|---|
| ENGINE PROBE | AUTOMATED FOUNDATION + PERFORMANCE PROCEDURE PREPARED / PHONE GATE DEFERRED | CI/build/headless evidence exists; direct Galaxy A03s bundle remains |
| DOMAIN IMPLEMENTATION | BLOCKED BY ENGINE PHONE GATE | production domain code waits for engine/device proof |
| COMBAT | PARTIAL / ADVANCED / SEVEN CORE CONTRACTS RECORDED | generic tactical foundation is increasingly concrete; Monster 01/content/end-state packets remain |
| VERTICAL SLICE | PARTIAL / LATER | integrated hunt loop dependencies remain |
| EXPANSION | INTENTIONALLY OPEN | broad content/lore should not delay earlier gates |

## 2. MUST EXIST BEFORE ENGINE PROBE

Satisfied/prepared:
- implementation authorized;
- Godot 4.7 family / CI Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Galaxy A03s baseline;
- landscape aerial exploration + first-person encounter presentation;
- isolated `probes/android_stage1/` source;
- protected controls/camera/settings baseline;
- Monster representative collision;
- world-boundary guard;
- aerial↔first-person continuity regression;
- lifecycle transient-input reset;
- performance telemetry;
- Android export/APK evidence;
- exact 24-minute sustained-performance phone protocol.

Current automated lineage:
- protocol revision `c02971996e35770bbaaaf9bf6c460af208db4f83`;
- workflow `33811355891` — SUCCESS;
- static `154/154`;
- Monster collision `8/8`;
- boundary `12/12`;
- aerial↔first-person `17/17`;
- lifecycle `47/47`;
- performance telemetry `20/20`;
- Godot parse/smoke PASS;
- Android export/APK integrity/artifact upload PASS.

Direct phone evidence still required for current controls, collision, boundary, view transition/clipping, lifecycle, crash/ANR and sustained performance/thermal/input behavior.

`ENGINE_PHONE_PROBE_VERIFIED = NO`.
`PERFORMANCE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

Blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Phone action when available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

## 3. MUST EXIST BEFORE DOMAIN IMPLEMENTATION

Stage 2 begins only after `ENGINE_PHONE_PROBE_VERIFIED`.

Design prerequisites already recorded include:
- module/domain ownership;
- stable IDs/content definitions;
- persistent state boundaries;
- deterministic authored behavior;
- shared modifier/effect system;
- reproducible randomness direction;
- combat resolution ownership;
- Stamina ownership;
- Initiative scheduler ownership;
- status/state ownership;
- first-slice terrain-effect ownership.

`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`.

## 4. MUST EXIST BEFORE COMBAT

Recorded generic combat contracts:
1. Action Economy;
2. Combat Resolution / Hit Quality / Defense;
3. First Weapon Family — Field Poleblade;
4. Stamina Prototype;
5. Initiative / Turn Order;
6. First-Slice Status / Tactical-State Set;
7. First-Slice Terrain Effect Set.

### Terrain Effect Set — RECORDED
Authority:
`docs/20_gameplay/combat/FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`.

Selected primary surfaces:
- Stable Ground;
- Rough Ground;
- Shallow Water;
- Mud.

Selected context tags:
- Brush;
- High Ground;
- Narrow.

Prototype Stamina terrain surcharges:
- Stable: Move +0 / Sprint +0 / Dodge +0;
- Rough: +1 / +2 / +2;
- Shallow Water: +2 / +4 / +3;
- Mud: +3 / +5 / +4.

Hard terrain laws:
- exactly one effective primary surface controls movement surcharge;
- Dodge uses max(origin,destination) surcharge;
- no independent terrain slip RNG;
- terrain never changes Initiative snapshot/order;
- terrain never auto-applies status;
- Brush visibility is separate from physical cover;
- High Ground has no generic damage/Initiative bonus;
- Narrow is clearance/adjacency legality, not a hidden stat debuff.

Other recorded prerequisites:
- anatomy/first target groups;
- tactical node/lane/range/bearing philosophy;
- shared modifier/effect pipeline;
- deterministic monster-behavior architecture.

Still required before real combat source:
1. `MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT` — next combat design dependency;
2. first berserk prototype;
3. solo/party baseline;
4. defeat/retreat baseline;
5. prior engine/domain/stats/crystal/content implementation/testing gates.

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS_RECORDED`.
`COMBAT_IMPLEMENTATION = BLOCKED UNTIL REMAINING PACKETS + PRIOR IMPLEMENTATION GATES`.

## 5. MUST EXIST BEFORE VERTICAL SLICE

Required integrated loop:
`TITLE/PREP → WALKABLE HUB → GATE → REGION 01 → TRACK → ENGAGE → COMBAT → BREAK/SEVER/BERSERK → DEFEAT OR ESCAPE/REACQUIRE → HARVEST → RETURN → CRAFT/EQUIP ONE UPGRADE → SAVE/RELOAD`.

Need before vertical-slice verification:
- Stage-1 Galaxy A03s evidence + selected quality baseline;
- tested domain/stats/crystal/content/combat foundations;
- playable Field Poleblade;
- complete Monster 01 first-slice packet;
- Region 01 graybox/tracking/escape continuity;
- minimal settlement service loop;
- harvest/inventory/crafting/save loop;
- Android lifecycle/performance verification of integrated loop.

`VERTICAL_SLICE_READINESS = PARTIAL / DEPENDS_ON_IMPLEMENTATION_STAGES`.

## 6. CAN WAIT UNTIL EXPANSION

Examples:
- final game name/full lore;
- broad crystal element/genetics catalog;
- deep ecology simulation;
- many regions/monsters/weapons/recipes;
- multiplayer;
- large status/terrain catalogs;
- advanced durability/ammo/counter systems;
- colossal-monster special rules;
- giant seamless world/destructible terrain;
- final release-device/store/localization breadth.

## 7. Current exact state

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`
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

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`

Every bounded pass remains governed by `EVOLVE_ALIGNMENT.md`.