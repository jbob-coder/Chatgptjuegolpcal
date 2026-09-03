# 20_gameplay/combat — Tactical Combat Package

Status: ACTIVE DESIGN PACKAGE / SIX CORE CONTRACTS RECORDED / NO COMBAT IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own generic tactical-combat rules that apply across monsters, regions, weapons and encounters.

This package must not redefine one monster's anatomy, one region's terrain graph, or engine/rendering implementation.

## Current authorities

### 1. Action timing/economy
`ACTION_ECONOMY_CONTRACT.md`

Owns AP/RP/Stamina separation, turn/round timing hooks, action-cost bands, movement/cover/posture timing, reaction windows, cancellation/refunds and anti-extra-turn/anti-loop invariants.

Selected first-slice baseline:
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

### 4. Stamina scale/recovery
`STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`

Selected:
- neutral Max Stamina `100`;
- passive recovery `+10` once at normal activation start;
- `READY 50–100 / LOW 25–49 / CRITICAL 1–24 / EMPTY 0`;
- no hidden generic low-Stamina accuracy/evasion penalty;
- positive-cost action/reaction requires enough Stamina;
- no normal negative-Stamina overexertion;
- `CATCH_BREATH = 1 AP / +20 delayed turn-end recovery / once per activation` with anti-financing rules.

### 5. Initiative / turn order
`INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`

Selected:

```text
InitiativeRating =
    (2 × EffectiveAgility)
  + EffectivePerception
  + ExplicitInitiativeModifier
```

Key laws:
- no random Initiative/opener roll;
- snapshot when actor enters encounter;
- deterministic tie order `Rating DESC → Agility DESC → Perception DESC → stable combatant ID ASC`;
- no ordinary mid-encounter resorting;
- one normal activation maximum per eligible actor per round;
- reactions/counters are not normal activations;
- late entrants wait until next round;
- ineligible actor at its slot skips that round;
- dead/escaped actors leave pending/future schedule;
- save/reload cannot duplicate consumed slots or turn-start resource hooks;
- combat domain alone advances schedule.

### 6. First-slice status/tactical-state set
`FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`

Selected minimal set:
- `status_bleeding`;
- `status_staggered`;
- `status_off_balance`;
- `tactical_braced`;
- `tactical_guarded`.

Key laws:
- no separate random status-proc roll;
- Bleeding intensity stacks to maximum `3` but ticks at most once per actor per round;
- first Bleeding tick is no earlier than `application_round + 1`;
- Staggered blocks Dodge/Parry while active but does not skip the next normal activation;
- Staggered transitions once to Off-Balance at next activation start;
- Off-Balance blocks Parry and clears through deliberate Brace or after one completed normal activation;
- Braced and Guarded are tactical states, not cure/resistance statuses;
- Braced improves stability/consequence context, not Evasion by default;
- Guarded stores authoritative direction and enables compatible Block attempts but never auto-Blocks;
- Braced + Guarded may coexist because they represent stability vs directional interposition;
- none of the five changes Initiative or grants extra normal activations.

Explicitly deferred from the minimal set:
- Exhausted;
- generic Wounded;
- Focused/Aimed;
- Concealed;
- environmental/toxin/psychological status catalogs.

## Specificity / supersession rule

More-specific prototype contracts supersede older placeholders only inside their ownership scope.

Current examples:
- Stamina contract owns first-slice Stamina scale/recovery/cost values;
- Initiative contract owns first-slice Initiative formula/snapshot/order/tie/roster laws;
- Status-set contract owns the five selected status/tactical-state identities, timing, stacking and removal laws;
- Action Economy still owns AP/RP timing and action costs;
- Combat Resolution owns contact/defense/hit-quality ordering;
- Field Poleblade contract owns weapon/technique identity.

No contract silently overrides another owner's system.

## Supporting authorities

Root:
- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`.

Progression:
- `../progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

Monster-specific anatomy/content remains owned by its content package, including:
- `/docs/30_content/monsters/MONSTER_01/ANATOMY_AND_DAMAGE.md`.

## Ownership

Belongs here:
- AP/RP/Stamina timing;
- Initiative/round scheduling;
- generic statuses/tactical states;
- status timing/stack/removal contracts;
- action-cost categories;
- movement/cover/posture timing;
- reaction windows;
- telegraph timing;
- attack legality/contact resolution;
- target-part acquisition/exposure;
- hit quality and defense boundaries;
- cover/protection ordering;
- seeded-resolution/replay invariants;
- first-slice weapon-family contract;
- cancellation/refund rules;
- anti-loop/anti-extra-turn invariants;
- encounter scheduler/status traces.

Does not belong here:
- exact Mudcrest Raker attack packet/status application strengths;
- exact Region 01 terrain values;
- broad weapon/status catalogs;
- final damage/health numbers;
- animation duration;
- renderer/UI implementation;
- party composition;
- final production balance constants.

## Authority boundary

Combat presentation may visualize timing/contact/resources/results/order/statuses but never:
- chooses/advances authoritative actor;
- adds/removes activation slots;
- spends/refunds AP/RP/Stamina independently;
- ticks Bleeding or changes status stacks independently;
- changes Guard direction because camera moved;
- grants passive/Catch Breath recovery independently;
- rerolls Initiative, attacks or status application;
- resolves hits/protection independently;
- ends encounters independently.

## Current combat-design gate

Recorded:
- `ACTION_ECONOMY_CONTRACT = RECORDED`;
- `COMBAT_RESOLUTION_CONTRACT = RECORDED`;
- `FIRST_WEAPON_FAMILY_CONTRACT = RECORDED`;
- `STAMINA_PROTOTYPE_CONTRACT = RECORDED`;
- `INITIATIVE_TURN_ORDER_PROTOTYPE = RECORDED`;
- `FIRST_SLICE_STATUS_SET_PROTOTYPE = RECORDED`;
- `FIRST_SLICE_STATUS_SET = BLEEDING / STAGGERED / OFF_BALANCE / BRACED / GUARDED`;
- `NORMAL_ACTIVATIONS_PER_ELIGIBLE_ACTOR_PER_ROUND = 1`.

Still required before real combat implementation:
- concrete first-slice terrain-effect set;
- Monster 01 attack packet;
- first berserk prototype;
- solo/party baseline;
- defeat/retreat baseline;
- prerequisite implementation stages/tests.

`COMBAT_DESIGN_READINESS = PARTIAL / SIX_CORE_CONTRACTS_RECORDED`.
`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`.

## Exact next bounded combat-design dependency

**`FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT`**.

That pass should define only the concrete first-slice terrain surfaces/effects required by the first combat test, using existing terrain tags/modifier architecture.

Do not combine it with Monster 01 attacks, berserk, party design, defeat/retreat behavior or production implementation.