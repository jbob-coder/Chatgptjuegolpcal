# 20_gameplay/combat — Tactical Combat Package

Status: ACTIVE DESIGN PACKAGE / TWO CORE CONTRACTS RECORDED / NO COMBAT IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

Own generic tactical-combat rules that apply across monsters, regions, weapons and encounters.

This package must not redefine one monster's anatomy, one region's terrain graph, or engine/rendering implementation.

## Current authorities

### Action timing/economy
`ACTION_ECONOMY_CONTRACT.md`

Owns:
- AP/RP/Stamina separation;
- turn/round timing;
- action-cost bands;
- movement/cover/posture timing;
- reaction windows;
- telegraph timing;
- cancellation/refund laws;
- anti-extra-turn/anti-loop invariants.

Selected first-slice prototype:
- 4 AP;
- 1 RP;
- persistent Stamina;
- no AP banking;
- no ordinary extra-turn progression.

### Contact / hit quality / defense
`COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`

Owns:
- hard legality vs contested resolution;
- attack/defense control separation;
- body contact vs selected-part contact;
- target-part exposure states;
- directional physical cover;
- Dodge/Block/Parry/Brace resolution roles;
- bounded seeded variance;
- hit-quality classes;
- local protection ordering;
- off-target contact;
- resolution/calculation traces.

Selected hit-quality classes:
`MISS / GRAZE / SOLID / CLEAN / PRECISION`.

Selected randomness law:
**no unrelated hidden critical-hit roll; committed attacks use one reproducible bounded seeded variance source, while legality/anatomy/cover state remain deterministic.**

Supporting root authorities:
- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`.

Progression interaction:
- `../progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

Monster-specific anatomy/content remains owned by the relevant content package, including:
- `/docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`.

## Ownership

Belongs here:
- AP/reaction/stamina timing;
- turn/round ordering;
- action-cost categories;
- generic movement/cover/posture timing;
- reaction windows;
- telegraph timing contracts;
- attack legality/contact resolution;
- generic target-part acquisition/exposure;
- generic hit-quality resolution;
- generic defense-resolution boundaries;
- generic cover/protection ordering;
- seeded-resolution/replay invariants;
- action cancellation/refund rules;
- anti-loop/anti-extra-turn invariants;
- generic combat end/escape timing.

Does not belong here:
- exact Mudcrest Raker attacks;
- exact weapon roster;
- exact Region 01 encounter-node layouts;
- final damage numbers;
- animation duration;
- renderer/UI implementation;
- final balance constants beyond explicitly marked prototype targets.

## Authority rule

Combat presentation may visualize timing/contact/results but never:
- advances turns;
- refunds/spends AP/RP/Stamina independently;
- rerolls attacks;
- resolves hits;
- chooses fallback body parts;
- changes hit quality;
- applies armor/protection;
- ends encounters independently.

## Current combat-design gate

Recorded:
- `ACTION_ECONOMY_CONTRACT = RECORDED`;
- `COMBAT_RESOLUTION_CONTRACT = RECORDED`;
- `HIT_QUALITY_MODEL = RECORDED`;
- `DODGE_BLOCK_PARRY_BRACE_ROLES = RECORDED`;
- `SEEDED_VARIANCE_BOUNDARY = RECORDED`.

Still required before real combat implementation:
- one First Weapon Family Contract;
- prototype Stamina scale/recovery;
- prototype Initiative/tie rule;
- small first-slice status set;
- concrete first terrain-effect set;
- Monster 01 attack packet;
- first berserk prototype;
- solo/party baseline;
- defeat/retreat baseline;
- prerequisite implementation stages and tests.

`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`.

## Exact next bounded combat-design dependency

**First Weapon Family Contract**.

It should instantiate the existing action-economy and resolution contracts with one weapon family only. Do not create a broad weapon roster yet.
