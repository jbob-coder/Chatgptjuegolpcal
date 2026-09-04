# 50_technical/persistence — First-Slice Persistence Authority

Status: ACTIVE FIRST-SLICE DESIGN PACKAGE / PERSISTENCE BASELINE RECORDED / SPATIAL OWNER LINKED / NO IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own the smallest save/reload contract required to preserve one complete vertical-slice hunt loop without turning presentation state, transaction callbacks or re-created content into gameplay truth.

Primary law:
**A reload restores one previously committed authoritative snapshot. It never reruns already committed domain consequences to reconstruct that snapshot.**

## Local authorities

- `README.md` — this package front door.
- `FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT.md` — schema/snapshot/safe-point/active-encounter/transaction continuity authority.

## Selected first-slice model

- `UHR_SAVE_SCHEMA_1`, version 1;
- prototype slot `save_slot_01`;
- monotonically increasing committed snapshot generation;
- state snapshot, not event sourcing;
- persistence-safe boundary required for new commit;
- active combat save allowed at stable decision/reaction points;
- exact scheduler/transaction identity survives reload;
- same Monster/carcass/source/bundle/item identities survive reload;
- presentation/UI/animation is reconstructed from domain truth;
- incomplete new generation cannot invalidate last committed generation.

## Spatial owner linkage

Shared world-coordinate owner:
`/docs/10_world/spatial/FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT.md`.

Concrete registry:
`/docs/10_world/spatial/FIRST_SLICE_SPATIAL_COORDINATE_REGISTRY.md`.

Persistence stores:
- stable `spatial_context_id`;
- sector/local-area ID;
- local `(x,y,z)` in meters;
- orientation/heading;
- stable transition/service/escape anchor references where required.

Selected spaces currently include:
- `space_settlement_01`;
- `space_frontier_01`;
- `space_region_01`.

Persistence consumes those spatial IDs/coordinates. It does not redefine them.

## Verification boundary

`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_RECORDED = YES`
`PERSISTENCE_RUNTIME_IMPLEMENTED = NO`
`PERSISTENCE_RUNTIME_VERIFIED = NO`.

## Exact downstream dependency

Current project next action:
`FIRST_SLICE_REGION01_TRACKING_TO_ENCOUNTER_GRAYBOX_INTEGRATION_CONTRACT`.

That pass should consume the new spatial registry; Persistence remains a supporting owner for saved pursuit/encounter locations.