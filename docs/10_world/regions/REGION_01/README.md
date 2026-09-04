# REGION_01 — First Hunting Region

Status: DESIGNED AT DOCUMENTATION LEVEL / PROTOTYPE COORDINATES RECORDED / GRAYBOX NOT STARTED
Last reconciled: 2026-09-03

Technical package ID: `REGION_01`
Final display name: OPEN.
Working biome: temperate river-and-root forest basin with feeding meadow, rocky elevation, deepwood and crystal-influenced nesting shelf.

## Purpose

Own the first continuous hunting region beyond Settlement 01 while applying shared world, combat, terrain, persistence and spatial authorities without redefining them.

## Canonical sector set

- `R01_S00` Frontier Trailhead / Field Camp;
- `R01_S01` River Ford / Mud Flats;
- `R01_S02` Rootwood Thicket;
- `R01_S03` Feeding Meadow;
- `R01_S04` Rocky Rise;
- `R01_S05` Deepwood Basin;
- `R01_S06` Nesting Shelf / Crystal Fault.

Canonical adjacency is owned by `REGION_TOPOLOGY.md` and remains unchanged.

## Package file map

- `README.md` — this local front door;
- `REGION_TOPOLOGY.md` — canonical sector graph/routes/roles;
- `TRACKING_AND_ESCAPE.md` — evidence, persistent Monster movement, escape/reacquisition;
- `TERRAIN_ECOLOGY_MUTATION.md` — terrain/ecology/mutation application;
- `ENCOUNTER_FOOTPRINTS.md` — real-terrain tactical footprint requirements;
- `STREAMING_AND_PERFORMANCE.md` — Ring 0/1/2 streaming/simulation targets;
- `VISUAL_REFERENCE_PLAN.md` — environment reference needs;
- `ACCEPTANCE_CHECKLIST.md` — documentation/graybox/tracking/encounter/streaming/phone gates.

Shared spatial owner:
`/docs/10_world/spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`.

Concrete coordinate registry:
`/docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

## Current coordinate application

Space:
`space_region_01`.

Origin:
`anchor_r01_entry = (0,0,0) m`.

Prototype sector centers:
- S00 `(0,0,-35)`;
- S01 `(-90,-3,-130)`;
- S02 `(75,2,-135)`;
- S03 `(-35,4,-245)`;
- S04 `(-45,22,-365)`;
- S05 `(80,-4,-265)`;
- S06 `(70,18,-395)`.

Canonical connected center distances are approximately 117–165 m. Deepest-sector center is approximately 402 m from entry.

These are graybox planning coordinates, not visible square sector boundaries or runtime-verified positions.

## Encounter footprint anchors

- `R01_EF01` Riverbank Ford: `(-92,-4,-145)`, 52×46 m envelope;
- `R01_EF02` Meadow Edge: `(-45,4,-250)`, 76×60 m;
- `R01_EF03` Root/Boulder Hollow: `(43,0,-205)`, 58×52 m;
- `R01_EF04` Deep Nest Shelf: `(70,19,-405)`, 68×56 m.

Exact tactical nodes remain unselected until the tracking-to-encounter graybox integration pass.

## Core region laws

- ordinary sector boundaries remain physically continuous whenever technically possible;
- sector IDs are streaming/simulation identities, not player-visible boxed arenas;
- no hidden teleport between canonical links;
- same persistent Monster instance survives sector/encounter transitions;
- tracking uses physical evidence rather than exact GPS;
- combat footprints consume actual local terrain/cover/elevation;
- Ring-0/neighbor/logical fidelity remains bounded for Android;
- no phone/performance PASS until target-device evidence exists.

## Verification state

`REGION_01_DESIGNED = YES / DOCUMENTATION LEVEL`
`REGION_01_COORDINATE_TARGETS_RECORDED = YES`
`REGION_01_GRAYBOX = NOT STARTED`
`REGION_01_RUNTIME_IMPLEMENTED = NO`
`REGION_01_PHONE_RUNTIME_VERIFIED = NO`
`REGION_01_PERFORMANCE_VERIFIED = NO`.

## Exact next package dependency

`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`

That pass should consume the coordinate registry and define one representative pursuit from S00 through evidence/route choice to engagement, Monster escape/reacquisition and encounter-footprint node planning.