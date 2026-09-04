# Progression Package — Gameplay Authority

Status: ACTIVE PACKAGE GUIDE / FIRST-SLICE CRAFTED REFINEMENT PROOF RECORDED / DESIGN ONLY
Last reconciled: 2026-09-03

## Purpose

Own generic player-power progression rules across hunts, regions, settlements and equipment content.

Primary progression authority:
`PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

Related authorities:
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md` — typed modifier pipeline;
- `/MECHANICAL_SYSTEMS_GUIDE.md` — hunt/combat/harvest/crafting relationship;
- `/CONTENT_DATA_GUIDE.md` — stable-ID/data direction;
- `../crafting/FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_CONTRACT.md` — first concrete material-to-equipment proof.

## Core rule

**Progression should widen and deepen tactical options faster than it increases raw numeric power.**

The hunter improves through bounded equipment, mastery, knowledge, preparation, harvest/craft proficiency, rank/access and slow base growth. No universal item-level score owns all combat power.

## First-slice crafted progression proof

Recipe:
`recipe_field_poleblade_raker_tendon_grip`.

Refinement:
`refinement_field_poleblade_raker_tendon_grip`.

Material logic:
- HIGH Mudcrest Raker distal-tail tendon rewards controlled anatomy preservation;
- STANDARD-or-better Raker hide supplies practical grip/binding material;
- exact inventory lots are consumed through an atomic craft transaction.

Effect:
`POLEBLADE_PLACED_HEW` Stamina 18 -> 16 through a typed `COST_MODIFIER`.

This is intentionally not a damage/item-level upgrade. It improves precision-hunting efficiency while preserving range, exposure, AP, Stamina reserve and reaction tradeoffs.

## Ownership law

Progression/equipment owns refinement philosophy and the equipment-effect relationship.
Crafting owns the transaction/recipe.
Inventory owns material stacks/provenance.
Combat/Stamina own final action legality/cost calculation.
UI never edits equipment power directly.

## Verification boundary

`FIRST_SLICE_ONE_RECIPE_CRAFT_EQUIP_LINKAGE_RECORDED = YES`
`PROGRESSION_RUNTIME_IMPLEMENTED = NO`
`CRAFTING_RUNTIME_IMPLEMENTED = NO`.

## Exact next dependency

`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT`

That next packet gives the recorded logical crafting station a real place and interaction inside Settlement 01.