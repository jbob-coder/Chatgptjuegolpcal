# Unnamed Hunt RPG

Status: STAGE 1 PHONE GATE DEFERRED / COMBAT + HARVEST + INVENTORY + ONE-RECIPE DESIGN BASELINES RECORDED / SETTLEMENT SMITH SERVICE NEXT
Last reconciled: 2026-09-03

This repository area belongs to the new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

`Unnamed Hunt RPG` remains a temporary working label.

## 1. Main game goal

The game connects three playable layers:
1. walkable settlement/hub for preparation, services, crafting, research and recovery;
2. elevated angled aerial wilderness exploration for tracking and persistent Monster hunting;
3. first-person turn-based tactical combat from the same physical encounter, with explicit movement, cover, defense, attack and anatomy-targeting decisions.

Core hunt loop:
`PREPARE -> LEAVE SETTLEMENT -> ENTER REGION -> TRACK -> OBSERVE -> APPROACH -> ENGAGE -> POSITION -> TARGET ANATOMY -> BREAK/SEVER -> MONSTER ESCAPES OR FALLS -> REACQUIRE/HARVEST -> INVENTORY -> RETURN -> CRAFT/EQUIP -> PREPARE AGAIN`.

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
├── 20_gameplay/  combat/harvest/inventory/crafting/progression rules
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
Crafting front door: `docs/20_gameplay/crafting/README.md`.
Monster 01 front door: `docs/30_content/monsters/MONSTER_01/README.md`.

Every substantial pass must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## 4. Current Stage-1 engine/device truth

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

## 5. Recorded first-slice gameplay chain

Combat design baseline:
- Action Economy;
- Combat Resolution;
- Field Poleblade;
- Stamina;
- Initiative;
- Status;
- Terrain;
- Solo/Party;
- Defeat/Retreat.

Harvest:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Inventory:
`docs/20_gameplay/inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

One-recipe crafting/equipment linkage:
`docs/20_gameplay/crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`.

Current recipe:
`recipe_field_poleblade_raker_tendon_grip`.

Requirements:
- 2 HIGH `material_m01_tail_tendon`;
- 2 STANDARD-or-better `material_m01_hide`.

Output/refinement:
`refinement_field_poleblade_raker_tendon_grip`.

Effect:
`POLEBLADE_PLACED_HEW` Stamina `18 -> 16` through one typed `COST_MODIFIER`; no AP/damage/turn/Initiative bonus.

This closes the design proof:
`ANATOMY DAMAGE -> HARVEST CONDITION -> MATERIAL INVENTORY -> CRAFT REFINEMENT -> NEXT-HUNT TACTICAL EDGE`.

No runtime combat/harvest/inventory/crafting implementation is claimed.

## 6. Monster 01 — Mudcrest Raker

Prototype body:
~6.6 m long / ~3.0 m shoulder-body height; horn crest; dorsal plates; mud-adapted legs; severable distal tail; internal Crystal core.

The selected pristine first-slice harvest packet totals 45 prototype material-capacity units across horn, plate, hide, tail ridge/tendon and dense bone sources. Actual recovered quantity/quality depends on physical combat damage and deterministic extraction.

## 7. Saved finished-game visual concept

Google Drive project folder:
`Unnamed Hunt RPG`.

Saved reference image:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`.

Drive file ID:
`1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

This image is visual intent only. Repository mechanics, stable IDs, dimensions, collision and verified performance remain authoritative.

## 8. Planned bounded sequence

Completed design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest Capacity/Condition -> Inventory Material Ownership -> One Recipe/Craft-Equip Linkage`.

Current next independent game-design action:
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`.

That next packet maps the logical weapon-workbench requirement into the real walkable Settlement 01 Smith/Workshop and return-from-hunt service loop without building broad shops/economy.

## 9. Exact continuation

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`.