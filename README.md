# Unnamed Hunt RPG

Status: STAGE 1 PHONE GATE DEFERRED / FIRST-SLICE PHYSICAL HUNT-01 TRACKING→ENCOUNTER INTEGRATION RECORDED / HUNT-01 GRAYBOX GEOMETRY SPECIFICATION NEXT
Last reconciled: 2026-09-03

New Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main game goal

Playable layers:
1. walkable Settlement 01;
2. aerial Region 01 tracking/exploration;
3. first-person turn-based tactical combat at the same physical encounter.

Core loop:
`PREPARE -> SETTLEMENT -> GATE -> REGION -> TRACK -> OBSERVE -> ENGAGE -> TARGET ANATOMY -> BREAK/SEVER -> ESCAPE/DEFEAT -> REACQUIRE/HARVEST -> INVENTORY -> RETURN -> PHYSICAL SMITH -> CRAFT/EQUIP -> SAVE/RELOAD -> NEXT HUNT`.

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
├── 10_world/     spatial framework/settlements/regions/physical hunt layout
├── 20_gameplay/  combat/harvest/inventory/crafting/progression
├── 30_content/   hunters/monsters/content packets
├── 40_art/       art/reference/model pipeline
├── 50_technical/ engine/Android/persistence
├── 60_quality/   QA/performance/testing
└── 70_handoff/   bounded-pass continuity
```

Global map: `DOCUMENTATION_INDEX.md`.

Shared spatial front door:
`docs/10_world/spatial/README.md`.

Major coordinate registry:
`docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Region 01 front door:
`docs/10_world/regions/REGION_01/README.md`.

Current physical Hunt-01 integration:
- `docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

Settlement 01:
`docs/10_world/settlements/SETTLEMENT_01/README.md`.

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

## Recorded game-design chain

Recorded:
- combat/outcome baseline through Defeat/Retreat;
- Mudcrest Raker anatomy/attacks/Berserk/behavior/escape/harvest;
- Harvest -> Recovery Bundle -> Inventory;
- one Raker-Tendon Grip craft/equip proof;
- physical Settlement 01 Smith service;
- schema-1 Persistence safe-point/anti-replay design;
- shared world dimensions/coordinates;
- first complete physical Region 01 tracking→encounter→escape/reacquisition proof.

No production combat/harvest/Inventory/crafting/Smith/persistence/world runtime is claimed.

## Current dimensions and coordinates

Measurement:
`1 world unit = 1 meter`.

World/map axes:
+X East / +Y Up / -Z North-outbound / +Z South-inbound.

Major spaces:
`space_settlement_01`, `space_frontier_01`, `space_region_01`.

Settlement 01 prototype:
- `200 × 260 m` planning envelope;
- Hunter Gate inner origin `(0,0,0)`;
- Smith workbench `(-22,3,40)`.

Frontier:
~80 m centerline.

Region 01:
- seven sector centers preserving canonical topology;
- connected center spacing ~117–165 m;
- deepest center ~402 m from entry.

Monster 01 prototype:
~6.6 m long / ~3.0 m shoulder-body height.

Hunter Base 01:
1.75 m tall `LOCKED/CURRENT`.

## First physical Hunt-01 proof now recorded

Scenario:
`R01_HUNT01_M01_TRACK_TO_MEADOW`.

Path:
`S00 -> S01 River Ford -> S03 Feeding Meadow -> R01_EF02 -> Monster escape toward S05 -> reacquisition`.

Stable Monster:
`monster_r01_m01_0001`.

Encounter:
`enc_r01_ef02_m01_0001`.

Seven evidence anchors are recorded. The intended pre-engagement anchor chain is ~253 m straight-line cumulative planning distance; future actual graybox route target is ~260–340 m.

EF02 now has:
- 10 concrete tactical nodes;
- legal links ~14.0–18.5 m apart;
- west boulder cover ~5×4×3 m;
- scarred tree/root cover;
- initial Monster anchor `(-18,4,-252)`;
- initial Hunter node `(-70,4,-238)`;
- initial range ~54 m;
- prototype Charge-lane clearance ~48 m long × ~9 m wide;
- Monster pivot-clearance target ~8 m radius;
- escape/reacquisition coordinates toward canonical S03→S05 route.

These are `PROTOTYPE TARGETS`, not production/runtime/phone-verified values.

## Saved visual concept

Google Drive folder `Unnamed Hunt RPG`:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
Drive file ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only; repository mechanics/dimensions/coordinates/runtime evidence outrank the image.

## Exact next bounded action

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION`

Next will convert only the recorded S00→S01→S03 + EF02 proof into build-ready primitive geometry dimensions: route widths/grades, terrain patch sizes, evidence marker volumes, cover primitives, Monster-clearance volumes, camera-clearance markers and streaming-boundary proxies.

Implementation action when phone becomes available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.