# Build Readiness Gate Matrix

Status: ACTIVE GOVERNANCE / STAGE 1 PHONE GATE DEFERRED / NINE GENERIC COMBAT CONTRACTS RECORDED / HARVEST BASELINE NEXT
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
| COMBAT DESIGN | BASELINE PACKETS RECORDED | nine generic contracts + Monster 01 normal attacks/Berserk recorded; runtime not implemented |
| COMBAT IMPLEMENTATION | BLOCKED BY PRIOR IMPLEMENTATION GATES | design baseline is recorded but production engine/domain/stats/Crystal/content source/tests still required |
| VERTICAL SLICE | PARTIAL / HARVEST + IMPLEMENTATION PREREQUISITES REMAIN | integrated loop not yet playable |
| EXPANSION | INTENTIONALLY OPEN | broad content/lore/endgame must not delay first slice |

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
`FINAL_ENGINE_SELECTED = NO`.

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
- combat Action Economy/Resolution/Stamina/Initiative/status/terrain;
- party/control ownership;
- defeat/retreat/outcome ownership;
- Monster 01 normal attack/Berserk content design.

`DOMAIN_IMPLEMENTATION_READINESS = BLOCKED_BY_ENGINE_PHONE_PROBE`.

---

# 4. MUST EXIST BEFORE COMBAT

## Generic first-slice contracts recorded

1. Action Economy — 4 AP / 1 RP / persistent Stamina / one normal activation max.
2. Combat Resolution — hard legality, deterministic context, bounded seeded variance, hit-quality/cover/defense pipeline.
3. First Weapon — Field Poleblade.
4. Stamina — normalized 100-point reference, +10 passive, Catch Breath, explicit action/reaction costs.
5. Initiative — deterministic snapshot/no random opener/no ordinary extra turns.
6. Status Set — Bleeding/Staggered/Off-Balance/Braced/Guarded, no independent status RNG.
7. Terrain Set — Stable/Rough/Shallow Water/Mud + Brush/High Ground/Narrow, no random terrain slip.
8. Solo/Party Baseline — solo-capable optional companions, max three active Hunters, deterministic companion behavior/orders, same scheduler with independent resources.
9. Defeat/Retreat Baseline — Hunter Downed/defeat, spatial voluntary withdrawal, Monster escape/death, encounter termination and hunt-state persistence.

## Defeat / retreat baseline — RECORDED

Authority:
`docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md`.

Selected:
- Hunter Health `<=0` -> Downed, not first-slice permanent death;
- no in-combat revive;
- player Hunter Downed -> Hunter defeat after current resolution;
- companion Downed alone does not end combat;
- Downed actor loses future encounter activations;
- voluntary withdrawal is spatial/deterministic, not a random roll;
- `WITHDRAW_FROM_ENCOUNTER` = 1 AP from legal escape node;
- party retreat declaration = player 1 AP; companions withdraw on own turns/resources;
- player exits last after non-Downed companions withdraw;
- Monster behavior owns retreat selection/route; Defeat/Retreat owns final escape completion;
- Monster escape preserves same instance and returns hunt to reacquisition;
- Hunter voluntary withdrawal keeps hunt active/disengaged;
- Monster death remains Crystal/body-terminal owned and preserves final anatomy for harvest;
- simultaneous Monster death + player Downed -> `MUTUAL_TERMINAL`;
- terminal encounter closes pending scheduler slots and cannot reopen on reload.

`DEFEAT_RETREAT_BASELINE_RECORDED = YES`
`DEFEAT_RETREAT_RUNTIME_IMPLEMENTED = NO`
`DEFEAT_RETREAT_RUNTIME_VERIFIED = NO`.

## Solo / party baseline — RECORDED

Authority:
`docs/20_gameplay/combat/SOLO_PARTY_BASELINE_CONTRACT.md`.

Selected:
- solo-capable optional companions;
- max three active Hunters;
- player controls own Hunter only;
- deterministic companion behavior/orders;
- same Initiative scheduler;
- independent actor resources.

`SOLO_PARTY_BASELINE_RECORDED = YES`.

## Monster 01 content — RECORDED

Normal attack authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Berserk authority:
`docs/30_content/monsters/MONSTER_01/BERSERK_PROTOTYPE_CONTRACT.md`.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`.

## Combat design status

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`COMBAT_RUNTIME_VERIFIED = NO`.

The first-slice reusable combat-design packet no longer has an unresolved design blocker before implementation.

Real combat implementation is still blocked by:
1. Stage-1 target-device phone gate;
2. subsequent production engine/domain/stats/Crystal/content foundations;
3. implementation tests corresponding to the recorded contracts.

---

# 5. MUST EXIST BEFORE VERTICAL SLICE

Required integrated loop:
`TITLE/PREP -> WALKABLE HUB -> GATE -> REGION 01 -> TRACK -> ENGAGE -> COMBAT -> BREAK/SEVER/BERSERK -> DEFEAT OR ESCAPE/REACQUIRE -> HARVEST -> RETURN -> CRAFT/EQUIP ONE UPGRADE -> SAVE/RELOAD`.

First-slice participation law:
- integrated hunt must be completable solo;
- optional companion support may be tested without changing ownership;
- no party-required encounter is required to prove the loop.

Still requires:
- Stage-1 Galaxy A03s gate;
- tested production domain/stats/Crystal/content/combat foundations;
- playable Field Poleblade;
- Region 01 graybox/tracking/escape continuity;
- first-slice harvest capacity/depletion contract + implementation;
- minimal settlement service loop;
- inventory/equipment/one recipe;
- persistent Monster transfer;
- save/reload relevant hunt/progression state;
- Android lifecycle/performance verification of integrated loop.

`VERTICAL_SLICE_READINESS = PARTIAL / HARVEST + IMPLEMENTATION STAGES REMAIN`.

## Exact next independent design dependency

`FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`.

This is a vertical-slice gameplay prerequisite, not a blocker for the already-recorded combat design packet.

---

# 6. CAN WAIT UNTIL EXPANSION

Examples:
- final game name/lore;
- broad element roster;
- deep ecology simulation;
- many regions/monsters/weapons/recipes;
- endgame breadth;
- companion relationship/recruitment depth;
- four-plus active Hunters;
- multiplayer/co-op;
- permanent Hunter death/permadeath;
- advanced revive/rescue/capture systems;
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
`DEFEAT_RETREAT_BASELINE_RECORDED = YES`
`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`.

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`.

Implementation and design may advance in parallel only when dependencies do not conflict. Every pass remains governed by `EVOLVE_ALIGNMENT.md`.