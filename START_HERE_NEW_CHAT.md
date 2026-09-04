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

## Engine truth

Candidate:
Godot 4.7 family / CI 4.7.2 / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Current owner map

Shared spatial:
`docs/10_world/spatial/README.md`.

Settlement 01:
`docs/10_world/settlements/SETTLEMENT_01/README.md`.

Region 01:
`docs/10_world/regions/REGION_01/README.md`.

Current Hunt-01 integration:
- `docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

Combat/Harvest/Inventory/Crafting:
`docs/20_gameplay/` package front doors.

Monster 01:
`docs/30_content/monsters/MONSTER_01/README.md`.

Persistence:
`docs/50_technical/persistence/README.md`.

## Shared spatial baseline

`1 world unit = 1 meter`.

Axes:
+X East / +Y Up / -Z North-outbound / +Z South-inbound.

Settlement:
200×260 m prototype envelope; Hunter Gate origin `(0,0,0)`; Smith workbench `(-22,3,40)`.

Frontier:
~80 m.

Region:
seven sector centers; canonical linked spacing ~117–165 m; deepest center ~402 m from entry.

## Hunt-01 physical proof

Scenario:
`R01_HUNT01_M01_TRACK_TO_MEADOW`.

Stable Monster:
`monster_r01_m01_0001`.

Encounter:
`enc_r01_ef02_m01_0001`.

Path:
`S00 -> S01 -> S03 -> EF02 -> escape via S03→S05 -> reacquisition`.

Recorded:
- 7 evidence anchors;
- ~253 m intended clue-chain straight cumulative planning distance;
- future actual route target ~260–340 m;
- observation `(-72,5,-236)`;
- N01 entry `(-70,4,-238)`;
- Monster MA01 `(-18,4,-252)`;
- ~54 m initial separation;
- 10 tactical nodes;
- links ~14.0–18.5 m;
- west boulder ~5×4×3 m;
- scarred tree/root cover;
- Charge lane ~48×9 m clearance target;
- pivot-clearance ~8 m radius;
- escape boundary `(-8,4,-258)`;
- same-Monster S05 staging `(58,-3,-268)`.

All are prototype graybox-authoring targets. No runtime/phone verification is implied.

## Exact continuation

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION`.

Read the Hunt-01 integration contract/registry first, then Region topology/tracking/terrain/encounter/streaming/acceptance, Monster 01 anatomy/attacks, shared spatial framework and Persistence.

The next pass must convert only S00→S01→S03 + EF02 into build-ready primitive blockout dimensions/grades/volumes. Do not expand to final art or all seven sectors.

## Saved finished-game concept

Google Drive:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.
Visual intent only.

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.