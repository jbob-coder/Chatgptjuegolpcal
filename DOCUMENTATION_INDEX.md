# Unnamed Hunt RPG — Documentation Index

Status: STAGE 1 PROBE SOURCE CREATED / ACTIVE DESIGN + CONTENT + ASSET QA
Last reconciled: 2026-09-02

## Purpose

Map current authority, package ownership, readiness gates and exact read order. Reconstruct current state from repository files, not chat memory.

# 1. Mandatory read order

## Layer 0 — operating contract/current state/governance
1. `EVOLVE_ALIGNMENT.md`
2. `START_HERE_NEW_CHAT.md`
3. `README.md`
4. `PROJECT_HANDOFF.md`
5. `DOCUMENTATION_INDEX.md`
6. `docs/README.md`
7. `docs/00_project/README.md`
8. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
9. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`

Mandatory law:
**read the current repository copy of EVOLVE before every bounded pass.**

## Layer 1 — current platform/implementation gate
10. `docs/50_technical/ENGINE_ANDROID_PROBE_DECISION.md`
11. `docs/70_handoff/STAGE1_PROBE_SKELETON_PASS_2026-09-02.md`
12. `probes/android_stage1/README.md`
13. `IMPLEMENTATION_ROADMAP.md`
14. `PERFORMANCE_BUDGETS_AND_CAPS.md`

Current Stage 1 candidate:
- Godot 4.7 family;
- GDScript;
- GL Compatibility;
- Samsung Galaxy A03s;
- stable 30 FPS representative probe target.

Stage 1 source exists, but Godot parse/editor/Android/phone/performance verification is still pending.

Final engine selection remains probe-pending.

## Layer 2 — player experience/world/model direction
15. `GAME_EXPERIENCE_BIBLE.md`
16. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
17. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
18. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
19. `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
20. `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`
21. `FIRST_SETTLEMENT_BLUEPRINT.md`
22. `docs/10_world/regions/REGION_01/README.md`

Region 01 package-local authorities:
- `REGION_TOPOLOGY.md`;
- `TRACKING_AND_ESCAPE.md`;
- `TERRAIN_ECOLOGY_MUTATION.md`;
- `ENCOUNTER_FOOTPRINTS.md`;
- `STREAMING_AND_PERFORMANCE.md`;
- `VISUAL_REFERENCE_PLAN.md`;
- `ACCEPTANCE_CHECKLIST.md`.

## Layer 3 — entity/content packages
23. `docs/30_content/README.md`
24. `docs/30_content/hunters/HUNTER_BASE_01/README.md`
25. `docs/30_content/hunters/HUNTER_BASE_01/PROPORTION_AND_ATTACHMENT_CONTRACT.md`
26. `docs/30_content/monsters/MONSTER_01/README.md`
27. `docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`
28. `docs/30_content/monsters/MONSTER_01/CRYSTAL_AND_MUTATION.md`
29. `docs/30_content/monsters/MONSTER_01/BEHAVIOR_AND_REGION.md`

## Layer 4 — gameplay/numerical behavior
30. `docs/20_gameplay/README.md`
31. `docs/20_gameplay/progression/README.md`
32. `docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`
33. `docs/20_gameplay/combat/README.md`
34. `docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`
35. `docs/20_gameplay/combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`
36. `docs/20_gameplay/combat/FIRST_WEAPON_FAMILY_CONTRACT.md`
37. `docs/20_gameplay/combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`
38. `NEW_GAME_MASTER_PLAN.md`
39. `MECHANICAL_SYSTEMS_GUIDE.md`
40. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
41. `BEHAVIOR_PATTERN_SYSTEM.md`
42. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
43. `NEW_GAME_DISCUSSION_CHECKLIST.md`

Specificity law:
where older Action Economy or First Weapon text still says exact Stamina values are open, `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md` now owns the first-slice Stamina values only.

Current next independent gameplay packet:
**Initiative and Turn-Order Prototype Contract**.

Do not combine it with statuses, Monster 01 attack authoring, terrain-number finalization, berserk, party design or defeat/retreat behavior.

## Layer 5 — art/model/runtime-2D/3D conversion
44. `docs/40_art/README.md`
45. `docs/40_art/asset_pipeline/README.md`
46. `docs/40_art/asset_pipeline/ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`
47. `docs/40_art/asset_pipeline/RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
48. `docs/40_art/asset_pipeline/RUNTIME_2D_ASSET_GUIDE.md`
49. `docs/40_art/asset_pipeline/PNG_TO_3D_AUTOMATION_PIPELINE.md`
50. `docs/40_art/asset_pipeline/ASSET_QA_GATES.md`
51. `docs/40_art/asset_pipeline/GENERATED_SHEET_REGISTRY.md`
52. `docs/40_art/asset_pipeline/HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`
53. `docs/40_art/asset_pipeline/HUNTER_DCC_BLOCKOUT_SPECIFICATION.md`
54. `docs/40_art/reviews/README.md`
55. specific Hunter H02/H02A QA records when relevant.

Hunter same-method technical multiview generation remains paused by QA. The DCC blockout specification is recorded, but final Hunter geometry is not required for Stage 1.

## Layer 6 — architecture/code/data
56. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
57. `CONTENT_DATA_GUIDE.md`
58. `CODE_GUIDE.md`
59. `docs/50_technical/README.md`
60. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` only for older supporting detail not overridden by newer authorities.

## Layer 7 — performance/debug/creator/testing
61. `PERFORMANCE_BUDGETS_AND_CAPS.md`
62. `ADMIN_CREATOR_SYSTEM.md`
63. `TESTING_VERIFICATION_PLAN.md`

## Layer 8 — continuity/build discipline
64. `docs/70_handoff/STAGE1_PROBE_SKELETON_PASS_2026-09-02.md`
65. `docs/70_handoff/COMBAT_ACTION_ECONOMY_PASS_2026-09-02.md`
66. `docs/70_handoff/COMBAT_RESOLUTION_PASS_2026-09-02.md`
67. `docs/70_handoff/FIRST_WEAPON_FAMILY_PASS_2026-09-02.md`
68. `docs/70_handoff/STAMINA_PROTOTYPE_PASS_2026-09-02.md`
69. `docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md` when art/model work is active.
70. `DEVELOPMENT_REFERENCE.md`
71. `EVOLVE_ALIGNMENT.md`

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
- engine probe — source created / execution verification pending;
- domain implementation — blocked by engine-phone probe;
- combat design — partial/advanced, with four core contracts recorded;
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
│       ├── README.md
│       ├── ACTION_ECONOMY_CONTRACT.md
│       ├── COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md
│       ├── FIRST_WEAPON_FAMILY_CONTRACT.md
│       └── STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md
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
- 4 AP;
- 1 RP;
- no AP banking;
- explicit reaction windows;
- reaction recursion blocked.

Combat resolution:
- hard legality before contest;
- frozen resolution context;
- AttackControl vs DefenseControl;
- selected-part vs body contact;
- exposure states;
- directional cover;
- distinct Dodge/Block/Parry/Brace;
- bounded seeded variance;
- no separate random critical roll;
- `MISS / GRAZE / SOLID / CLEAN / PRECISION`;
- local protection/anatomy ordering.

First weapon:
- `WEAPON_FAMILY_FIELD_POLEBLADE`;
- cutting/sever primary;
- piercing/control secondary;
- limited impact;
- directional Guard/restricted Parry;
- 2/3/4 AP technique packet;
- deliberately non-universal.

Stamina prototype:
- Max `100`;
- passive `+10`/normal activation;
- `READY / LOW / CRITICAL / EMPTY` bands;
- no hidden generic low-Stamina accuracy/evasion penalty;
- Catch Breath `1 AP / +20 delayed / once / no attack pairing`;
- stable reposition `0`;
- Sprint `8`;
- Brace `6`;
- reactive Brace `10`;
- Dodge `14`;
- Parry `10`;
- positive-cost ordinary floor `50% of base, minimum 1`;
- Field Poleblade costs `12 / 10 / 18 / 30 / 8`.

Crystal:
Energy is life force; zero usable Energy means death; berserk spends the same reserve; intrinsic properties remain separate from runtime Energy/Condition.

First monster:
Mudcrest Raker, ~6.6 m long / ~3.0 m shoulder-body height, breakable horn/plates, mud-adapted legs, severable distal tail, internal crystal.

# 5. Exact current work

## Implementation
**Parse/editor-smoke verify the existing Stage 1 Godot probe.**

Do not add further Stage-1 features or proceed into Stage 2 until the existing source passes its current verification gate.

## Design
**Initiative and Turn-Order Prototype Contract** may proceed independently as its own bounded EVOLVE pass.

# 6. Maintenance

When durable truth changes:
1. update the owning authority/package;
2. update this index if read order/package state changed;
3. update `PROJECT_HANDOFF.md`, `START_HERE_NEW_CHAT.md` and EVOLVE when current next actions change;
4. update readiness classification when a dependency changes;
5. read back saved state;
6. never allow stale chat memory or older status text to override current explicit/project authority.
