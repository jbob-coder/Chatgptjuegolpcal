# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN LOOP THROUGH SMITH SERVICE RECORDED / PERSISTENCE NEXT
Last reconciled: 2026-09-03

## Purpose

Map authority, ownership, readiness, verification lineage and read order so the project can be reconstructed from repository evidence instead of chat memory.

Required repository answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## 1. Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. exact owning package/README/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## 2. Stage-1 engine/Android

Authorities:
- `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`;
- `probes/android_stage1/README.md`;
- control/camera/probe/performance protocols;
- `PERFORMANCE_BUDGETS_AND_CAPS.md`.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Workflow `33811355891`: SUCCESS on automated protocol revision `c02971996e35770bbaaaf9bf6c460af208db4f83`.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## 3. World / settlement / Region authorities

Root world authorities:
- `GAME_EXPERIENCE_BIBLE.md`;
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`;
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`.

World package front door:
`docs/10_world/README.md`.

### Settlement 01

Settlement package map:
`docs/10_world/settlements/README.md`.

Local front door:
`docs/10_world/settlements/SETTLEMENT_01/README.md`.

Smith service authority:
`docs/10_world/settlements/SETTLEMENT_01/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_PASS_2026-09-03.md`.

Selected Smith proof:
- physical workbench on Hunter Service Loop;
- `CRAFT_STATION_WEAPON_WORKBENCH` mapped to actual Settlement 01 service;
- <=25-second gate-return-to-workbench graybox target;
- normal essential service does not depend on one NPC schedule;
- one-recipe read-only preview + authoritative Confirm;
- UI/NPC/Settlement never directly consumes Inventory or writes refinement.

### Region 01

Front door:
`docs/10_world/regions/REGION_01/README.md`.

Region package already records topology, tracking/escape, terrain/ecology, encounter footprints, streaming/performance and graybox acceptance requirements.

## 4. Combat gameplay authorities

Gameplay front door:
`docs/20_gameplay/README.md`.

Combat front door:
`docs/20_gameplay/combat/README.md`.

Nine reusable first-slice combat/outcome contracts are recorded through Defeat/Retreat.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`.
Runtime combat remains unimplemented/unverified.

## 5. Harvest authorities

Front door:
`docs/20_gameplay/harvest/README.md`.

Generic owner:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Monster 01 application:
`docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

## 6. Inventory authorities

Front door:
`docs/20_gameplay/inventory/README.md`.

Owner:
`docs/20_gameplay/inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

Supporting example:
`docs/20_gameplay/inventory/INVENTORY_TRANSFER_EXAMPLE.md`.

## 7. Crafting / progression authorities

Crafting front door:
`docs/20_gameplay/crafting/README.md`.

One-recipe authority:
`docs/20_gameplay/crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`.

Progression front door:
`docs/20_gameplay/progression/README.md`.

First recipe:
`recipe_field_poleblade_raker_tendon_grip`.

Inputs:
2 HIGH Monster 01 tail tendon + 2 STANDARD-or-better Monster 01 hide.

Output/effect:
Raker-Tendon Grip refinement; Placed Hew Stamina 18 -> 16 through typed equipment `COST_MODIFIER` only.

## 8. Monster 01 content

Front door:
`docs/30_content/monsters/MONSTER_01/README.md`.

Current authorities include anatomy, normal attacks, Berserk, behavior/Region use, Crystal/mutation and harvest capacity.

## 9. Architecture / data / quality

Architecture/data:
`SYSTEM_ARCHITECTURE_BLUEPRINT.md`, `CODE_GUIDE.md`, `CONTENT_DATA_GUIDE.md`, `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`, `BEHAVIOR_PATTERN_SYSTEM.md`, `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`, `MECHANICAL_SYSTEMS_GUIDE.md`.

Quality:
`TESTING_VERIFICATION_PLAN.md`, `PERFORMANCE_BUDGETS_AND_CAPS.md`, `docs/60_quality/README.md`, Stage-1 probe/test protocols.

## 10. Art and saved concept

Art package:
`docs/40_art/README.md` + asset-pipeline/review authorities.

Saved finished-game visual concept:
Google Drive folder `Unnamed Hunt RPG`;
file `Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`;
Drive ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Generated concept imagery establishes visual intent only unless separately technically validated. It does not override mechanics, dimensions, collision, stable IDs or performance evidence.

## 11. Current game-development sequence

Implementation lane:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Completed bounded design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest -> Inventory -> One Recipe/Craft-Equip -> Settlement Smith Service`.

Current active non-phone action:
`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT`.

Reason:
current save/reload requirements are distributed across persistent Monster identity, encounter/outcome state, harvest depletion, recovery bundles, Inventory transfers, crafting transaction IDs/refinement and Settlement service re-entry. The next pass should unify the smallest vertical-slice persistence contract before broad expansion.

## 12. Documentation placement law

- root README — human game/front door;
- `docs/README.md` — placement/package rules;
- package README — local map;
- generic mechanics — gameplay owner;
- spatial/local service application — world/settlement package;
- species-specific values — species package;
- `docs/70_handoff/` — bounded-pass records;
- this index — global discovery/read order;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- `EVOLVE_ALIGNMENT.md` — exact operating/next-action state.

An important authority that cannot be found from its local README or this index is incompletely integrated documentation.
