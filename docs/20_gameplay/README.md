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

Current root authorities remain authoritative, including:
- `/MECHANICAL_SYSTEMS_GUIDE.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/NEW_GAME_MASTER_PLAN.md`.

Rule: a content/world package may select/configure gameplay definitions but may not fork the generic rules locally.
