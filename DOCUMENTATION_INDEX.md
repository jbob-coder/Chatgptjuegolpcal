# Unnamed Hunt RPG — Documentation Index

Status: STAGE 1 TARGET-DEVICE FOUNDATION / LIFECYCLE BUILD VERIFIED / PERFORMANCE EVIDENCE PREPARATION NEXT
Last reconciled: 2026-09-03

## Purpose

Map current authority, package ownership, readiness gates and exact read order. Reconstruct current state from repository/source/build/device evidence, not chat memory.

# 1. Mandatory read order

## Layer 0 — operating contract/current state/governance
1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. `README.md`
6. `docs/README.md`
7. `docs/00_project/README.md`
8. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
9. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`

Mandatory law:
**read the current repository copy of EVOLVE before every bounded pass.**

## Layer 1 — current platform/implementation gate
10. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`
11. `docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_TRANSIENT_INPUT_RESET_2026-09-03.md`
12. `docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_FOUNDATION_REVIEW_2026-09-03.md`
13. `docs/70_handoff/STAGE1_AERIAL_FIRST_PERSON_STATE_CONTINUITY_2026-09-03.md`
14. `docs/70_handoff/STAGE1_WORLD_BOUNDARY_REGRESSION_2026-09-03.md`
15. `docs/70_handoff/STAGE1_MONSTER_PLACEHOLDER_SOLID_COLLISION_2026-09-03.md`
16. `docs/70_handoff/STAGE1_JOYSTICK_HEADING_RESET_2026-09-03.md`
17. `probes/android_stage1/README.md`
18. `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`
19. `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`
20. `probes/android_stage1/tests/README.md`
21. `IMPLEMENTATION_ROADMAP.md`
22. `PERFORMANCE_BUDGETS_AND_CAPS.md`

Current Stage-1 candidate:
- Godot 4.7 family / current CI Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Samsung Galaxy A03s;
- stable 30 FPS representative-scene target.

Current lifecycle implementation lineage:
- source `9bcde8404d787180e399b9e44e89cc6760d31c3c`;
- workflow `33809412041` — SUCCESS;
- protected static preflight PASS (`154/154` existing suite);
- Monster collision `8/8 PASS`;
- world boundary `12/12 PASS`;
- Godot parse/smoke PASS;
- executable aerial↔first-person continuity `17/17 PASS`;
- executable lifecycle transient-input regression `47/47 PASS` by deterministic test definition;
- Android export/APK integrity PASS;
- workflow artifact upload PASS;
- current phone regression bundle deferred.

Protected law:
**do not silently remove, replace or materially retune the joystick/settings/look-speed/heading-reset/camera baseline.**

Current implementation action:
`STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION`.

Final engine selection remains phone-foundation pending.

## Layer 2 — player experience/world/model direction
23. `GAME_EXPERIENCE_BIBLE.md`
24. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
25. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
26. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
27. `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
28. `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`
29. `FIRST_SETTLEMENT_BLUEPRINT.md`
30. `docs/10_world/regions/REGION_01/README.md`

Region 01 local authorities:
- `REGION_TOPOLOGY.md`;
- `TRACKING_AND_ESCAPE.md`;
- `TERRAIN_ECOLOGY_MUTATION.md`;
- `ENCOUNTER_FOOTPRINTS.md`;
- `STREAMING_AND_PERFORMANCE.md`;
- `VISUAL_REFERENCE_PLAN.md`;
- `ACCEPTANCE_CHECKLIST.md`.

## Layer 3 — entity/content packages
31. `docs/30_content/README.md`
32. `docs/30_content/hunters/HUNTER_BASE_01/README.md`
33. `docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md`
34. `docs/30_content/monsters/MONSTER_01/README.md`
35. `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`
36. `docs/30_content/monsters/MONSTER_01/CRYSTAL_AND_MUTATION.md`
37. `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`

## Layer 4 — gameplay/numerical behavior
38. `docs/20_gameplay/README.md`
39. `docs/20_gameplay/progression/README.md`
40. `docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`
41. `docs/20_gameplay/combat/README.md`
42. `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`
43. `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`
44. `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`
45. `docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`
46. `NEW_GAME_MASTER_PLAN.md`
47. `MECHANICAL_SYSTEMS_GUIDE.md`
48. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
49. `BEHAVIOR_PATTERN_SYSTEM.md`
50. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
51. `NEW_GAME_DISCUSSION_CHECKLIST.md`

Current next independent gameplay packet:
**INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT**.

Do not combine it with statuses, Monster 01 attack authoring, terrain-number finalization, berserk, party design or defeat/retreat behavior.

## Layer 5 — art/model/runtime-2D/3D conversion
52. `docs/40_art/README.md`
53. `docs/40_art/asset_pipeline/README.md`
54. `docs/40_art/asset_pipeline/ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`
55. `docs/40_art/asset_pipeline/RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
56. `docs/40_art/asset_pipeline/RUNTIME_2D_ASSET_GUIDE.md`
57. `docs/40_art/asset_pipeline/PNG_TO_3D_AUTOMATION_PIPELINE.md`
58. `docs/40_art/asset_pipeline/ASSET_QA_GATES.md`
59. `docs/40_art/asset_pipeline/GENERATED_SHEET_REGISTRY.md`
60. `docs/40_art/asset_pipeline/HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`
61. `docs/40_art/asset_pipeline/HUNTER_DCC_BLOCKOUT_SPECIFICATION.md`
62. `docs/40_art/reviews/README.md`

Hunter same-method technical multiview generation remains paused by QA. Final Hunter geometry is not required for Stage 1.

## Layer 6 — architecture/code/data
63. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
64. `CONTENT_DATA_GUIDE.md`
65. `CODE_GUIDE.md`
66. `docs/50_technical/README.md`
67. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` only for older supporting detail not overridden by newer authorities.

## Layer 7 — performance/debug/creator/testing
68. `PERFORMANCE_BUDGETS_AND_CAPS.md`
69. `ADMIN_CREATOR_SYSTEM.md`
70. `TESTING_VERIFICATION_PLAN.md`

## Layer 8 — continuity/build discipline
71. `docs/70_handoff/STAGE1_GALAXY_A03S_RUNTIME_EVIDENCE_2026-09-03.md`
72. `docs/70_handoff/STAGE1_TARGET_DEVICE_FEEDBACK_CAMERA_COLLISION_2026-09-03.md`
73. `docs/70_handoff/STAGE1_CONTROL_CAMERA_REFINEMENT_2026-09-03.md`
74. `docs/70_handoff/STAGE1_JOYSTICK_HEADING_RESET_2026-09-03.md`
75. `docs/70_handoff/STAGE1_MONSTER_PLACEHOLDER_SOLID_COLLISION_2026-09-03.md`
76. `docs/70_handoff/STAGE1_WORLD_BOUNDARY_REGRESSION_2026-09-03.md`
77. `docs/70_handoff/STAGE1_AERIAL_FIRST_PERSON_STATE_CONTINUITY_2026-09-03.md`
78. `docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_FOUNDATION_REVIEW_2026-09-03.md`
79. `docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_TRANSIENT_INPUT_RESET_2026-09-03.md`
80. `docs/70_handoff/COMBAT_ACTION_ECONOMY_PASS_2026-09-02.md`
81. `docs/70_handoff/COMBAT_RESOLUTION_PASS_2026-09-02.md`
82. `docs/70_handoff/FIRST_WEAPON_FAMILY_PASS_2026-09-02.md`
83. `docs/70_handoff/STAMINA_PROTOTYPE_PASS_2026-09-02.md`
84. `docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md` when art/model work is active.
85. `DEVELOPMENT_REFERENCE.md`
86. `EVOLVE_ALIGNMENT.md`

# 2. Build readiness taxonomy

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

Classes:
1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Current state:
- engine probe — sustained-performance preparation + deferred phone evidence remain;
- domain implementation — blocked by engine-phone foundation gate;
- combat design — partial/advanced, four core contracts recorded;
- vertical slice — partial;
- expansion decisions — intentionally open.

# 3. Current design anchors

World:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Behavior:
**NO AI behavior system**; deterministic authored patterns/conditions.

Stats:
Might / Finesse / Agility / Endurance / Perception / Resolve.

Progression:
**HYBRID / EQUIPMENT + MASTERY + KNOWLEDGE WEIGHTED**.

Combat economy:
4 AP / 1 RP / persistent Stamina / no AP banking / bounded reactions.

Combat resolution:
explainable deterministic pipeline with bounded seeded variance, anatomy/exposure/cover ownership, and `MISS / GRAZE / SOLID / CLEAN / PRECISION` hit quality.

First weapon:
`WEAPON_FAMILY_FIELD_POLEBLADE`.

Stamina prototype:
Max `100`.

Crystal:
Energy is life force; zero usable Energy means death; berserk spends the same reserve.

First monster:
Mudcrest Raker, ~6.6 m long / ~3.0 m shoulder-body height, breakable horn/plates, mud-adapted legs, severable distal tail, internal crystal.

# 4. Exact current work

## Implementation
**STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION**.

Prepare one reproducible Galaxy A03s sustained-run evidence packet from the current performance budget/Test 6 authority. Do not claim phone execution and do not preemptively tune rendering/gameplay.

## Design
**INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT** may proceed independently as its own bounded EVOLVE pass.

# 5. Maintenance

When durable truth changes:
1. update the owning authority/package;
2. update this index when read order/package state changes;
3. update `PROJECT_HANDOFF.md`, `START_HERE_NEW_CHAT.md` and EVOLVE when current next actions change;
4. update readiness classification when a dependency changes;
5. read back saved state;
6. never allow stale chat memory or older status text to override current explicit/project authority.
