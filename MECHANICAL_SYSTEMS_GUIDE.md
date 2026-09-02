# Unnamed Hunt RPG — Mechanical Systems Guide

Status: DESIGN CONTRACT / NO IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

This document defines how the game's mechanics should behave and connect. It is not source code. It exists to prevent future implementation from becoming a collection of disconnected features.

The central law is:

`WORLD STATE → PLAYER/AI DECISION → VALIDATED ACTION → RESOLUTION → AUTHORITATIVE CONSEQUENCE → PRESENTATION → PERSISTENCE`

Every mechanic must identify its authoritative owner, inputs, outputs, invariants and downstream consequences.

# 1. Core gameplay loop

The intended complete hunt loop is:

`ACCEPT/PREPARE → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER/SURVIVE → MONSTER FLEES OR FALLS → HARVEST → RETURN/PROCESS → CRAFT/UPGRADE/RESEARCH → PREPARE FOR HARDER HUNT`

No individual subsystem should become deeper than the complete loop can support.

# 2. Player state

Authoritative player state should eventually include only mechanics that earn their complexity.

Core candidates:
- health;
- stamina;
- combat Action Points or equivalent action resources;
- reaction availability;
- current tactical position/bearing;
- equipped weapon/tool/armor;
- consumables/ammunition if applicable;
- statuses/injuries;
- inventory/materials;
- hunter knowledge/bestiary progress;
- progression/mastery/rank once approved;
- world position and current region/hunt state.

Do not duplicate combat health/stamina in UI or animation state.

# 3. Exploration mechanics

## 3.1 Movement

Exploration is continuous physical traversal from the angled aerial view.

Movement authority owns:
- player world position;
- collision legality;
- traversal surfaces;
- elevation transitions;
- blocked terrain;
- movement modifiers from terrain/status where later approved.

Presentation follows the authoritative position.

## 3.2 Camera

The camera is presentation, not gameplay position.

Current design target:
- elevated angled overview around 40–50 degrees downward;
- restrained movement/zoom;
- exact projection remains to be tested;
- camera framing prioritizes forward terrain and nearby monster/environment information.

Rotating or moving the camera cannot teleport the player or alter tactical bearing by itself.

## 3.3 Tracking

Tracking should create information, not merely spawn a glowing waypoint.

Potential evidence:
- footprints;
- broken branches;
- scratches;
- dung/shedding;
- blood;
- feeding remains;
- nests;
- calls/noise;
- displaced vegetation;
- territorial markings.

Tracking can reveal:
- direction;
- freshness;
- approximate size/species;
- injury state;
- behavior clue;
- destination/nest tendency.

Knowledge available depends on what the player has actually learned.

## 3.4 Monster roaming

Monsters exist as authoritative world instances, not random battle-only portraits.

A roaming monster may own:
- species/variant;
- instance ID;
- current region position/path;
- awareness state;
- current injuries/body-part condition;
- behavior mode;
- hunt relevance;
- persistence requirements.

If a monster escapes combat, the same instance can return to exploration with its surviving injuries if that feature is adopted.

## 3.5 Encounter initiation

Combat initiation creates an EncounterState from actual world context.

Transfer at minimum:
- player state;
- monster instance state;
- encounter location;
- approach direction/bearing;
- distance;
- nearby tactical cover;
- relevant elevation;
- hazards;
- escape routes;
- weather/time modifiers only when mechanically meaningful.

# 4. Tactical combat mechanics

## 4.1 Turn authority

One combat system owns:
- round/turn index;
- initiative/order;
- available action resources;
- reaction resources;
- legal actors;
- action queue/resolution state;
- encounter outcome.

No animation may advance the turn independently.

## 4.2 Action economy

Current candidate to test first after approval:
- small AP budget each turn;
- stamina as a separate persistent tactical resource;
- limited reaction resource reserved between turns;
- movement/attack/defense/tool actions consume different resources;
- heavy actions may consume most/all of a turn.

Final numbers are not locked.

Important invariant:
The player should be able to make meaningful combinations such as:
`MOVE TO COVER → AIM → ATTACK`
without every turn collapsing into one button.

## 4.3 Tactical space

Combat should use authoritative nodes/lanes/range/bearing rather than free real-time FPS locomotion for the first implementation.

A tactical node may define:
- node ID;
- relative position;
- range band;
- bearing/flank relation;
- cover;
- elevation;
- terrain tags;
- occupancy;
- movement cost;
- visibility/exposure relationships;
- escape adjacency.

First-person camera movement visually represents successful node changes.

## 4.4 Movement actions

Candidate actions:
- step left/right;
- advance;
- retreat;
- close/open range;
- flank/circle;
- move into cover;
- move out of cover;
- climb/descend where encounter supports it;
- sprint reposition;
- move toward escape;
- hold.

Movement changes tactical facts such as exposure and targetable anatomy.

## 4.5 Cover

Cover is directional and authoritative.

Cover may define:
- partial/full protection;
- protected directions;
- height;
- durability;
- destructibility;
- valid actor sizes;
- line-of-sight effects;
- attack restrictions;
- movement costs.

The visual rock/tree/wall is not enough. If cover matters mechanically, a corresponding domain definition must exist.

## 4.6 Posture / defense

Candidate states/actions:
- stand;
- crouch;
- brace;
- guard;
- block;
- parry;
- dodge;
- take cover;
- peek;
- prepare reaction.

Posture affects only rules explicitly defined for it: accuracy, exposure, defense, stamina, weapon legality, etc.

# 5. Targeting and anatomy

## 5.1 Anatomy hierarchy

Every major huntable monster is defined by a stable anatomy graph.

Potential hierarchy:
- body/root;
- torso;
- head;
- neck;
- limbs;
- tail and segments;
- wings and sections;
- horns/antlers;
- armor plates;
- claws/fangs;
- special external structures;
- internal harvestable organs where relevant.

Not every anatomical structure must be targetable. Only mechanically meaningful ones become combat targets.

## 5.2 Part state

A part may track:
- integrity;
- wounded state;
- break progress/state;
- sever progress/state;
- destroyed state;
- armor/structure condition;
- functional tags;
- exposure/targetability;
- remaining harvestable capacity/quality.

## 5.3 State distinctions

`INTACT` — normal function.

`WOUNDED` — damaged; effects depend on creature/part.

`BROKEN` — structural threshold crossed while attached; function reduced/disabled.

`SEVERED` — detached from parent; function removed; may become a recoverable world/encounter object.

`DESTROYED` — heavily damaged/shattered/ruined; usable material can be substantially reduced.

These states must not be treated as interchangeable.

## 5.4 Exposure

Targetability may depend on:
- player bearing;
- monster posture;
- cover/occlusion;
- range;
- attack type;
- previous broken armor;
- monster action/animation phase where the phase corresponds to an authoritative telegraph/state.

This creates tactical value for moving around the monster.

# 6. Attack mechanics

Every attack definition should eventually specify:
- stable attack ID;
- weapon/actor requirements;
- AP/stamina cost;
- valid range;
- valid target categories;
- accuracy behavior;
- damage type/profile;
- armor/structure interactions;
- break/sever contribution;
- status effects;
- telegraph/reaction rules;
- presentation event references.

Resolution order should remain deterministic/reproducible where possible:
1. validate actor/action/resources;
2. validate target/range/exposure;
3. resolve accuracy/evasion/cover;
4. resolve hit quality;
5. resolve protection/armor/structure;
6. apply integrity damage;
7. apply break/sever/destroy transitions;
8. apply statuses/wounds;
9. update functional abilities;
10. update AI information/state;
11. update harvest condition;
12. emit domain events;
13. consume resources/end action.

# 7. Monster capability dependencies

Monster attacks and movement capabilities should depend on functional anatomy tags instead of scattered hard-coded special cases.

Examples:
- tail sweep requires functional tail;
- horn charge requires functional head/horn plus charge locomotion;
- flight requires sufficient wing function;
- pounce may require functional hind limbs;
- bite requires functional head/jaw;
- venom spit may require intact gland/organ depending on creature design.

Breaking anatomy should alter the legal action set or effectiveness.

# 8. Monster AI

Monster AI consumes authoritative facts and chooses among legal actions.

Decision factors may include:
- distance;
- bearing;
- player cover/exposure;
- monster health/stamina;
- part injuries;
- disabled attacks;
- pain/rage/fear;
- threat history;
- environmental opportunities;
- escape routes;
- species temperament;
- pack state later.

AI pipeline:
`PERCEIVE AUTHORITATIVE STATE → BUILD LEGAL ACTIONS → SCORE/CHOOSE INTENT → VALIDATE/RESOLVE THROUGH SAME COMBAT RULES → PRESENT`

AI must not bypass normal rules.

# 9. Telegraphs and reactions

Monster attacks should provide readable cues when counterplay requires them.

Telegraph can include:
- posture;
- animation pose;
- sound;
- gaze/facing;
- environmental cue;
- UI cue only when necessary.

A telegraph corresponds to an authoritative pending/intent state. The presentation does not invent a fake attack.

Reaction candidates:
- dodge;
- block;
- parry;
- brace;
- counter;
- dive to cover;
- protect ally if party play is approved.

# 10. Injury and persistence

Monster injury should matter in combat and potentially across a hunt.

Possible persistent consequences:
- limp;
- inability to fly;
- removed tail/horn attack;
- exposed weak point;
- reduced perception;
- altered aggression;
- bleeding/trail evidence;
- easier tracking after escape;
- changed harvest quality.

Persistence beyond one encounter remains a design choice, but the model should not make it impossible.

# 11. Harvest mechanics

Harvest is not a generic loot roll.

Each harvest source links to a real anatomy part/capacity.

A harvest source may define:
- material ID;
- source part;
- original capacity;
- discrete versus continuous resource;
- minimum condition;
- quality rules;
- required/optimal tool;
- extraction method;
- time/safety cost;
- whether sever/break is required/preferred;
- contamination/damage modifiers.

Conceptual quantity:
`AVAILABLE = ORIGINAL_CAPACITY × REMAINING_USABLE_MASS × CONDITION × METHOD/TOOL/SKILL`

Actual implementation should be simpler than this formula if necessary, but must preserve the physical invariant.

Invariants:
- yield cannot exceed anatomical capacity;
- one horn cannot yield multiple intact horns;
- destroyed organs cannot yield intact organ rewards;
- clean severing can preserve value;
- crushing/burning/shattering can trade one resource form for another or reduce value;
- harvesting skill improves recovery efficiency but does not create impossible matter.

# 12. Harvest interaction depth

Still open for discussion:
- automatic post-hunt resolution;
- player chooses parts/tools and receives calculated result;
- limited interactive extraction sequence;
- time/safety decisions;
- carrying limits/spoilage later.

Preferred design principle: interaction should expose meaningful tradeoffs without turning every carcass into repetitive busywork.

# 13. Materials, inventory and crafting

Materials have stable IDs and properties.

Crafting consumes actual material stacks and quality requirements where relevant.

Potential outputs:
- weapons;
- armor;
- traps;
- ammunition;
- consumables;
- hunting tools;
- upgrades.

Crafting strategy should feed back into hunting strategy: the player may deliberately preserve a horn, tail membrane or gland because a desired upgrade needs it.

# 14. Knowledge / bestiary

Bestiary knowledge is progression, not just flavor text.

Potential unlocks:
- anatomy names;
- target weaknesses;
- armor properties;
- behavior tells;
- attack requirements;
- habitat/tracking clues;
- harvest sources;
- preferred tools/methods.

Information can come from:
- observing;
- fighting;
- harvesting;
- NPC research;
- tracks/signs;
- repeated hunts;
- inspection actions/tools.

Hidden information should remain hidden until legitimately learned.

# 15. Progression

Current preferred principle:
Equipment/knowledge/mastery should matter more than raw level inflation.

Candidates:
- equipment progression;
- weapon mastery;
- tracking/research proficiency;
- harvesting proficiency;
- hunter rank/reputation;
- selective perks/skills.

Do not implement a stat treadmill that makes anatomy and positioning irrelevant.

# 16. Failure / retreat

Combat can have outcomes other than kill:
- victory/kill;
- monster escape;
- player escape;
- player incapacitation/defeat;
- contract failure;
- interrupted hunt.

Exact penalties are open.

The architecture should allow a monster to survive and return to the region rather than assuming every encounter ends in death.

# 17. World-region mechanics

A region is a bounded playable hunting environment.

It should eventually own:
- geometry/traversal definition;
- spawn/ecology definitions;
- monster paths/territories;
- camps/safe points;
- resources/gathering;
- tracking evidence locations;
- encounter-compatible tactical features;
- hazards;
- region exits/transitions;
- weather/time presentation and gameplay modifiers when adopted.

Regions should be streamable/sectorized rather than requiring the whole future world to be active.

# 18. Settlement/hub mechanics

Potential hub functions:
- contract selection;
- crafting/blacksmith;
- harvesting/process services;
- research/bestiary;
- merchants;
- storage/loadout;
- NPC/story systems;
- training/testing later.

The hub should support the hunt loop rather than become an unrelated life simulator.

# 19. UI mechanical rule

UI exposes legal choices and current known state.

It must not:
- directly change health;
- directly grant loot;
- directly alter body-part state;
- bypass resource costs;
- reveal undiscovered monster data;
- move the player by presentation-only camera tricks.

# 20. Mechanical expansion rule

For every new mechanic, answer before implementation:
1. What player decision does this create?
2. Which authoritative subsystem owns it?
3. What state is required?
4. What action changes that state?
5. What invariant prevents impossible results?
6. What other systems consume the result?
7. How is it tested?
8. How is it presented?
9. What happens on save/reload?
10. Does it improve the complete hunt loop enough to justify its complexity?

If these cannot be answered, the mechanic is not ready for implementation.