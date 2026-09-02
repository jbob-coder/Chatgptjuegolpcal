# Unnamed Hunt RPG — Documentation Index

Status: STAGE 1 PROBE AUTHORIZED / ACTIVE DESIGN + CONTENT + ASSET QA
Last reconciled: 2026-09-02

## Purpose

Map current authority, package ownership, readiness gates and exact read order. Reconstruct current state from repository files, not chat memory.

# 1. Mandatory read order

## Layer 0 — current state/governance/readiness
1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`
6. `docs/00_project/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`

## Layer 1 — current platform/implementation gate
9. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`
10. `IMPLEMENTATION_ROADMAP.md`
11. `PERFORMANCE_BUDGETS_AND_CAPS.md`

Current Stage 1 candidate:
- Godot 4.7;
- GDScript;
- GL Compatibility;
- Samsung Galaxy A03s;
- stable 30 FPS representative probe target.

Implementation is authorized according to the readiness matrix. Final engine selection is still probe-pending.

## Layer 2 — player experience/world/model direction
12. `GAME_EXPERIENCE_BIBLE.md`
13. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
14. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
15. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
16. `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
17. `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`
18. `FIRST_SETTLEMENT_BLUEPRINT.md`
19. `docs/10_world/regions/REGION_01/README.md`

Region 01 package-local authorities:
- `REGION_TOPOLOGY.md`;
- `TRACKING_AND_ESCAPE.md`;
- `TERRAIN_ECOLOGY_MUTATION.md`;
- `ENCOUNTER_FOOTPRINTS.md`;
- `STREAMING_AND_PERFORMANCE.md`;
- `VISUAL_REFERENCE_PLAN.md`;
- `ACCEPTANCE_CHECKLIST.md`.

## Layer 3 — entity/content packages
20. `docs/30_content/README.md`
21. `docs/30_content/hunters/HUNTER_BASE_01/README.md`
22. `docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md`
23. `docs/30_content/monsters/MONSTER_01/README.md`
24. `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`
25. `docs/30_content/monsters/MONSTER_01/CRYSTAL_AND_MUTATION.md`
26. `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`

## Layer 4 — gameplay/numerical behavior
27. `docs/20_gameplay/README.md`
28. `docs/20_gameplay/progression/README.md`
29. `docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`
30. `docs/20_gameplay/combat/README.md`
31. `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`
32. `NEW_GAME_MASTER_PLAN.md`
33. `MECHANICAL_SYSTEMS_GUIDE.md`
34. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
35. `BEHAVIOR_PATTERN_SYSTEM.md`
36. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
37. `NEW_GAME_DISCUSSION_CHECKLIST.md`

Current next independent gameplay packet:
**Combat Resolution / Hit Quality and Defense Contract**.

## Layer 5 — art/model/runtime-2D/3D conversion
38. `docs/40_art/README.md`
39. `docs/40_art/asset_pipeline/README.md`
40. `docs/40_art/asset_pipeline/ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`
41. `docs/40_art/asset_pipeline/RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
42. `docs/40_art/asset_pipeline/RUNTIME_2D_ASSET_GUIDE.md`
43. `docs/40_art/asset_pipeline/PNG_TO_3D_AUTOMATION_PIPELINE.md`
44. `docs/40_art/asset_pipeline/ASSET_QA_GATES.md`
45. `docs/40_art/asset_pipeline/GENERATED_SHEET_REGISTRY.md`
46. `docs/40_art/asset_pipeline/HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`
47. `docs/40_art/asset_pipeline/HUNTER_DCC_BLOCKOUT_SPECIFICATION.md`
48. `docs/40_art/reviews/README.md`
49. specific Hunter H02/H02A QA records when relevant.

Hunter same-method technical multiview generation is paused by QA. The DCC blockout specification is recorded, but final Hunter geometry is not required for the Stage 1 engine probe.

## Layer 6 — architecture/code/data
50. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
51. `CONTENT_DATA_GUIDE.md`
52. `CODE_GUIDE.md`
53. `docs/50_technical/README.md`
54. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` only for older supporting detail not overridden by newer authorities.

## Layer 7 — performance/debug/creator/testing
55. `PERFORMANCE_BUDGETS_AND_CAPS.md`
56. `ADMIN_CREATOR_SYSTEM.md`
57. `TESTING_VERIFICATION_PLAN.md`

## Layer 8 — continuity/build discipline
58. `docs/70_handoff/COMBAT_ACTION_ECONOMY_PASS_2026-09-02.md`
59. `docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md` when art/model work is active.
60. `DEVELOPMENT_REFERENCE.md`
61. `EVOLVE_ALIGNMENT.md`

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
- engine probe — READY / AUTHORIZED;
- domain implementation — blocked by engine-phone probe;
- combat design — partial;
- vertical slice — partial;
- expansion decisions — intentionally open.

# 3. Package map

```text
docs/
├── 00_project/
│   ├── README.md
│   └── BUILD_READINESS_GATE_MATRIX.md
├── 10_world/
│   └── regions/REGION_01/
├── 20_gameplay/
│   ├── progression/
│   └── combat/
├── 30_content/
│   ├── hunters/HUNTER_BASE_01/
│   └── monsters/MONSTER_01/
├── 40_art/
│   ├── asset_pipeline/
│   └── reviews/
├── 50_technical/
│   ├── README.md
│   └── ENGINE_ANDROID_PROBE_DECISION.md
├── 60_quality/
└── 70_handoff/
```

Law:
**folders organize ownership; packages organize one playable thing/system.**

# 4. Current design anchors

World:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE → CONTINUOUS HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Behavior:
**NO AI behavior system**; deterministic authored patterns/conditions.

Stats:
Might / Finesse / Agility / Endurance / Perception / Resolve.

Progression:
**HYBRID / EQUIPMENT + MASTERY + KNOWLEDGE WEIGHTED**.

Combat economy:
- 4 AP prototype;
- 1 RP prototype;
- persistent Stamina;
- no AP banking;
- no ordinary extra-turn progression;
- explicit reaction windows;
- reaction recursion blocked.

Crystal:
Energy is life force; zero usable Energy means death; berserk spends the same reserve; intrinsic crystal properties remain distinct from runtime Energy/Condition.

First monster:
Mudcrest Raker, ~6.6 m long / ~3.0 m shoulder-body height, breakable horn/plates, mud-adapted legs, severable distal tail, internal crystal.

# 5. Exact current work

## Implementation
**Stage 1 Godot Android probe skeleton** is allowed now.

Do not proceed into Stage 2 until actual Galaxy A03s runtime evidence passes the Stage 1 gate.

## Design
**Combat Resolution / Hit Quality and Defense Contract** may proceed independently.

# 6. Maintenance

When durable truth changes:
1. update the owning authority/package;
2. update this index if read order/package state changed;
3. update `PROJECT_HANDOFF.md` and `START_HERE_NEW_CHAT.md` when current objective changes;
4. update readiness classification when a dependency changes;
5. read back saved state;
6. never allow stale chat memory or older status text to override current explicit/project authority.
