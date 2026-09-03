# 20_gameplay — Gameplay Systems

Status: ACTIVE GAMEPLAY DESIGN MAP / SOLO-PARTY BASELINE RECORDED / DEFEAT-RETREAT NEXT
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

Eight generic first-slice contracts now recorded:
1. Action Economy;
2. Combat Resolution;
3. Field Poleblade;
4. Stamina;
5. Initiative/Turn Order;
6. First-Slice Status Set;
7. First-Slice Terrain Effect Set;
8. Solo / Party Baseline.

Reusable baseline:
- 4 AP / 1 RP / persistent Stamina;
- deterministic contact/defense/hit quality;
- deterministic Initiative/no random opener;
- one normal activation max per eligible actor/round;
- Bleeding/Staggered/Off-Balance/Braced/Guarded;
- Stable/Rough/Shallow Water/Mud + Brush/High Ground/Narrow;
- solo-capable optional party framework;
- max three active hunters for first-slice prototype;
- player directly controls only their hunter;
- companions use deterministic authored behavior plus bounded player orders;
- independent per-actor AP/RP/Stamina;
- no runtime generative companion AI;
- presentation never owns gameplay resolution.

## Solo / party selected baseline

Authority:
`combat/SOLO_PARTY_BASELINE_CONTRACT.md`.

Selected:
- solo completion remains mandatory;
- optional companions allowed;
- active party cap `3` hunters total;
- no mid-combat body switching;
- `ISSUE_COMPANION_ORDER` costs player `1 AP`, max one successful command action per player activation;
- orders: Standard / Focus Part / Hold Position / Close Distance;
- companions use the same Initiative scheduler and get one normal activation max each;
- companion reactions are deterministic through their own RP/Stamina;
- absent companions do not teleport into combat;
- late entrants wait until next round.

## Monster 01 content consumer

Package:
`/docs/30_content/monsters/MONSTER_01/`.

Recorded content authorities:
- `COMBAT_ATTACK_PACKET.md` — normal attacks;
- `BERSERK_PROTOTYPE_CONTRACT.md` — Crystal-life-force desperation state;
- anatomy/behavior/Crystal package files.

Monster 01 remains the first content consumer of the generic combat package.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`SOLO_PARTY_BASELINE_RECORDED = YES`
`COMBAT_DESIGN_READINESS = PARTIAL / EIGHT_GENERIC_CONTRACTS + MONSTER_01_ATTACK + BERSERK_RECORDED`

Real combat source remains blocked by readiness gates.

## Exact next gameplay dependency

`DEFEAT_RETREAT_BASELINE_CONTRACT`

That pass must stay limited to first-slice defeat, retreat/escape, monster defeat/escape, encounter termination, hunt continuation/failure and scheduler/persistence ownership.

Do not combine it with reward sharing, relationship systems or production implementation.

## Existing root/system authorities

- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/NEW_GAME_MASTER_PLAN.md`.

Specificity rule:
`combat/SOLO_PARTY_BASELINE_CONTRACT.md` supersedes older open solo/party placeholders within its scope.

Content/world packages configure shared gameplay definitions but do not silently override generic ownership.
