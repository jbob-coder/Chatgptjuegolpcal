# 20_gameplay/combat — Tactical Combat Package

Status: ACTIVE DESIGN PACKAGE / THREE CORE CONTRACTS RECORDED / NO COMBAT IMPLEMENTATION
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

### First weapon family
`FIRST_WEAPON_FAMILY_CONTRACT.md`

Selected first-slice family:
- technical ID: `WEAPON_FAMILY_FIELD_POLEBLADE`;
- working name: Field Poleblade;
- two-handed long-hafted hunting blade;
- primary cutting/sever identity;
- secondary piercing/control identity;
- limited impact capability;
- useful medium melee reach;
- directional Guard;
- restricted Parry;
- intentionally weaker at dedicated hard-structure breaking, cramped fighting and shield-like defense.

Initial technique packet:
- `POLEBLADE_MEASURED_CUT` — 2 AP, controlled cutting, body fallback allowed, CLEAN ceiling;
- `POLEBLADE_DRIVING_THRUST` — 2 AP, piercing/reach, body fallback allowed, CLEAN ceiling;
- `POLEBLADE_PLACED_HEW` — 3 AP, selected-part cutting, selected part required, PRECISION allowed;
- `POLEBLADE_COMMITTED_CLEAVE` — 4 AP, high commitment/force, body fallback allowed, CLEAN ceiling;
- `POLEBLADE_HAFT_CHECK` — short-range low-impact spacing/control action;
- weapon-supported Guard/Parry according to the generic defense contracts.

The family is intentionally not a universal best weapon. Its first-slice purpose is to prove reach, anatomy targeting, severing, AP commitment, Stamina pressure and bounded defense while leaving room for later specialized impact, shield, ranged and mobility families.

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
- first-slice weapon-family contract and generic weapon-technique interaction;
- action cancellation/refund rules;
- anti-loop/anti-extra-turn invariants;
- generic combat end/escape timing.

Does not belong here:
- exact Mudcrest Raker attacks;
- broad weapon roster;
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
- `SEEDED_VARIANCE_BOUNDARY = RECORDED`;
- `FIRST_WEAPON_FAMILY_CONTRACT = RECORDED`;
- `FIRST_WEAPON_FAMILY = FIELD_POLEBLADE`.

Still required before real combat implementation:
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

**Stamina Prototype Scale and Recovery Contract**.

It should define only the first-slice Stamina scale, recovery timing, exertion bands, low-Stamina consequences, cost floors/caps and Field Poleblade prototype costs. Do not expand into the full status system or endgame Stamina progression in that pass.
