# 20_gameplay/combat — Tactical Combat Package

Status: ACTIVE DESIGN PACKAGE / FOUR CORE CONTRACTS RECORDED / NO COMBAT IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

Own generic tactical-combat rules that apply across monsters, regions, weapons and encounters.

This package must not redefine one monster's anatomy, one region's terrain graph, or engine/rendering implementation.

## Current authorities

### 1. Action timing/economy
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

### 2. Contact / hit quality / defense
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

### 3. First weapon family
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

### 4. Stamina scale/recovery
`STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`

Owns the first-slice Stamina numbers and recovery behavior.

Selected prototype:
- neutral test-profile Max Stamina: `100`;
- passive recovery: `+10` once at the start of each normal activation;
- reserve bands: `READY 50–100 / LOW 25–49 / CRITICAL 1–24 / EMPTY 0`;
- low reserve does not automatically apply hidden global accuracy/evasion penalties;
- ordinary action/reaction must have enough Stamina to pay its final cost;
- no normal overexertion below zero;
- normal stable-ground adjacent reposition: `0 Stamina` baseline;
- Sprint: `8`;
- deliberate Brace: `6`;
- reactive Brace: `10`;
- Dodge: `14`;
- generic compatible Parry baseline: `10`;
- Guard preparation: `4`;
- Block/guard commitment: `6 + incoming-force impact drain`;
- ordinary positive-cost reduction floor: `max(1, ceil(base × 0.50))` unless an exceptional capability explicitly overrides it.

`CATCH_BREATH`:
- 1 AP;
- 0 Stamina cost;
- +20 delayed recovery at turn-end when its recovery commitment remains valid;
- once per activation;
- cannot be paired with a damaging attack in the same activation;
- incompatible later heavy exertion cancels pending recovery;
- cannot immediately finance a 3-AP attack with the remaining 1 AP.

Field Poleblade prototype Stamina costs:
- Measured Cut `12`;
- Driving Thrust `10`;
- Placed Hew `18`;
- Committed Cleave `30`;
- Haft Check `8`;
- Poleblade Guard preparation `4`;
- Poleblade Block commitment `6 + impact drain`;
- Poleblade Parry `10`.

## Specificity / supersession rule

Earlier combat documents were intentionally written before Stamina numbers existed and may still contain phrases such as `exact Stamina values open`.

For the first-slice prototype:

**`STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md` is now the more specific authority for Stamina scale, recovery and first-slice cost values.**

It supersedes those older Stamina placeholders only.
It does not override:
- AP/RP laws owned by Action Economy;
- weapon identity/technique targeting/hit-quality rules owned by the Field Poleblade contract;
- combat-contact/defense rules owned by Combat Resolution.

Final production balance remains test-dependent.

## Supporting authorities

Root:
- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`.

Progression:
- `../progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

Monster-specific anatomy/content remains owned by the relevant content package, including:
- `/docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`.

## Ownership

Belongs here:
- AP/RP/Stamina timing;
- Stamina affordability/recovery/cost floors;
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
- final production balance constants.

## Authority rule

Combat presentation may visualize timing/contact/resources/results but never:
- advances turns;
- refunds/spends AP/RP/Stamina independently;
- grants passive or Catch Breath recovery independently;
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
- `FIRST_WEAPON_FAMILY = FIELD_POLEBLADE`;
- `STAMINA_PROTOTYPE_CONTRACT = RECORDED`;
- `BASELINE_MAX_STAMINA = 100`;
- `BASE_PASSIVE_RECOVERY = 10`;
- `CATCH_BREATH = 1_AP / +20_DELAYED / ONCE_PER_ACTIVATION`.

Still required before real combat implementation:
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

**Initiative and Turn-Order Prototype Contract**.

That pass should define only:
- first-slice initiative inputs;
- deterministic ordering;
- tie resolution;
- round participation/late-entry rules;
- incapacitated/dead/escaped actor removal;
- no-extra-turn invariant;
- reproducible trace/testing requirements.

Do not combine it with statuses, terrain numbers, Monster 01 attacks, berserk or party design.
