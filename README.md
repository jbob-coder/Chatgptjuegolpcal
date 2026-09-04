# Unnamed Hunt RPG

Status: STAGE 1 PHONE GATE DEFERRED / HUNT-01 PHYSICAL GEOMETRY + BUILD MANIFEST + VALIDATION CONTRACT RECORDED / STATIC MANIFEST VALIDATOR NEXT
Last reconciled: 2026-09-03

New Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

## Main game goal

Playable layers:
1. walkable Settlement 01;
2. aerial Region 01 tracking/exploration;
3. first-person turn-based tactical combat at the same physical world location.

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

Current repository/source/build/device evidence outranks chat memory.

## Where is what

```text
docs/
├── 00_project/   governance/readiness/status snapshots
├── 10_world/     spatial framework/settlements/regions/graybox build data
├── 20_gameplay/  combat/harvest/inventory/crafting/progression
├── 30_content/   hunters/monsters/content packets
├── 40_art/       art/reference/model pipeline
├── 50_technical/ engine/Android/persistence
├── 60_quality/   QA/validation/performance/debug
└── 70_handoff/   bounded-pass continuity
```

Global map: `DOCUMENTATION_INDEX.md`.

Region 01 current build authorities:
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.md`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`;
- `docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION.md`.

## Engine / Android truth

Candidate:
Godot 4.7 family / CI 4.7.2 stable / GDScript / GL Compatibility/OpenGL3 / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated Stage-1 lineage remains successful through workflow `33811355891`.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`
`PRODUCTION_DOMAIN_IMPLEMENTATION = BLOCKED_BY_ENGINE_PHONE_GATE`.

Phone blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

## Recorded game-design/build chain

Recorded at design/build-spec level:
- combat/outcome baseline through Defeat/Retreat;
- Mudcrest Raker anatomy/attacks/Berserk/behavior/escape/harvest;
- Harvest -> Recovery Bundle -> Inventory;
- one Raker-Tendon Grip craft/equip proof;
- physical Settlement 01 Smith service;
- schema-1 Persistence safe-point/anti-replay design;
- shared world dimensions/coordinates;
- first complete Region 01 tracking→encounter→escape/reacquisition proof;
- first Hunt-01 geometry specification/registry;
- engine-neutral Hunt-01 build manifest + JSON + validation contract.

No production combat/world runtime is claimed.

## Current dimensions and coordinates

Measurement:
`1 world unit = 1 meter`.

Axes:
+X East / +Y Up / -Z North-outbound / +Z South-inbound.

Settlement 01:
- 200×260 m prototype envelope;
- Hunter Gate inner `(0,0,0)`;
- Smith workbench `(-22,3,40)`.

Frontier:
~80 m centerline.

Region 01:
seven sector centers, connected spacing ~117–165 m, deepest center ~402 m from entry.

Hunt-01 required route:
- geometry control polyline ~279 m before final ramp smoothing;
- selected navigable target 285–315 m;
- normal sustained grade <=15%; short <=18%; required step <=0.25 m.

River Ford:
- working envelope 58×54 m;
- water 34×18 m at 0.15–0.55 m required depth;
- wallow 16×12 m;
- exit mud 20×12 m.

EF02 Meadow:
- 70×54 m working floor inside existing 76×60 m footprint;
- open core ~48×34 m;
- observation shelf 16×12 m;
- 10 tactical nodes;
- boulder 5×4×3 m;
- tree trunk 1.4 m diameter / root base 4×3 m;
- Charge clear corridor ~48 m × >=9 m;
- Monster pivot clearance 8 m radius.

Build-only observation-ramp control:
`(-74.0,4.62,-237.5)`.

It is explicitly not a gameplay/persistence anchor.

## Machine-readable build manifest

The first Hunt-01 machine manifest records:
- stable proof identities;
- 12 build groups;
- physical build entries;
- 7 evidence placements;
- 10 tactical nodes;
- 14 tactical links;
- Monster/camera/streaming clearances;
- allowed terrain tags;
- validation IDs `H01VAL001..030`.

Manifest static validation is not yet implemented or PASS.

## Saved visual concept

Google Drive folder `Unnamed Hunt RPG`:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
Drive file ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.

Visual intent only.

## Exact next bounded action

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`

Next will implement the engine-independent MANIFEST_STATIC rule subset over the JSON manifest and source-coordinate invariants. It may produce manifest PASS/FAIL evidence only; it cannot claim scene/runtime/phone verification.

Implementation action when phone becomes available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.
