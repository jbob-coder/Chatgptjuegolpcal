# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / STAGE 1 PHONE GATE DEFERRED / SEVEN GENERIC COMBAT CONTRACTS + MONSTER 01 NORMAL ATTACK PACKET RECORDED
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
| COMBAT | PARTIAL / ADVANCED | seven generic combat contracts plus Monster 01 normal attack packet recorded; berserk/party/failure packets remain |
| VERTICAL SLICE | PARTIAL / LATER | integrated loop prerequisites remain |
| EXPANSION | INTENTIONALLY OPEN | broad content/lore/endgame must not delay earlier gates |

---

# 2. MUST EXIST BEFORE ENGINE PROBE

Current candidate:
- Godot 4.7 family;
- CI/build Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Samsung Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

Isolated probe:
`probes/android_stage1/`.

Current automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Workflow `33811355891`: SUCCESS.

Automated gates:
- protected static `154/154 PASS`;
- Monster collision `8/8 PASS`;
- boundary `12/12 PASS`;
- aerial↔first-person `17/17 PASS`;
- lifecycle transient input `47/47 PASS`;
- performance telemetry `20/20 PASS`;
- Godot parse/smoke PASS;
- Android export/APK integrity/artifact upload PASS.

Current inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Prepared direct performance protocol:
`probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

Remaining direct phone evidence:
- heading-reset/Look Speed regression;
- Monster solidity;
- boundary containment;
- aerial↔first-person visual/input/clipping continuity;
- background/resume + lock/unlock;
- crash/ANR observation;
- sustained 24-minute frame-pacing/thermal/input/transition run.

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
- combat resolution;
- Stamina;
- Initiative;
- first status set;
- first terrain set;
- Monster 01 normal attack content packet.

`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`.

---

# 4. MUST EXIST BEFORE COMBAT

## Generic contracts recorded

1. Action Economy — `4 AP / 1 RP / persistent Stamina`, one normal activation max per actor/round.
2. Combat Resolution — hard legality, deterministic context, one bounded seeded variance source, hit-quality/cover/defense pipeline.
3. First Weapon — Field Poleblade.
4. Stamina — normalized 100-point reference, +10 passive, Catch Breath, reaction/weapon costs.
5. Initiative — deterministic snapshot/no random opener/no ordinary extra turns.
6. Status Set — Bleeding/Staggered/Off-Balance/Braced/Guarded, no independent status RNG.
7. Terrain Set — Stable/Rough/Shallow Water/Mud + Brush/High Ground/Narrow, no random terrain slip.

## Monster 01 normal attack packet — RECORDED

Authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Selected attacks:
- `M01_HORN_CHARGE` — 4 AP / 30 Stamina;
- `M01_HEAD_SWEEP_GORE` — 2 / 14;
- `M01_SHOULDER_RAM` — 3 / 22;
- `M01_FORELEG_STOMP` — 2 / 12;
- `M01_TAIL_SWEEP` — 3 / 18.

Selected Monster 01 attack laws:
- internal 4-AP activation budget;
- max one damaging attack per normal activation;
- anatomy/capability gates are authoritative;
- broken horn removes full Charge;
- both horns broken convert Head Sweep/Gore to impact-only Head Sweep;
- severe forequarter support loss removes full Charge/Ram as defined;
- selected damaged foreleg removes that side's Stomp;
- distal tail sever removes Tail Sweep;
- all normal attacks have authoritative telegraph/reaction windows;
- no normal attack independently rolls status chance;
- no normal attack spends Crystal Energy by default;
- attack/behavior/animation cannot bypass cover/clearance/anatomy.

Reaction/guard-impact highlights:
- full Horn Charge: normal Poleblade Block/Parry incompatible;
- Head Sweep/Gore Block impact drain 10;
- Shoulder Ram conditional Braced+Guarded Block impact drain 18;
- Foreleg Stomp normal Block/Parry incompatible;
- Tail Sweep Block impact drain 14 with compatible Parry possible.

This is content-design recorded only.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_ATTACK_RUNTIME_IMPLEMENTED = NO`
`MONSTER_01_ATTACK_RUNTIME_VERIFIED = NO`

## Still required before real combat implementation

1. `MONSTER_01_BERSERK_PROTOTYPE_CONTRACT` — next bounded combat/content dependency;
2. solo/party baseline;
3. defeat/retreat baseline;
4. prerequisite production engine/domain/stats/content foundations and tests.

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS + MONSTER_01_ATTACK_PACKET_RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED UNTIL REMAINING PACKETS + PRIOR IMPLEMENTATION GATES`

---

# 5. MUST EXIST BEFORE VERTICAL SLICE

Required integrated loop:
`TITLE/PREP → WALKABLE HUB → GATE → REGION 01 → TRACK → ENGAGE → COMBAT → BREAK/SEVER/BERSERK → DEFEAT OR ESCAPE/REACQUIRE → HARVEST → RETURN → CRAFT/EQUIP ONE UPGRADE → SAVE/RELOAD`.

Still requires:
- Stage-1 Galaxy A03s gate;
- tested production domain/stats/Crystal/content/combat foundations;
- playable Field Poleblade;
- complete first-slice Monster 01 packet including berserk;
- Region 01 graybox/tracking/escape continuity;
- minimal settlement service loop;
- harvest capacity/depletion;
- inventory/equipment/one recipe;
- persistent monster transfer;
- save/reload of relevant hunt/progression state;
- Android lifecycle/performance verification of integrated loop.

`VERTICAL_SLICE_READINESS = PARTIAL / DEPENDS_ON_IMPLEMENTATION_STAGES`.

---

# 6. CAN WAIT UNTIL EXPANSION

Examples:
- final game name/lore;
- broad element roster;
- deep ecology simulation;
- many settlements/regions/monsters/weapons/recipes;
- endgame breadth;
- large party/relationship systems;
- multiplayer;
- large status/terrain catalogs;
- advanced exceptional combat systems;
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
`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS + MONSTER_01_ATTACK_PACKET_RECORDED`

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`

Implementation and design may advance in parallel only when their dependencies do not conflict. Every pass remains governed by `EVOLVE_ALIGNMENT.md`.