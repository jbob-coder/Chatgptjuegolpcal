# Unnamed Hunt RPG — Documentation Index

Status: STAGE 1 TARGET-DEVICE FOUNDATION / JOYSTICK + SETTINGS BUILD VERIFIED / PHONE RETEST PENDING
Last reconciled: 2026-09-03

## Purpose

Map current authority, package ownership, readiness gates and exact read order. Reconstruct current state from repository/source/build/device evidence, not chat memory.

# 1. Mandatory read order

## Layer 0 — operating contract/current state/governance
1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `README.md`
5. `DOCUMENTATION_INDEX.md`
6. `docs/README.md`
7. `docs/00_project/README.md`
8. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
9. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`

Mandatory law:
**read the current repository copy of EVOLVE before every bounded pass.**

## Layer 1 — current platform/implementation gate
10. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`
11. `docs/70_handoff/STAGE1_CONTROL_CAMERA_REFINEMENT_2026-09-03.md`
12. `probes/android_stage1/README.md`
13. `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`
14. `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`
15. `probes/android_stage1/tests/README.md`
16. `IMPLEMENTATION_ROADMAP.md`
17. `PERFORMANCE_BUDGETS_AND_CAPS.md`

Current Stage 1 candidate:
- Godot 4.7 family;
- build tooling currently Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Samsung Galaxy A03s;
- stable 30 FPS representative-scene target.

Current control build:
- analog movement joystick;
- tabbed Settings overlay;
- Controls → Look Speed;
- Look Speed persisted to `user://stage1_settings.cfg`;
- default Look Speed `35%` after direct phone feedback that prior camera turning was too aggressive;
- protected control-camera README + executable static regression guards;
- static preflight `147 / 147 PASS`;
- Godot parse/smoke PASS;
- Android export/APK integrity PASS;
- phone retest pending.

Protected law:
**do not silently remove, replace or materially retune the joystick/settings/look-speed/camera baseline. Read `CONTROL_CAMERA_FOUNDATION_README.md` and explicitly document/warn about the reason for any change.**

Known next separate defect after control retest:
`MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR`.

Final engine selection remains phone-foundation pending.

## Layer 2 — player experience/world/model direction
18. `GAME_EXPERIENCE_BIBLE.md`
19. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
20. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
21. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
22. `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
23. `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`
24. `FIRST_SETTLEMENT_BLUEPRINT.md`
25. `docs/10_world/regions/REGION_01/README.md`

Region 01 local authorities:
- `REGION_TOPOLOGY.md`;
- `TRACKING_AND_ESCAPE.md`;
- `TERRAIN_ECOLOGY_MUTATION.md`;
- `ENCOUNTER_FOOTPRINTS.md`;
- `STREAMING_AND_PERFORMANCE.md`;
- `VISUAL_REFERENCE_PLAN.md`;
- `ACCEPTANCE_CHECKLIST.md`.

## Layer 3 — entity/content packages
26. `docs/30_content/README.md`
27. `docs/30_content/hunters/HUNTER_BASE_01/README.md`
28. `docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md`
29. `docs/30_content/monsters/MONSTER_01/README.md`
30. `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`
31. `docs/30_content/monsters/MONSTER_01/CRYSTAL_AND_MUTATION.md`
32. `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`

## Layer 4 — gameplay/numerical behavior
33. `docs/20_gameplay/README.md`
34. `docs/20_gameplay/progression/README.md`
35. `docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`
36. `docs/20_gameplay/combat/README.md`
37. `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`
38. `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`
39. `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`
40. `docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`
41. `NEW_GAME_MASTER_PLAN.md`
42. `MECHANICAL_SYSTEMS_GUIDE.md`
43. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
44. `BEHAVIOR_PATTERN_SYSTEM.md`
45. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
46. `NEW_GAME_DISCUSSION_CHECKLIST.md`

Current next independent gameplay packet:
**Initiative and Turn-Order Prototype Contract**.

Do not combine it with statuses, Monster 01 attack authoring, terrain-number finalization, berserk, party design or defeat/retreat behavior.

## Layer 5 — art/model/runtime-2D/3D conversion
47. `docs/40_art/README.md`
48. `docs/40_art/asset_pipeline/README.md`
49. `docs/40_art/asset_pipeline/ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`
50. `docs/40_art/asset_pipeline/RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
51. `docs/40_art/asset_pipeline/RUNTIME_2D_ASSET_GUIDE.md`
52. `docs/40_art/asset_pipeline/PNG_TO_3D_AUTOMATION_PIPELINE.md`
53. `docs/40_art/asset_pipeline/ASSET_QA_GATES.md`
54. `docs/40_art/asset_pipeline/GENERATED_SHEET_REGISTRY.md`
55. `docs/40_art/asset_pipeline/HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`
56. `docs/40_art/asset_pipeline/HUNTER_DCC_BLOCKOUT_SPECIFICATION.md`
57. `docs/40_art/reviews/README.md`

Hunter same-method technical multiview generation remains paused by QA. Final Hunter geometry is not required for Stage 1.

## Layer 6 — architecture/code/data
58. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
59. `CONTENT_DATA_GUIDE.md`
60. `CODE_GUIDE.md`
61. `docs/50_technical/README.md`
62. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` only for older supporting detail not overridden by newer authorities.

## Layer 7 — performance/debug/creator/testing
63. `PERFORMANCE_BUDGETS_AND_CAPS.md`
64. `ADMIN_CREATOR_SYSTEM.md`
65. `TESTING_VERIFICATION_PLAN.md`

## Layer 8 — continuity/build discipline
66. `docs/70_handoff/STAGE1_GALAXY_A03S_RUNTIME_EVIDENCE_2026-09-03.md`
67. `docs/70_handoff/STAGE1_TARGET_DEVICE_FEEDBACK_CAMERA_COLLISION_2026-09-03.md`
68. `docs/70_handoff/STAGE1_CONTROL_CAMERA_REFINEMENT_2026-09-03.md`
69. `docs/70_handoff/COMBAT_ACTION_ECONOMY_PASS_2026-09-02.md`
70. `docs/70_handoff/COMBAT_RESOLUTION_PASS_2026-09-02.md`
71. `docs/70_handoff/FIRST_WEAPON_FAMILY_PASS_2026-09-02.md`
72. `docs/70_handoff/STAMINA_PROTOTYPE_PASS_2026-09-02.md`
73. `docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md` when art/model work is active.
74. `DEVELOPMENT_REFERENCE.md`
75. `EVOLVE_ALIGNMENT.md`

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
- engine probe — APK/device runtime active; control-camera retest + collision/lifecycle/performance evidence remain;
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
`WEAPON_FAMILY_FIELD_POLEBLADE` — cutting/sever primary, piercing/control secondary, limited impact, non-universal.

Stamina prototype:
Max `100`, passive `+10`, delayed Catch Breath, bounded exertion/reaction costs.

Crystal:
Energy is life force; zero usable Energy means death; berserk spends the same reserve.

First monster:
Mudcrest Raker, ~6.6 m long / ~3.0 m shoulder-body height, breakable horn/plates, mud-adapted legs, severable distal tail, internal crystal.

# 4. Exact current work

## Implementation
**Phone-retest the build-verified analog joystick + Settings/Look-Speed Stage-1 APK.**

After that passes:
**Monster placeholder solid collision repair only.**

## Design
**Initiative and Turn-Order Prototype Contract** may proceed independently as its own bounded EVOLVE pass.

# 5. Maintenance

When durable truth changes:
1. update the owning authority/package;
2. update this index when read order/package state changes;
3. update `PROJECT_HANDOFF.md`, `START_HERE_NEW_CHAT.md` and EVOLVE when current next actions change;
4. update readiness classification when a dependency changes;
5. read back saved state;
6. never allow stale chat memory or older status text to override current explicit/project authority.
