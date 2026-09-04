# REGION_01 — First Hunting Region

Status: DESIGNED AT DOCUMENTATION LEVEL / PROTOTYPE COORDINATES + HUNT-01 TRACKING→ENCOUNTER INTEGRATION RECORDED / GRAYBOX RUNTIME NOT STARTED
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

- `REGION_TOPOLOGY.md` — canonical sector graph/routes/roles;
- `TRACKING_AND_ESCAPE.md` — evidence classes, persistent Monster movement, escape/reacquisition;
- `TERRAIN_ECOLOGY_MUTATION.md` — terrain/ecology/mutation application;
- `ENCOUNTER_FOOTPRINTS.md` — real-terrain tactical footprint rules;
- `STREAMING_AND_PERFORMANCE.md` — bounded Ring 0/1/2 streaming/simulation;
- `VISUAL_REFERENCE_PLAN.md` — environment reference needs;
- `ACCEPTANCE_CHECKLIST.md` — documentation/graybox/tracking/encounter/streaming/phone gates;
- `FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT.md` — first full physical pursuit/engagement/escape proof;
- `FIRST_SLICE_HUNT01_SPATIAL_LAYOUT_REGISTRY.md` — concrete Hunt-01 evidence/Monster/tactical-node/cover/checkpoint coordinates.

Shared major spatial owner:
`/docs/10_world/spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`.

Major coordinate registry:
`/docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

## Current Region coordinate baseline

Space:
`space_region_01`.

Origin:
`anchor_r01_entry = (0,0,0) m`.

Sector centers:
S00 `(0,0,-35)`; S01 `(-90,-3,-130)`; S02 `(75,2,-135)`; S03 `(-35,4,-245)`; S04 `(-45,22,-365)`; S05 `(80,-4,-265)`; S06 `(70,18,-395)`.

Canonical connected center distances are ~117–165 m. Deepest center is ~402 m from entry.

Encounter footprint centers/envelopes remain recorded in the shared registry.

## Hunt-01 integrated proof

Scenario:
`R01_HUNT01_M01_TRACK_TO_MEADOW`.

Stable Monster:
`monster_r01_m01_0001`.

Encounter:
`enc_r01_ef02_m01_0001`.

Physical chain:
`S00 -> S01 -> S03 -> R01_EF02 -> Monster escape via S03->S05 -> reacquisition`.

Recorded:
- seven evidence anchors;
- two meaningful route-choice moments;
- Monster activity/movement anchors;
- Meadow observation/engagement anchors;
- 10 EF02 tactical nodes;
- physical boulder/tree cover;
- Monster Charge/pivot/body-clearance targets;
- east escape boundary + S05 reacquisition coordinates;
- six Persistence checkpoint applications.

The player does not receive exact Monster GPS from these authoring coordinates.

## Key first encounter dimensions

Initial Hunter node:
`R01_EF02_N01 = (-70,4,-238)`.

Initial Monster anchor:
`R01_EF02_MA01 = (-18,4,-252)`.

Initial geometric separation:
~54 m.

Tactical links:
~14.0–18.5 m straight planning distances.

Physical cover:
- west boulder ~5×4×3 m;
- scarred tree/root mass.

Clearance targets:
- west Charge lane ~48 m long × ~9 m wide;
- initial Monster pivot-clearance radius ~8 m;
- ~12 m local body-force clearance.

All are `PROTOTYPE TARGETS`, not runtime/final attack-range facts.

## Core Region laws

- ordinary sector boundaries remain physically continuous whenever technically possible;
- sector IDs are streaming/simulation identities, not visible boxed arenas;
- no hidden teleport between canonical links;
- same Monster instance survives streaming/encounter transitions;
- tracking uses evidence rather than exact GPS;
- combat footprints consume real local terrain/cover/elevation;
- Ring-0/neighbor/logical fidelity remains bounded for Android;
- no phone/performance PASS until direct target-device evidence exists.

## Verification state

`REGION_01_DESIGNED = YES / DOCUMENTATION LEVEL`
`REGION_01_COORDINATE_TARGETS_RECORDED = YES`
`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_INTEGRATION_RECORDED = YES`
`REGION01_HUNT01_TACTICAL_NODES_RECORDED = YES`
`REGION01_HUNT01_GRAYBOX_IMPLEMENTED = NO`
`REGION_01_RUNTIME_IMPLEMENTED = NO`
`REGION_01_PHONE_RUNTIME_VERIFIED = NO`
`REGION_01_PERFORMANCE_VERIFIED = NO`.

## Exact next package dependency

`FIRST_SLICE_REGION01_HUNT01_GRAYBOX_GEOMETRY_SPECIFICATION`

That pass should translate only this recorded Hunt-01 path into primitive blockout geometry dimensions/grades/volumes suitable for later engine graybox implementation.