# 20_gameplay — Gameplay Systems

Status: ACTIVE GAMEPLAY DESIGN MAP / MONSTER 01 NORMAL ATTACK + BERSERK CONTENT RECORDED
Last reconciled: 2026-09-03

## Purpose

Own reusable gameplay rules that apply across settlements, regions, monsters and content packages.

The game is the objective. This package organizes mechanics so content can configure them without forking generic laws.

Belongs here:
- combat/action economy/turn order;
- statuses/tactical states;
- terrain/effect framework;
- attributes/derived stats;
- equipment/progression;
- anatomy/damage/harvest generic rules;
- deterministic behavior-pattern rules;
- Crystal/mutation mechanics;
- party/control/failure rules;
- inventory/crafting/knowledge systems.

Does not belong here:
- exact Region 01 geography;
- one monster's anatomy/attack/Berserk numbers;
- one settlement layout;
- renderer/import implementation.

## Package map

### Progression
Front door: `progression/README.md`.

Direction:
- equipment + weapon mastery + knowledge weighted;
- bounded attribute growth;
- specialization/options over exponential inflation;
- anatomy, terrain and preparation remain relevant.

### Combat
Front door: `combat/README.md`.

Seven generic first-slice contracts:
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative/Turn Order;
6. First-Slice Status Set;
7. First-Slice Terrain Effect Set.

Reusable baseline:
- 4 AP / 1 RP / persistent Stamina;
- deterministic contact/defense/hit quality;
- normalized Stamina reference 100;
- deterministic Initiative/no random opener;
- one normal activation max per eligible actor/round;
- Bleeding/Staggered/Off-Balance/Braced/Guarded;
- Stable/Rough/Shallow Water/Mud + Brush/High Ground/Narrow;
- no independent terrain/status RNG layers;
- presentation never owns gameplay resolution.

## Monster 01 content consumer

Package:
`/docs/30_content/monsters/MONSTER_01/`.

Recorded content authorities:
- `COMBAT_ATTACK_PACKET.md` — normal attacks;
- `BERSERK_PROTOTYPE_CONTRACT.md` — Crystal-life-force desperation state;
- anatomy/behavior/Crystal package files.

Berserk key laws:
- deterministic entry at >20% and <=60% Core Energy plus desperation pressure;
- entry costs full activation +10% Max Core Energy +20 strain;
- active activation costs 5% Max +10 strain;
- existing attacks receive bounded AP discounts + attack-specific Core surcharges;
- still one damaging attack max;
- no extra turns/anatomy restoration/reaction removal;
- critical Energy/strain can exit only under legal non-Nest retreat conditions;
- zero Core Energy means death.

These are Monster 01 content values, not generic combat laws.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_GENERIC_CONTRACTS + MONSTER_01_ATTACK + BERSERK_RECORDED`

Real combat source remains blocked by readiness gates.

## Exact next gameplay dependency

`SOLO_PARTY_BASELINE_CONTRACT`

That pass must define only first-slice solo-vs-party participation/control/scheduler ownership and must not simultaneously define defeat/retreat resolution.

## Existing root/system authorities

- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/NEW_GAME_MASTER_PLAN.md`.

Rule: content/world packages configure shared gameplay definitions but do not silently override generic ownership.