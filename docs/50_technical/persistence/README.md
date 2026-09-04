# 50_technical/persistence — First-Slice Persistence Authority

Status: ACTIVE FIRST-SLICE DESIGN PACKAGE / NO PERSISTENCE IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own the smallest save/reload contract required to preserve one complete vertical-slice hunt loop without turning presentation state, transaction callbacks or re-created content into gameplay truth.

Primary law:

**A reload restores one previously committed authoritative snapshot. It never reruns already committed domain consequences to reconstruct that snapshot.**

## Local authorities

- `README.md` — this package front door.
- `FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_CONTRACT.md` — first-slice save-slot, snapshot, active-encounter, transaction, validation and reconstruction contract.

## Upstream authorities consumed

- `/SYSTEM_ARCHITECTURE_BLUEPRINT.md` — authoritative model/persistence separation and schema-1 direction.
- `/docs/20_gameplay/combat/INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md` — scheduler continuity.
- `/docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md` — encounter/hunt terminal continuity.
- `/docs/10_world/regions/REGION_01/TRACKING_AND_ESCAPE.md` — persistent Monster/evidence/route continuity.
- `/docs/30_content/monsters/MONSTER_01/` — anatomy, Crystal, Berserk and behavior state.
- `/docs/20_gameplay/harvest/` — source lineage/depletion transactions.
- `/docs/20_gameplay/inventory/` — container/provenance/transfer ledgers.
- `/docs/20_gameplay/crafting/` — craft transaction/refinement anti-replay.
- `/docs/10_world/settlements/SETTLEMENT_01/` — Smith service/re-entry state.

## First-slice selected model

- one prototype player save slot;
- schema marker `UHR_SAVE_SCHEMA_1` / version `1`;
- monotonically increasing committed snapshot generation;
- snapshot only at an authoritative persistence-safe boundary;
- active combat may be saved at stable decision/reaction boundaries with exact scheduler state;
- unresolved domain mutation/transaction is never serialized as an ambiguous half-result;
- presentation/UI/animation state is disposable and reconstructed from domain truth;
- stable transaction IDs and sequence counters survive reload;
- same Monster/carcass/source/bundle/item identities survive reload;
- atomic write/replace semantics are required where the eventual platform supports them;
- last fully committed snapshot remains authoritative if a newer write never commits.

## Spatial persistence interface

World position is stored through:
- stable spatial-context/area ID;
- stable sector/anchor references where applicable;
- position in meters;
- orientation/heading;
- transition/source context where needed.

`WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md` already establishes the preferred `1 world unit = 1 meter` convention.

Exact Settlement 01 and Region 01 coordinate origins/bounds/anchor coordinates belong to the next bounded world-coordinate/dimension pass, not this persistence package.

## Verification boundary

`FIRST_SLICE_PERSISTENCE_SAVE_RELOAD_RECORDED = YES`
`PERSISTENCE_RUNTIME_IMPLEMENTED = NO`
`PERSISTENCE_RUNTIME_VERIFIED = NO`.

## Exact downstream dependency

`FIRST_SLICE_WORLD_COORDINATE_DIMENSION_FRAMEWORK_CONTRACT`

That next pass should convert the existing meter-scale targets into one documented spatial coordinate framework for Settlement 01, the hunter-gate transition, Region 01 sectors and first encounter footprints without pretending prototype coordinates are final production measurements.