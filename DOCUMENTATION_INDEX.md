# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PHONE GATE DEFERRED / SEVEN CORE COMBAT CONTRACTS RECORDED / MONSTER 01 ATTACK PACKET NEXT
Last reconciled: 2026-09-03

## Purpose

Map authority, ownership, readiness, verification lineage and exact read order so the project can be reconstructed from repository evidence rather than chat memory.

The repository must answer:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

# 1. Mandatory read order

## Layer 0 — operating/current-state/governance
1. `EVOLVE_ALIGNMENT.md` — operating contract + exact next actions.
2. `PROJECT_HANDOFF.md` — current snapshot.
3. `START_HERE_NEW_CHAT.md` — new-conversation reconstruction.
4. `DOCUMENTATION_INDEX.md` — this map.
5. `README.md` — game/main-goal front door.
6. `docs/README.md` — documentation/package placement rules.
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md` — readiness gates.
8. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md` — design dependency/quality rules.

Mandatory law: read current `EVOLVE_ALIGNMENT.md` before every bounded pass.

# 2. Stage-1 engine/Android authorities

- `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`;
- `probes/android_stage1/README.md`;
- `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`;
- `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`;
- `probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`;
- `PERFORMANCE_BUDGETS_AND_CAPS.md`;
- Stage-1 handoffs under `docs/70_handoff/`.

Current candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Current automated protocol revision:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Workflow `33811355891`: SUCCESS.

Automated gates:
- static `154/154`;
- Monster collision `8/8`;
- boundary `12/12`;
- view continuity `17/17`;
- lifecycle `47/47`;
- performance telemetry `20/20`;
- Godot parse/smoke PASS;
- Android export/APK integrity/artifact upload PASS.

Inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

`PERFORMANCE_VERIFIED = NO`.
`ENGINE_PHONE_PROBE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

# 3. World/spatial authorities

- `GAME_EXPERIENCE_BIBLE.md`;
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`;
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`;
- `docs/10_world/README.md`;
- `docs/10_world/regions/REGION_01/README.md`;
- `REGION_TOPOLOGY.md`;
- `TRACKING_AND_ESCAPE.md`;
- `TERRAIN_ECOLOGY_MUTATION.md`;
- `ENCOUNTER_FOOTPRINTS.md`;
- `STREAMING_AND_PERFORMANCE.md`;
- `VISUAL_REFERENCE_PLAN.md`;
- `ACCEPTANCE_CHECKLIST.md`.

World hierarchy:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale: `1 world unit = 1 meter`.

Region 01 combat footprints:
- Riverbank Ford;
- Meadow Edge;
- Root/Boulder Hollow;
- Deep Nest Shelf.

# 4. Gameplay/combat authorities

Gameplay front door:
`docs/20_gameplay/README.md`.

Combat front door:
`docs/20_gameplay/combat/README.md`.

Core contracts:
1. `ACTION_ECONOMY_CONTRACT.md`;
2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
3. `FIRST_WEAPON_FAMILY_CONTRACT.md`;
4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`;
5. `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`;
6. `FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
7. `FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md` — newest core combat authority.

Newest combat handoffs:
- `docs/70_handoff/FIRST_SLICE_TERRAIN_EFFECT_SET_PASS_2026-09-03.md`;
- `docs/70_handoff/FIRST_SLICE_STATUS_SET_PASS_2026-09-03.md`;
- `docs/70_handoff/INITIATIVE_AND_TURN_ORDER_PASS_2026-09-03.md`.

Current combat foundation:
- 4 AP / 1 RP / persistent Stamina;
- deterministic contact/hit-quality/defense;
- Field Poleblade;
- neutral Max Stamina 100;
- deterministic Initiative/no random opener;
- Bleeding/Staggered/Off-Balance/Braced/Guarded;
- Stable/Rough/Shallow Water/Mud terrain + Brush/High Ground/Narrow context.

Terrain prototype Stamina surcharge:
- Stable +0/+0/+0;
- Rough +1/+2/+2;
- Shallow Water +2/+4/+3;
- Mud +3/+5/+4;
for Move/Sprint/Dodge respectively.

Terrain invariants:
- one effective primary surface controls cost;
- Dodge uses max(origin,destination);
- no terrain random slip RNG;
- Brush ≠ physical cover;
- High Ground ≠ generic damage/Initiative bonus;
- Narrow = clearance/adjacency legality;
- terrain does not auto-status or reorder Initiative.

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS_RECORDED`.

Current active non-phone action:
`MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`.

# 5. Content authorities

- `docs/30_content/README.md`;
- Hunter Base 01 package under `docs/30_content/hunters/HUNTER_BASE_01/`;
- Monster 01 package under `docs/30_content/monsters/MONSTER_01/`.

Monster 01 authorities include:
- `README.md`;
- `ANATOMY_AND_DAMAGE.md`;
- `CRYSTAL_AND_MUTATION.md`;
- `BEHAVIOR_AND_REGION.md`.

Monster 01 / Mudcrest Raker anchor:
~6.6 m long / ~3.0 m shoulder-body height; horn crest; dorsal plates; mud-adapted legs; severable distal tail; internal crystal.

# 6. Art/asset authorities

- `docs/40_art/README.md`;
- `docs/40_art/asset_pipeline/README.md`;
- asset lineage/approval manifest;
- raster/zoom standard;
- runtime 2D guide;
- PNG→3D pipeline;
- asset QA gates;
- Hunter source/blockout standards;
- `docs/40_art/reviews/README.md`.

# 7. Architecture/code authorities

- `SYSTEM_ARCHITECTURE_BLUEPRINT.md`;
- `CODE_GUIDE.md`;
- `CONTENT_DATA_GUIDE.md`;
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `BEHAVIOR_PATTERN_SYSTEM.md`;
- `docs/50_technical/README.md`.

# 8. Quality/performance authorities

- `TESTING_VERIFICATION_PLAN.md`;
- `PERFORMANCE_BUDGETS_AND_CAPS.md`;
- `ADMIN_CREATOR_SYSTEM.md`;
- `docs/60_quality/README.md`;
- Stage-1 test/performance protocols.

# 9. Current game-development sequence

Implementation lane:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Combat design sequence:
`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Set → Monster 01 Attack Packet → Berserk → Solo/Party → Defeat/Retreat`.

Completed through Terrain Set.

# 10. Documentation placement law

- root `README.md` — game/main goal/top map;
- `docs/README.md` — placement/package rules;
- local package README — local map;
- owning contract Markdown — reusable rule authority;
- content package — configures generic rules, does not fork them;
- `docs/70_handoff/` — bounded-pass records;
- `DOCUMENTATION_INDEX.md` — maps every important authority;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- `EVOLVE_ALIGNMENT.md` — exact operating/next-action state.

An important authority not discoverable from its local README or this index is incompletely integrated documentation.