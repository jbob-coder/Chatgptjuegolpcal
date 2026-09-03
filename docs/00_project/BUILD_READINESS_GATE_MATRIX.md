# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / STAGE 1 PHONE GATE DEFERRED / SOLO-PARTY BASELINE RECORDED / DEFEAT-RETREAT NEXT
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
| COMBAT | PARTIAL / ADVANCED | eight generic contracts + Monster 01 normal attacks + Berserk + solo/party baseline recorded; defeat/retreat remains |
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
heading/reset + Look Speed; Monster solidity; boundary containment; aerial/first-person visual/input/clipping; lifecycle background/lock; crash/ANR observation; sustained 24-minute performance/thermal/input/transition run.

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
- solo/party control/scheduler ownership;
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
8. Solo/Party Baseline — solo-capable optional companions, max three active hunters, player controls own hunter only, deterministic companion behavior/orders, same scheduler with independent actor resources.

## Solo / party baseline — RECORDED

Authority:
`docs/20_gameplay/combat/SOLO_PARTY_BASELINE_CONTRACT.md`.

Selected:
- `FIRST_SLICE_PARTY_MODE = SOLO_CAPABLE_WITH_OPTIONAL_COMPANIONS`;
- `MAX_ACTIVE_HUNTERS_IN_PARTY = 3`;
- `PLAYER_DIRECT_CONTROL = PLAYER_HUNTER_ONLY`;
- no shared AP/RP/Stamina;
- all actors use same Initiative/RoundRoster;
- one normal activation max per actor/round;
- no allied-turn grouping rule;
- deterministic authored companion behavior; no runtime generative AI;
- player mid-combat companion command costs 1 AP, max one successful command action per player activation;
- Standard / Focus Part / Hold Position / Close Distance directives;
- companion reactions use companion RP/Stamina and deterministic policy;
- absent companions do not teleport into encounter;
- late entrants wait until next round;
- defeat/revive/retreat outcomes remain outside this packet.

`SOLO_PARTY_BASELINE_RECORDED = YES`
`PARTY_RUNTIME_IMPLEMENTED = NO`
`PARTY_RUNTIME_VERIFIED = NO`

## Monster 01 normal attack packet — RECORDED

Authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Attacks:
Horn Charge / Head Sweep-Gore / Shoulder Ram / Foreleg Stomp / Tail Sweep.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_ATTACK_RUNTIME_IMPLEMENTED = NO`

## Monster 01 Berserk prototype — RECORDED

Authority:
`docs/30_content/monsters/MONSTER_01/BERSERK_PROTOTYPE_CONTRACT.md`.

Selected:
- one episode/hunt until explicit ecological recovery reset;
- deterministic Energy/desperation entry;
- explicit Core Energy/strain costs;
- bounded AP discounts to existing attacks;
- no second damaging attack/extra turn/reaction removal/anatomy restoration;
- critical exit/death boundaries.

`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`MONSTER_01_BERSERK_RUNTIME_IMPLEMENTED = NO`

## Still required before real combat implementation

1. `DEFEAT_RETREAT_BASELINE_CONTRACT` — next bounded gameplay dependency;
2. prerequisite production engine/domain/stats/Crystal/content foundations and tests.

`COMBAT_DESIGN_READINESS = PARTIAL / EIGHT_GENERIC_CONTRACTS + MONSTER_01_ATTACK + BERSERK_RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED UNTIL DEFEAT_RETREAT + PRIOR IMPLEMENTATION GATES`

---

# 5. MUST EXIST BEFORE VERTICAL SLICE

Required integrated loop:
`TITLE/PREP → WALKABLE HUB → GATE → REGION 01 → TRACK → ENGAGE → COMBAT → BREAK/SEVER/BERSERK → DEFEAT OR ESCAPE/REACQUIRE → HARVEST → RETURN → CRAFT/EQUIP ONE UPGRADE → SAVE/RELOAD`.

First-slice participation law:
- the integrated hunt must be completable solo;
- optional companion support may be tested with two/three hunters without changing combat ownership;
- no party-required encounter may be needed to prove the core loop.

Still requires:
- Stage-1 Galaxy A03s gate;
- tested production domain/stats/Crystal/content/combat foundations;
- playable Field Poleblade;
- complete first-slice Monster 01 content;
- defeat/retreat contract;
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
- named companion roster/relationship depth beyond baseline;
- four-plus active hunters;
- companion recruitment stories;
- multiplayer/co-op;
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
`SOLO_PARTY_BASELINE_RECORDED = YES`
`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`COMBAT_DESIGN_READINESS = PARTIAL / EIGHT_GENERIC_CONTRACTS + MONSTER_01_ATTACK + BERSERK_RECORDED`

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = DEFEAT_RETREAT_BASELINE_CONTRACT`

Implementation and design may advance in parallel only when dependencies do not conflict. Every pass remains governed by `EVOLVE_ALIGNMENT.md`.
