# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / STAGE 1 PHONE GATE DEFERRED / SEVEN GENERIC COMBAT CONTRACTS + MONSTER 01 NORMAL ATTACK/BERSERK PACKETS RECORDED
Last reconciled: 2026-09-03

## Purpose

Classify requirements by the earliest implementation stage that genuinely consumes them.

Primary law:
**an open question blocks only the earliest implementation gate that actually needs its answer.**

Readiness classes:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`
3. `MUST_EXIST_BEFORE_COMBAT`
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`
5. `CAN_WAIT_UNTIL_EXPANSION`

---

# 1. Gate status summary

| Gate | Current status | Meaning |
|---|---|---|
| ENGINE PROBE | AUTOMATED FOUNDATION + PERFORMANCE PROCEDURE PREPARED / PHONE GATE DEFERRED | source/build/headless gates pass; direct Galaxy A03s bundle remains |
| DOMAIN IMPLEMENTATION | BLOCKED BY ENGINE PHONE GATE | production domain source waits for direct device gate |
| COMBAT | PARTIAL / ADVANCED | seven generic contracts + Monster 01 normal attacks + Berserk recorded; party/failure packets remain |
| VERTICAL SLICE | PARTIAL / LATER | integrated loop prerequisites remain |
| EXPANSION | INTENTIONALLY OPEN | broad content/lore/endgame must not delay earlier gates |

---

# 2. MUST EXIST BEFORE ENGINE PROBE

Candidate:
- Godot 4.7 family;
- CI/build Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Samsung Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

Current automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Automated gates:
- protected static 154/154 PASS;
- Monster collision 8/8 PASS;
- boundary 12/12 PASS;
- aerial↔first-person 17/17 PASS;
- lifecycle transient input 47/47 PASS;
- performance telemetry 20/20 PASS;
- Godot parse/smoke PASS;
- Android export/APK integrity/artifact upload PASS.

Current inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Remaining direct phone evidence:
heading/reset + Look Speed, Monster solidity, boundary containment, aerial/first-person visual/input/clipping, lifecycle background/lock, crash/ANR observation, sustained 24-minute performance/thermal/input/transition run.

`ENGINE_PHONE_PROBE_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

---

# 3. MUST EXIST BEFORE DOMAIN IMPLEMENTATION

Stage 2 begins only after `ENGINE_PHONE_PROBE_VERIFIED`.

Recorded design prerequisites include:
- module/domain ownership;
- stable IDs/content vs runtime state;
- deterministic behavior;
- seeded/reproducible randomness boundary;
- stats/effects ownership;
- Crystal/mutation ownership;
- combat resolution/Stamina/Initiative/status/terrain;
- Monster 01 normal attack/Berserk content design.

`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`.

---

# 4. MUST EXIST BEFORE COMBAT

## Generic contracts recorded

1. Action Economy — 4 AP / 1 RP / persistent Stamina / one normal activation max.
2. Combat Resolution — hard legality, deterministic context, bounded seeded variance, hit-quality/cover/defense pipeline.
3. First Weapon — Field Poleblade.
4. Stamina — normalized 100-point reference, +10 passive, Catch Breath, explicit action/reaction costs.
5. Initiative — deterministic snapshot/no random opener/no ordinary extra turns.
6. Status Set — Bleeding/Staggered/Off-Balance/Braced/Guarded, no independent status RNG.
7. Terrain Set — Stable/Rough/Shallow Water/Mud + Brush/High Ground/Narrow, no random terrain slip.

## Monster 01 normal attack packet — RECORDED

Authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Attacks:
Horn Charge / Head Sweep-Gore / Shoulder Ram / Foreleg Stomp / Tail Sweep.

Hard laws:
- internal 4-AP activation budget;
- one damaging attack max;
- anatomy/capability/terrain/cover are authoritative;
- no independent status RNG;
- normal attacks do not spend Crystal Energy by default.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_ATTACK_RUNTIME_IMPLEMENTED = NO`

## Monster 01 Berserk prototype — RECORDED

Authority:
`docs/30_content/monsters/MONSTER_01/BERSERK_PROTOTYPE_CONTRACT.md`.

Selected:
- one episode per hunt until explicit ecological recovery reset;
- entry Energy ratio `>0.20` and `<=0.60` plus Retreat Denied, Nest Defense or Severe Anatomy pressure;
- Severe Anatomy requires at least two major capability-loss facts;
- entry = full 4-AP activation +10% Max Core Energy +20 strain, no attack same activation;
- later active activation = 5% Max Core Energy +10 strain;
- attack Core surcharges: Charge 5%, Head 2%, Ram 4%, Stomp 2%, Tail 3%;
- Berserk AP: 3/2/2/2/2 respectively;
- existing Stamina costs unchanged;
- max one damaging attack remains;
- no Initiative reroll/extra turn/reaction removal;
- lost anatomy remains lost and attack legality remains absolute;
- `BERSERK_CRITICAL = Energy <=12% OR strain >=80`;
- critical + legal retreat + no Nest Defense exits to `EXHAUSTED_CRITICAL`;
- otherwise Berserk can continue to zero-Energy death;
- zero Core Energy means immediate death.

`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`MONSTER_01_BERSERK_RUNTIME_IMPLEMENTED = NO`
`MONSTER_01_BERSERK_RUNTIME_VERIFIED = NO`

## Still required before real combat implementation

1. `SOLO_PARTY_BASELINE_CONTRACT` — next bounded gameplay dependency;
2. defeat/retreat baseline;
3. prerequisite production engine/domain/stats/Crystal/content foundations and tests.

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_GENERIC_CONTRACTS + MONSTER_01_ATTACK + BERSERK_RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED UNTIL REMAINING PACKETS + PRIOR IMPLEMENTATION GATES`

---

# 5. MUST EXIST BEFORE VERTICAL SLICE

Required integrated loop:
`TITLE/PREP → WALKABLE HUB → GATE → REGION 01 → TRACK → ENGAGE → COMBAT → BREAK/SEVER/BERSERK → DEFEAT OR ESCAPE/REACQUIRE → HARVEST → RETURN → CRAFT/EQUIP ONE UPGRADE → SAVE/RELOAD`.

Still requires:
- Stage-1 Galaxy A03s gate;
- tested production domain/stats/Crystal/content/combat foundations;
- playable Field Poleblade;
- complete first-slice Monster 01 content;
- Region 01 graybox/tracking/escape continuity;
- minimal settlement service loop;
- harvest capacity/depletion;
- inventory/equipment/one recipe;
- persistent monster transfer;
- save/reload relevant hunt/progression state;
- Android lifecycle/performance verification of integrated loop.

`VERTICAL_SLICE_READINESS = PARTIAL / DEPENDS_ON_IMPLEMENTATION_STAGES`.

---

# 6. CAN WAIT UNTIL EXPANSION

Examples:
- final game name/lore;
- broad element roster;
- deep ecology simulation;
- many regions/monsters/weapons/recipes;
- endgame breadth;
- large party/relationship systems beyond first-slice baseline;
- multiplayer;
- large status/terrain catalogs;
- final store/signing/localization/device matrix.

---

# 7. Exact current state

`IMPLEMENTATION_AUTHORIZED = YES`
`CURRENT_STAGE = STAGE_1_ENGINE_ANDROID_PROBE`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`

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

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = SOLO_PARTY_BASELINE_CONTRACT`

Implementation and design may advance in parallel only when dependencies do not conflict. Every pass remains governed by `EVOLVE_ALIGNMENT.md`.