# Unnamed Hunt RPG

Status: STAGE 1 PHONE GATE DEFERRED / COMBAT DESIGN BASELINE + FIRST HARVEST BASELINE RECORDED / INVENTORY MATERIAL OWNERSHIP NEXT
Last reconciled: 2026-09-03

This repository area belongs to the new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

`Unnamed Hunt RPG` remains a temporary working label.

## 1. Main game goal

The game connects three playable layers:
1. walkable settlement/hub for preparation, services, crafting, research and recovery;
2. elevated angled aerial wilderness exploration for tracking and persistent Monster hunting;
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
├── 20_gameplay/  reusable gameplay/combat/harvest/progression rules
├── 30_content/   hunters/monsters/content packages
├── 40_art/       reference/model/runtime asset pipeline
├── 50_technical/ engine/Android/architecture
├── 60_quality/   QA/performance/testing
└── 70_handoff/   bounded-pass continuity records
```

Global map: `DOCUMENTATION_INDEX.md`.
Documentation placement rules: `docs/README.md`.
Combat front door: `docs/20_gameplay/combat/README.md`.
Harvest front door: `docs/20_gameplay/harvest/README.md`.
Harvest authority: `docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.
Monster 01 front door: `docs/30_content/monsters/MONSTER_01/README.md`.
Monster 01 harvest packet: `docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Every substantial pass must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## 4. Current Stage-1 engine/device state

Candidate:
Godot 4.7 family / CI-build Godot 4.7.2 stable / GDScript / GL Compatibility/OpenGL3 / Galaxy A03s baseline / stable 30 FPS representative-scene minimum target.

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

Direct Galaxy A03s regression + 24-minute sustained run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## 5. Combat design baseline

Nine reusable first-slice contracts are recorded:
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

Design baseline does not equal runtime implementation.

## 6. First-slice harvest baseline

Generic authority:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Selected laws:
- every harvest source has finite authored physical capacity;
- first slice uses material-specific capacity units rather than pretending final kilograms are known;
- final combat damage maps each source to a preservation band;
- PRISTINE/GOOD/DAMAGED/POOR/RUINED/DESTROYED multipliers are `1.00/0.90/0.70/0.40/0.10/0.00`;
- clean sever preserves/transfers existing source capacity and never creates bonus matter;
- break/shatter can reduce quantity/quality while leaving fragments recoverable;
- carcass and detached parts are separate physical containers with stable lineage;
- extraction efficiency is deterministic, clamped to `<=1.00`;
- partial harvest depletes only the quantity actually recovered;
- save/load/reacquisition cannot restore or duplicate already-removed capacity;
- no generic harvest RNG layer.

### Monster 01 first content packet

Authority:
`docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Prototype pristine authored capacities:
- left horn: 4 horn units;
- right horn: 4 horn units;
- dorsal plates: 8 plate units;
- torso hide: 12 hide units;
- distal-tail ridge: 5 units;
- distal-tail tendon: 4 units;
- dense structural bone: 8 units.

Total selected pristine source capacity:
`45 units`.

This is not guaranteed yield. Damage condition and extraction efficiency lower the actual recovered amount.

Core player consequence:
**the way the player damages, breaks and severs anatomy changes how much usable material remains.**

A cleanly severed distal tail transfers its ridge/tendon sources to the detached tail. Those sources cannot appear again on the later carcass.

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`.

## 7. Monster 01 — Mudcrest Raker

Prototype body:
~6.6 m long / ~3.0 m shoulder-body height; front-loaded quadruped; horn crest; dorsal plates; mud-adapted legs; severable distal tail; deep internal Crystal core.

Combat packet:
Horn Charge / Head Sweep-Gore / Shoulder Ram / Foreleg Stomp / Tail Sweep.

Berserk:
deterministic Crystal-life-force desperation state with no extra turn, no anatomy repair and no reaction removal.

Outcome continuity:
- escape preserves the same injured Monster for reacquisition;
- death preserves the final carcass/anatomy state;
- harvesting consumes that physical state rather than generating disconnected loot.

## 8. Planned bounded sequence

Completed design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest Capacity/Condition`.

Current next independent game-design action:
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`.

That next packet must define how recovered material quantities/quality/provenance transfer into authoritative inventory without duplication before the one-recipe crafting linkage is selected.

## 9. Exact continuation

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`.

Do not combine it with broad economy, many recipes or production implementation.