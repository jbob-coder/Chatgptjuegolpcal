# 20_gameplay/combat — Tactical Combat Package

Status: ACTIVE DESIGN PACKAGE / NO IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

Own generic tactical-combat rules that apply across monsters, regions, weapons and encounters.

This package must not redefine one monster's anatomy, one region's terrain graph, or engine/rendering implementation.

## Current authority

Primary current combat-economy authority:
- `ACTION_ECONOMY_CONTRACT.md`

Supporting root authorities:
- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`.

Progression interaction:
- `../progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

## Ownership

Belongs here:
- AP/reaction/stamina timing;
- turn/round ordering;
- action-cost categories;
- movement/cover/posture timing;
- reaction windows;
- telegraph timing contracts;
- action cancellation/refund rules;
- anti-loop/anti-extra-turn invariants;
- generic combat end/escape timing.

Does not belong here:
- exact Mudcrest Raker attacks;
- exact weapon roster;
- exact Region 01 encounter-node layouts;
- animation duration;
- renderer/UI implementation;
- final balance numbers beyond explicitly marked prototype targets.

## Authority rule

Combat presentation may visualize timing but never advances turns, refunds AP, spends stamina, grants reactions, resolves hits, or ends encounters independently.

## Current gate

`ACTION_ECONOMY_CONTRACT = RECORDED`
`COMBAT_IMPLEMENTATION = NOT AUTHORIZED`

Next combat work should be selected only after the current action-economy contract is reviewed/reconciled with the owning project handoff.