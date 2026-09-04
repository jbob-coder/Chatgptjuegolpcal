# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Working name:
`Unnamed Hunt RPG`.

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

`IMPLEMENTATION_AUTHORIZED = YES` for current Stage-1 probe/bounded work.

Production domain implementation remains blocked by the engine-phone gate.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Current owner map

Project status snapshot:
`docs/00_project/PROJECT_STATUS_REPORT_2026-09-03.md`.

Use it for review only; EVOLVE remains the live current-action authority.

Shared spatial:
`docs/10_world/spatial/README.md`.

Settlement 01:
`docs/10_world/settlements/SETTLEMENT_01/README.md`.

Region 01:
`docs/10_world/regions/REGION_01/README.md`.

Current Hunt-01 integration:
- `docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

Current Hunt-01 geometry:
- `docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`.

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

Hunter:
1.75 m `LOCKED/CURRENT`.

Monster:
~6.6 m long / ~3.0 m shoulder-body prototype.

## Hunt-01 physical proof

Scenario:
`R01_HUNT01_M01_TRACK_TO_MEADOW`.

Stable Monster:
`monster_r01_m01_0001`.

Encounter:
`enc_r01_ef02_m01_0001`.

Path:
`S00 -> S01 -> S03 -> EF02 -> escape via S03->S05 -> reacquisition`.

Recorded integration:
- 7 evidence anchors;
- 10 tactical nodes;
- boulder/tree cover;
- Charge/pivot/body-force clearances;
- escape/reacquisition positions;
- six Persistence checkpoints.

## Hunt-01 geometry proof

Current prototype build targets include:
- smoothed required route 285–315 m;
- sustained required-route grade <=15%; short <=18%; step <=0.25 m;
- S00->S01 route >=7 m and required Raker corridor >=9 m;
- S01 shallow-water patch 34×18 m at 0.15–0.55 m required depth;
- wallow mud 16×12 m;
- exit mud 20×12 m;
- S01->S03 Raker corridor >=9 m;
- EF02 meadow working floor 70×54 m;
- observation shelf 16×12 m;
- observation->N01 ramp 6–7 m / >=3.5 m wide;
- node-link corridors >=3.5 m;
- boulder 5×4×3 m;
- tree trunk 1.4 m diameter + 4×3 m root base;
- Charge lane ~48 m / >=9 m clear;
- Monster pivot radius 8 m;
- escape corridor >=9 m;
- camera + streaming debug volumes.

These are prototype geometry targets only. No runtime/phone verification is implied.

## Exact continuation

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_AND_VALIDATION_SPECIFICATION`.

Read the geometry specification/registry first, then the current integration/spatial/Region/engine-gate authorities.

The next pass must map only this Hunt-01 geometry into a build/scene manifest and validation-data/test ownership. Do not expand to final art/all seven sectors or claim production runtime verification.

## Saved finished-game concept

Google Drive:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.
Visual intent only.

Implementation action when phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.
