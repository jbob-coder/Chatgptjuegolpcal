# Unnamed Hunt RPG — Master Design Plan

Status: DISCUSSION / DESIGN RECORDED / NO IMPLEMENTATION AUTHORIZED
Last reconciled: 2026-09-02

## 1. Core identity

This is a new game. It replaces WorldLife in the same project area but does not inherit WorldLife's gameplay design.

Core loop:
TRACK → PREPARE → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → SURVIVE → HARVEST → CRAFT/UPGRADE → HUNT HARDER PREY

Presentation modes:
1. Exploration: aerial/top-down angled 2D/3D hybrid.
2. Combat: first-person turn-based tactical encounter.

## 2. Design pillars

- Hunting should reward observation, preparation, anatomy knowledge, positioning, and tool choice.
- Every important body part has gameplay function, not just a cosmetic hitbox.
- Breaking/severing changes monster capabilities and later harvest results.
- Harvest quantity and quality derive from what physically survives the fight.
- Tactical combat offers movement, cover, posture, attack selection, body-part targeting, tools, reactions, and retreat.
- Exploration and combat share authoritative world/creature state.
- Presentation renders resolved state; animation/UI never decides hits, loot, or persistent state.
- First vertical slice proves one complete hunt loop before broad content expansion.

## 3. Exploration mode

Preferred direction:
- fixed or lightly rotatable aerial camera;
- angled top-down composition;
- 3D terrain/major geometry where depth matters;
- 2D/billboard/detail layers where they improve mobile performance without breaking visual cohesion;
- physical traversal rather than menu-map navigation;
- readable cover, elevation, hazards, tracks, gathering spots, monster paths, camps, and encounter spaces.

Candidate systems:
- movement/collision;
- camera pan/limited rotation/zoom;
- region/sector loading;
- roaming monsters;
- tracks and signs;
- gathering;
- environmental cover/hazards;
- stealth/approach later if useful;
- camps/safe zones;
- hunt objectives;
- hub/town layer;
- inventory/map/bestiary/quest access outside danger;
- encounter initiation preserving exact world context.

## 4. Encounter transition

Combat must be created from the exploration encounter state, including:
- encounter ID and deterministic seed;
- region/location;
- monster instance and existing injuries;
- player/party participants;
- starting range/position/bearing;
- cover nodes;
- elevation/terrain tags;
- hazards;
- escape routes;
- relevant weather/time conditions.

The first-person combat monster is the same authoritative creature, not a duplicate with unrelated health.

## 5. Turn-based combat action catalog

### Movement / position
- step left;
- step right;
- move forward;
- move backward;
- close distance;
- create distance;
- flank left;
- flank right;
- circle target;
- reposition to cover;
- leave cover;
- climb/descend where legal;
- sprint reposition at greater cost;
- retreat toward an exit;
- hold position.

### Posture / defense
- stand;
- crouch;
- brace;
- guard;
- dodge left/right/back;
- block;
- parry where weapon permits;
- take cover;
- peek from cover;
- lower profile;
- prepare a reaction.

### Offense
- basic attack;
- quick attack;
- heavy attack;
- precision attack;
- slash;
- thrust;
- blunt strike;
- ranged shot;
- aimed shot;
- charged attack;
- weapon technique;
- target a specific body part;
- target an exposed wound/broken plate;
- use terrain/hazard offensively;
- interrupt/contest telegraphed actions where rules permit.

### Tactical/support
- inspect/analyze;
- focus/aim;
- recover stamina;
- use healing/status/buff item;
- reload/prepare ammunition where relevant;
- deploy trap;
- deploy bait/lure;
- use hunting tool;
- mark target or part;
- interact with environment;
- assist/revive ally if party play is adopted;
- wait/pass;
- attempt escape.

### Reactions
Candidate reaction resource actions:
- dodge;
- block;
- parry;
- brace;
- counter/opportunity attack;
- protect ally;
- dive into nearby cover.

## 6. Action economy candidates

Preferred prototype candidate:
- small Action Point budget per turn;
- actions cost AP and sometimes stamina;
- limited Reaction resource can be reserved;
- expensive attacks may consume the turn;
- stamina persists across turns;
- initiative can change from injuries/status.

Alternative:
- Move + Main Action + Reaction.

This is an explicit discussion decision before implementation.

## 7. Spatial combat model

Recommended first implementation:
- authoritative tactical nodes/lanes/range bands rather than unrestricted real-time FPS movement;
- node tags for cover/elevation/terrain;
- explicit bearing relative to monster;
- body-part exposure can depend on bearing/posture;
- first-person camera animates between resolved nodes.

Example nodes:
- open near;
- open medium;
- rock cover left;
- wall cover right;
- elevated ledge;
- brush concealment;
- retreat route.

## 8. Monster anatomy system

`MonsterDefinition`
- species ID;
- base stats;
- behavior profile;
- attacks;
- body-part definitions;
- resistances;
- movement traits;
- ecology/region tags;
- harvest definitions.

`MonsterInstance`
- stable instance ID;
- variant/level;
- overall condition;
- per-part condition;
- statuses;
- behavior phase;
- persistent injuries/scars where appropriate.

`BodyPartDefinition`
- part ID;
- parent/attachment;
- max integrity;
- armor/hide/tissue/bone properties;
- hit difficulty/profile;
- damage modifiers;
- break threshold;
- sever threshold;
- breakable/severable flags;
- functional tags;
- harvest capacities.

`BodyPartState`
- current integrity;
- wounded/broken/severed/destroyed state;
- status effects;
- remaining harvestable mass;
- quality/condition;
- exposure modifiers.

Potential parts:
- head;
- neck;
- torso;
- abdomen;
- left/right forelimbs;
- left/right hind limbs;
- wing sections;
- tail segments;
- horns/antlers;
- claws/talons;
- armor plates;
- sensory organs;
- glands/special organs.

## 9. Functional anatomy consequences

Examples:
- broken leg reduces movement/escape;
- damaged wing limits/prevents flight;
- severed tail removes tail attacks and affects balance;
- broken horn removes or weakens gore attacks;
- damaged eye reduces perception/accuracy;
- broken armor exposes a vulnerable layer;
- damaged throat/lung changes stamina/breath attacks;
- wounded limb changes attack choice/accuracy.

## 10. Damage resolution

Potential damage types:
- cutting;
- piercing;
- blunt;
- environmental;
- elemental/energy only if setting later needs them.

Resolution sequence:
1. validate action;
2. determine target/body part;
3. resolve accuracy/evasion/cover;
4. determine hit quality;
5. resolve armor/hide/structure;
6. apply part integrity damage;
7. apply break/sever progress;
8. apply wound/status;
9. update functional consequences;
10. update monster behavior;
11. update harvest condition;
12. emit combat events/log.

## 11. Monster behavior

Behavior considers:
- species instincts;
- distance/bearing;
- player exposure/cover;
- pain/injury;
- broken/severed anatomy;
- stamina;
- rage/fear;
- environmental opportunities;
- desire to flee;
- pack/territorial behavior later.

Potential states:
- cautious;
- probing;
- aggressive;
- enraged;
- wounded;
- staggered;
- defensive;
- fleeing;
- trapped;
- exhausted.

## 12. Cover/environment system

Cover attributes may include:
- partial/full;
- directional protection;
- durability/destructibility;
- height;
- movement cost;
- creature-size restrictions;
- special interaction tags.

Environment candidates:
- rocks;
- trees;
- ruins/walls;
- ledges;
- water/mud;
- hazards;
- chokepoints;
- climbable positions;
- breakable terrain later.

## 13. Harvest system

Harvest is derived from real anatomy condition.

Conceptual rule:
available_yield = anatomical_capacity × remaining_harvestable_mass × condition_modifier × tool/skill_modifier × method_modifier

This formula is conceptual; implementation must be understandable and testable.

Resources may include:
- hide/scales;
- meat;
- bone;
- horn/antler;
- claw/talon;
- fang/tooth;
- tail material;
- tendon/sinew;
- wing membrane;
- armor plate/shell;
- gland;
- organ;
- venom/toxin;
- blood/fluid;
- rare internal component.

Rules:
- one unique anatomical structure cannot produce impossible duplicate loot;
- clean intact sever preserves more useful material;
- shattered/burned/crushed components can lose quantity or quality;
- different damage methods may convert a component into different material forms;
- harvest tool/skill/method may improve recovery but cannot create mass that did not exist.

## 14. Crafting/progression

Harvested materials may feed:
- weapons;
- armor;
- hunting tools;
- ammunition;
- traps;
- consumables;
- upgrades;
- research/bestiary;
- quests/contracts;
- trade/economy later.

Progression candidates:
- equipment-driven primary progression;
- weapon mastery;
- hunting skill/perk trees;
- harvesting proficiency;
- tracking/research;
- survival/crafting;
- reputation/rank unlocking harder hunts.

Raw level scaling should not invalidate tactical anatomy play.

## 15. Information/research mastery

The player should learn rather than automatically know everything.

Knowledge sources:
- observation;
- prior hunts;
- tracking signs;
- research/bestiary;
- NPC knowledge;
- inspection actions/tools;
- harvesting/dissection.

Unlockable knowledge:
- anatomy;
- resistances;
- attack tells;
- behavior patterns;
- harvest sources;
- environmental habits.

## 16. Visual direction

Target:
- grounded stylized realism rather than flat UI or toy-like scenery;
- aerial exploration must have strong silhouettes, height/depth readability, and believable scale;
- combat first-person view must make large creatures feel dangerous and anatomically readable;
- 2D and 3D elements must share consistent lighting, palette, scale, and material language;
- gore/dismemberment presentation intensity remains a discussion decision;
- UI should support touch without obscuring creature/body-part readability.

## 17. Architecture principles

Authoritative flow:
Input → Domain Action Request → Validate/Resolve → Authoritative State + Domain Events → Persistence/Replay/Debug → Presentation

Rules:
- UI cannot directly mutate health/loot/position;
- animations do not resolve hits;
- combat and exploration use the same persistent monster/player state;
- stable IDs for species, parts, items, materials, attacks, cover nodes, encounters, regions;
- deterministic seeds/logging where useful for debugging/replay;
- data-driven definitions before content explosion;
- save schema/versioning starts intentionally from the new project, not WorldLife schema 4.

## 18. Engine decision

Do not assume the old Kotlin/Compose/SceneView stack.

Candidates to discuss/test:
1. Godot 4.7 + GDScript + Compatibility renderer.
2. LibGDX + Kotlin.
3. Continue native Android/SceneView only if strong evidence justifies manually rebuilding game-engine systems.

Before locking engine:
- create only a tiny compatibility probe after implementation authorization;
- test aerial scene, first-person scene, input, camera transition, basic 3D creature, and target Android device performance;
- do not build gameplay until engine viability is verified.

## 19. First vertical slice

After discussion and explicit authorization only:
- one compact wilderness region;
- aerial exploration camera/movement;
- one roaming creature;
- one encounter transition;
- one first-person tactical combat arena;
- 6–8 meaningful body parts;
- one approved action economy;
- movement + cover + targeted attacks + defense;
- at least one break interaction;
- at least one sever interaction;
- behavior changes from anatomy damage;
- condition-based harvest result;
- one craftable upgrade;
- save/reload;
- Android phone verification.

Do not create a large world, large bestiary, or large crafting catalog before this loop works.

## 20. Open decisions for discussion

- permanent game name;
- world/setting/time period;
- realistic vs fantasy/sci-fi creature ecology;
- player identity and story role;
- solo vs party/companions;
- weapon classes;
- ranged/melee balance;
- exact action economy;
- node/range-band complexity;
- creature intelligence/AI depth;
- severity/presentation of body damage;
- harvesting interaction depth;
- crafting depth;
- progression structure;
- death/failure consequences;
- hub/town structure;
- quest/contract/story structure;
- multiplayer: currently assumed out unless explicitly requested;
- engine;
- Android minimum target and performance budget;
- controller support;
- orientation/UI layout;
- monetization/distribution assumptions if any.

## 21. Stop condition

No gameplay implementation begins until the user finishes the design discussion and explicitly authorizes creation.
