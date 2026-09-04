# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Working name: `Unnamed Hunt RPG`.

## Mandatory first read

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. this file
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

Current repository/source/build/device evidence outranks old chat memory.

## Main rule

The game is the objective.

Documentation must preserve:
`WHAT EXISTS -> WHERE IT IS -> WHAT OWNS IT -> WHAT IS VERIFIED -> WHAT REMAINS UNVERIFIED -> WHAT HAPPENS NEXT`.

## Engine/Android truth

Stage-1 automated foundation is advanced; direct Galaxy A03s regression + sustained performance run remain deferred.

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Workflow `33811355891`: SUCCESS on automated protocol revision `c02971996e35770bbaaaf9bf6c460af208db4f83`.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Recorded first-slice loop

Package front doors:
- World: `docs/10_world/README.md`;
- Settlement 01: `docs/10_world/settlements/SETTLEMENT_01/README.md`;
- Region 01: `docs/10_world/regions/REGION_01/README.md`;
- Combat: `docs/20_gameplay/combat/README.md`;
- Harvest: `docs/20_gameplay/harvest/README.md`;
- Inventory: `docs/20_gameplay/inventory/README.md`;
- Crafting: `docs/20_gameplay/crafting/README.md`;
- Persistence: `docs/50_technical/persistence/README.md`.

Recorded chain:
`COMBAT/ANATOMY -> HARVEST -> RECOVERY BUNDLE -> PLAYER INVENTORY -> RETURN THROUGH GATE -> PHYSICAL SMITH -> RAKER-TENDON GRIP -> POLEBLADE REFINEMENT -> SAVE/RELOAD`.

## Persistence baseline

Authority:
`docs/50_technical/persistence/FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT.md`.

Selected:
- `UHR_SAVE_SCHEMA_1`, version 1;
- one prototype slot `save_slot_01`;
- snapshot commits only at persistence-safe domain boundaries;
- active encounter save at stable combat decision/reaction points;
- exact Initiative/RoundRoster/current actor/resources survive reload;
- same Monster instance/anatomy/Core/Berserk/route/evidence survives reload;
- harvest depletion, detached lineages, Recovery Bundles, Inventory/provenance, Craft ledgers/refinement survive reload;
- incomplete new write cannot replace the previous committed generation;
- presentation reconstructs from domain truth and cannot replay transactions.

No persistence runtime is claimed.

## Dimensions/coordinates — current direction

The user explicitly requested that development begin building and documenting in-game dimensions and coordinates.

Existing authority already prefers:
`1 world unit = 1 meter`.

Current ranges are not yet a single coordinate plan.

The next bounded pass is:
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`.

Before that pass read:
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`;
- Settlement 01 package/Smith contract;
- Region 01 README + topology + encounter footprints + streaming/performance;
- Monster 01 anatomy/size authority;
- Hunter scale/model authority;
- persistence package because saved positions consume this coordinate framework.

The spatial pass must establish:
- axis convention;
- major-area origin policy;
- prototype Settlement 01 bounds;
- stable service/landmark coordinates;
- Hunter Gate + transition-corridor coordinates;
- Region 01 sector centers/bounds/connection anchors;
- first encounter-footprint anchors;
- dimensional reference table for Hunter/Monster/buildings/streets;
- clear `LOCKED/CURRENT` vs `PROTOTYPE TARGET` labels.

Do not claim target-device spatial/performance verification from design coordinates.

## Saved finished-game concept

Google Drive:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only; repository dimensions/coordinates/mechanics/runtime evidence outrank the image.

## Exact continuation

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Active non-phone action:
`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`.