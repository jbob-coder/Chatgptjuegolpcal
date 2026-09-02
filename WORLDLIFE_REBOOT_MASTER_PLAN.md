# WorldLife RPG — Full Reboot Master Plan

Status: `DISCUSSION / DESIGN RECORDED / NO IMPLEMENTATION AUTHORIZED`
Last reconciled: 2026-09-02.

## 0. Decision boundary

The user has ordered a full gameplay/technical reboot of WorldLife RPG.

The old v0.5.8 Android/Compose/SceneView game is no longer the intended gameplay design. It is **legacy frozen history**, not the implementation base for the reboot.

Important EVOLVE safety interpretation:

- the user requested that the old game be deleted and the project restarted;
- the user also explicitly required that this planning/design pass be recorded first and that no new game creation begin until a discussion occurs;
- therefore destructive deletion of the frozen v0.5.8 source/Drive history is deliberately deferred until after the discussion and an explicit post-plan execution decision;
- no old source is to be mutated into the reboot;
- no new gameplay source is to be created during this planning milestone;
- rollback/history is preserved while the design is discussed.

This is not refusal of the reboot. It is a rollback-safe staging boundary.

## 1. New high-level identity

Working name remains `WorldLife RPG` only until naming is discussed.

The reboot is a **monster-hunting tactical RPG** with two deliberately different presentation modes:

1. **Exploration mode** — aerial/top-down angled 2D/3D hybrid world presentation.
2. **Combat mode** — first-person, turn-based tactical encounters.

The design should capture the satisfaction of hunting large creatures, learning anatomy, breaking/severing valuable body parts, and converting successful hunts into meaningful material progression without copying Monster Hunter characters, monsters, maps, UI, writing, branding, weapon designs, or assets.

The new core fantasy is:

`TRACK → PREPARE → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → SURVIVE → HARVEST → CRAFT/UPGRADE → HUNT HARDER PREY`

## 2. Non-negotiable design pillars

### 2.1 Two-mode presentation

Exploration and combat are separate presentation layers but share one authoritative game state.

- aerial exploration must feel spatial and physical, not like a menu map;
- combat transitions to first-person so the creature feels large, dangerous and anatomically readable;
- the transition must preserve the encounter location, participants, environmental cover and monster condition.

### 2.2 Tactical turn-based combat

Combat is not a simple `Attack / Defend / Item` menu.

The player should make spatial and anatomical decisions every turn, including where to move, what posture to use, what cover to occupy, what attack to perform, and what body part to target.

### 2.3 Body-part combat is authoritative

Every huntable creature is built from data-defined combat body parts.

Examples:

- head;
- neck;
- torso;
- abdomen;
- left/right forelimb;
- left/right hind limb;
- wing sections;
- tail segments;
- horns/antlers;
- claws/talons;
- armor plates;
- sensory organs;
- special glands/organs where creature design requires them.

Parts can have different:

- maximum integrity;
- armor/hide value;
- bone/tissue properties;
- severability;
- breakability;
- hit difficulty;
- exposure/angle requirements;
- resistances/weaknesses;
- functional consequences;
- harvest tables.

### 2.4 Damage changes creature behavior

Breaking or severing a part must matter beyond loot.

Examples:

- broken forelimb reduces charge stability or melee accuracy;
- damaged wing prevents or limits flight;
- severed tail removes tail attacks and changes balance;
- broken horn removes a gore attack but may enrage the creature;
- damaged eye reduces accuracy/perception;
- broken armor plate exposes a vulnerable layer;
- injured leg reduces movement and escape ability;
- throat/lung damage may alter stamina or breathing attacks.

### 2.5 Harvest quantity depends on what actually survived the fight

Loot is not an unrelated random reward roll.

The quantity and quality of material available from a body part is derived from the physical/combat condition of that part.

Conceptual rule:

`available_yield = anatomical_capacity × remaining_harvestable_mass × condition_modifier × harvest_skill/tool_modifier × method_modifier`

The final implementation must use bounded deterministic/randomized rules with visible explanations rather than hidden arbitrary loot spikes.

Examples:

- cleanly severed intact tail → high tail-material yield;
- tail destroyed by repeated explosive damage → low/no usable yield;
- horn broken near the base → larger recoverable horn section than a shattered horn;
- burned hide → reduced usable hide;
- carefully killed gland-bearing creature without rupturing gland → valuable intact organ;
- crushed bone may yield fragments/powder but not a full crafting component.

### 2.6 Information is part of mastery

The player should not automatically know every weakness on first contact.

Knowledge can come from:

- observation during battle;
- prior hunts;
- tracking signs;
- field notes/bestiary research;
- NPC knowledge;
- tools or inspection actions;
- dissecting/harvesting previous specimens.

Knowledge should reveal useful facts progressively: anatomy, resistances, attack tells, harvest sources and environmental behavior.

### 2.7 The renderer never invents gameplay state

Following EVOLVE and the existing WorldLife architecture lesson:

- the domain/combat model owns positions, turn order, body integrity, status, cover occupancy, inventory, harvest results and encounter outcome;
- aerial or first-person presentation renders authoritative state and requests domain actions;
- animation does not secretly decide whether an attack hit;
- UI does not directly mutate monster health or inventory.

## 3. Exploration mode — aerial 2D/3D hybrid

The exact rendering composition remains a discussion decision, but the preferred direction is **2.5D / hybrid aerial exploration** rather than a flat 2D map or a free third-person camera.

Candidate presentation:

- fixed or lightly rotatable angled aerial camera;
- 3D terrain/large structures/creatures where depth materially improves readability;
- 2D or billboarded foliage/details/effects where that reduces cost without looking cheap;
- strong silhouettes and height separation;
- clear paths, cover, elevation, water, cliffs, vegetation and monster tracks;
- human-scale world objects;
- touch controls designed around an Android landscape screen.

Exploration systems planned:

- player movement;
- collision and traversal;
- camera pan/limited rotate/zoom as appropriate;
- region streaming or room/sector loading;
- monster roaming;
- tracking signs;
- gathering nodes;
- interactable cover/terrain tags;
- hunt objectives;
- encounter initiation;
- safe zones/camps;
- hub/town layer;
- inventory access outside danger;
- map/bestiary/quest access;
- environmental hazards;
- optional stealth/approach state later.

## 4. Encounter transition

When combat begins, the game creates an authoritative `EncounterState` from the exploration state.

The encounter snapshot should include at minimum:

- encounter ID/seed;
- world/region ID;
- monster instance IDs and current persistent condition;
- player/party participants;
- starting range bands/positions;
- facing/relative bearing;
- nearby cover nodes;
- elevation/terrain tags;
- hazards;
- escape routes;
- weather/time modifiers if gameplay-relevant;
- already damaged monster parts if the hunt continues from a prior engagement.

The camera/presentation then switches to first person.

No duplicate combat-only monster should be created whose health is unrelated to the exploration creature.

## 5. Turn-based combat action vocabulary

This is the initial comprehensive action list. It is a design catalog, not a claim that all actions will ship in the first slice.

### Movement / positioning

- step left;
- step right;
- move forward;
- move backward;
- reposition to another cover node;
- flank left;
- flank right;
- close distance;
- create distance;
- circle target;
- climb/descend when encounter geometry supports it;
- retreat toward an exit route;
- sprint reposition at higher stamina/action cost;
- hold position.

### Posture / defensive behavior

- stand;
- crouch;
- brace;
- guard;
- dodge left/right/back;
- block/parry when weapon permits;
- take cover;
- peek from cover;
- leave cover;
- lower profile;
- prepare reaction/overwatch-like response where weapon class supports it.

### Offensive behavior

- basic attack;
- heavy attack;
- quick attack;
- precision attack;
- thrust;
- slash;
- blunt strike;
- ranged shot;
- aimed shot;
- charged attack;
- special weapon technique;
- attack a specific body part;
- attack an exposed wound/broken plate;
- use environmental hazard against target;
- interrupt/contest a telegraphed monster action where rules allow it.

### Tactical/support behavior

- inspect/analyze target;
- focus/aim;
- recover stamina;
- use item;
- use healing item;
- use buff/antidote/status item;
- change equipped item/weapon if rules permit;
- reload or prepare ammunition where relevant;
- sharpen/maintain weapon only if that mechanic earns its complexity;
- deploy trap;
- deploy bait/lure;
- use hunting tool;
- mark target/part;
- interact with environment;
- assist/revive ally if party play is later adopted;
- wait/pass;
- attempt escape.

### Reaction layer

Candidate reactions, subject to action-economy discussion:

- dodge reaction;
- block reaction;
- parry reaction;
- brace reaction;
- opportunity/counterattack;
- protect ally;
- dive into nearby cover.

## 6. Recommended action economy for discussion

Do not implement until approved.

Preferred prototype model:

- each combatant receives a small Action Point budget each turn;
- movement, posture and attacks consume different AP/stamina;
- one limited Reaction resource may be reserved between turns;
- expensive attacks can consume the whole turn;
- stamina is a persistent tactical limiter distinct from AP;
- initiative determines order but may be affected by injuries/status.

Reasoning: this supports meaningful combinations such as `step right → take cover → aimed shot` without forcing every turn into one rigid action.

Alternative: separate `Move + Main Action + Reaction`. Simpler UI, less flexible. This remains open for discussion.

## 7. Spatial combat model

A first-person turn-based game still needs precise position authority.

Recommended abstraction for the first implementation:

- combat **nodes / lanes / range bands**, not unrestricted real-time coordinates;
- each node has cover/elevation/terrain tags;
- relative bearing to the monster is explicit;
- monster body-part exposure can depend on bearing and posture;
- movement changes tactical state deterministically;
- first-person camera animates between authoritative nodes.

Example encounter nodes:

- open ground near;
- open ground medium;
- rock cover left;
- ruined wall right;
- elevated ledge;
- brush concealment;
- retreat path.

This gives the tactical feel of real positioning without building a full first-person real-time navigation engine inside a turn-based system.

## 8. Monster anatomy model

Proposed data model concepts:

`MonsterDefinition`
- stable species ID;
- base stats;
- behavior profile;
- body-part definitions;
- attacks;
- movement traits;
- resistances;
- loot/harvest definitions;
- ecology/region tags.

`MonsterInstance`
- stable instance/encounter ID;
- level/variant;
- current overall condition;
- current body-part states;
- statuses;
- behavior phase;
- persistent scars/injuries if a hunt can span encounters.

`BodyPartDefinition`
- stable part ID;
- parent/attachment relationship;
- max integrity;
- armor/tissue/bone values;
- hit profile;
- damage-type modifiers;
- break threshold;
- sever threshold;
- severable flag;
- functional tags;
- harvest resource capacities.

`BodyPartState`
- current integrity;
- break/sever state;
- wounds;
- status effects;
- remaining harvestable mass/quality;
- exposure modifiers.

## 9. Damage model

Damage needs to be understandable, not simulation noise.

Planned categories:

- cutting;
- piercing;
- blunt;
- elemental/energy categories only if the setting later requires them;
- environmental damage.

A hit resolves through:

1. action legality;
2. selected target/body part;
3. accuracy/evasion/cover;
4. hit result;
5. armor/hide/structure interaction;
6. part integrity damage;
7. break/sever progress;
8. wound/status application;
9. functional consequences;
10. monster AI state update;
11. harvest-condition update;
12. combat log/event emission.

No visual animation decides these outcomes.

## 10. Monster behavior / enemy turns

Monster AI should use the same authoritative encounter model rather than bespoke animation scripts.

Behavior factors:

- species instincts;
- distance;
- bearing;
- exposed player position;
- player cover;
- monster pain/injury;
- broken/severed parts;
- stamina;
- rage/fear;
- environmental opportunities;
- desire to flee;
- pack/territorial behavior later.

Monster actions should be telegraphed enough for the player to make tactical decisions without making outcomes trivial.

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

## 11. Cover and environment

Cover is part of combat state.

Cover definitions may include:

- full/partial;
- directional protection;
- durability/destructibility;
- height;
- monster-size restrictions;
- movement cost to enter/leave;
- special interaction tags.

Environment can support:

- rocks;
- trees;
- ruined walls;
- ledges;
- water/mud;
- hazards;
- chokepoints;
- climbable positions;
- breakable terrain later.

The first slice should use a small number of strongly readable tactical objects, not a huge procedural environment system.

## 12. Harvest system

Harvest happens from real anatomy state after combat or from a safely accessible severed part during/after combat if the design later allows it.

Each harvestable anatomical resource defines:

- source body part;
- maximum quantity/capacity;
- minimum condition required;
- quality bands;
- valid harvesting tools;
- extraction difficulty/time;
- contamination/damage modifiers;
- whether break/sever is required;
- whether a destroyed part makes it unavailable.

Potential resource families:

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

### Harvest quantity principle

Do not use `monster died → roll 1–3 tails`.

The body cannot yield more of a unique anatomical structure than physically exists.

Examples:

- one tail cannot become three tails;
- two horns may each have independent condition/yield;
- hide quantity can be continuous/units based on surviving surface area;
- bone yield can be distributed across several parts;
- glands/organs generally have discrete capacities.

### Harvest quality principle

Condition determines quality tiers or continuous quality score.

Possible factors:

- part integrity remaining;
- severity/type of damage;
- whether sever was clean;
- overkill;
- burn/corrosion/contamination;
- time since death if decomposition is later modeled;
- harvesting tool;
- harvesting skill;
- player choice to harvest quickly vs carefully.

## 13. Crafting/progression connection

Materials should matter because they feed visible player growth.

Planned uses:

- weapons;
- armor;
- hunting tools;
- ammunition/consumables;
- traps;
- upgrades;
- research/bestiary unlocks;
- quest turn-ins;
- economy/trade later.

Crafting recipes should reference stable material IDs and quantities/quality requirements.

Part-targeting strategy should therefore create build strategy: the player may choose a harder, riskier method to preserve a specific component.

## 14. Player progression

Discussion candidates:

- equipment-driven power as the primary progression;
- hunting skill trees/perks as secondary progression;
- weapon mastery;
- harvesting proficiency;
- tracking/research proficiency;
- survival/crafting progression;
- reputation/rank unlocking harder contracts.

Avoid making raw character level overwhelm anatomy/tactics.

## 15. RPG/world systems candidates

These are possible future layers, not first-slice requirements:

- hub settlement;
- hunters/guild/factions;
- contracts/quests;
- story arcs;
- NPC relationships;
- merchants/crafters;
- regional ecology;
- day/night/weather;
- monster migration;
- persistent wounds/scars;
- rival hunters/companions;
- property/base upgrades;
- economy;
- legal/crime/family/life-sim systems only if the reboot discussion explicitly retains them.

The reboot should not automatically inherit every old WorldLife life-simulation feature.

## 16. Visual direction

Target: **grounded stylized realism optimized for Android readability**.

Exploration:

- aerial angled composition;
- readable terrain layers;
- strong monster silhouettes;
- restrained HUD;
- modular environmental kits;
- clear interaction cues without excessive floating icons;
- controlled lighting and shadows;
- no toy-like oversized roads/props;
- no random AI-scene collage aesthetic.

Combat:

- first-person camera at believable eye height;
- creature scale emphasized through perspective;
- body parts readable through anatomy/silhouette, not permanent neon outlines;
- target highlighting appears contextually while aiming/inspecting;
- clear cover edges and movement destinations;
- attack telegraphs readable before resolution;
- damage state visible through wounds, posture, broken geometry/material changes where feasible;
- UI prioritizes current turn, AP/stamina, weapon, target part, cover, status and predicted action cost.

## 17. Mobile performance direction

The reboot is Android-first and must be designed around real device budgets from the start.

Rules:

- profile on the actual target phone early;
- prefer bounded combat arenas and streamed exploration regions;
- cap active monsters/NPC visuals;
- pool/reuse effects;
- atlas/reuse textures;
- use LOD/simplified distant representation if 3D is selected;
- avoid unnecessary real-time shadows/lights;
- keep first-person combat scene object counts bounded;
- separate simulation population from rendered population;
- do not raise minimum device requirements casually.

## 18. Technology decision — NOT YET LOCKED

The old Kotlin + Jetpack Compose + SceneView stack is **not recommended as the default reboot foundation**. It can render UI and 3D, but rebuilding a full combat/exploration engine, animation workflow, scene editor, asset pipeline and tactical encounter system around it would create unnecessary bespoke engine work.

### Candidate A — Godot 4.7, GDScript, Compatibility renderer

Current recommendation for discussion.

Reasons:

- native 2D and 3D scene systems in one engine;
- strong fit for hybrid 2.5D exploration + first-person combat scenes;
- animation, particles, physics, navigation, resources and editor tooling already exist;
- Android export is first-class;
- Compatibility renderer targets OpenGL ES 3.0-class hardware and is the lower-end path;
- domain combat logic can remain pure/data-driven and separately testable.

Risk:

- actual target-phone GPU/driver compatibility must be validated with a tiny device probe before building the project around it.

### Candidate B — LibGDX/Kotlin

Reasons:

- strong Android control;
- efficient 2D/3D rendering;
- Kotlin/JVM familiarity;
- lower engine abstraction.

Costs:

- more custom editor/content tooling;
- more manual scene/animation/data workflow;
- higher implementation burden for this project's intended scope.

### Candidate C — continue Compose + SceneView

Not recommended unless a strong constraint requires it.

Reason: too much of the reboot's required game-engine functionality would remain custom plumbing.

### Decision gate

Before implementation, choose engine based on:

- target phone compatibility probe;
- 2D/3D hybrid rendering quality;
- first-person scene quality;
- input/touch support;
- asset pipeline;
- animation pipeline;
- APK size;
- performance;
- build reproducibility;
- developer workflow.

## 19. New architecture target

Regardless of engine, use a domain-first structure.

Conceptual modules:

`domain/`
- game state;
- encounter state;
- combat resolver;
- anatomy/body-part system;
- monster AI decisions;
- harvest resolver;
- inventory/equipment;
- crafting;
- quests/progression later;
- deterministic RNG/event log.

`content/`
- monster definitions;
- body-part definitions;
- attack definitions;
- weapons;
- materials;
- recipes;
- regions;
- cover/environment definitions.

`presentation/exploration/`
- aerial world renderer;
- exploration camera/input;
- encounter start presentation.

`presentation/combat/`
- first-person arena renderer;
- targeting UI;
- action menu;
- animations/effects;
- combat log feedback.

`persistence/`
- new save schema;
- validation/repair/migration within the reboot lineage.

`tools/`
- validators;
- content inspectors;
- encounter simulator;
- stable-ID checker;
- balance/harvest calculators;
- later creator/admin tools.

Core authority flow:

`INPUT → DOMAIN ACTION REQUEST → VALIDATE → RESOLVE → EVENT/STATE MUTATION → SAVE/AUDIT → PRESENT RESULT`

## 20. New save lineage

The reboot should start a new save schema lineage rather than pretend old v0.5.8 life-sim saves are compatible with an unrelated hunting RPG.

Recommended:

- reboot schema starts at `1`;
- old package/save behavior is archived until package ID decision is made;
- no automatic destructive migration from old WorldLife saves;
- stable IDs from day one;
- deterministic encounter seed/state where practical;
- checksummed/validated save files or equivalent engine storage validation;
- recovery/backup strategy before production use.

## 21. First vertical slice — planned, NOT STARTED

The first playable proof should be deliberately small:

Exploration:
- one compact wilderness region;
- one aerial camera mode;
- one player avatar;
- one roaming hunt target;
- basic collision;
- one interactable cover type;
- encounter transition.

Combat:
- one monster with 6–8 meaningful body parts;
- one melee weapon and one ranged or alternate weapon for contrast;
- AP/turn system;
- move left/right/forward/back;
- take/leave cover;
- attack selected body part;
- guard/dodge;
- inspect;
- use one healing item;
- monster AI with 3–5 attacks;
- break at least one part;
- sever at least one part;
- functional consequence from part damage;
- victory/flee/defeat outcomes.

Harvest:
- 4–6 material types;
- condition-dependent yield;
- one clean-sever vs destroyed-part contrast;
- harvest summary explaining why each quantity/quality was produced.

Progression:
- one craftable weapon/armor upgrade from harvested materials;
- save/reload.

This slice is sufficient to prove the game's unique core before building towns, dozens of monsters or large worlds.

## 22. Verification strategy

Before implementation begins, establish a verification entry point.

Planned tests:

### Domain/unit
- deterministic action resolution;
- AP/stamina legality;
- hit/body-part selection;
- cover modifiers;
- break/sever thresholds;
- functional consequences;
- monster AI decision validity;
- harvest capacity never exceeds anatomy;
- destroyed parts cannot magically produce intact loot;
- save round trip;
- stable ID uniqueness.

### Simulation/regression
- seeded encounter replay;
- same seed + same actions = same outcome where deterministic rules apply;
- monster cannot use attacks requiring destroyed anatomy;
- retreat/defeat/victory state transitions;
- harvest balance fixtures.

### Runtime/manual
- aerial camera readability;
- combat transition correctness;
- first-person targeting usability;
- touch hit targets;
- target-phone FPS/memory;
- Android suspend/resume;
- save/reload;
- screen scaling.

Never convert static/CI success into phone-runtime claims.

## 23. Development phases after discussion

No phase below is authorized to start until the user ends the discussion/planning hold.

### Phase 0 — approve the reboot specification

Resolve open decisions in this document.

### Phase 1 — archive/decommission legacy project safely

- preserve checksum/history snapshot;
- decide what Drive/GitHub material is retained as archive vs deleted;
- decide package ID/name/signing strategy;
- create clean reboot root/branch/repository structure;
- do not copy old gameplay code by default.

### Phase 2 — engine/device proof

- minimal renderer/input test on the actual Android phone;
- aerial scene;
- first-person scene;
- transition;
- frame-time/memory check;
- choose final engine/render path.

### Phase 3 — pure combat domain

- encounter state;
- AP/turn order;
- positions/cover;
- anatomy;
- attacks;
- break/sever;
- monster AI;
- deterministic tests.

### Phase 4 — combat presentation

- first-person renderer;
- action UI;
- target-part selection;
- camera transitions;
- animation/effects driven from resolved events.

### Phase 5 — harvest/crafting

- part condition → yield;
- harvesting tools/skill;
- inventory;
- recipes/upgrades;
- tests.

### Phase 6 — aerial exploration

- movement/collision;
- monster roaming;
- tracking;
- region state;
- encounter generation;
- save persistence.

### Phase 7 — vertical-slice integration

- one full hunt loop;
- Android build;
- phone verification;
- balance/UX fixes.

### Phase 8 — expansion

Only after the core hunt loop is proven:

- more weapons;
- more monsters;
- regions;
- hub/NPCs/quests;
- deeper crafting/progression;
- creator/admin tools;
- richer animations/effects.

## 24. Explicitly deferred decisions for discussion

1. Final game name.
2. Whether `WorldLife` branding remains.
3. Exact setting: modern, fantasy, sci-fi, post-apocalyptic, other.
4. Solo-only vs party/companions.
5. Exact aerial style: orthographic 3D, isometric 2.5D, 2D sprites in 3D, full 3D aerial.
6. Engine: Godot 4.7 Compatibility vs LibGDX/Kotlin vs another justified option.
7. Combat action economy: AP pool vs Move/Main/Reaction.
8. Grid/nodes/range bands exact spatial model.
9. Weapon families at launch.
10. Whether the player also has limb-specific injury.
11. How lethal failure should be.
12. Whether monsters persist/escape and can be tracked again wounded.
13. Degree of survival systems.
14. Degree of old WorldLife life-simulation features retained, if any.
15. Art tone and setting references.
16. Monetization/distribution assumptions, if relevant.
17. Package ID/signing lineage.
18. Exact minimum supported Android/device target.

## 25. Current project status

`CURRENT_OBJECTIVE`: discuss and approve the reboot specification.

`CURRENT_STATE`: new design is recorded; no reboot gameplay code exists.

`COMPLETED`: requirements reconstruction, EVOLVE-safe reboot boundary, system list, architecture plan, vertical-slice plan.

`IN_PROGRESS`: discussion only.

`NEXT_ACTION`: user/assistant design discussion and decision resolution.

`BLOCKERS`: implementation intentionally blocked by user instruction until discussion concludes.

`LEGACY_SOURCE`: v0.5.8 remains preserved as frozen history pending explicit post-discussion archive/deletion execution.

`TESTS_RUN`: none for reboot code because no reboot code has been created.

`IMPLEMENTED`: NO.

`TESTED`: NO.

`PHONE_RUNTIME_VERIFIED`: NO.
