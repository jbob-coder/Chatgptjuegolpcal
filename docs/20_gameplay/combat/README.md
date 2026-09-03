# 20_gameplay/combat — Tactical Combat Package

Status: ACTIVE DESIGN PACKAGE / SEVEN CORE CONTRACTS RECORDED / MONSTER 01 NORMAL ATTACK PACKET RECORDED / NO COMBAT IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own reusable first-person turn-based combat rules. Monster/content packages consume these rules without redefining their timing, resolution or resource laws.

The game is the objective. This README maps what combat owns, what content owns, what is recorded, what remains open and what comes next.

## Generic combat authorities

1. `ACTION_ECONOMY_CONTRACT.md`
   - 4 AP / 1 RP / persistent Stamina;
   - bounded reactions;
   - one normal activation maximum per eligible actor/round;
   - Monster actions obey the same timing/invariant framework even without a player-facing AP UI.

2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`
   - hard legality vs contested resolution;
   - AttackControl/DefenseControl;
   - body/selected-part contact;
   - directional cover;
   - one bounded seeded variance source;
   - `MISS / GRAZE / SOLID / CLEAN / PRECISION` generic classes.

3. `FIRST_WEAPON_FAMILY_CONTRACT.md`
   - `WEAPON_FAMILY_FIELD_POLEBLADE`;
   - cutting/sever primary;
   - piercing/control secondary;
   - directional Guard / restricted Parry.

4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`
   - normalized first-slice Max Stamina reference `100`;
   - passive `+10` once at normal activation start;
   - delayed Catch Breath;
   - Block `6 + impact drain`, Parry `10`, Dodge `14`, Reactive Brace `10` before terrain/modifiers.

5. `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`
   - deterministic Initiative snapshot;
   - no random opener;
   - no ordinary mid-encounter resorting;
   - one normal activation max per actor/round.

6. `FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`
   - Bleeding / Staggered / Off-Balance / Braced / Guarded;
   - no independent random status-proc roll;
   - generic stacking/timing/removal remains here.

7. `FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`
   - Stable / Rough / Shallow Water / Mud;
   - Brush / High Ground / Narrow;
   - no terrain random-slip roll;
   - physical cover remains separate from terrain visibility/footing.

## Monster 01 content consumer

Monster-specific authority:
`/docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

This is **not** an eighth generic combat contract. It configures the seven generic systems for one species.

Selected normal Monster 01 attacks:
- `M01_HORN_CHARGE` — `4 AP / 30 Stamina`;
- `M01_HEAD_SWEEP_GORE` — `2 / 14`;
- `M01_SHOULDER_RAM` — `3 / 22`;
- `M01_FORELEG_STOMP` — `2 / 12`;
- `M01_TAIL_SWEEP` — `3 / 18`.

Monster 01 first-slice normal-activation laws:
- internal 4-AP budget;
- max one damaging attack per activation;
- normal attacks do not spend Crystal Energy by default;
- anatomy loss removes/changes dependent attacks;
- no hidden multiattack from animation;
- no independent status RNG.

Reaction highlights:
- full Horn Charge rejects normal Poleblade Block/Parry;
- Head Sweep/Gore supports compatible Block and only physically compatible Parry;
- Shoulder Ram can only use the special Braced+Guarded Block case when physically legal;
- Foreleg Stomp rejects normal Block/Parry;
- Tail Sweep supports compatible Block/Parry.

Generic owners still decide reaction costs, contact, guard outcome, status stacking and terrain semantics.

## Specificity / ownership

- Action Economy owns AP/RP/timing.
- Stamina owns resource rules/base costs/floors.
- Initiative owns order/activation slots.
- Status contract owns status lifetime/stack/removal.
- Terrain contract owns generic terrain costs/tags.
- Combat Resolution owns contact/defense/cover/hit-quality order.
- Field Poleblade owns hunter weapon techniques/defensive capability.
- Monster 01 attack packet owns only Monster 01 attack definitions/capability requirements/consequence requests.
- Monster 01 behavior owns deterministic selection from currently legal attack candidates.
- Region 01 owns where terrain/cover/clearance exists.

No lower-level content file may silently override a generic owner.

## Presentation boundary

UI/animation may visualize actions, telegraphs, resources, order, status, terrain, cover and traces but never:
- advances turns;
- spends/refunds resources independently;
- rerolls attacks/status/Initiative;
- re-enables disabled anatomy attacks;
- changes attack range/clearance because animation reaches farther;
- creates hidden extra hits/attacks;
- changes Guard direction from camera motion;
- resolves status/cover/damage independently.

## Current combat-design gate

Generic core recorded:
- Action Economy;
- Combat Resolution;
- First Weapon Family;
- Stamina;
- Initiative;
- Status Set;
- Terrain Set.

First content consumer recorded:
- Monster 01 normal attack packet.

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS + MONSTER_01_ATTACK_PACKET_RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`

Still required before real combat implementation:
1. Monster 01 berserk prototype;
2. solo/party baseline;
3. defeat/retreat baseline;
4. prerequisite engine/domain/stats/content implementation and tests.

## Exact next bounded dependency

`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`

Keep the next pass limited to berserk entry, Crystal Energy/strain drain, visible tell, deterministic changes to availability/commitment/priority of existing anatomy-legal attacks, and stop/critical/death behavior.

Do not combine it with party design, defeat/retreat resolution or production implementation.