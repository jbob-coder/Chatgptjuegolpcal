# 20_gameplay/inventory — Material Ownership Package

Status: ACTIVE FIRST-SLICE DESIGN PACKAGE / BASELINE RECORDED / NO INVENTORY IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own reusable first-slice material-container, stack, transfer, quantity-conservation, provenance and save/load rules between harvesting and crafting.

The game is the objective. This package exists so physically recovered Monster material becomes persistent player-owned state without disappearing, duplicating or losing the combat/harvest lineage that produced it.

## Local file map

- `README.md` — this front door.
- `FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md` — authoritative material ownership/stack/transfer contract.
- `INVENTORY_TRANSFER_EXAMPLE.md` — supporting full-inventory/partial-transfer arithmetic example; not a separate owner.

Supporting upstream authority:
- `../harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Supporting root authorities:
- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/CONTENT_DATA_GUIDE.md`.

## Selected first-slice model

- primary material destination: `PLAYER_FIELD_INVENTORY`;
- prototype maximum material stack entries: `20`;
- maximum quantity per material stack entry: `99` units;
- display/merge stack key: `material_id + quality_band`;
- provenance is preserved internally as lots and does not have to fragment the player-facing stack list;
- harvest commit creates a persistent `RECOVERY_BUNDLE` before inventory acceptance;
- inventory-full/partial-capacity results leave unaccepted quantity in that bundle;
- no material may exist in two owners at once;
- no transfer may create or destroy quantity;
- repeated transaction IDs return the recorded result and do not replay transfer;
- quality bands do not average during merge.

## Ownership boundary

This package owns material containers, stack identity, merge/split, transfer transactions, field-inventory capacity, recovery-bundle fallback, provenance lots, quantity-conservation assertions and save/load anti-replay.

It does not own harvest yield/source depletion, Monster anatomy, crafting recipes/output, equipment stats, economy/prices, party reward splitting, broad item/consumable inventory, final UI art or production implementation.

## Verification boundary

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`
`INVENTORY_RUNTIME_VERIFIED = NO`.

## Exact next dependency

`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT`

That next packet should prove one complete material -> recipe -> equipment improvement -> reason-to-hunt-again chain without building a broad crafting/economy catalog.
