# 20_gameplay — Gameplay Systems

Purpose: rules that can apply across many settlements, regions, monsters and content packages.

Belongs here after future migration/new work:
- combat/action economy;
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
- the exact sector graph of Region 01;
- one monster's exact anatomy package;
- one smithy layout;
- engine renderer/import settings.

## Current package map

### Progression
`progression/README.md`

Primary authority:
`progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`

Selected direction:
- hybrid progression;
- equipment + weapon mastery + knowledge weighted;
- slow bounded base-attribute growth;
- Hunter Rank primarily controls access/trust;
- progression favors specialization/options over exponential stat inflation;
- no universal gear-score treadmill as primary truth;
- anatomy, terrain and preparation must remain relevant at high progression.

### Combat
`combat/README.md`

Primary current authority:
`combat/ACTION_ECONOMY_CONTRACT.md`

Selected first-slice direction:
- separate AP / RP / Stamina resources;
- prototype hunter baseline `4 AP / 1 RP`;
- no AP banking;
- ordinary attributes/progression do not grant extra normal turns;
- standard movement commonly 1 AP;
- standard attack commonly 2 AP;
- precision attack commonly 3 AP;
- heavy/full-turn commitment commonly 4 AP;
- explicit reaction windows;
- one normal reaction per baseline reaction window;
- reaction recursion blocked;
- body-part selection inside an attack is not automatically an extra AP tax;
- UI/animation cannot own turn timing or resource spending.

Next dependent gameplay packet:
**Combat Resolution / Hit Quality and Defense Contract**.

## Existing root authorities

Current root authorities remain authoritative, including:
- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/NEW_GAME_MASTER_PLAN.md`.

The package-local combat/progression authorities refine compatible generic statements in those root files. If a root file still calls the action economy a candidate, `combat/ACTION_ECONOMY_CONTRACT.md` is the more specific current authority for the first-slice action-economy design.

Rule: a content/world package may select/configure gameplay definitions but may not fork the generic rules locally.
