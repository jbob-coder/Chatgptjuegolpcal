# 20_gameplay — Gameplay Systems

Status: ACTIVE GAMEPLAY DESIGN MAP / NINE GENERIC COMBAT CONTRACTS RECORDED / HARVEST BASELINE NEXT
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

Nine generic first-slice contracts are recorded:
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative/Turn Order;
6. First-Slice Status Set;
7. First-Slice Terrain Effect Set;
8. Solo / Party Baseline;
9. Defeat / Retreat Baseline.

Reusable baseline includes:
- 4 AP / 1 RP / persistent Stamina;
- deterministic contact/defense/hit quality;
- deterministic Initiative/no random opener;
- one normal activation max per eligible actor/round;
- first-slice status/terrain packets;
- solo-capable optional parties up to three active Hunters;
- deterministic companion behavior/orders;
- Hunter Downed state without first-slice permanent death;
- deterministic spatial withdrawal rather than random escape chance;
- Monster escape preserving same persistent instance;
- Monster death preserving final anatomy for harvest;
- terminal encounter scheduler/persistence ownership;
- presentation never owns gameplay resolution.

## Defeat / retreat selected baseline

Authority:
`combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md`.

Selected:
- Hunter Health `<=0` -> Downed;
- no in-combat revive first slice;
- player Hunter Downed ends encounter as Hunter defeat unless same boundary also kills Monster;
- companion Downed alone does not end encounter;
- `WITHDRAW_FROM_ENCOUNTER` costs 1 AP from a legal escape node;
- party retreat declaration costs player 1 AP and companions withdraw using their own turns/resources;
- Monster behavior owns retreat selection/route, outcome contract owns final escape completion;
- Monster escape -> reacquisition;
- Hunter voluntary withdrawal -> hunt remains active/disengaged;
- Monster death -> hunt complete and later harvest reads final anatomy;
- mutual terminal result is deterministic;
- terminal encounter cannot reopen or duplicate actors/outcomes on reload.

`DEFEAT_RETREAT_BASELINE_RECORDED = YES`
`DEFEAT_RETREAT_RUNTIME_IMPLEMENTED = NO`.

## Monster 01 content consumer

Package:
`/docs/30_content/monsters/MONSTER_01/`.

Recorded content authorities:
- `COMBAT_ATTACK_PACKET.md` — normal attacks;
- `BERSERK_PROTOTYPE_CONTRACT.md` — Crystal-life-force desperation state;
- `BEHAVIOR_AND_REGION.md` — deterministic activity/combat/retreat route selection;
- anatomy/Crystal package files.

Monster 01 remains the first content consumer of the generic combat package.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`COMBAT_DESIGN_BASELINE_COMPLETE = YES`
`COMBAT_RUNTIME_IMPLEMENTED = NO`.

## Exact next gameplay dependency

`FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`

The next pass should create a local harvest gameplay package/front door if needed and define:
- per-anatomy harvest capacity;
- remaining usable mass/condition;
- clean sever/break/destroy consequences;
- carcass and detached-part depletion;
- tool/knowledge/skill modifiers within physical capacity;
- deterministic yield traces;
- anti-duplication/persistence.

Do not combine that pass with crafting/economy implementation.

## Existing root/system authorities

- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/NEW_GAME_MASTER_PLAN.md`.

Specificity rule:
current bounded contracts supersede older unresolved placeholders within their exact scope.

Content/world packages configure shared gameplay definitions but do not silently override generic ownership.