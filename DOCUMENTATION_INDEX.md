# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PHONE GATE DEFERRED / COMBAT + HARVEST + INVENTORY + ONE-RECIPE BASELINES RECORDED / SETTLEMENT SMITH SERVICE NEXT
Last reconciled: 2026-09-03

## Purpose

Map authority, ownership, readiness, verification lineage and read order so the project can be reconstructed from repository evidence instead of chat memory.

Required repository answer:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## 1. Mandatory read order

1. `EVOLVE_ALIGNMENT.md` — operating contract + exact next actions.
2. `PROJECT_HANDOFF.md` — current project snapshot.
3. `START_HERE_NEW_CHAT.md` — reconstruction guide.
4. `DOCUMENTATION_INDEX.md` — this global map.
5. root `README.md` — game/main-goal front door.
6. `docs/README.md` — placement/package rules.
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md` — readiness gates.
8. newest relevant `docs/70_handoff/`.
9. exact owning package/README/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## 2. Stage-1 engine / Android

Primary authorities:
- `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`;
- `probes/android_stage1/README.md`;
- `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`;
- `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`;
- `probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`;
- `PERFORMANCE_BUDGETS_AND_CAPS.md`.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Workflow `33811355891`: SUCCESS on automated protocol revision `c02971996e35770bbaaaf9bf6c460af208db4f83`.

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## 3. World / visual authorities

- `GAME_EXPERIENCE_BIBLE.md`;
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`;
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`;
- `docs/10_world/README.md`;
- `docs/10_world/regions/REGION_01/README.md` + Region 01 local authorities.

World hierarchy:
`WORLD ATLAS -> WALKABLE SETTLEMENT -> HUNTER GATE -> CONTINUOUS HUNTING REGION -> LOCAL FIRST-PERSON ENCOUNTER`.

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

Handoff:
`docs/70_handoff/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_PASS_2026-09-03.md`.

## 6. Inventory / material ownership authorities

Front door:
`docs/20_gameplay/inventory/README.md`.

Generic owner:
`docs/20_gameplay/inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

Supporting example:
`docs/20_gameplay/inventory/INVENTORY_TRANSFER_EXAMPLE.md`.

Handoff:
`docs/70_handoff/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_PASS_2026-09-03.md`.

## 7. Crafting / equipment linkage authorities

Front door:
`docs/20_gameplay/crafting/README.md`.

First-slice owner:
`docs/20_gameplay/crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`.

Specialized handoff:
`docs/70_handoff/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_PASS_2026-09-03.md`.

Selected first recipe:
`recipe_field_poleblade_raker_tendon_grip`.

Requirements:
- 2 HIGH `material_m01_tail_tendon`;
- 2 STANDARD-or-better `material_m01_hide`.

Output:
`refinement_field_poleblade_raker_tendon_grip`.

Effect:
`POLEBLADE_PLACED_HEW` Stamina 18 -> 16 through typed `COST_MODIFIER`.

Craft transaction reserves exact input stacks/provenance, then atomically consumes materials and applies the refinement exactly once. No random craft-quality layer or broad economy exists in the first proof.

`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`CRAFTING_RUNTIME_IMPLEMENTED = NO`.

## 8. Content authorities

Content front door:
`docs/30_content/README.md`.

Monster 01 front door:
`docs/30_content/monsters/MONSTER_01/README.md`.

Important Monster 01 files:
- `ANATOMY_AND_DAMAGE.md`;
- `COMBAT_ATTACK_PACKET.md`;
- `BERSERK_PROTOTYPE_CONTRACT.md`;
- `BEHAVIOR_AND_REGION.md`;
- `CRYSTAL_AND_MUTATION.md`;
- `HARVEST_CAPACITY_PACKET.md`.

## 9. Progression authorities

Front door:
`docs/20_gameplay/progression/README.md`.

Primary owner:
`docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

The first Raker-Tendon Grip is the current concrete proof of equipment-weighted, bounded, anatomy-connected progression.

## 10. Art/reference authorities

Repository:
- `docs/40_art/README.md`;
- `docs/40_art/asset_pipeline/README.md`;
- `docs/40_art/reviews/README.md`.

External saved visual reference:
- Google Drive folder: `Unnamed Hunt RPG`;
- file: `Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`;
- Drive file ID: `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Generated concept images establish visual intent only unless technically validated. They do not define collision, UVs, dimensions, stable gameplay IDs or performance.

## 11. Architecture/data/quality authorities

Architecture/data:
`SYSTEM_ARCHITECTURE_BLUEPRINT.md`, `CODE_GUIDE.md`, `CONTENT_DATA_GUIDE.md`, `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`, `BEHAVIOR_PATTERN_SYSTEM.md`, `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`, `MECHANICAL_SYSTEMS_GUIDE.md`.

Quality:
`TESTING_VERIFICATION_PLAN.md`, `PERFORMANCE_BUDGETS_AND_CAPS.md`, `docs/60_quality/README.md` and Stage-1 probe/test protocols.

## 12. Current game-development sequence

Implementation lane:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Completed design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest -> Inventory -> One Recipe/Craft-Equip Linkage`.

Current active non-phone action:
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`.

That next pass maps the logical workbench requirement into the walkable Settlement 01 Smith/Workshop and Hunter Service Loop.

## 13. Documentation placement law

- root README — human game/front door;
- `docs/README.md` — placement/package rules;
- package README — local map;
- generic mechanics — gameplay owner;
- species-specific values — species package;
- `docs/70_handoff/` — bounded-pass records;
- this index — global discovery/read order;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- `EVOLVE_ALIGNMENT.md` — exact operating/next-action state.

An important authority that cannot be found from its local README or this index is incompletely integrated documentation.