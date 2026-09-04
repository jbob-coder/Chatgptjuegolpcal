# Unnamed Hunt RPG

Status: STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN LOOP THROUGH PHYSICAL SMITH SERVICE RECORDED / PERSISTENCE NEXT
Last reconciled: 2026-09-03

This repository area belongs to the new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

`Unnamed Hunt RPG` remains a temporary working label.

## 1. Main game goal

The game connects three playable layers:
1. walkable settlement/hub for preparation, services, crafting, research and recovery;
2. elevated angled aerial wilderness exploration for tracking and persistent Monster hunting;
3. first-person turn-based tactical combat from the same physical encounter, with explicit movement, cover, defense, attack and anatomy-targeting decisions.

Core hunt loop:
`PREPARE -> LEAVE SETTLEMENT -> ENTER REGION -> TRACK -> OBSERVE -> APPROACH -> ENGAGE -> POSITION -> TARGET ANATOMY -> BREAK/SEVER -> MONSTER ESCAPES OR FALLS -> REACQUIRE/HARVEST -> INVENTORY -> RETURN THROUGH GATE -> PHYSICAL SMITH -> CRAFT/EQUIP -> PREPARE AGAIN`.

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
├── 10_world/     settlements/regions/spatial application
├── 20_gameplay/  combat/harvest/inventory/crafting/progression rules
├── 30_content/   hunters/monsters/content packages
├── 40_art/       reference/model/runtime asset pipeline
├── 50_technical/ engine/Android/architecture/persistence ownership
├── 60_quality/   QA/performance/testing
└── 70_handoff/   bounded-pass continuity records
```

Global map: `DOCUMENTATION_INDEX.md`.
Documentation placement: `docs/README.md`.
Settlement 01 front door: `docs/10_world/settlements/SETTLEMENT_01/README.md`.
Smith service authority: `docs/10_world/settlements/SETTLEMENT_01/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT.md`.
Combat: `docs/20_gameplay/combat/README.md`.
Harvest: `docs/20_gameplay/harvest/README.md`.
Inventory: `docs/20_gameplay/inventory/README.md`.
Crafting: `docs/20_gameplay/crafting/README.md`.
Monster 01: `docs/30_content/monsters/MONSTER_01/README.md`.

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

Combat baseline:
Action Economy / Resolution / Field Poleblade / Stamina / Initiative / Status / Terrain / Solo-Party / Defeat-Retreat.

Harvest:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Inventory:
`docs/20_gameplay/inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

Craft/equip:
`docs/20_gameplay/crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`.

Physical Smith service:
`docs/10_world/settlements/SETTLEMENT_01/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT.md`.

First recipe:
`recipe_field_poleblade_raker_tendon_grip`
= 2 HIGH tail tendon + 2 STANDARD-or-better hide -> Raker-Tendon Grip -> Placed Hew Stamina 18 -> 16.

The Smith proof adds:
- physical workbench in Settlement 01 Craft/Processing Quarter;
- gate-return-to-workbench graybox target <=25 seconds normal walking;
- normal essential service independent of one Smith NPC schedule;
- read-only preview;
- authoritative Craft Confirm;
- stable Poleblade target revalidation;
- no UI/NPC/Settlement direct material/refinement mutation.

No production combat/harvest/inventory/crafting/Settlement-service runtime is claimed.

## 6. Saved finished-game visual concept

Google Drive project folder:
`Unnamed Hunt RPG`.

File:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`.

Drive file ID:
`1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

This image is visual intent only. Repository mechanics, stable IDs, dimensions, collision and verified performance remain authoritative.

## 7. Planned bounded sequence

Completed design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest -> Inventory -> One Recipe/Craft-Equip -> Settlement Smith Service`.

Current next independent design action:
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT`.

Why next:
Region 01 already has topology/tracking/encounter-footprint design, while save/reload requirements are scattered across Monster identity, harvest depletion, Inventory transfer, crafting anti-replay and Settlement re-entry. The next packet will unify that vertical-slice persistence boundary before broader content expansion.

## 8. Exact continuation

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT`.
