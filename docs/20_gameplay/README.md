# 20_gameplay — Gameplay Systems

Status: ACTIVE GAMEPLAY DESIGN MAP / SEVEN GENERIC COMBAT CONTRACTS + MONSTER 01 NORMAL ATTACK PACKET RECORDED
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
- inventory/crafting/knowledge/failure systems.

Does not belong here:
- exact Region 01 geography;
- one monster's exact anatomy/attack list;
- one settlement layout;
- renderer/import implementation.

## Package map

### Progression
Front door: `progression/README.md`.

Primary authority: `progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

Direction:
- equipment + weapon mastery + knowledge weighted;
- bounded base-attribute growth;
- specialization/options over exponential stat inflation;
- anatomy, terrain and preparation remain relevant at high progression.

### Combat
Front door: `combat/README.md`.

Seven generic core contracts:
1. `combat/ACTION_ECONOMY_CONTRACT.md`;
2. `combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
3. `combat/FIRST_WEAPON_FAMILY_CONTRACT.md`;
4. `combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`;
5. `combat/INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`;
6. `combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
7. `combat/FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`.

Current reusable first-slice direction:
- 4 AP / 1 RP / persistent Stamina;
- deterministic contact/hit-quality/defense;
- Field Poleblade;
- normalized 100-point Stamina reference;
- deterministic Initiative/no random opener;
- one normal activation max per eligible actor/round;
- Bleeding / Staggered / Off-Balance / Braced / Guarded;
- Stable / Rough / Shallow Water / Mud;
- Brush / High Ground / Narrow;
- no terrain random-slip RNG;
- UI/animation never owns authoritative turn/resource/status/terrain resolution.

## First monster content consumer

Monster 01 package:
`/docs/30_content/monsters/MONSTER_01/`.

Normal combat attack authority:
`/docs/30_content/monsters/MONSTER_01/COMBAT_ATTACK_PACKET.md`.

Selected attacks:
- Horn Charge;
- Head Sweep/Gore;
- Shoulder Ram;
- Foreleg Stomp;
- Tail Sweep.

These are Monster 01 content, not generic combat rules.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_ATTACK_RUNTIME_IMPLEMENTED = NO`

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS + MONSTER_01_ATTACK_PACKET_RECORDED`

Real combat source remains blocked by readiness gates.

## Exact next gameplay/content dependency

`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`

That pass must remain Monster 01-specific and consume the generic Crystal/behavior/combat laws rather than redefining them.

Do not combine it with party design, defeat/retreat resolution or production implementation.

## Existing root/system authorities

- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/NEW_GAME_MASTER_PLAN.md`.

Rule:
content/world packages configure shared gameplay definitions but do not silently override generic ownership.