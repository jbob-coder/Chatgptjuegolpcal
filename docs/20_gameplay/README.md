# 20_gameplay — Gameplay Systems

Status: ACTIVE GAMEPLAY DESIGN MAP / COMBAT FIVE-CORE-CONTRACT FOUNDATION RECORDED
Last reconciled: 2026-09-03

## Purpose

Own reusable gameplay rules that apply across many settlements, regions, monsters and content packages.

Belongs here:
- combat/action economy/turn order;
- attributes and derived stats;
- equipment/effect/status/terrain rule framework;
- anatomy/damage/harvest generic rules;
- deterministic behavior-pattern rules;
- crystal life-force mechanics;
- mutation mechanics;
- inventory/crafting/progression;
- knowledge/research;
- failure/death/recovery mechanics.

Does not belong here:
- exact Region 01 sector graph;
- one monster's exact anatomy/attack package;
- one settlement-building layout;
- engine renderer/import settings.

## Current package map

### Progression
Front door:
`progression/README.md`.

Primary authority:
`progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

Selected direction:
- hybrid progression;
- equipment + weapon mastery + knowledge weighted;
- slow bounded base-attribute growth;
- Hunter Rank primarily controls access/trust;
- specialization/options over exponential stat inflation;
- no universal gear-score treadmill as primary truth;
- anatomy, terrain and preparation remain relevant at high progression.

### Combat
Front door:
`combat/README.md`.

Current core contracts:
1. `combat/ACTION_ECONOMY_CONTRACT.md`;
2. `combat/COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
3. `combat/FIRST_WEAPON_FAMILY_CONTRACT.md`;
4. `combat/STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md`;
5. `combat/INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md`.

Current first-slice combat direction:
- `4 AP / 1 RP / persistent Stamina`;
- no AP banking;
- no ordinary progression-driven extra turns;
- explicit bounded reaction windows;
- deterministic legality/contact/hit-quality/defense pipeline;
- hit quality `MISS / GRAZE / SOLID / CLEAN / PRECISION`;
- first family `WEAPON_FAMILY_FIELD_POLEBLADE`;
- neutral Max Stamina prototype `100`;
- deterministic Initiative formula `(2 × EffectiveAgility) + EffectivePerception + ExplicitInitiativeModifier`;
- no random Initiative/opener roll;
- one normal activation maximum per eligible actor per round;
- stable tie/late-entry/removal/save-load scheduler rules;
- UI/animation never owns turn advancement or resource spending.

Current combat status:
`COMBAT_DESIGN_READINESS = PARTIAL / FIVE_CORE_CONTRACTS_RECORDED`.

Real combat source remains blocked by readiness gates.

Next dependent gameplay packet:
**`FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT`**.

That pass must remain small: only the reusable first-slice statuses/tactical states required to prove the architecture. Do not combine it with terrain values, Monster 01 attacks, berserk, party design or defeat/retreat behavior.

## Existing root/system authorities

Current root authorities remain authoritative within their scope, including:
- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/CONTENT_DATA_GUIDE.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/NEW_GAME_MASTER_PLAN.md`.

Package-local gameplay contracts refine compatible generic statements in those root files. A local package cannot silently fork global invariants.

Rule:
a content/world package may select/configure gameplay definitions but may not redefine the generic gameplay rule system locally.
