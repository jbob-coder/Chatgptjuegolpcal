# 20_gameplay — Gameplay Systems

Status: ACTIVE GAMEPLAY DESIGN MAP / COMBAT DESIGN BASELINE + HARVEST BASELINE RECORDED / INVENTORY MATERIAL OWNERSHIP NEXT
Last reconciled: 2026-09-03

## Purpose

Own reusable gameplay rules that apply across settlements, regions, monsters and content packages.

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
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative/Turn Order;
6. Status Set;
7. Terrain Set;
8. Solo/Party Baseline;
9. Defeat/Retreat Baseline.

`COMBAT_DESIGN_BASELINE_COMPLETE = YES`.

### Harvest
Front door: `harvest/README.md`.

Generic authority:
`harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md`.

Supporting worked example:
`harvest/HARVEST_TRANSACTION_EXAMPLE.md`.

Selected reusable baseline:
- finite per-source capacity;
- condition determines surviving capacity/quality;
- clean sever transfers, never duplicates;
- break/shatter can preserve fragments at lower condition;
- carcass and detached-part containers use stable source lineage;
- deterministic recovery efficiency `<=1.00`;
- partial extraction depletes only recovered quantity;
- no harvest RNG layer;
- save/load cannot restore depleted capacity.

First content consumer:
`/docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Monster 01 pristine selected-source total = `45` prototype capacity units across horn, plate, hide, distal-tail ridge/tendon and dense bone sources.

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`.

### Progression
Front door: `progression/README.md`.

Direction:
- equipment + weapon mastery + knowledge weighted;
- bounded attribute growth;
- anatomy, terrain and preparation remain relevant.

## First-slice ownership chain

```text
COMBAT DAMAGE/SEVER
-> FINAL ANATOMY STATE
-> DEFEAT/ESCAPE OUTCOME
-> HARVEST SOURCE CAPACITY/CONDITION
-> MATERIAL TRANSFER
-> INVENTORY OWNERSHIP
-> RECIPE/CRAFTING
```

No downstream package may manufacture matter or silently rewrite an upstream physical result.

## Monster 01 content consumer

Package:
`/docs/30_content/monsters/MONSTER_01/`.

Current content authorities include anatomy, attacks, Berserk, behavior/Region use, Crystal state and the first harvest-capacity packet.

## Exact next gameplay dependency

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`

That pass should define:
- authoritative recovered-material container ownership;
- material stack identity;
- quantity/quality/provenance transfer from harvest transaction;
- inventory acceptance/rejection without matter loss/duplication;
- save/load persistence and anti-replay;
- minimal first-slice capacity/stack rules only where needed.

Do not combine it with broad economy, many recipes or production implementation.

## Existing root/system authorities

- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/NEW_GAME_MASTER_PLAN.md`.

Current bounded contracts supersede older unresolved placeholders within their exact scope.