# 20_gameplay/inventory — Material Ownership Package

Status: ACTIVE FIRST-SLICE DESIGN PACKAGE / BASELINE RECORDED / ONE-RECIPE DOWNSTREAM CONSUMER RECORDED / NO INVENTORY IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own reusable first-slice material-container, stack, transfer, quantity-conservation, provenance and save/load rules between harvesting and crafting.

Primary law:
**a committed material quantity always has exactly one authoritative owner.**

## Local authorities

- `FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md` — material ownership/transfer authority.
- `INVENTORY_TRANSFER_EXAMPLE.md` — supporting full/partial-capacity worked example.

Upstream:
`../harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Downstream first consumer:
`../crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`.

## Selected first-slice model

- primary material destination: `PLAYER_FIELD_INVENTORY`;
- prototype maximum stack entries: 20;
- maximum quantity per material stack entry: 99;
- visible stack key: `material_id + quality_band`;
- provenance preserved internally as lots;
- successful harvest output first belongs to persistent `RECOVERY_BUNDLE`;
- inventory-full/partial acceptance leaves exact unaccepted quantity in bundle;
- committed transfer invariant `SOURCE_LOSS == DESTINATION_GAIN`;
- stable transfer IDs are idempotent across UI/save/load.

## First crafting consumer

Recipe:
`recipe_field_poleblade_raker_tendon_grip`.

Crafting consumes only material already owned by `PLAYER_FIELD_INVENTORY` in the first-slice proof.

Exact recipe inputs:
- 2 HIGH `material_m01_tail_tendon`;
- 2 STANDARD-or-better `material_m01_hide`.

Crafting reserves exact stack/provenance quantities before commit and cannot replay consumption under the same craft transaction ID.

## Ownership boundary

Inventory owns material containers/stacks/transfers/provenance/anti-replay.

Inventory does not own harvest yield, crafting output/effects, equipment stats, market prices, party rewards or final UI.

## Verification boundary

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`
`INVENTORY_RUNTIME_VERIFIED = NO`.

## Exact next downstream dependency

The one-recipe material consumer is recorded.

Current next game-design dependency:
`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`.
