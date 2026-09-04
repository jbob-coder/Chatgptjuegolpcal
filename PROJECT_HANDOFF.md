# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PHONE GATE DEFERRED / HUNT-01 BUILD MANIFEST + VALIDATION CONTRACT RECORDED / STATIC VALIDATOR NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Build the Android monster-hunting tactical RPG one bounded layer at a time while direct Galaxy A03s evidence remains deferred.

The game is primary. Documentation/data/tests exist to preserve ownership, dimensions, coordinates, verification and continuation.

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Production domain implementation:
`BLOCKED_BY_ENGINE_PHONE_GATE`.

Current active non-phone action:
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`.

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/`
9. owning package/README/source/tests.

For the next validator pass additionally read:
- `CONTENT_DATA_GUIDE.md`;
- `CODE_GUIDE.md`;
- `docs/60_quality/README.md`;
- Region 01 build manifest Markdown + JSON + validation specification;
- Hunt-01 geometry/spatial registries.

## Project identity

New Android-targeted monster-hunting tactical RPG. WorldLife is abandoned.

Playable direction:
walkable Settlement 01 -> frontier -> aerial Region tracking -> first-person tactical encounter at the same world position -> anatomy damage/escape/death -> harvest -> Inventory -> physical Smith -> refinement -> persistence -> next hunt.

## Engine/device truth

Candidate:
Godot 4.7 family / CI 4.7.2 stable / GDScript / GL Compatibility / Galaxy A03s / stable 30 FPS representative-scene minimum.

Automated Stage-1 lineage remains successful through workflow `33811355891`.

`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`.

## Recorded design/build chain

Recorded through:
- combat/outcome baseline;
- Monster 01;
- Harvest;
- Inventory;
- one craft/equip proof;
- physical Settlement 01 Smith;
- Persistence;
- shared dimensions/coordinates;
- Hunt-01 tracking→encounter→escape/reacquisition integration;
- Hunt-01 primitive graybox geometry specification/registry;
- Hunt-01 engine-neutral build manifest + machine JSON + validation contract.

No production gameplay/world runtime is claimed.

## Current Hunt-01 authorities

Spatial:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

Geometry rules:
`docs/10_world/regions/REGION_01/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`.

Geometry registry:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`.

Build manifest:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.md`.

Machine projection:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`.

Validation rules:
`docs/10_world/regions/REGION_01/FIRST_SLICE_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION.md`.

Latest handoff:
`docs/70_handoff/FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_VALIDATION_PASS_2026-09-03.md`.

## Current physical proof

Scenario:
`R01_HUNT01_M01_TRACK_TO_MEADOW`.

Stable Monster:
`monster_r01_m01_0001`.

Encounter:
`enc_r01_ef02_m01_0001`.

Physical chain:
`S00 -> S01 River Ford -> S03 Feeding Meadow -> EF02 -> escape via S03→S05 -> same-Monster reacquisition`.

Selected build geometry includes:
- required navigable route target 285–315 m;
- 58×54 m Ford basin;
- 34×18 m water patch, required depth 0.15–0.55 m;
- 16×12 m wallow;
- 20×12 m exit mud;
- S01→S03 Raker corridor >=9 m;
- EF02 70×54 m working floor;
- 10 tactical nodes / 14 legal links;
- boulder 5×4×3 m;
- scarred tree trunk 1.4 m diameter + 4×3 m root base;
- Charge corridor ~48 m × >=9 m;
- pivot radius 8 m;
- escape corridor >=9 m;
- camera/streaming debug volumes.

New build-only observation-ramp midpoint:
`(-74.0,4.62,-237.5)`.

It is not gameplay/persistence authority.

## Manifest / validation status

Manifest contains:
- 12 logical build groups;
- physical entries;
- 7 evidence placements;
- 10 nodes;
- 14 links;
- Monster/camera/streaming clearances;
- terrain tag allowlist;
- rule IDs `H01VAL001..030`.

Validation layers:
`MANIFEST_STATIC -> SCENE_STATIC_FUTURE -> RUNTIME_FUTURE -> PHONE_FUTURE`.

Current truth:
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION_RECORDED = YES`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VALIDATOR_IMPLEMENTED = NO`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = NO`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION01_HUNT01_RUNTIME_VERIFIED = NO`.

## Exact next game-development piece

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`.

Purpose:
create an engine-independent validator over the JSON manifest/source coordinate invariants and execute the MANIFEST_STATIC rule subset.

Minimum required rules:
`H01VAL001,002,003,004,012,013,014,021,024,025,026,027,030`.

The validator must report calculated node-link distances, manifest counts, ramp path/grade facts and explicit PASS/FAIL without pretending scene/runtime/device checks ran.

## Saved visual concept

Google Drive:
`Unnamed Hunt RPG - Finished Game Visual Concept 2026-09-03.png`
ID `1JSCDYW8A1JvW9Xht535uvcnRFbru44_U`.
Visual intent only.

`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`.
