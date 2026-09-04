# 20_gameplay — Gameplay Systems

Status: ACTIVE GAMEPLAY DESIGN MAP / COMBAT + HARVEST + INVENTORY + ONE-RECIPE LINKAGE RECORDED / SETTLEMENT SMITH SERVICE NEXT
Last reconciled: 2026-09-03

## Purpose

Own reusable gameplay rules across settlements, regions, monsters and content packages. The game is the objective; this package prevents individual content from silently redefining generic mechanics.

## Package map

### Combat
Front door: `combat/README.md`.

Nine generic first-slice combat/outcome contracts are recorded through Defeat/Retreat.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`.

### Harvest
Front door: `harvest/README.md`.

Authority:
`harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Selected model:
finite anatomy-derived capacity -> condition preservation -> deterministic extraction -> depletion -> material transfer.

### Inventory
Front door: `inventory/README.md`.

Authority:
`inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md`.

Selected model:
- committed harvest material first has a persistent `RECOVERY_BUNDLE` owner;
- `PLAYER_FIELD_INVENTORY` receives conserved transfers;
- prototype 20 stack entries / 99 units per stack;
- merge compatibility = material ID + quality band;
- provenance remains internally conserved;
- transaction replay cannot duplicate material.

### Crafting
Front door: `crafting/README.md`.

Authority:
`crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md`.

First recipe:
`recipe_field_poleblade_raker_tendon_grip`.

Requirements:
- 2 HIGH `material_m01_tail_tendon`;
- 2 STANDARD-or-better `material_m01_hide`.

Output:
`refinement_field_poleblade_raker_tendon_grip`.

Effect:
- typed `COST_MODIFIER`;
- `POLEBLADE_PLACED_HEW` Stamina 18 -> 16;
- no AP/damage/turn/Initiative bonus.

Craft commit is atomic and idempotent: exact reserved material lots are consumed exactly once if and only if the compatible Poleblade refinement is applied exactly once.

### Progression
Front door: `progression/README.md`.

Direction remains equipment + mastery + knowledge weighted, with bounded specialization rather than universal item-level inflation.

## First-slice ownership chain

```text
COMBAT DAMAGE/SEVER
-> FINAL ANATOMY STATE
-> DEFEAT/ESCAPE OUTCOME
-> HARVEST SOURCE CAPACITY/CONDITION
-> RECOVERY BUNDLE
-> PLAYER MATERIAL INVENTORY
-> CRAFT RESERVATION/ATOMIC COMMIT
-> FIELD POLEBLADE REFINEMENT
-> SHARED EFFECT PIPELINE
-> NEXT-HUNT TACTICAL DIFFERENCE
```

No downstream package may manufacture matter or silently rewrite an upstream physical result.

## First content consumer

Monster 01:
`/docs/30_content/monsters/MONSTER_01/`.

Its harvest packet supplies the exact tendon/hide material IDs used by the first recipe.

## Exact next gameplay dependency

`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`

That pass should map `CRAFT_STATION_WEAPON_WORKBENCH` into the existing walkable Settlement 01 Smith/Workshop and return-from-hunt Hunter Service Loop, while keeping broad economy/shop/NPC systems outside scope.

## Existing root/system authorities

- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/NEW_GAME_MASTER_PLAN.md`.

Current bounded contracts supersede older unresolved placeholders within their exact scope.