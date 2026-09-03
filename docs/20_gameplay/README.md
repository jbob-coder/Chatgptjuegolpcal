# 20_gameplay — Gameplay Systems

Status: ACTIVE GAMEPLAY DESIGN MAP / COMBAT SEVEN-CORE-CONTRACT FOUNDATION RECORDED
Last reconciled: 2026-09-03

## Purpose

Own reusable gameplay rules that apply across settlements, regions, monsters and content packages.

The game is the objective. This package organizes mechanics so content can configure them without forking rules locally.

Belongs here:
- combat/action economy/turn order;
- statuses/tactical states;
- terrain/effect framework;
- attributes/derived stats;
- progression/equipment;
- anatomy/damage/harvest generic rules;
- deterministic behavior patterns;
- crystal/mutation mechanics;
- inventory/crafting/knowledge/failure rules.

Does not belong here:
- exact Region 01 geography;
- one monster's exact anatomy/attack list;
- one settlement layout;
- engine renderer/import settings.

## Package map

### Progression
Front door: `progression/README.md`.

Primary authority: `progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

Direction:
- equipment + weapon mastery + knowledge weighted;
- slow bounded base-attribute growth;
- specialization/options over exponential stat inflation;
- anatomy, terrain and preparation remain relevant at high progression.

### Combat
Front door: `combat/README.md`.

Current core contracts:
1. `combat/ACTION_ECONOMY_CONTRACT.md`;
2. `combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
3. `combat/FIRST_WEAPON_FAMILY_CONTRACT.md`;
4. `combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`;
5. `combat/INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`;
6. `combat/FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md`;
7. `combat/FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md`.

Current first-slice direction:
- `4 AP / 1 RP / persistent Stamina`;
- deterministic contact/hit-quality/defense;
- Field Poleblade first family;
- neutral Max Stamina `100`;
- deterministic Initiative/no random opener roll;
- one normal activation max per eligible actor/round;
- minimal status set `Bleeding / Staggered / Off-Balance / Braced / Guarded`;
- terrain surfaces `Stable / Rough / Shallow Water / Mud`;
- context tags `Brush / High Ground / Narrow`;
- no terrain random-slip roll;
- physical cover remains separate from terrain visibility/footing;
- UI/animation never owns authoritative turn/resource/status/terrain resolution.

Terrain prototype surcharges:
- Rough: Move +1 / Sprint +2 / Dodge +2 Stamina;
- Shallow Water: +2 / +4 / +3;
- Mud: +3 / +5 / +4;
- Stable: +0 / +0 / +0.

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_CORE_CONTRACTS_RECORDED`.

Real combat source remains blocked by readiness gates.

## Exact next gameplay packet

`MONSTER_01_COMBAT_ATTACK_PACKET_CONTRACT`

That packet must define only Monster 01's minimal combat attacks and their capability, range/bearing, telegraph, reaction, terrain/cover and status/guard-impact relationships.

Do not combine it with berserk, party design, defeat/retreat behavior or production implementation.

## Existing root/system authorities

- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/NEW_GAME_MASTER_PLAN.md`.

Rule:
content/world packages may select/configure gameplay definitions but may not redefine generic gameplay laws locally.