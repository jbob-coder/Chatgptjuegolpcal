# Unnamed Hunt RPG

Status: STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE DESIGN THROUGH PERSISTENCE + SPATIAL COORDINATES RECORDED / REGION TRACKING->ENCOUNTER GRAYBOX INTEGRATION NEXT
Last reconciled: 2026-09-03

New Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main game goal

Playable layers:
1. walkable Settlement 01;
2. aerial Region 01 tracking/exploration;
3. first-person turn-based tactical combat at the same physical encounter.

Core loop:
`PREPARE -> SETTLEMENT -> GATE -> REGION -> TRACK -> ENGAGE -> TARGET ANATOMY -> BREAK/SEVER -> ESCAPE/DEFEAT -> REACQUIRE/HARVEST -> INVENTORY -> RETURN -> PHYSICAL SMITH -> CRAFT/EQUIP -> SAVE/RELOAD -> NEXT HUNT`.

Primary law:
**documentation exists to keep the game coherent; the game is the objective.**

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. this README
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

## Where is what

```text
docs/
├── 00_project/   governance/readiness
├── 10_world/     spatial framework/settlements/regions
├── 20_gameplay/  combat/harvest/inventory/crafting/progression
├── 30_content/   hunters/monsters/content packets
├── 40_art/       art/reference/model pipeline
├── 50_technical/ engine/Android/persistence
├── 60_quality/   QA/performance/testing
└── 70_handoff/   bounded-pass continuity
```

Global map: `DOCUMENTATION_INDEX.md`.

Spatial front door:
`docs/10_world/spatial/README.md`.

Coordinate registry:
`docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Settlement 01:
`docs/10_world/settlements/SETTLEMENT_01/README.md`.

Region 01:
`docs/10_world/regions/REGION_01/README.md`.

Persistence:
`docs/50_technical/persistence/README.md`.

## Engine / Android truth

Candidate:
Godot 4.7 family / CI 4.7.2 stable / GDScript / GL Compatibility/OpenGL3 / Galaxy A03s / stable 30 FPS representative-scene minimum.

Workflow `33811355891`: SUCCESS for automated Stage-1 lineage.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## First-slice gameplay chain recorded

Combat design baseline is recorded through Defeat/Retreat.

Monster 01 is the Mudcrest Raker:
~6.6 m nose-to-tail / ~3.0 m shoulder-body height prototype, persistent anatomy/Crystal/Berserk/escape/harvest state.

Harvest -> Inventory -> one craft/equip proof is recorded.

First recipe:
`recipe_field_poleblade_raker_tendon_grip`
= 2 HIGH tail tendon + 2 STANDARD-or-better hide.

Result:
Raker-Tendon Grip on compatible Field Poleblade; Placed Hew Stamina `18 -> 16` via typed `COST_MODIFIER` only.

Physical Smith service is mapped into Settlement 01.

Persistence baseline is recorded under `docs/50_technical/persistence/` with schema `UHR_SAVE_SCHEMA_1`, slot `save_slot_01`, safe-point snapshots and active-combat anti-duplication rules.

No production combat/harvest/Inventory/crafting/Smith/persistence runtime is claimed.

## Dimensions and coordinates now recorded

Measurement:
`1 world unit = 1 meter`.

World/map axes:
- +X East;
- +Y Up;
- -Z North/outbound wilderness;
- +Z South/inbound settlement.

Major local spaces:
- `space_settlement_01`;
- `space_frontier_01`;
- `space_region_01`.

Settlement 01 selected prototype planning envelope:
`200 m east-west × 260 m north-south`, primary walkable elevation ~0..14 m.

Settlement origin:
Hunter Gate inner `(0,0,0)`.

Key Smith workbench anchor:
`(-22,3,40)`.

Frontier transition:
~80 m centerline from gate to Region handoff.

Region 01:
seven sector-center coordinates now recorded while preserving the canonical topology; connected center distances are ~117–165 m and the deepest center is ~402 m from Region entry.

Four encounter-footprint anchors/envelopes are recorded inside the existing 30–90 m first-slice footprint guidance.

All unbuilt coordinates are `PROTOTYPE TARGETS`, not runtime/phone-verified production measurements.

## Saved visual concept

Google Drive folder `Unnamed Hunt RPG`:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
Drive file ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only; repository mechanics/dimensions/coordinates/runtime evidence outrank the image.

## Exact next bounded action

`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`

This next pass uses the new coordinates to define one physical tracking/evidence route, Monster position/behavior anchors, engagement point, encounter tactical-node plan, escape/reacquisition path and graybox acceptance criteria.

Implementation action when phone becomes available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.