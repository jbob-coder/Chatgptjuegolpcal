# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PHONE GATE DEFERRED / SIX CORE COMBAT CONTRACTS RECORDED / TERRAIN EFFECT SET NEXT
Last reconciled: 2026-09-03

## Purpose

Map current authority, package ownership, readiness gates, verification lineage and read order so current state can be reconstructed from repository evidence instead of chat memory.

The repository should always answer:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

# 1. Mandatory read order

## Layer 0 — operating contract / current state / governance

1. `EVOLVE_ALIGNMENT.md` — mandatory operating contract + exact next actions.
2. `PROJECT_HANDOFF.md` — current project snapshot.
3. `START_HERE_NEW_CHAT.md` — new-conversation reconstruction guide.
4. `DOCUMENTATION_INDEX.md` — this global where-is-what map.
5. `README.md` — human project front door/main goal.
6. `docs/README.md` — documentation/package placement rules.
7. `docs/00_project/README.md` — governance folder front door.
8. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md` — implementation dependency classes/current gate state.
9. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md` — design dependency/quality rules.

Mandatory law:
**read the current repository copy of EVOLVE before every bounded pass.**

## Layer 1 — current Stage-1 engine/Android gate

10. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`.
11. `docs/70_handoff/STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION_2026-09-03.md`.
12. `docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_TRANSIENT_INPUT_RESET_2026-09-03.md`.
13. `docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_FOUNDATION_REVIEW_2026-09-03.md`.
14. `docs/70_handoff/STAGE1_AERIAL_FIRST_PERSON_STATE_CONTINUITY_2026-09-03.md`.
15. `docs/70_handoff/STAGE1_WORLD_BOUNDARY_REGRESSION_2026-09-03.md`.
16. `docs/70_handoff/STAGE1_MONSTER_PLACEHOLDER_SOLID_COLLISION_2026-09-03.md`.
17. `docs/70_handoff/STAGE1_JOYSTICK_HEADING_RESET_2026-09-03.md`.
18. `probes/android_stage1/README.md`.
19. `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.
20. `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`.
21. `probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.
22. `probes/android_stage1/tests/README.md`.
23. `PERFORMANCE_BUDGETS_AND_CAPS.md`.

Current candidate:
- Godot 4.7 family / CI Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Galaxy A03s baseline;
- stable `30 FPS` representative-scene minimum target.

Current protocol revision built by CI:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Workflow:
`33811355891` — `SUCCESS`.

Automated gates:
- static `154/154 PASS`;
- Monster collision `8/8 PASS`;
- boundary `12/12 PASS`;
- Godot parse/smoke PASS;
- aerial↔first-person `17/17 PASS`;
- lifecycle transient input `47/47 PASS`;
- performance telemetry `20/20 PASS`;
- Android export/APK integrity/artifact upload PASS.

Current exact inner APK:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Phone implementation gate:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

`PERFORMANCE_VERIFIED = NO`.
`ENGINE_PHONE_PROBE_VERIFIED = NO`.
`FINAL_ENGINE_SELECTED = NO`.

## Layer 2 — world / spatial / experience direction

24. `GAME_EXPERIENCE_BIBLE.md`
25. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
26. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
27. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
28. `FIRST_SETTLEMENT_BLUEPRINT.md`
29. `docs/10_world/README.md`
30. `docs/10_world/regions/REGION_01/README.md`

Region 01 local authorities include:
`REGION_TOPOLOGY.md`, `TRACKING_AND_ESCAPE.md`, `TERRAIN_ECOLOGY_MUTATION.md`, `ENCOUNTER_FOOTPRINTS.md`, `STREAMING_AND_PERFORMANCE.md`, `VISUAL_REFERENCE_PLAN.md`, `ACCEPTANCE_CHECKLIST.md`.

World hierarchy:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale:
`1 world unit = 1 meter`.

## Layer 3 — gameplay / combat / progression

31. `docs/20_gameplay/README.md` — gameplay front door.
32. `docs/20_gameplay/progression/README.md`.
33. `docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.
34. `docs/20_gameplay/combat/README.md` — combat front door.
35. `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.
36. `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`.
37. `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`.
38. `docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`.
39. `docs/20_gameplay/combat/INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`.
40. `docs/20_gameplay/combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md` — newest core combat contract.
41. `docs/70_handoff/FIRST_SLICE_STATUS_SET_PASS_2026-09-03.md` — newest combat bounded-pass record.
42. `docs/70_handoff/INITIATIVE_AND_TURN_ORDER_PASS_2026-09-03.md`.
43. `NEW_GAME_MASTER_PLAN.md`.
44. `MECHANICAL_SYSTEMS_GUIDE.md`.
45. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`.
46. `CONTENT_DATA_GUIDE.md`.
47. `BEHAVIOR_PATTERN_SYSTEM.md`.
48. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`.

Current six core combat contracts record:
- `4 AP / 1 RP / persistent Stamina`;
- deterministic explainable hit-resolution pipeline;
- `WEAPON_FAMILY_FIELD_POLEBLADE`;
- neutral first-slice Max Stamina `100` with bounded recovery;
- deterministic Initiative/round scheduler;
- minimal five-state status/tactical-state packet.

Status packet:
`Bleeding / Staggered / Off-Balance / Braced / Guarded`.

Key status laws:
- no separate random status-proc roll;
- Bleeding caps at intensity `3` and ticks max once per affected actor/round;
- Staggered does not skip next normal activation;
- Guarded is directional and never auto-Blocks;
- no selected state modifies Initiative or creates extra turns.

Current active non-phone design action:
**`FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT`**.

Do not combine it with Monster 01 attacks, berserk, party design, defeat/retreat behavior or production implementation.

## Layer 4 — entity/content packages

49. `docs/30_content/README.md`
50. `docs/30_content/hunters/HUNTER_BASE_01/README.md`
51. `docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md`
52. `docs/30_content/monsters/MONSTER_01/README.md`
53. `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`
54. `docs/30_content/monsters/MONSTER_01/CRYSTAL_AND_MUTATION.md`
55. `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`

Content anchors:
- Hunter Base 01 — 1.75 m reusable humanoid base;
- Monster 01 / Mudcrest Raker — ~6.6 m long, ~3.0 m shoulder/body height, horn crest, dorsal plates, mud-adapted legs, severable distal tail, internal crystal.

## Layer 5 — art/model/runtime asset pipeline

56. `docs/40_art/README.md`
57. `docs/40_art/asset_pipeline/README.md`
58. `docs/40_art/asset_pipeline/ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`
59. `docs/40_art/asset_pipeline/RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
60. `docs/40_art/asset_pipeline/RUNTIME_2D_ASSET_GUIDE.md`
61. `docs/40_art/asset_pipeline/PNG_TO_3D_AUTOMATION_PIPELINE.md`
62. `docs/40_art/asset_pipeline/ASSET_QA_GATES.md`
63. `docs/40_art/asset_pipeline/HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`
64. `docs/40_art/asset_pipeline/HUNTER_DCC_BLOCKOUT_SPECIFICATION.md`
65. `docs/40_art/reviews/README.md`

## Layer 6 — architecture / code / technical

66. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
67. `CODE_GUIDE.md`
68. `CONTENT_DATA_GUIDE.md`
69. `docs/50_technical/README.md`
70. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` only where not superseded by newer authorities.

## Layer 7 — quality / performance / debug

71. `PERFORMANCE_BUDGETS_AND_CAPS.md`
72. `TESTING_VERIFICATION_PLAN.md`
73. `ADMIN_CREATOR_SYSTEM.md`
74. `docs/60_quality/README.md`
75. `probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

## Layer 8 — continuity/build discipline

Newest relevant records:
- `docs/70_handoff/FIRST_SLICE_STATUS_SET_PASS_2026-09-03.md`;
- `docs/70_handoff/INITIATIVE_AND_TURN_ORDER_PASS_2026-09-03.md`;
- `docs/70_handoff/STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION_2026-09-03.md`;
- `docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_TRANSIENT_INPUT_RESET_2026-09-03.md`;
- `docs/70_handoff/STAGE1_AERIAL_FIRST_PERSON_STATE_CONTINUITY_2026-09-03.md`;
- `docs/70_handoff/STAMINA_PROTOTYPE_PASS_2026-09-02.md`;
- `docs/70_handoff/FIRST_WEAPON_FAMILY_PASS_2026-09-02.md`;
- `docs/70_handoff/COMBAT_RESOLUTION_PASS_2026-09-02.md`;
- `docs/70_handoff/COMBAT_ACTION_ECONOMY_PASS_2026-09-02.md`.

# 2. Build readiness state

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

- engine probe — automated foundation/performance procedure prepared; direct phone bundle remains;
- domain implementation — blocked by engine-phone gate;
- combat design — partial/advanced with six core contracts recorded;
- vertical slice — partial/later;
- expansion — intentionally open.

# 3. Current game-development sequence

Implementation lane:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Active non-phone lane:
`FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT`.

Combat sequence:
`Action Economy → Resolution → First Weapon → Stamina → Initiative → Status Set → Terrain Effect Set → Monster 01 Attacks → Berserk → Solo/Party → Defeat/Retreat`.

# 4. Documentation placement law

- root `README.md` explains the game/main goal and top-level map;
- `docs/README.md` explains documentation placement/package rules;
- each durable package has a local README/front door;
- reusable mechanics live in owning contract Markdown, not in content-specific files;
- content packages configure reusable mechanics but do not redefine them;
- bounded pass results go to `docs/70_handoff/`;
- `DOCUMENTATION_INDEX.md` must map any new important authority;
- `EVOLVE_ALIGNMENT.md` must contain the exact next bounded action before a pass closes.

An important authority that cannot be discovered from its local README or this index is incompletely integrated documentation.