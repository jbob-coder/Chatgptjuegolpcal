# Unnamed Hunt RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / STAGE 1 PERFORMANCE MEASUREMENT PREPARED / PHONE FOUNDATION GATE DEFERRED
Last reconciled: 2026-09-03

## Purpose

Map current authority, package ownership, readiness gates, verification lineage and exact read order so project state can be reconstructed from repository evidence rather than chat memory.

The repository should always answer:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

# 1. Mandatory read order

## Layer 0 — operating contract / current state / governance

1. `EVOLVE_ALIGNMENT.md` — operating contract, evidence rules, exact next-action state.
2. `PROJECT_HANDOFF.md` — current project snapshot and verified lineage.
3. `START_HERE_NEW_CHAT.md` — reconstruction guide for a new conversation.
4. `DOCUMENTATION_INDEX.md` — this global where-is-what map.
5. `README.md` — human project front door.
6. `docs/README.md` — documentation/package placement rules.
7. `docs/00_project/README.md` — project-governance folder front door.
8. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md` — implementation dependency classes.
9. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md` — design dependency/quality rules.

Mandatory law:
**read the current repository copy of EVOLVE before every bounded pass.**

## Layer 1 — current Stage-1 platform/implementation gate

10. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md` — engine/device candidate decision.
11. `docs/70_handoff/STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION_2026-09-03.md` — newest completed Stage-1 performance-preparation pass.
12. `docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_TRANSIENT_INPUT_RESET_2026-09-03.md` — lifecycle implementation/build pass.
13. `docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_FOUNDATION_REVIEW_2026-09-03.md` — lifecycle root-cause review.
14. `docs/70_handoff/STAGE1_AERIAL_FIRST_PERSON_STATE_CONTINUITY_2026-09-03.md` — camera/view state continuity pass.
15. `docs/70_handoff/STAGE1_WORLD_BOUNDARY_REGRESSION_2026-09-03.md` — world-boundary guard pass.
16. `docs/70_handoff/STAGE1_MONSTER_PLACEHOLDER_SOLID_COLLISION_2026-09-03.md` — representative collision pass.
17. `docs/70_handoff/STAGE1_JOYSTICK_HEADING_RESET_2026-09-03.md` — heading-reset control pass.
18. `probes/android_stage1/README.md` — local Stage-1 probe front door/file map.
19. `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md` — protected joystick/camera/settings contract.
20. `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md` — Stage-1 automated/phone test contract.
21. `probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md` — exact 24-minute Galaxy A03s performance procedure.
22. `probes/android_stage1/tests/README.md` — static probe-test map.
23. `IMPLEMENTATION_ROADMAP.md` — staged implementation sequence.
24. `PERFORMANCE_BUDGETS_AND_CAPS.md` — global performance guardrails/calibration status.

Current candidate:
- Godot 4.7 family / CI Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Samsung Galaxy A03s;
- stable `30 FPS` representative-scene minimum target.

Current protocol revision built by CI:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Telemetry source:
`89394067971120df43b184a8509934f5458185f2`.

Workflow:
`33811355891` — `SUCCESS`.

Current automated gates:
- protected static `154/154 PASS`;
- Monster collision `8/8 PASS`;
- world boundary `12/12 PASS`;
- Godot parse/smoke PASS;
- aerial↔first-person `17/17 PASS`;
- lifecycle transient input `47/47 PASS`;
- performance telemetry `20/20 PASS`;
- Android export/APK integrity/artifact upload PASS.

Exact current inner APK from that workflow:
`57,570,361 bytes`, SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Current phone implementation gate:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Godot remains `PROBE_PENDING`; final engine selection has not passed.

## Layer 2 — player experience / world / spatial direction

25. `GAME_EXPERIENCE_BIBLE.md`
26. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
27. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
28. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
29. `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
30. `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`
31. `FIRST_SETTLEMENT_BLUEPRINT.md`
32. `docs/10_world/README.md`
33. `docs/10_world/regions/REGION_01/README.md`

Region 01 local authorities include:
- `REGION_TOPOLOGY.md`;
- `TRACKING_AND_ESCAPE.md`;
- `TERRAIN_ECOLOGY_MUTATION.md`;
- `ENCOUNTER_FOOTPRINTS.md`;
- `STREAMING_AND_PERFORMANCE.md`;
- `VISUAL_REFERENCE_PLAN.md`;
- `ACCEPTANCE_CHECKLIST.md`.

World anchor:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale:
`1 world unit = 1 meter`.

## Layer 3 — reusable gameplay / combat / progression

34. `docs/20_gameplay/README.md`
35. `docs/20_gameplay/progression/README.md`
36. `docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`
37. `docs/20_gameplay/combat/README.md`
38. `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`
39. `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`
40. `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`
41. `docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`
42. `NEW_GAME_MASTER_PLAN.md`
43. `MECHANICAL_SYSTEMS_GUIDE.md`
44. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
45. `BEHAVIOR_PATTERN_SYSTEM.md`
46. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
47. `NEW_GAME_DISCUSSION_CHECKLIST.md`

Current recorded combat foundation:
- 4 AP / 1 RP / persistent Stamina;
- deterministic explainable hit-quality/defense pipeline;
- first weapon `WEAPON_FAMILY_FIELD_POLEBLADE`;
- first-slice Max Stamina `100`.

Current active non-phone design action:
**`INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`**.

Do not combine it with statuses, terrain-number finalization, Monster 01 attacks, berserk, party design or defeat/retreat behavior.

## Layer 4 — entity/content packages

48. `docs/30_content/README.md`
49. `docs/30_content/hunters/HUNTER_BASE_01/README.md`
50. `docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md`
51. `docs/30_content/monsters/MONSTER_01/README.md`
52. `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`
53. `docs/30_content/monsters/MONSTER_01/CRYSTAL_AND_MUTATION.md`
54. `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`

Content anchors:
- Hunter Base 01 — 1.75 m reusable humanoid base;
- Monster 01 / Mudcrest Raker — ~6.6 m long, ~3.0 m shoulder/body height, horn crest, dorsal plates, mud-adapted feet, legal distal-tail sever, internal crystal.

## Layer 5 — art/model/runtime asset pipeline

55. `docs/40_art/README.md`
56. `docs/40_art/asset_pipeline/README.md`
57. `docs/40_art/asset_pipeline/ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`
58. `docs/40_art/asset_pipeline/RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
59. `docs/40_art/asset_pipeline/RUNTIME_2D_ASSET_GUIDE.md`
60. `docs/40_art/asset_pipeline/PNG_TO_3D_AUTOMATION_PIPELINE.md`
61. `docs/40_art/asset_pipeline/ASSET_QA_GATES.md`
62. `docs/40_art/asset_pipeline/GENERATED_SHEET_REGISTRY.md`
63. `docs/40_art/asset_pipeline/HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`
64. `docs/40_art/asset_pipeline/HUNTER_DCC_BLOCKOUT_SPECIFICATION.md`
65. `docs/40_art/reviews/README.md`

Hunter same-method technical multiview generation remains paused by QA. Final Hunter geometry is not required for Stage 1.

## Layer 6 — architecture / code / data / technical

66. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
67. `CONTENT_DATA_GUIDE.md`
68. `CODE_GUIDE.md`
69. `docs/50_technical/README.md`
70. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` — older supporting detail only where not overridden by newer authorities.

## Layer 7 — performance / QA / debug / creator

71. `PERFORMANCE_BUDGETS_AND_CAPS.md`
72. `TESTING_VERIFICATION_PLAN.md`
73. `ADMIN_CREATOR_SYSTEM.md`
74. `docs/60_quality/README.md`
75. `probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md` — current executable-device performance evidence procedure.

Stage-1 telemetry is probe-local evidence instrumentation, not production Admin/Developer-overlay architecture.

## Layer 8 — continuity / build discipline

Current/relevant Stage-1 records:
- `docs/70_handoff/STAGE1_GALAXY_A03S_RUNTIME_EVIDENCE_2026-09-03.md`;
- `docs/70_handoff/STAGE1_TARGET_DEVICE_FEEDBACK_CAMERA_COLLISION_2026-09-03.md`;
- `docs/70_handoff/STAGE1_CONTROL_CAMERA_REFINEMENT_2026-09-03.md`;
- `docs/70_handoff/STAGE1_JOYSTICK_HEADING_RESET_2026-09-03.md`;
- `docs/70_handoff/STAGE1_MONSTER_PLACEHOLDER_SOLID_COLLISION_2026-09-03.md`;
- `docs/70_handoff/STAGE1_WORLD_BOUNDARY_REGRESSION_2026-09-03.md`;
- `docs/70_handoff/STAGE1_AERIAL_FIRST_PERSON_STATE_CONTINUITY_2026-09-03.md`;
- `docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_FOUNDATION_REVIEW_2026-09-03.md`;
- `docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_TRANSIENT_INPUT_RESET_2026-09-03.md`;
- `docs/70_handoff/STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION_2026-09-03.md`.

Combat/design pass records include:
- `docs/70_handoff/COMBAT_ACTION_ECONOMY_PASS_2026-09-02.md`;
- `docs/70_handoff/COMBAT_RESOLUTION_PASS_2026-09-02.md`;
- `docs/70_handoff/FIRST_WEAPON_FAMILY_PASS_2026-09-02.md`;
- `docs/70_handoff/STAMINA_PROTOTYPE_PASS_2026-09-02.md`;
- `docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md` when art work is active.

Other continuity references:
- `DEVELOPMENT_REFERENCE.md`;
- `EVOLVE_ALIGNMENT.md`.

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
- engine probe — sustained-performance procedure prepared; direct current-phone performance/regression bundle remains;
- domain implementation — blocked by engine-phone foundation gate;
- combat design — partial/advanced;
- vertical slice — partial;
- expansion — intentionally open.

# 3. Current design anchors

Behavior:
**deterministic authored behavior; no generative runtime AI.**

Stats:
Might / Finesse / Agility / Endurance / Perception / Resolve.

Progression:
**HYBRID / EQUIPMENT + MASTERY + KNOWLEDGE WEIGHTED**.

Combat:
4 AP / 1 RP / persistent Stamina / no AP banking / bounded reactions.

Hit resolution:
explainable deterministic pipeline with bounded seeded variance, anatomy/exposure/cover ownership, and `MISS / GRAZE / SOLID / CLEAN / PRECISION` quality.

Crystal:
Energy is life force; zero usable Energy means death; berserk spends the same reserve.

# 4. Exact current work

## Implementation lane

`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Do not claim this gate PASS from CI.

## Active non-phone lane

`INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`.

This may proceed independently because it does not require completion of target-device performance evidence and does not authorize combat source implementation.

# 5. Documentation maintenance law

When durable truth changes:
1. update the owning source/system/package authority;
2. update the local README/file map if local navigation/status changed;
3. update this index when important authority/read order/navigation changes;
4. update `PROJECT_HANDOFF.md`, `START_HERE_NEW_CHAT.md` and EVOLVE when current state/next actions change;
5. write/update a specialized `docs/70_handoff/` record for substantial bounded passes;
6. update readiness classification when dependencies change;
7. save/commit and read back the stored result;
8. never allow stale chat memory or older status text to override current repository evidence.

An important new authority that cannot be found through its local README or this index is not fully integrated documentation.
