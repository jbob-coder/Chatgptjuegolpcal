# 20_gameplay/combat — Tactical Combat Package

Status: ACTIVE DESIGN PACKAGE / FIVE CORE CONTRACTS RECORDED / NO COMBAT IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own generic tactical-combat rules that apply across monsters, regions, weapons and encounters.

This package must not redefine one monster's anatomy, one region's terrain graph, or engine/rendering implementation.

## Current authorities

### 1. Action timing/economy
`ACTION_ECONOMY_CONTRACT.md`

Owns AP/RP/Stamina separation, turn/round timing hooks, action-cost bands, movement/cover/posture timing, reaction windows, cancellation/refunds and anti-extra-turn/anti-loop invariants.

Selected first-slice prototype:
- 4 AP;
- 1 RP;
- persistent Stamina;
- no AP banking;
- no ordinary progression-driven extra turns.

### 2. Contact / hit quality / defense
`COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`

Owns hard legality vs contested resolution, attack/defense control, body vs selected-part contact, exposure, directional cover, Dodge/Block/Parry/Brace boundaries, bounded seeded variance, hit quality, protection ordering and traces.

Hit-quality classes:
`MISS / GRAZE / SOLID / CLEAN / PRECISION`.

Randomness law:
**no unrelated hidden critical-hit roll; a committed attack uses one reproducible bounded seeded variance source while legality/anatomy/cover remain deterministic.**

### 3. First weapon family
`FIRST_WEAPON_FAMILY_CONTRACT.md`

Selected family:
`WEAPON_FAMILY_FIELD_POLEBLADE`.

Identity:
- two-handed long-hafted hunting blade;
- primary controlled cutting/sever;
- secondary piercing/control;
- limited impact;
- medium melee reach;
- directional Guard;
- restricted Parry;
- deliberate weaknesses at hard-structure breaking, cramped fighting and shield-like defense.

Initial techniques include Measured Cut, Driving Thrust, Placed Hew, Committed Cleave and Haft Check with explicit AP/Stamina/targeting commitments.

### 4. Stamina scale/recovery
`STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`

Selected prototype:
- neutral Max Stamina `100`;
- passive recovery `+10` once at normal activation start;
- `READY 50–100 / LOW 25–49 / CRITICAL 1–24 / EMPTY 0`;
- no hidden generic low-Stamina accuracy/evasion penalty;
- ordinary positive-cost action/reaction requires enough Stamina;
- no normal negative-Stamina overexertion;
- `CATCH_BREATH = 1 AP / +20 delayed turn-end recovery / once per activation` with anti-financing rules.

### 5. Initiative / turn order
`INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`

Selected first-slice prototype:

```text
InitiativeRating =
    (2 × EffectiveAgility)
  + EffectivePerception
  + ExplicitInitiativeModifier
```

Key laws:
- no Initiative/random opener roll;
- Initiative snapshot captured when an actor enters the encounter;
- ordinary mid-encounter stat changes do not silently resort the schedule;
- deterministic tie order: `Rating DESC → Agility DESC → Perception DESC → stable combatant ID ASC`;
- one normal activation maximum per eligible actor per round;
- reactions/counters are not normal activations;
- late entrants wait until the next round for their first normal activation;
- temporarily ineligible actor at its slot is skipped for that round, not reinserted later;
- dead/escaped/terminal actors are removed from pending/future scheduling;
- save/reload must preserve consumed slots and must not duplicate turn-start recovery/AP/RP refresh;
- combat domain alone owns schedule advancement.

## Specificity / supersession rule

More-specific prototype contracts supersede older placeholders only inside their ownership scope.

Current examples:
- Stamina contract owns first-slice Stamina scale/recovery/cost values;
- Initiative contract owns first-slice Initiative formula/snapshot/order/tie/roster laws;
- Action Economy still owns AP/RP timing and one-normal-activation architecture;
- Combat Resolution owns contact/defense/hit-quality ordering;
- Field Poleblade contract owns the first weapon family/technique identity.

No contract silently overrides another system's owned rule.

## Supporting authorities

Root:
- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
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
- Initiative/turn order/round scheduling;
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
- first-slice weapon-family contract;
- cancellation/refund rules;
- anti-loop/anti-extra-turn invariants;
- generic encounter scheduler trace requirements.

Does not belong here:
- exact Mudcrest Raker attack packet;
- broad weapon roster;
- exact Region 01 encounter-node layouts/terrain values;
- final damage numbers;
- animation duration;
- renderer/UI implementation;
- final production balance constants;
- party composition rules;
- broad status catalog.

## Authority boundary

Combat presentation may visualize timing/contact/resources/results/order but never:
- chooses/advances the next authoritative actor;
- adds/removes normal activation slots;
- refunds/spends AP/RP/Stamina independently;
- grants passive/Catch Breath recovery independently;
- rerolls Initiative or attacks;
- resolves hits;
- chooses fallback anatomy;
- applies armor/protection independently;
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
- `INITIATIVE_TURN_ORDER_PROTOTYPE = RECORDED`;
- `INITIATIVE_RANDOM_ROLL = NONE`;
- `NORMAL_ACTIVATIONS_PER_ELIGIBLE_ACTOR_PER_ROUND = 1`.

Still required before real combat implementation:
- small first-slice status/tactical-state set;
- concrete first terrain-effect set;
- Monster 01 attack packet;
- first berserk prototype;
- solo/party baseline;
- defeat/retreat baseline;
- prerequisite implementation stages/tests.

`COMBAT_DESIGN_READINESS = PARTIAL / FIVE CORE CONTRACTS RECORDED`.
`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`.

## Exact next bounded combat-design dependency

**`FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT`**.

That pass should define only the smallest reusable statuses/tactical states required to prove the existing architecture, including ownership, stacking/timing/removal boundaries and first-slice candidate set.

Do not combine it with terrain values, Monster 01 attacks, berserk, party design or defeat/retreat behavior.
