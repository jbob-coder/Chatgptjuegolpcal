# REGION_01 — First Hunting Region

Status: DOCUMENTATION/BUILD-SPEC DESIGNED / HUNT-01 COORDINATES + GEOMETRY + BUILD MANIFEST RECORDED / ENGINE GRAYBOX NOT STARTED
Last reconciled: 2026-09-03

Technical package ID: `REGION_01`
Final display name: OPEN.
Working biome: temperate river-and-root forest basin with feeding meadow, rocky elevation, deepwood and crystal-influenced nesting shelf.

## Purpose

Own the first continuous hunting Region beyond Settlement 01 while applying shared world/combat/terrain/persistence/spatial authorities without redefining them.

## Canonical sector set

- `R01_S00` Frontier Trailhead / Field Camp;
- `R01_S01` River Ford / Mud Flats;
- `R01_S02` Rootwood Thicket;
- `R01_S03` Feeding Meadow;
- `R01_S04` Rocky Rise;
- `R01_S05` Deepwood Basin;
- `R01_S06` Nesting Shelf / Crystal Fault.

Canonical adjacency remains owned by `REGION_TOPOLOGY.md` and is unchanged.

## Package file map

Reusable Region owners:
- `REGION_TOPOLOGY.md` — sector graph/routes;
- `TRACKING_AND_ESCAPE.md` — evidence/persistent Monster escape/reacquisition;
- `TERRAIN_ECOLOGY_MUTATION.md` — terrain/ecology application;
- `ENCOUNTER_FOOTPRINTS.md` — real-terrain tactical footprint rules;
- `STREAMING_AND_PERFORMANCE.md` — bounded fidelity/streaming;
- `ACCEPTANCE_CHECKLIST.md` — promotion gates.

Hunt-01 integration:
- `FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md`;
- `FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md`.

Hunt-01 geometry:
- `FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION.md`;
- `FIRST_SLICE_HUNT01_GRAYBOX_GEOMETRY_REGISTRY.md`.

Hunt-01 build/validation:
- `FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.md`;
- `FIRST_SLICE_HUNT01_GRAYBOX_BUILD_MANIFEST.json`;
- `FIRST_SLICE_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION.md`.

Shared major spatial owner:
`/docs/10_world/spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`.

## Current Region coordinate baseline

Space:
`space_region_01`.

Origin:
`anchor_r01_entry = (0,0,0) m`.

Sector centers:
S00 `(0,0,-35)`; S01 `(-90,-3,-130)`; S02 `(75,2,-135)`; S03 `(-35,4,-245)`; S04 `(-45,22,-365)`; S05 `(80,-4,-265)`; S06 `(70,18,-395)`.

Canonical connected center distances are ~117–165 m. Deepest center is ~402 m from entry.

## Hunt-01 physical proof

Scenario:
`R01_HUNT01_M01_TRACK_TO_MEADOW`.

Stable Monster:
`monster_r01_m01_0001`.

Encounter:
`enc_r01_ef02_m01_0001`.

Physical chain:
`S00 -> S01 -> S03 -> R01_EF02 -> Monster escape via S03->S05 -> same-Monster reacquisition`.

## Current blockout dimensions

Required S00→N01 navigable route:
`285–315 m` target.

General route comfort:
- sustained <=15%;
- short <=18%;
- required step <=0.25 m.

River Ford tracking micro-zone:
- basin 58×54 m;
- water 34×18 m;
- required depth 0.15–0.55 m;
- wallow 16×12 m;
- exit mud 20×12 m.

S01→S03:
- ~58 m / ~7 m rise reference;
- Hunter width >=6 m;
- Raker width >=9 m;
- bend 10–11 m;
- overhead >=4.5 m.

EF02:
- 70×54 m working floor inside 76×60 m footprint;
- 10 tactical nodes / 14 links;
- boulder 5×4×3 m;
- scarred tree 1.4 m trunk diameter / 4×3 m root base;
- Charge lane ~48 m × >=9 m clear;
- Monster pivot radius 8 m;
- body-force reference 24×24 m;
- camera/streaming DEBUG volumes.

Observation-ramp build-only midpoint:
`(-74.0,4.62,-237.5)`.

Not a gameplay/persistence anchor.

## Build manifest

Engine-neutral logical root:
`gb_h01_root`.

Physical groups:
S00, S00→S01, S01, S01→S03, EF02, escape stub.

DEBUG groups:
evidence, nodes, Monster clearance, camera clearance, stream proxies.

Machine manifest contains stable proof IDs, geometry classifications, collision/navigation intent, terrain tags, coordinate/dimension values, 7 evidence placements, 10 nodes, 14 links and rule IDs `H01VAL001..030`.

## Validation state

Validation levels:
`MANIFEST_STATIC -> SCENE_STATIC_FUTURE -> RUNTIME_FUTURE -> PHONE_FUTURE`.

Current:
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_BUILD_MANIFEST_RECORDED = YES`
`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_VALIDATION_SPECIFICATION_RECORDED = YES`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VALIDATOR_IMPLEMENTED = NO`
`HUNT01_GRAYBOX_MANIFEST_STATIC_VERIFIED = NO`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION_01_RUNTIME_IMPLEMENTED = NO`
`REGION_01_PHONE_RUNTIME_VERIFIED = NO`
`REGION_01_PERFORMANCE_VERIFIED = NO`.

## Core Region laws

- sector boundaries remain physically continuous whenever technically possible;
- sector IDs are streaming/simulation identities, not visible boxed arenas;
- same Monster instance survives streaming/encounter transitions;
- tracking uses evidence rather than exact GPS;
- combat footprints consume real local terrain/cover/elevation;
- debug volumes never become gameplay walls/state owners;
- Ring-0/neighbor/logical fidelity remains bounded for Android;
- no phone/performance PASS until direct target-device evidence exists.

## Exact next package dependency

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_STATIC_VALIDATOR_IMPLEMENTATION`.

That pass should implement only engine-independent MANIFEST_STATIC validation over the JSON/current coordinate owners before any engine graybox is built.
