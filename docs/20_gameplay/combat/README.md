# 20_gameplay/combat — Tactical Combat Package

Status: ACTIVE DESIGN PACKAGE / SEVEN CORE CONTRACTS RECORDED / NO COMBAT IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own reusable first-person turn-based tactical-combat rules that apply across monsters, regions, weapons and encounters.

The game is the objective. This README is the combat package front door: what exists, where it is, what owns it, what remains open and what comes next.

## Current authorities

1. `ACTION_ECONOMY_CONTRACT.md`
   - 4 AP / 1 RP / persistent Stamina;
   - no AP banking;
   - bounded reaction windows;
   - one normal activation maximum per eligible actor/round.

2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`
   - deterministic hard legality/context;
   - AttackControl vs DefenseControl;
   - body vs selected-part contact;
   - directional cover;
   - one bounded seeded variance source;
   - `MISS / GRAZE / SOLID / CLEAN / PRECISION`.

3. `FIRST_WEAPON_FAMILY_CONTRACT.md`
   - `WEAPON_FAMILY_FIELD_POLEBLADE`;
   - cutting/sever primary;
   - piercing/control secondary;
   - directional Guard / restricted Parry;
   - deliberate hard-break/cramped/shield-defense weaknesses.

4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`
   - neutral Max Stamina `100`;
   - passive `+10` once at normal activation start;
   - delayed `CATCH_BREATH`;
   - explicit first-slice movement/reaction/Field-Poleblade costs.

5. `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`
   - `InitiativeRating = (2 × EffectiveAgility) + EffectivePerception + ExplicitInitiativeModifier`;
   - no random Initiative/opener roll;
   - snapshot on encounter entry;
   - deterministic ties;
   - no ordinary mid-encounter resorting or extra-turn scaling.

6. `FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`
   - `Bleeding / Staggered / Off-Balance / Braced / Guarded`;
   - no independent random status-proc roll;
   - Bleeding intensity max 3 / one tick max per actor-round;
   - Staggered disrupts Dodge/Parry but does not steal the next activation;
   - Guarded is directional and never auto-Blocks.

7. `FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`
   - primary surfaces `STABLE_GROUND / ROUGH_GROUND / SHALLOW_WATER / MUD`;
   - context tags `BRUSH / HIGH_GROUND / NARROW`;
   - exactly one primary surface controls movement surcharge;
   - no terrain random-slip roll;
   - Brush affects visibility, not armor/physical cover;
   - High Ground has no generic damage/Initiative bonus;
   - Narrow controls clearance/adjacency legality.

## First-slice terrain prototype values

Existing base costs remain owned by Action Economy/Stamina:
- adjacent move `1 AP / 0 Stamina` on Stable Ground;
- Sprint base `8 Stamina`;
- Dodge base `14 Stamina`.

Terrain Stamina surcharge:

| Surface | Move | Sprint | Dodge | Footing |
|---|---:|---:|---:|---|
| Stable | +0 | +0 | +0 | Stable |
| Rough | +1 | +2 | +2 | Unsteady |
| Shallow Water | +2 | +4 | +3 | Unsteady |
| Mud | +3 | +5 | +4 | Compromised |

Dodge uses `max(origin, destination)` terrain surcharge rather than summing both.

These are prototype values, not production-verified balance.

## Specificity / ownership

More-specific contracts supersede older placeholders only within their scope.

- Action Economy owns AP/RP/action timing.
- Stamina owns capacity/recovery/base exertion costs/floors.
- Initiative owns scheduler/order.
- Status contract owns selected status/tactical-state lifetime/stacking/removal.
- Terrain contract owns first-slice terrain costs/tags/footing semantics.
- Combat Resolution owns contact/defense/cover/hit-quality ordering.
- Field Poleblade owns first weapon techniques/capabilities.
- Region 01 owns where terrain/cover exists, not generic terrain formulas.
- Monster 01 content will own its concrete attacks/capabilities, not generic combat rules.

## Supporting authorities

- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/docs/10_world/regions/REGION_01/README.md`;
- `/docs/10_world/regions/REGION_01/ENCOUNTER_FOOTPRINTS.md`;
- `../progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

## Presentation boundary

UI/animation may display actions, resources, order, status, terrain, cover and traces but never:
- advances authoritative turns;
- spends/refunds AP/RP/Stamina independently;
- rerolls Initiative/attacks/status/terrain;
- ticks statuses;
- changes Guard direction because camera moved;
- creates invisible terrain cover;
- applies terrain movement costs independently;
- resolves hits/protection independently.

## Current combat-design gate

Recorded:
- Action Economy;
- Combat Resolution;
- First Weapon Family;
- Stamina Prototype;
- Initiative/Turn Order;
- First-Slice Status Set;
- First-Slice Terrain Effect Set.

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS_RECORDED`.
`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`.

Still required before real combat implementation:
1. Monster 01 combat attack packet;
2. first berserk prototype;
3. solo/party baseline;
4. defeat/retreat baseline;
5. prerequisite engine/domain/stats/content implementation and tests.

## Exact next bounded combat-design dependency

`MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`

That pass must define only Monster 01's minimum legal combat attack packet: required anatomy/capabilities, range/bearing, action commitment, telegraphs, legal reactions, status consequences, terrain/cover constraints and guard-impact behavior.

Do not combine it with berserk, party design, defeat/retreat behavior or production implementation.