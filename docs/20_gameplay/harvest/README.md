# 20_gameplay/harvest — Harvest Gameplay Package

Status: ACTIVE FIRST-SLICE DESIGN PACKAGE / BASELINE RECORDED / NO HARVEST IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own reusable rules that convert surviving physical Monster anatomy into finite recoverable materials.

Primary law:

**Harvest reads the real surviving anatomy state. It never creates disconnected random loot or more material than the physical source can still contain.**

## File map

- `README.md` — this local front door.
- `FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md` — authoritative finite-capacity, condition, sever-transfer, depletion, persistence and anti-duplication rules.
- `HARVEST_TRANSACTION_EXAMPLE.md` — supporting worked arithmetic example only; not a separate owner.

## Supporting authorities

- `/MECHANICAL_SYSTEMS_GUIDE.md` — anatomy -> harvest -> inventory -> crafting relationship.
- `/CONTENT_DATA_GUIDE.md` — material/harvest-source schema and stable IDs.
- `/docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md` — determines Monster dead/escaped/mutual-terminal state before harvest.
- Monster packages configure concrete source capacities/material IDs without redefining generic harvest math.

## First content consumer

Monster 01:
`/docs/30_content/monsters/MONSTER_01/HARVEST_CAPACITY_PACKET.md`.

Prototype selected source total when pristine:
`45` capacity units.

Sources:
horn L 4 / horn R 4 / dorsal plates 8 / torso hide 12 / distal-tail ridge 5 / distal-tail tendon 4 / dense bone 8.

## Generic selected rules

Condition bands and preservation multipliers:
- PRISTINE 1.00;
- GOOD 0.90;
- DAMAGED 0.70;
- POOR 0.40;
- RUINED 0.10;
- DESTROYED 0.00.

`surviving_capacity = floor(original_capacity * preservation_multiplier)`.

Recovery efficiency is deterministic and clamped to `0.50..1.00` for the first prototype when extraction is legal.

Clean sever:
- can preserve better condition;
- transfers source lineage to a detached container;
- never adds extra matter.

Partial harvest:
- removes only successfully recovered quantity;
- leaves the remainder physically available;
- cannot reset from UI/save/region reload.

## Ownership

Harvest owns:
- source capacity and remaining quantity;
- condition/quality mapping;
- carcass/detached source containers;
- extraction efficiency/depletion;
- unique-source lineage;
- deterministic yield transaction/trace.

Harvest does not own:
- combat damage/sever;
- Monster death/escape;
- inventory stacks/storage;
- recipes/economy;
- party reward sharing;
- final art/animation.

## Current status

`FIRST_SLICE_HARVEST_BASELINE_RECORDED = YES`
`MONSTER_01_HARVEST_PACKET_RECORDED = YES`
`HARVEST_RUNTIME_IMPLEMENTED = NO`
`HARVEST_RUNTIME_VERIFIED = NO`.

## Exact next dependency

`FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT`

That packet must define where a committed recovered-material result lives, how quantity/quality/provenance are stacked/transferred/persisted, and how rejection avoids matter loss/duplication before crafting is connected.