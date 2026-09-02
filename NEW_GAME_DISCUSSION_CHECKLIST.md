# Unnamed Hunt RPG — Discussion Checklist

Status: OPEN / MUST BE DISCUSSED BEFORE IMPLEMENTATION
Last reconciled: 2026-09-02

This file records decisions that must not be invented silently.

## Identity / setting
- Final game name.
- World setting: realistic, fantasy, science-fantasy, post-apocalyptic, alien, etc.
- Technology level.
- Why these creatures exist and why people hunt them.
- Player role/background.
- Tone: grounded survival, dark, heroic, adventurous, horror-leaning, etc.
- Story importance versus systems-driven hunting.

## Exploration
- Exact aerial camera angle.
- Fixed, rotatable, or limited camera.
- Full 3D world with aerial camera versus stronger 2.5D mix.
- Region size/streaming structure.
- Movement controls on Android.
- Tracking depth.
- Gathering depth.
- Stealth/approach mechanics.
- Camps/hubs/towns.
- Weather/day-night relevance.

## Combat
- Action Point model versus Move + Main + Reaction.
- Turn order/initiative model.
- Whether party/companions participate.
- Exact movement abstraction: nodes, lanes, range bands, or a hybrid.
- Cover depth and destructibility.
- Dodge/block/parry rules.
- Telegraph/reaction timing.
- Stamina model.
- Status effects.
- Retreat/failure rules.
- Whether encounters can end with monster escape and later continuation.

## Weapons / tools
- Initial weapon families.
- Melee versus ranged balance.
- Ammunition/reload mechanics.
- Weapon sharpness/durability: include only if it creates useful decisions.
- Traps/bait/lures.
- Hunting tools.
- Armor/equipment slots.

## Anatomy / damage
- Number of targetable parts per creature.
- Layer complexity: hide/armor/bone/tissue or simpler integrity model.
- Break versus sever thresholds.
- Whether sever requires cutting-specific damage.
- Overkill/destruction rules.
- Internal organs as targetable or only harvestable.
- Scar/persistent injury system for escaped creatures.
- Gore presentation: stylized, moderate, explicit.

## Harvesting
- Automatic post-hunt calculation versus interactive harvesting.
- Harvest time/tool choices.
- Quality tiers versus continuous quality score.
- Carry-weight/capacity constraints.
- Spoilage/decomposition.
- Rare materials and how rarity relates to anatomy rather than arbitrary loot rolls.
- Selling/trading materials.

## Crafting / progression
- Equipment-driven progression versus character levels.
- Skill/perk trees.
- Weapon mastery.
- Hunter rank/reputation.
- Bestiary/research progression.
- Crafting recipe complexity.
- Upgrade trees.
- Economy and merchants.

## Creature ecology / AI
- Solo versus pack creatures.
- Territorial behavior.
- Fleeing/chasing.
- Predator/prey ecology.
- Roaming schedules.
- Environmental interactions.
- Creature intelligence levels.

## Player failure
- Death versus incapacitation.
- Material loss.
- Contract failure.
- Save/checkpoint rules.
- Permadeath: currently assumed NO unless explicitly requested.

## Technology
- Engine choice.
- Target Android device/model and Android version.
- Minimum supported Android version.
- Performance target: 30/60 fps.
- Landscape orientation.
- Controller support.
- Offline-only versus online features.
- Multiplayer: currently assumed OUT unless explicitly requested.

## Content / scope
- First region theme.
- First monster concept.
- First weapon.
- First craftable upgrade.
- Number of regions/monsters expected long-term.
- Story/campaign structure.

## Deletion / replacement state
- WorldLife is no longer the active project.
- Same repository/Drive project area is being reused for this new game.
- Active WorldLife docs/source should be removed where tools permit.
- Old GitHub branches may remain as unreachable/history if the connector cannot delete/rename branches; they are not to be treated as active authority.
- Frozen Drive deletion is currently blocked by platform safety checks and must not be falsely reported as complete.

## Stop rule
Do not create gameplay source until the user explicitly says the design discussion is complete enough to begin implementation.
