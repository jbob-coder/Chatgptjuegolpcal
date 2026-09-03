# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / COMBAT + HARVEST DESIGN BASELINES RECORDED / INVENTORY MATERIAL OWNERSHIP NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Continue building the Android monster-hunting tactical RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`.

Operating contract:
`EVOLVE_ALIGNMENT.md`.

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

For current material/inventory work additionally read:
- `docs/20_gameplay/harvest/README.md`;
- `FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`;
- Monster 01 `HARVEST_CAPACITY_PACKET.md`;
- `CONTENT_DATA_GUIDE.md` material schema;
- existing inventory/crafting root authorities before creating a new owner.

## Project identity

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Playable direction:
- walkable settlement/hub;
- aerial wilderness tracking/exploration;
- first-person turn-based tactical combat from the same physical encounter;
- explicit movement/cover/defense/attack/body-part choices;
- anatomy damage affects Monster capability and physical harvest;
- deterministic authored creature/NPC/companion behavior;
- physical harvest -> material inventory -> crafting progression.

## Stage-1 engine/device truth

Candidate:
Godot 4.7 family / CI Godot 4.7.2 stable / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Automated gates:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; Godot parse/smoke PASS; Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Direct current-phone regression + sustained 24-minute run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Combat design baseline — RECORDED

Nine reusable first-slice authorities:
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative;
6. Status;
7. Terrain;
8. Solo/Party;
9. Defeat/Retreat.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`.

Monster 01 normal attacks/Berserk/behavior/outcome integration are recorded content, not runtime code.

## Harvest baseline — RECORDED

Generic owner:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Package front door:
`docs/20_gameplay/harvest/README.md`.

Specialized handoff:
`docs/70_handoff/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_PASS_2026-09-03.md`.

Selected:
- finite authored source capacity;
- material-specific first-slice capacity units;
- condition bands with preservation multipliers;
- deterministic extraction efficiency;
- clean sever transfers lineage without duplication;
- carcass/detached-part containers;
- partial extraction/depletion;
- no harvest RNG;
- save/load anti-duplication.

## Monster 01 harvest packet — RECORDED

Authority:
`docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Prototype pristine capacities:
- horn L 4;
- horn R 4;
- dorsal plates 8;
- hide 12;
- distal-tail ridge 5;
- distal-tail tendon 4;
- dense bone 8;
- total `45` selected source units.

Actual recovered quantity is lower when combat destroys material or extraction efficiency is below 1.00.

The player's hunt method therefore changes material outcome directly.

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`.

## Current game-development sequence

Completed:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest Capacity/Condition`.

Next:
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`
-> one-recipe crafting/equipment linkage
-> production implementation only after prerequisite engine/domain gates.

## Documentation/navigation discipline

The repository must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

Navigation:
- root README — human front door;
- `docs/README.md` — placement law;
- package README — local map;
- `DOCUMENTATION_INDEX.md` — global map;
- `docs/70_handoff/` — bounded-pass records;
- this + `START_HERE_NEW_CHAT.md` — current reconstruction;
- `EVOLVE_ALIGNMENT.md` — operating/next-action state.

## Current exact state

`IMPLEMENTATION_AUTHORIZED = YES`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_IMPLEMENTED = NO`

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`.