# Unnamed Hunt RPG

Status: STAGE 1 PHONE GATE DEFERRED / COMBAT + HARVEST + INVENTORY DESIGN BASELINES RECORDED / ONE-RECIPE LINKAGE NEXT
Last reconciled: 2026-09-03

This repository area belongs to the new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

`Unnamed Hunt RPG` remains a temporary working label.

## 1. Main game goal

The game connects three playable layers:
1. walkable settlement/hub for preparation, services, crafting, research and recovery;
2. elevated angled aerial wilderness exploration for tracking and persistent Monster hunting;
3. first-person turn-based tactical combat from the same physical encounter, with explicit movement, cover, defense, attack and anatomy-targeting decisions.

Core hunt loop:
`PREPARE -> LEAVE SETTLEMENT -> ENTER REGION -> TRACK -> OBSERVE -> APPROACH -> ENGAGE -> POSITION -> TARGET ANATOMY -> BREAK/SEVER -> MONSTER ESCAPES OR FALLS -> REACQUIRE/HARVEST -> INVENTORY -> RETURN -> CRAFT/EQUIP/RESEARCH -> HUNT AGAIN`.

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
├── 20_gameplay/  reusable gameplay systems
│   ├── combat/   turn combat contracts
│   ├── harvest/  physical source capacity/depletion
│   ├── inventory/ recovered-material ownership/stacking
│   └── progression/
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
Inventory front door: `docs/20_gameplay/inventory/README.md`.
Inventory authority: `docs/20_gameplay/inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.
Monster 01 front door: `docs/30_content/monsters/MONSTER_01/README.md`.

Every substantial pass must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## 4. Current Stage-1 engine/device state

Candidate:
Godot 4.7 family / CI-build Godot 4.7.2 stable / GDScript / GL Compatibility/OpenGL3 / Galaxy A03s baseline / stable 30 FPS representative-scene minimum target.

Automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.
Workflow `33811355891`: SUCCESS.

Verified automated gates:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; Godot parse/smoke PASS; Android export/APK integrity/artifact upload PASS.

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
Action Economy / Combat Resolution / Field Poleblade / Stamina / Initiative / Status / Terrain / Solo-Party / Defeat-Retreat.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`.
No combat runtime is claimed.

## 6. Harvest baseline

Authority:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Monster 01 application:
`docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Selected laws:
- finite physical source capacity;
- condition reduces recoverable quantity/quality;
- clean sever transfers matter rather than creating it;
- deterministic extraction/depletion;
- no random loot quantity layer;
- Monster 01 selected pristine source capacity totals 45 prototype units.

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`.

## 7. Inventory material ownership baseline

Authority:
`docs/20_gameplay/inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

Selected:
- primary material destination = `PLAYER_FIELD_INVENTORY`;
- prototype 20 material stack entries;
- max 99 units per stack;
- compatible stack key = material ID + quality band;
- provenance remains internally traceable as lots;
- committed harvest output first belongs to a persistent `RECOVERY_BUNDLE`;
- inventory-full/partial transfer leaves unaccepted quantity in the bundle;
- `SOURCE_LOSS == DESTINATION_GAIN` for every committed transfer;
- stable transfer IDs prevent replay on save/load/UI reopen;
- quality never averages just to merge stacks.

Worked example:
`docs/20_gameplay/inventory/INVENTORY_TRANSFER_EXAMPLE.md`.

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`.

## 8. Monster 01 / world anchors

Monster 01: Mudcrest Raker.

Prototype:
~6.6 m long / ~3.0 m shoulder-body height; horn crest; dorsal plates; mud-adapted legs; severable distal tail; internal Crystal core.

Region 01 proof footprints:
Riverbank Ford / Meadow Edge / Root-Boulder Hollow / Deep Nest Shelf.

Monster escape preserves the same instance/injuries/anatomy for reacquisition. Monster death preserves final body/part state for harvesting.

## 9. Planned bounded sequence

Completed design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest Capacity/Condition -> Inventory Material Ownership`.

Current next independent game-design action:
`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT`.

That next piece must close:
`HARVEST -> INVENTORY -> CRAFT/EQUIP -> REASON TO HUNT AGAIN`
with exactly one first-slice recipe/equipment improvement before broad crafting/economy expansion.

Production implementation remains blocked by prerequisite engine/domain gates.

## 10. Exact continuation

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT`.
