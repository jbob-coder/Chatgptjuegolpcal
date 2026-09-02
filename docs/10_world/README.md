# 10_world — World, Settlements and Hunting Regions

Purpose: spatial/playable-world packages and world-specific application of global systems.

Belongs here:
- world-atlas packages;
- settlement packages;
- frontier/gate packages;
- hunting-region packages;
- sector topology;
- camps/safe anchors;
- region discovery/map behavior;
- local tracking routes;
- local monster territory/escape routes;
- encounter-footprint placement;
- local ecology/mutation-pressure application;
- local streaming adjacency/application.

Does not own:
- damage formulas;
- stat/effect formulas;
- generic deterministic behavior engine rules;
- crystal Tier/Rank/Quality definitions;
- generic modeling standards;
- save-system architecture.

World packages reference those owning authorities instead of redefining them.

Current root authorities that govern this folder:
- `/MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `/WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `/FIRST_SETTLEMENT_BLUEPRINT.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md` for ecology/mutation rules;
- `/PERFORMANCE_BUDGETS_AND_CAPS.md` for scalable runtime budgets.

Current active child package:
- `regions/REGION_01/` — first hunting region beyond Settlement 01.
