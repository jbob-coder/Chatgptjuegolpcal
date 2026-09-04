# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN LOOP THROUGH PERSISTENCE RECORDED / WORLD COORDINATES + DIMENSIONS NEXT
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
- probe/control/performance protocols;
- `PERFORMANCE_BUDGETS_AND_CAPS.md`.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Workflow `33811355891`: SUCCESS on automated protocol revision `c02971996e35770bbaaaf9bf6c460af208db4f83`.

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## 3. World / settlement / Region authorities

Root world authorities:
- `GAME_EXPERIENCE_BIBLE.md`;
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`;
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`.

World front door:
`docs/10_world/README.md`.

Settlement 01:
`docs/10_world/settlements/SETTLEMENT_01/README.md`.

Smith service authority:
`docs/10_world/settlements/SETTLEMENT_01/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT.md`.

Region 01:
`docs/10_world/regions/REGION_01/README.md` plus topology/tracking/terrain/encounter/streaming authorities.

Current measurement authority already prefers `1 world unit = 1 meter`, but exact coordinate origins/bounds are not yet selected.

Next spatial authority to create:
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT` under the world package.

## 4. Gameplay authorities

Gameplay front door:
`docs/20_gameplay/README.md`.

Combat:
`docs/20_gameplay/combat/README.md` — nine reusable first-slice combat/outcome contracts.

Harvest:
`docs/20_gameplay/harvest/README.md`.

Inventory:
`docs/20_gameplay/inventory/README.md`.

Crafting:
`docs/20_gameplay/crafting/README.md`.

Progression:
`docs/20_gameplay/progression/README.md`.

First recipe:
`recipe_field_poleblade_raker_tendon_grip`.

Inputs:
2 HIGH Monster 01 tail tendon + 2 STANDARD-or-better Monster 01 hide.

Output/effect:
Raker-Tendon Grip refinement; Placed Hew Stamina 18 -> 16 through typed equipment `COST_MODIFIER` only.

## 5. Persistence authorities

Technical front door:
`docs/50_technical/README.md`.

Persistence package front door:
`docs/50_technical/persistence/README.md`.

First-slice owner:
`docs/50_technical/persistence/FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_PASS_2026-09-03.md`.

Selected baseline:
- `UHR_SAVE_SCHEMA_1`, version 1;
- one prototype slot `save_slot_01`;
- committed generation snapshots;
- persistence-safe domain boundaries;
- active encounter saves at stable decision/reaction points;
- exact scheduler/Monster/anatomy/Core/harvest/Inventory/craft/refinement state persists;
- sequence/transaction IDs cannot replay after load;
- incomplete new generation cannot invalidate the prior committed generation;
- presentation/UI is reconstructed rather than replayed as gameplay authority.

`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_RECORDED = YES`
`PERSISTENCE_RUNTIME_IMPLEMENTED = NO`.

## 6. Monster 01 content

Front door:
`docs/30_content/monsters/MONSTER_01/README.md`.

Current authorities cover anatomy, normal attacks, Berserk, behavior/Region use, Crystal/mutation and harvest capacity.

## 7. Architecture / data / quality

Architecture/data:
`SYSTEM_ARCHITECTURE_BLUEPRINT.md`, `CODE_GUIDE.md`, `CONTENT_DATA_GUIDE.md`, `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`, `BEHAVIOR_PATTERN_SYSTEM.md`, `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`, `MECHANICAL_SYSTEMS_GUIDE.md`.

Quality:
`TESTING_VERIFICATION_PLAN.md`, `PERFORMANCE_BUDGETS_AND_CAPS.md`, `docs/60_quality/README.md`, Stage-1 probe/test protocols.

## 8. Art and saved concept

Art package:
`docs/40_art/README.md` + asset-pipeline/review authorities.

Saved finished-game visual concept:
Google Drive folder `Unnamed Hunt RPG`;
file `Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`;
Drive ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Generated concept imagery establishes visual intent only unless technically validated. It does not override mechanics, dimensions, coordinates, collision, stable IDs or performance evidence.

## 9. Current game-development sequence

Implementation lane:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Completed bounded design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest -> Inventory -> One Recipe/Craft-Equip -> Settlement Smith Service -> Persistence`.

Current active non-phone action:
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`.

This next pass answers the user's new requirement to begin building/documenting dimensions and coordinates while preserving the existing world hierarchy/topology and explicitly labeling all untested values as prototype graybox targets.

## 10. Documentation placement law

- root README — human game/front door;
- `docs/README.md` — placement/package rules;
- package README — local map;
- generic mechanics — gameplay owner;
- spatial/local service application — world package;
- persistence/engine/platform — technical package;
- species-specific values — species package;
- `docs/70_handoff/` — bounded-pass records;
- this index — global discovery/read order;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- `EVOLVE_ALIGNMENT.md` — exact operating/next-action state.

An important authority that cannot be found from its local README or this index is incompletely integrated documentation.