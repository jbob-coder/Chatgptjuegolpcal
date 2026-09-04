# 20_gameplay — Gameplay Systems

Status: ACTIVE GAMEPLAY DESIGN MAP / COMBAT + HARVEST + INVENTORY BASELINES RECORDED / ONE-RECIPE LINKAGE NEXT
Last reconciled: 2026-09-03

## Purpose

Own reusable gameplay rules that apply across settlements, regions, Monsters and content packages.

The game is the objective. This package organizes mechanics so content can configure them without forking generic laws.

Belongs here:
- combat/action economy/turn order/outcome;
- statuses/tactical states;
- terrain/effect framework;
- anatomy-aware harvesting;
- inventory/material ownership;
- attributes/equipment/progression;
- deterministic behavior;
- Crystal/mutation mechanics;
- crafting/knowledge systems.

Exact Region geography, one species' capacities/attacks and renderer implementation belong elsewhere.

## Package map

### Combat
Front door: `combat/README.md`.

Nine generic first-slice combat/outcome contracts are recorded:
Action Economy / Combat Resolution / Field Poleblade / Stamina / Initiative / Status / Terrain / Solo-Party / Defeat-Retreat.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`.

### Harvest
Front door: `harvest/README.md`.

Generic authority:
`harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Selected baseline:
- finite per-source capacity;
- condition determines surviving capacity/quality;
- clean sever transfers, never duplicates;
- deterministic recovery efficiency `<=1.00`;
- partial extraction depletes only recovered quantity;
- no harvest RNG layer;
- save/load cannot restore depleted capacity.

First content consumer:
`/docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Monster 01 selected pristine source total = `45` prototype capacity units.

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`.

### Inventory / materials
Front door: `inventory/README.md`.

Authority:
`inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

Selected baseline:
- `PLAYER_FIELD_INVENTORY` is the first-slice recovered-material destination;
- prototype 20 material stack entries / 99 units per stack;
- compatible stack key = material ID + quality band;
- provenance stored as conserved internal lots;
- committed harvest output first becomes a persistent `RECOVERY_BUNDLE`;
- full/partial inventory acceptance leaves remainder in that bundle;
- every transfer conserves quantity: source loss = destination gain;
- transaction IDs prevent save/load/UI replay;
- quality never averages to simplify merging.

Worked example:
`inventory/INVENTORY_TRANSFER_EXAMPLE.md`.

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_RECORDED = YES`
`INVENTORY_RUNTIME_IMPLEMENTED = NO`.

### Progression
Front door: `progression/README.md`.

Direction remains equipment + weapon mastery + knowledge weighted, with anatomy, terrain and preparation remaining relevant.

## First-slice ownership chain

```text
COMBAT DAMAGE/SEVER
-> FINAL ANATOMY STATE
-> DEFEAT/ESCAPE OUTCOME
-> HARVEST SOURCE CAPACITY/CONDITION
-> RECOVERY BUNDLE
-> INVENTORY MATERIAL OWNERSHIP
-> RECIPE/CRAFTING
```

No downstream package may manufacture matter or silently rewrite an upstream physical result.

## Exact next gameplay dependency

`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT`

That pass must select exactly one Monster-01-derived recipe/equipment improvement and define deterministic material consumption, output/equip ownership and save/load anti-replay so the loop reaches:
`HARVEST -> INVENTORY -> CRAFT/EQUIP -> REASON TO HUNT AGAIN`.

Do not combine it with broad economy, many recipes or production implementation.

## Existing root/system authorities

- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/NEW_GAME_MASTER_PLAN.md`.

Current bounded contracts supersede older unresolved placeholders within their exact scope.
