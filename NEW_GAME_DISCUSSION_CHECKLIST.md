# Unnamed Hunt RPG — Discussion Checklist

Status: OPEN / MUST BE DISCUSSED BEFORE IMPLEMENTATION
Last reconciled: 2026-09-02

This file records decisions that must not be invented silently.

## Decisions now recorded

Current decisions unless the user changes them:
- exploration uses elevated angled dimensional overview;
- Paper-Mario-like comparison is only for readability/camera philosophy, not paper/craft art;
- visual identity: **an illustrated hunting world brought to life**;
- tone target: grounded stylized wilderness/frontier monster-hunting fantasy;
- current aerial camera target roughly 40–50° downward;
- player/major monsters preferably stylized 3D;
- selective 2D/billboard/impostor detail allowed for Android efficiency;
- combat transitions into the same physical encounter context;
- anatomy damage visibly persists;
- practical hunter-field-document UI;
- environment communicates tracking/navigation before excessive HUD markers;
- **no AI behavior system**;
- NPCs/creatures use deterministic authored schedules/patterns/conditions with priorities, cooldowns and phases;
- simple actors use simple patterns; important monsters can use layered authored conditions;
- current six-role attribute direction: Might, Finesse, Agility, Endurance, Perception, Resolve;
- attributes are bounded; current internal scale recommendation is 1–100 while practical values remain open;
- equipment/status/terrain/weather/posture/action context use one shared modifier/effect pipeline;
- modifier stacking/caps/floors are explicit;
- AP/reaction scaling is tightly restricted;
- contextual hit quality is preferred over a generic hidden critical-hit system;
- terrain can mechanically affect movement, footing, visibility, tracking and tactical legality;
- development builds require stat/modifier and behavior-rule traces.

Detailed authorities:
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
- `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
- `BEHAVIOR_PATTERN_SYSTEM.md`

## Identity / setting
- Final game name.
- Exact world setting/history.
- Technology/magic level.
- Why creatures exist/are hunted.
- Player role/background.
- Exact maturity level.
- Story importance versus systems-driven hunting.

## Exploration
- Exact camera projection after prototype comparison.
- Fixed/discrete/tightly limited camera rotation.
- Exact 3D vs 2.5D asset mix.
- Region size/streaming.
- Android movement controls.
- Tracking depth.
- Gathering depth.
- Stealth/approach mechanics.
- Camps/hubs/towns.
- Weather/day-night relevance.

## Stats / attributes
- Exact starting attribute baseline/distribution.
- Whether player allocates starting points.
- Whether attributes grow directly, mostly through gear/mastery, or both.
- Exact practical soft range and hard cap.
- Health derivation.
- Stamina derivation/recovery.
- Initiative formula.
- Tracking/inspection formulas.
- Whether Resolve uses fear/panic mechanics or only stagger/composure.
- How strongly attributes influence attacks relative to weapon/technique/context.

## Action economy
- AP model final value/costs.
- Reaction resource final rules.
- Turn order/initiative model.
- Minimum movement/AP/stamina cost floors.
- Whether rare equipment/perks can alter AP and by how much.

## Equipment
- Initial weapon families.
- Melee/ranged balance.
- Equipment slots.
- Armor coverage model.
- Armor burden/weight model.
- Ammunition/reload.
- Sharpness/durability only if decision value justifies it.
- Traps/bait/lures.
- Hunting tools.
- Whether accessories/charms exist and how many.
- Upgrade branching depth.

## Status effects
- Exact first-slice status list.
- Bleeding severity/timing.
- Exhaustion model.
- Stagger vs Off-Balance distinction.
- Poison/toxin depth if setting supports it.
- Heat/cold depth.
- Psychological effects: use or omit.
- Buff duration/intensity philosophy.
- Cure/item interaction.
- Persistence between encounters.

## Terrain / weather
- Exact first terrain tags.
- Exact movement cost impact.
- Mud/water depth.
- High-ground benefits.
- Brush/concealment rules.
- Ice/rough-footing rules.
- Hazard system depth.
- Rain/fog/wind mechanical relevance.
- Heat/cold region strain.
- Whether terrain can be changed/destroyed during battle.

## Combat
- Party/companions or solo baseline.
- Exact nodes/lanes/range-band model.
- Cover depth/destructibility.
- Dodge/block/parry formulas.
- Telegraph/reaction timing.
- Retreat/failure rules.
- Monster escape/continuation.
- Exact hit-quality bands/formula.
- Resistance/protection channels.
- Whether any controlled randomness remains in hit resolution and how much.

## Deterministic NPC / creature patterns
- Complexity of first monster profile.
- Number of phases for first monster.
- Whether seeded variation is used broadly or only in tie groups.
- NPC daily schedule depth.
- Emergency/weather overrides.
- How much bounded short-term memory important monsters may keep.
- Pack/group pattern depth if later used.
- Boss pattern complexity cap/readability rule.

## Anatomy / damage
- Number of targetable parts.
- Layer complexity: hide/armor/bone/tissue vs simpler model.
- Break/sever thresholds.
- Whether sever requires cutting-specific damage.
- Overkill/destruction.
- Internal organs targetable vs harvest-only.
- Persistent scars/injury for escaped creatures.
- Exact gore intensity.

## Harvesting
- Automatic vs interactive harvesting.
- Harvest time/tool choices.
- Quality tiers vs continuous score.
- Carry capacity.
- Spoilage/decomposition.
- Rare-material logic tied to anatomy.
- Selling/trading.

## Crafting / progression
- Equipment-driven progression vs direct character levels.
- Skill/perk trees.
- Weapon mastery.
- Hunter rank/reputation.
- Bestiary/research progression.
- Recipe complexity.
- Upgrade trees.
- Economy/merchants.

## Creature ecology
- Solo vs pack creatures.
- Territorial behavior.
- Fleeing/chasing.
- Predator/prey ecology.
- Roaming schedules/patterns.
- Environmental interactions.
- Creature cognitive/behavior complexity expressed through authored patterns, not AI.

## Player failure
- Death vs incapacitation.
- Material loss.
- Contract failure.
- Save/checkpoint rules.
- Permadeath currently assumed NO unless requested.

## Technology
- Engine choice.
- Target Android device/version.
- Minimum Android.
- 30/60 FPS target.
- Landscape orientation current direction YES.
- Controller support.
- Offline vs online features.
- Multiplayer currently assumed OUT unless requested.

## Content / scope
- First region theme.
- First monster.
- First weapon/equipment set.
- First craftable upgrade.
- First terrain/status set.
- Long-term region/monster count.
- Story/campaign structure.

## Stop rule

Do not create gameplay source until the user explicitly says the design discussion is complete enough to begin implementation.