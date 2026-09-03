# 20_gameplay/harvest — Harvest Gameplay Package

Status: ACTIVE FIRST-SLICE DESIGN PACKAGE / NO HARVEST IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own reusable rules that convert surviving physical monster anatomy into finite recoverable materials.

Primary law:

**Harvest reads the real surviving anatomy state. It never creates disconnected random loot or more material than the physical source can still contain.**

## Authorities

1. `FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md` — finite source capacity, condition loss, sever/detached-part transfer, recovery efficiency, depletion, persistence and anti-duplication.
2. `/MECHANICAL_SYSTEMS_GUIDE.md` — root mechanical relationship between anatomy, harvest, inventory and crafting.
3. `/CONTENT_DATA_GUIDE.md` — harvest-source/material data schema and stable IDs.
4. `/docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md` — determines whether a carcass exists, a Monster escaped, or the party is unable to harvest immediately.
5. Monster/content packages configure concrete capacities/material sources without redefining the generic harvesting math.

## First content consumer

Monster 01:
`/docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

That packet defines first-slice prototype capacities for Horn, Dorsal Plate, Hide, Tail Ridge/Tendon and Dense Bone sources.

## Ownership

Harvest owns:
- physical harvest-source capacity;
- remaining recoverable capacity;
- extraction depletion;
- condition/preservation mapping;
- clean-sever preservation;
- deterministic recovery efficiency;
- unique-source anti-duplication;
- carcass/detached-part container lineage;
- yield trace.

Harvest does not own:
- combat damage/break/sever decisions;
- Monster death/escape outcome;
- inventory stack/storage rules;
- recipes/crafting;
- economy prices;
- party reward sharing;
- final art/animation.

## Current status

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_VERIFIED = NO`

## Exact next dependency

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`

That next packet should define where recovered material stacks live, transfer/stack identity, quality/provenance ownership and save/load anti-duplication before one-recipe crafting linkage is selected.