# 10_world — World, Settlements and Hunting Regions

Status: ACTIVE WORLD MAP / REGION 01 + SETTLEMENT 01 SERVICE PACKAGES RECORDED / NO WORLD IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own spatial/playable-world packages and world-specific application of reusable systems.

Belongs here:
- world-atlas packages;
- settlement packages;
- frontier/gate packages;
- hunting-region packages;
- sector topology;
- camps/safe anchors;
- region discovery/map behavior;
- local tracking/escape routes;
- encounter-footprint placement;
- local ecology/mutation-pressure application;
- settlement service anchors/availability;
- local streaming adjacency/application.

Does not own:
- damage/stat formulas;
- generic crafting/inventory math;
- equipment effect math;
- generic deterministic behavior rules;
- save-system architecture.

World packages reference those owners instead of redefining them.

## Root authorities

- `/MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `/WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `/FIRST_SETTLEMENT_BLUEPRINT.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/PERFORMANCE_BUDGETS_AND_CAPS.md`.

## Current child packages

### Settlements
Front door: `settlements/README.md`.

Current child:
`settlements/SETTLEMENT_01/`.

First-slice service authority:
`settlements/SETTLEMENT_01/FIRST_SLICE_SETTLEMENT_SMITH_SERVICE_INTERACTION_CONTRACT.md`.

Selected proof:
- physical Smith/workbench on Hunter Service Loop;
- gate-return-to-workbench graybox target <=25 seconds normal walking;
- normal essential service cannot depend on one Smith NPC schedule;
- UI/Settlement interaction never owns material consumption or refinement mutation.

### Hunting regions
Current child:
`regions/REGION_01/` — first continuous hunting region beyond Settlement 01.

Region 01 already owns topology/tracking/terrain/encounter-footprint/streaming application for the first hunt.
