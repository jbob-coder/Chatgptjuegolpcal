# Unnamed Hunt RPG

Status: STAGE 1 PHONE GATE DEFERRED / HUNT-01 TRACKING→ENCOUNTER + GRAYBOX GEOMETRY SPECIFICATIONS RECORDED / BUILD MANIFEST + VALIDATION SPECIFICATION NEXT
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

Current repository/source/build/device evidence outranks old chat memory.

## Where is what

```text
docs/
├── 00_project/   governance/readiness/status snapshots
├── 10_world/     spatial framework/settlements/regions/physical hunt geometry
├── 20_gameplay/  combat/harvest/inventory/crafting/progression
├── 30_content/   hunters/monsters/content packets
├── 40_art/       art/reference/model pipeline
├── 50_technical/ engine/Android/persistence
├── 60_quality/   QA/performance/testing
└── 70_handoff/   bounded-pass continuity
```

Global map:
`DOCUMENTATION_INDEX.md`.

Saved project status report:
`docs/00_project/PROJECT_STATUS_REPORT_2026-09-03.md`.

That report is a dated snapshot. `EVOLVE_ALIGNMENT.md` remains the live current-action authority.

Shared spatial front door:
`docs/10_world/spatial/README.md`.

Major coordinate registry:
`docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Region 01 front door:
`docs/10_world/regions/REGION_01/README.md`.

Current Hunt-01 authorities:
- `docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`.

Settlement 01:
`docs/10_world/settlements/SETTLEMENT_01/README.md`.

Persistence:
`docs/50_technical/persistence/README.md`.

## Engine / Android truth

Candidate:
Godot 4.7 family / CI 4.7.2 stable / GDScript / GL Compatibility/OpenGL3 / Galaxy A03s / stable 30 FPS representative-scene minimum.

Workflow `33811355891`: SUCCESS for automated Stage-1 lineage.

Verified automated evidence includes:
154/154 static; 8/8 Monster collision; 12/12 boundary; 17/17 view continuity; 47/47 lifecycle; 20/20 performance telemetry; Godot parse/smoke PASS; Android export/APK integrity/artifact upload PASS.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation distinction:
- bounded Stage-1 probe/design work is authorized;
- production domain implementation remains blocked by the unresolved engine-phone gate.

## Recorded game-design chain

Recorded:
- combat/outcome baseline through Defeat/Retreat;
- Mudcrest Raker anatomy/attacks/Berserk/behavior/escape/harvest;
- Harvest -> Recovery Bundle -> Inventory;
- one Raker-Tendon Grip craft/equip proof;
- physical Settlement 01 Smith service;
- schema-1 Persistence safe-point/anti-replay design;
- shared world dimensions/coordinates;
- first complete physical Region 01 tracking→encounter→escape/reacquisition proof;
- first Hunt-01 primitive graybox geometry specification.

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

Hunter Base 01:
1.75 m tall `LOCKED/CURRENT`.

Monster 01:
~6.6 m long / ~3.0 m shoulder-body height prototype.

## Hunt-01 physical proof

Scenario:
`R01_HUNT01_M01_TRACK_TO_MEADOW`.

Path:
`S00 -> S01 River Ford -> S03 Feeding Meadow -> R01_EF02 -> Monster escape toward S05 -> reacquisition`.

Stable Monster:
`monster_r01_m01_0001`.

Encounter:
`enc_r01_ef02_m01_0001`.

Recorded spatial integration:
- 7 evidence anchors;
- 10 EF02 tactical nodes;
- physical boulder/tree cover;
- Monster Charge/pivot/body-force clearances;
- east escape/S05 reacquisition anchors;
- six Persistence checkpoint applications.

## Hunt-01 graybox geometry now specified

Selected build targets:
- smoothed required S00->N01 route `285–315 m`;
- normal sustained required-route grade `<=15%`;
- short transition `<=18%`;
- required step/ledge `<=0.25 m`;
- primary S00->S01 route >=7 m / required Raker corridor >=9 m;
- Monster-route overhead >=4.5 m;
- S01 ford working envelope `58×54 m`;
- shallow-water patch `34×18 m`, required depth `0.15–0.55 m`;
- wallow mud `16×12 m`;
- exit mud `20×12 m`;
- S01->S03 hunter corridor >=6 m / Raker corridor >=9 m;
- EF02 Meadow working floor `70×54 m`;
- observation shelf `16×12 m`;
- observation->N01 curved ramp `6–7 m` long / >=3.5 m wide;
- tactical-node link corridors >=3.5 m;
- boulder `5×4×3 m`;
- scarred-tree trunk `1.4 m` diameter + `4×3 m` root base;
- Charge lane ~48 m long / >=9 m solid-free width;
- pivot clear radius 8 m;
- escape/S05 staging corridor >=9 m;
- camera descent/sight debug volumes;
- three streaming/grace debug proxy volumes.

These remain `PROTOTYPE BUILD TARGETS`, not runtime/phone verification or final collider/range laws.

## Saved visual concept

Google Drive folder `Unnamed Hunt RPG`:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
Drive file ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only; repository mechanics/dimensions/coordinates/runtime evidence outrank the image.

## Exact next bounded action

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`

Next will translate the now-dimensioned Hunt-01 geometry IDs into an engine-neutral build/scene manifest and explicit validation-data/test ownership. It must not create final art or claim production runtime/phone verification while the engine-phone/domain gate remains unresolved.

Implementation action when phone becomes available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.
