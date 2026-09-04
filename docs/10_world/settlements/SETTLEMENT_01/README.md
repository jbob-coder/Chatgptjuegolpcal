# SETTLEMENT_01 — First Frontier Hunter Settlement

Status: ACTIVE FIRST-SETTLEMENT PACKAGE / DESIGN ONLY
Last reconciled: 2026-09-03

## Purpose

Own Settlement 01-specific spatial/service application of the project’s reusable systems.

Root spatial authority:
`/FIRST_SETTLEMENT_BLUEPRINT.md`.

## Current first-slice service authority

`FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT.md`

This contract maps the generic crafting station requirement `CRAFT_STATION_WEAPON_WORKBENCH` into the physical Settlement 01 Smith/Workshop and defines the player interaction/service boundary.

## Selected local facts

- Settlement ID: `SETTLEMENT_01`.
- Smith/Workshop belongs to the Hunter Service Loop.
- Craft/Processing Quarter is deliberately near the Hunter Gate and processing yard.
- Priority Smith interior should be seamless when target-device budget allows.
- Return-from-hunt route to processing/Smith must remain short and readable.
- Essential crafting service availability must not depend on a single NPC standing at a particular anchor.

## Ownership boundary

Settlement 01 owns:
- the physical Smith/workbench anchor;
- local service availability state;
- interaction proximity/context;
- local route/landmark application;
- settlement-side service presentation hooks.

Other owners remain authoritative:
- Crafting: `/docs/20_gameplay/crafting/`;
- Inventory: `/docs/20_gameplay/inventory/`;
- Equipment/progression: `/docs/20_gameplay/progression/`;
- presentation/domain separation: `/SYSTEM_ARCHITECTURE_BLUEPRINT.md`.

## Current verification boundary

`SETTLEMENT_01_SMITH_SERVICE_DESIGN_RECORDED = YES`
`SETTLEMENT_01_SMITH_SERVICE_RUNTIME_IMPLEMENTED = NO`
`SETTLEMENT_01_SMITH_SERVICE_RUNTIME_VERIFIED = NO`.
