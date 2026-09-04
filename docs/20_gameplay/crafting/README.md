# 20_gameplay/crafting — Crafting & Equipment Linkage

Status: ACTIVE FIRST-SLICE DESIGN PACKAGE / ONE RECIPE LINKAGE RECORDED / NO CRAFTING IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own the smallest deterministic bridge from conserved Monster materials in inventory to one meaningful equipment improvement.

Primary law:

**Crafting consumes real authoritative inventory material and produces one authoritative equipment/refinement state. It cannot mint materials, replay a transaction, or bypass the existing equipment/effect pipeline.**

## Local authorities

- `README.md` — this local front door.
- `FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md` — first complete recipe -> refinement -> equipped-effect proof.

## Upstream authorities

- `../inventory/FIRST_SLICE_INVENTORY_MATERIAL_OWNERSHIP_CONTRACT.md` — material owner/quality/provenance/transfer law.
- `../harvest/FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT.md` — physical source/yield law.
- `../combat/FIRST_WEAPON_FAMILY_CONTRACT.md` — Field Poleblade identity.
- `../combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md` — Poleblade Stamina costs/floors.
- `../progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md` — equipment/refinement progression philosophy.
- `/CONTENT_DATA_GUIDE.md` — stable material/recipe/equipment/effect data direction.

## First-slice selected recipe

Recipe ID:
`recipe_field_poleblade_raker_tendon_grip`

Working output/refinement:
`refinement_field_poleblade_raker_tendon_grip`

Requirements:
- `2 x material_m01_tail_tendon` at `HIGH` quality;
- `2 x material_m01_hide` at `STANDARD` quality or better;
- compatible Field Poleblade instance;
- logical weapon-workbench service/station context.

Selected effect:
- effect ID `effect_field_poleblade_raker_tendon_grip_placed_hew_stamina`;
- typed `COST_MODIFIER`;
- target `POLEBLADE_PLACED_HEW` Stamina cost;
- flat `-2` prototype modifier;
- existing base `18` -> `16` before other legal modifiers/caps.

It does not modify AP, damage, hit-quality ceiling, sever thresholds, Initiative, reactions, Max Stamina or guard legality.

## Why this is the first recipe

The upgrade rewards the exact hunt behavior the game is built around:
- preserve the distal tail instead of crushing it;
- recover high-quality tendon;
- preserve enough hide;
- return with real material;
- craft a bounded handling refinement;
- use the lower precision-technique exertion cost on the next hunt.

The reward deepens anatomy-focused play instead of replacing it with raw item-level inflation.

## Verification boundary

`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`CRAFTING_RUNTIME_IMPLEMENTED = NO`
`CRAFTING_RUNTIME_VERIFIED = NO`

## Exact next dependency

`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`

That next packet should map this logical workbench/refinement flow into the existing walkable Settlement 01 Smith/Workshop and return-from-hunt service loop without building a broad shop/economy system.