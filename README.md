# Unnamed Hunt RPG

Status: STAGE 1 PHONE GATE DEFERRED / NINE GENERIC COMBAT CONTRACTS RECORDED / HARVEST BASELINE NEXT
Last reconciled: 2026-09-03

This repository area belongs to the new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

`Unnamed Hunt RPG` remains a temporary working label.

## 1. Main game goal

The game connects three playable layers:
1. walkable settlement/hub for preparation, services, crafting, research and recovery;
2. elevated angled aerial wilderness exploration for tracking and persistent monster hunting;
3. first-person turn-based tactical combat from the same physical encounter, with explicit movement, cover, defense, attack and anatomy-targeting decisions.

Core hunt loop:
`PREPARE -> LEAVE SETTLEMENT -> ENTER REGION -> TRACK -> OBSERVE -> APPROACH -> ENGAGE -> POSITION -> TARGET ANATOMY -> BREAK/SEVER -> MONSTER ESCAPES OR FALLS -> REACQUIRE/HARVEST -> RETURN -> PROCESS -> CRAFT/EQUIP/RESEARCH`.

Primary law:
**documentation exists to keep the game coherent; the game is the objective.**

## 2. Mandatory read order

Before bounded work read:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. this README;
6. `docs/README.md`;
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`;
8. newest relevant `docs/70_handoff/`;
9. owning package/README/source/tests.

## 3. Where is what

```text
docs/
├── 00_project/   governance/readiness
├── 10_world/     world/regions/spatial packages
├── 20_gameplay/  reusable gameplay/combat/progression rules
├── 30_content/   hunters/monsters/content packages
├── 40_art/       reference/model/runtime asset pipeline
├── 50_technical/ engine/Android/architecture
├── 60_quality/   QA/performance/testing
└── 70_handoff/   bounded-pass continuity records
```

Global map: `DOCUMENTATION_INDEX.md`.
Documentation placement rules: `docs/README.md`.
Combat front door: `docs/20_gameplay/combat/README.md`.
Defeat/retreat authority: `docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md`.
Monster 01 front door: `docs/30_content/monsters/MONSTER_01/README.md`.

Every substantial pass must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## 4. Current Stage-1 engine/device state

Candidate:
- Godot 4.7 family;
- CI/build Godot 4.7.2 stable;
- GDScript;
- GL Compatibility/OpenGL3;
- Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Verified automated gates:
- static 154/154;
- Monster collision 8/8;
- boundary 12/12;
- view continuity 17/17;
- lifecycle 47/47;
- performance telemetry 20/20;
- Godot parse/smoke PASS;
- Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Direct Galaxy A03s regression and 24-minute sustained run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## 5. Combat design baseline

Nine reusable first-slice contracts are now recorded:
1. Action Economy;
2. Combat Resolution / Hit Quality / Defense;
3. Field Poleblade;
4. Stamina;
5. Initiative / Turn Order;
6. First-Slice Status Set;
7. First-Slice Terrain Effect Set;
8. Solo / Party Baseline;
9. Defeat / Retreat Baseline.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`.

This means the minimum first-slice combat design packet is recorded. It does **not** mean combat runtime exists or is verified.

## 6. Solo / party baseline

Selected:
- fully solo-capable with optional companions;
- max three active Hunters total = player + up to two companions;
- player directly controls only their own Hunter;
- independent AP/RP/Stamina/Health/status/position/equipment per actor;
- same deterministic Initiative scheduler for all combatants;
- companions use authored deterministic behavior;
- bounded 1-AP companion-order action;
- no mid-combat body switching;
- absent companions do not teleport into combat.

## 7. Defeat / retreat baseline

Authority:
`docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md`.

Selected first-slice laws:
- Hunter Health `<=0` -> Downed, not permanent death;
- no in-combat revive;
- player Hunter Downed -> `HUNTERS_DEFEATED` after current resolution;
- companion Downed alone does not end combat;
- voluntary escape is spatial/deterministic, not a random roll;
- `WITHDRAW_FROM_ENCOUNTER` = 1 AP from a legal escape node;
- party retreat declaration = player 1 AP; companions withdraw on own turns/resources;
- Monster behavior chooses retreat route; outcome contract decides final escape completion;
- Monster escape -> `HUNT_ACTIVE_REACQUIRE`;
- Hunter voluntary withdrawal -> `HUNT_ACTIVE_DISENGAGED`;
- Monster death remains Crystal/body-terminal owned and preserves anatomy for harvest;
- same-boundary Monster death + player Downed -> `MUTUAL_TERMINAL`;
- terminal encounter stops scheduler advancement and cannot reopen on reload.

No reward, recovery-penalty or harvest quantity is invented by this contract.

## 8. Monster 01 — normal combat + Berserk

Monster 01: Mudcrest Raker.

Normal attack authority:
`docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Berserk authority:
`docs/30_content/monsters/MONSTER_01/BERSERK_PROTOTYPE_CONTRACT.md`.

Behavior/retreat selection authority:
`docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`.

Normal attacks:
- Horn Charge;
- Head Sweep/Gore;
- Shoulder Ram;
- Foreleg Stomp;
- Tail Sweep.

Monster escape preserves the same instance, injuries, anatomy, Core/Berserk state and route intent for aerial reacquisition.

Monster death preserves final body/part condition for the next harvest layer.

No combat runtime is claimed.

## 9. World/content anchors

World hierarchy:
`WORLD ATLAS -> WALKABLE SETTLEMENT -> HUNTER GATE -> CONTINUOUS HUNTING REGION -> LOCAL FIRST-PERSON ENCOUNTER`.

Scale: `1 world unit = 1 meter`.

Region 01 proof footprints:
Riverbank Ford / Meadow Edge / Root-Boulder Hollow / Deep Nest Shelf.

Monster 01 prototype:
~6.6 m long / ~3.0 m shoulder-body height; horn crest; dorsal plates; mud-adapted legs; severable distal tail; internal Crystal core.

## 10. Planned bounded sequence

Completed design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status Set -> Terrain Set -> Monster 01 Normal Attacks -> Monster 01 Berserk -> Solo/Party -> Defeat/Retreat`.

Current next independent game-design action:
`FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`.

That work advances the hunt loop from **what the fight physically did to the Monster** into **what material actually remains recoverable**.

Production implementation remains blocked by prerequisite engine/domain gates.

## 11. Exact continuation

Implementation action when device evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`.

Keep that pass limited to anatomical harvest capacity, remaining usable mass/condition, clean sever/damage consequences, carcass/detached-part depletion, tool/knowledge modifiers, deterministic yield traces and anti-duplication.

Do not combine it with crafting/economy implementation.