# Unnamed Hunt RPG — Discussion Checklist

Status: OPEN / MUST BE DISCUSSED BEFORE IMPLEMENTATION
Last reconciled: 2026-09-02

This file records decisions that must not be invented silently.

## Decisions now recorded

The following are current design decisions unless the user changes them:
- exploration uses an elevated angled dimensional overview rather than a flat map;
- visual readability may be compared conceptually to a Paper-Mario-like overview, but the game does **not** use a literal paper/craft aesthetic;
- core visual identity: **an illustrated hunting world brought to life**;
- tone target: grounded stylized wilderness / frontier monster-hunting fantasy — beautiful environments with dangerous, consequential hunts;
- current exploration camera prototype target: roughly 40–50° downward in landscape orientation;
- player and major monsters are preferably stylized 3D to preserve continuity into first-person combat;
- decorative foliage/details may use 2D/billboard/impostor techniques when visually coherent and useful for Android performance;
- nature and large readable forms dominate region composition;
- combat should transition by lowering/entering the same physical encounter context rather than loading an unrelated generic battle scene;
- damage to important anatomy should visibly persist;
- UI should resemble practical hunter/field-document interfaces rather than glossy generic mobile UI;
- environment should communicate tracking/navigation information before excessive HUD markers are used.

Full details: `VISUAL_WORLD_BEHAVIOR_BIBLE.md`.

## Identity / setting
- Final game name.
- Exact world setting/history: realistic, fantasy, science-fantasy, post-apocalyptic, alien, etc.
- Technology/magic level.
- Why these creatures exist and why people hunt them.
- Player role/background.
- Exact maturity level inside the grounded wilderness tone.
- Story importance versus systems-driven hunting.

## Exploration
- Exact camera projection: orthographic-like versus long-focal perspective after prototype comparison.
- Fixed, discrete-rotation, or tightly limited camera rotation.
- Exact 3D versus 2.5D asset mix by content category.
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
- Exact gore presentation intensity inside the current grounded/consequential direction.

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
- Landscape orientation: current design direction YES.
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
