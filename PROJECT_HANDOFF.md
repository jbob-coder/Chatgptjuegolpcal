# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN LOOP THROUGH PHYSICAL SMITH SERVICE RECORDED / PERSISTENCE NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Continue building the Android monster-hunting tactical RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is the primary objective. Documentation is the ownership/continuity/test-control system.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when phone evidence is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current active non-phone action:
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT`.

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

For current persistence work additionally read:
- `SYSTEM_ARCHITECTURE_BLUEPRINT.md`;
- current combat outcome/Monster persistence rules;
- harvest/inventory/crafting transaction contracts;
- Settlement 01 Smith service contract;
- Region 01 tracking/escape package;
- current save/reload requirements in all recorded first-slice owners.

## Project identity

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Playable direction:
- walkable settlement/hub;
- aerial wilderness tracking/exploration;
- first-person turn-based tactical combat from the same physical encounter;
- anatomy damage changes capability and harvest;
- deterministic authored behavior;
- physical harvest -> Inventory -> physical Smith -> equipment refinement -> next hunt.

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

Direct phone regression + sustained 24-minute run remain deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Recorded gameplay/world design chain

Combat baseline:
nine reusable first-slice combat/outcome contracts through Defeat/Retreat.

Harvest:
finite anatomy-derived capacity / condition preservation / deterministic extraction / lineage conservation.

Inventory:
`PLAYER_FIELD_INVENTORY`, recovery bundles, material/quality stacks, provenance lots, conserved idempotent transfers.

Craft/equip:
`recipe_field_poleblade_raker_tendon_grip`
consumes 2 HIGH tail tendon + 2 STANDARD-or-better hide and applies one Raker-Tendon Grip refinement to a compatible Field Poleblade.

Effect:
Placed Hew Stamina 18 -> 16 via typed `COST_MODIFIER` only.

## Settlement 01 Smith service — RECORDED

World package:
`docs/10_world/settlements/SETTLEMENT_01/`.

Authority:
`docs/10_world/settlements/SETTLEMENT_01/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_PASS_2026-09-03.md`.

Selected:
- service ID `service_settlement01_smith_weapon_workbench`;
- interaction ID `interact_settlement01_smith_weapon_workbench`;
- capability `CRAFT_STATION_WEAPON_WORKBENCH`;
- physical Smith/Workshop on the Hunter Service Loop near gate/processing path;
- gate-return-to-workbench graybox target <=25 seconds normal walk;
- normal essential service does not depend on one NPC schedule;
- only Raker-Tendon Grip recipe exposed in first proof;
- open/preview/cancel are read-only;
- Confirm submits authoritative Craft transaction;
- stable Field Poleblade target selected/revalidated by instance ID;
- UI/NPC/Settlement never directly consume Inventory or write refinement;
- save/re-entry hooks prevent presentation replay.

`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_RECORDED = YES`
`SETTLEMENT_SMITH_RUNTIME_IMPLEMENTED = NO`
`SETTLEMENT_SMITH_RUNTIME_VERIFIED = NO`.

## Saved visual concept

Google Drive folder:
`Unnamed Hunt RPG`.

File:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`.
Drive file ID: `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only; repository mechanics/runtime evidence remain authoritative.

## Current game-development sequence

Completed design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest -> Inventory -> One Recipe/Craft-Equip -> Settlement Smith Service`.

Next:
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT`
-> then select the next smallest vertical-slice dependency from live readiness evidence.

## Documentation/navigation discipline

Repository must answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

Navigation:
root README / `docs/README.md` / package READMEs / `DOCUMENTATION_INDEX.md` / `docs/70_handoff/` / this + `START_HERE_NEW_CHAT.md` / `EVOLVE_ALIGNMENT.md`.

## Current exact state

`IMPLEMENTATION_AUTHORIZED = YES`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_RECORDED = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_IMPLEMENTED = NO`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`
`CRAFTING_RUNTIME_IMPLEMENTED = NO`
`SETTLEMENT_SMITH_RUNTIME_IMPLEMENTED = NO`.

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT`.
