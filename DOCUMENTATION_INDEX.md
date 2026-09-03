# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PHONE GATE DEFERRED / COMBAT + HARVEST BASELINES RECORDED / INVENTORY MATERIAL OWNERSHIP NEXT
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

## 2. Stage-1 engine/Android

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

Automated gates:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; parse/smoke PASS; Android APK/export integrity PASS.

Direct phone gate remains deferred.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## 3. World/spatial authorities

- `GAME_EXPERIENCE_BIBLE.md`;
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`;
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`;
- `docs/10_world/README.md`;
- `docs/10_world/regions/REGION_01/README.md` + local Region 01 topology/tracking/terrain/encounter files.

World hierarchy:
`WORLD ATLAS -> WALKABLE SETTLEMENT -> HUNTER GATE -> CONTINUOUS HUNTING REGION -> LOCAL FIRST-PERSON ENCOUNTER`.

Scale: `1 world unit = 1 meter`.

## 4. Combat gameplay authorities

Gameplay front door:
`docs/20_gameplay/README.md`.

Combat front door:
`docs/20_gameplay/combat/README.md`.

Nine reusable first-slice authorities:
1. `ACTION_ECONOMY_CONTRACT.md`;
2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
3. `FIRST_WEAPON_FAMILY_CONTRACT.md`;
4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`;
5. `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`;
6. `FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
7. `FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`;
8. `SOLO_PARTY_BASELINE_CONTRACT.md`;
9. `DEFEAT_RETREAT_BASELINE_CONTRACT.md`.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`.
Runtime combat remains unimplemented/unverified.

## 5. Harvest authorities

Harvest front door:
`docs/20_gameplay/harvest/README.md`.

Generic owner:
`docs/20_gameplay/harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Worked example:
`docs/20_gameplay/harvest/HARVEST_TRANSACTION_EXAMPLE.md`.

Specialized handoff:
`docs/70_handoff/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_PASS_2026-09-03.md`.

Generic selected law:
finite physical source capacity -> condition preservation -> deterministic extraction efficiency -> depletion -> inventory transfer.

No random loot-table quantity and no capacity creation from skill/tools.

## 6. Content authorities

Content front door:
`docs/30_content/README.md`.

### Hunter Base 01
`docs/30_content/hunters/HUNTER_BASE_01/README.md` + package files.

### Monster 01 — Mudcrest Raker

Front door:
`docs/30_content/monsters/MONSTER_01/README.md`.

Current package authorities:
- `ANATOMY_AND_DAMAGE.md`;
- `COMBAT_ATTACK_PACKET.md`;
- `BERSERK_PROTOTYPE_CONTRACT.md`;
- `BEHAVIOR_AND_REGION.md`;
- `CRYSTAL_AND_MUTATION.md`;
- `HARVEST_CAPACITY_PACKET.md`.

Monster 01 harvest packet selected pristine capacity:
- horn L 4;
- horn R 4;
- dorsal plate 8;
- torso hide 12;
- tail ridge 5;
- tail tendon 4;
- dense bone 8;
- total `45` prototype units.

Damage condition/extraction reduce actual recovery.

`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`MONSTER_01_HARVEST_RUNTIME_IMPLEMENTED = NO`.

## 7. Architecture/data authorities

- `SYSTEM_ARCHITECTURE_BLUEPRINT.md`;
- `CODE_GUIDE.md`;
- `CONTENT_DATA_GUIDE.md`;
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `BEHAVIOR_PATTERN_SYSTEM.md`;
- `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `MECHANICAL_SYSTEMS_GUIDE.md`;
- `docs/50_technical/README.md`.

## 8. Art/asset authorities

- `docs/40_art/README.md`;
- `docs/40_art/asset_pipeline/README.md`;
- current model/reference/animation/runtime-asset standards;
- `docs/40_art/reviews/README.md`.

Generated concept images establish visual intent unless separately technically validated. They do not define collision, UVs, dimensions, target IDs or runtime performance.

## 9. Quality/performance authorities

- `TESTING_VERIFICATION_PLAN.md`;
- `PERFORMANCE_BUDGETS_AND_CAPS.md`;
- `ADMIN_CREATOR_SYSTEM.md`;
- `docs/60_quality/README.md`;
- Stage-1 probe/test/performance protocols.

## 10. Current game-development sequence

Implementation lane:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Completed design sequence:
`Action Economy -> Resolution -> First Weapon -> Stamina -> Initiative -> Status -> Terrain -> Monster 01 Attacks -> Berserk -> Solo/Party -> Defeat/Retreat -> Harvest Capacity/Condition`.

Current active non-phone action:
`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`.

Then, based on current evidence:
`one-recipe crafting/equipment linkage` before broader progression/economy expansion.

## 11. Documentation placement law

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