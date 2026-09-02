# WorldLife RPG — Reboot Architecture & Visual Bible

Status: `DESIGN ONLY / DISCUSSION HOLD`
Last reconciled: 2026-09-02.
Companion document: `WORLDLIFE_REBOOT_MASTER_PLAN.md`.

## 1. Purpose

This document defines how the reboot should be structured and how it should look before any gameplay source is created.

It converts the EVOLVE principles and the prior WorldLife editing/documentation lessons into a clean architecture for the new hunting RPG.

Nothing in this file is an implementation claim.

## 2. Architectural principle

The game has one authoritative domain model and multiple presentation modes.

```text
Touch/Input
    ↓
Action Request
    ↓
Domain Validation
    ↓
Turn/Exploration Resolver
    ↓
Authoritative State + Domain Events
    ↓
Persistence / Replay / Debug Record
    ↓
Aerial Exploration Presentation OR First-Person Combat Presentation
```

The renderer never determines combat truth.

Examples:

- a sword animation does not decide whether a tail was severed;
- a first-person reticle does not directly subtract body-part integrity;
- a monster death animation does not generate loot;
- the harvest screen cannot award material beyond anatomy-defined capacity;
- moving the camera does not change tactical bearing unless a domain movement action succeeded.

## 3. Proposed project layers

Final paths depend on the selected engine, but responsibilities should remain stable.

### Domain

Owns all consequential state and rules.

Suggested subsystems:

- `game_state`
- `exploration_state`
- `encounter_state`
- `turn_system`
- `combat_resolver`
- `anatomy_system`
- `damage_system`
- `cover_position_system`
- `monster_ai`
- `status_system`
- `harvest_system`
- `inventory_system`
- `equipment_system`
- `crafting_system`
- `progression_system`
- `quest_contract_system` later
- deterministic RNG/event journal

### Content definitions

Data, not UI code.

- monster species;
- anatomy/body parts;
- monster attacks;
- behavior profiles;
- weapons;
- weapon techniques;
- armor;
- items;
- materials;
- recipes;
- harvest tables;
- regions;
- encounter templates;
- cover/environment objects;
- quests/contracts later.

### Presentation — exploration

- aerial camera;
- world renderer;
- player/monster visual movement;
- region streaming;
- tracking markers/signs;
- environmental effects;
- exploration HUD;
- encounter transition.

### Presentation — combat

- first-person combat camera;
- monster renderer;
- body-part selection;
- tactical movement destinations;
- cover visualization;
- attack/defense animation;
- hit/wound feedback;
- turn timeline;
- action UI;
- inspect/bestiary overlay.

### Persistence

- save model;
- schema/version;
- repair/validation;
- backup/recovery;
- deterministic encounter continuation;
- content-version references.

### Tools / verification

- stable ID validator;
- monster anatomy validator;
- attack/body-part dependency validator;
- harvest capacity validator;
- encounter simulator;
- deterministic replay runner;
- balance report generator;
- save fixture verifier;
- later creator/admin interface.

## 4. Stable ID contract

Every persistent/data-driven entity receives a stable identifier from the beginning.

Examples:

- `monster_ashback_razorjaw`
- `part_razorjaw_tail_01`
- `attack_razorjaw_tail_sweep`
- `weapon_iron_cleaver_01`
- `material_razorjaw_tail_sinew`
- `region_greenhollow_01`
- `cover_greenhollow_boulder_a`

Names above are examples only, not approved canon.

Never use display names as save keys.

## 5. Combat state ownership

A combat encounter should be reconstructible from state without relying on current animation frames.

Minimum authoritative encounter state:

- encounter ID;
- deterministic seed/RNG state;
- turn index;
- initiative order;
- actor AP/reaction/stamina;
- actor position node;
- actor bearing/facing if mechanically relevant;
- cover occupancy;
- monster anatomy state;
- player health/status;
- inventory/ammunition/consumables;
- environmental hazards;
- queued/telegraphed actions;
- escape state;
- combat outcome;
- event log.

## 6. Body-part dependency model

A monster attack may depend on one or more functional anatomy tags.

Example:

```text
Tail Sweep
requires: FUNCTIONAL_TAIL

Horn Charge
requires: FUNCTIONAL_HEAD + FUNCTIONAL_HORN_LEFT_OR_RIGHT + CAN_CHARGE

Wing Burst
requires: FUNCTIONAL_WING_PAIR
```

When anatomy becomes broken/severed, dependent attacks become illegal, weakened or transformed according to data.

This avoids hard-coded special cases scattered through animations and AI scripts.

## 7. Break vs sever vs destroy

These states must remain distinct.

### Intact

Normal part function and full harvest potential.

### Wounded

Damaged but still functional; may affect accuracy/stamina/behavior.

### Broken

Structural threshold crossed. Part remains attached but loses or reduces function.

### Severed

Attachment threshold crossed. Part is detached and becomes a separate recoverable anatomical object if accessible.

### Destroyed

Part has suffered damage that eliminates most structural/harvest value. A destroyed part should not automatically count as a clean sever.

These states may overlap with wounds/status, but the system must define legal transitions.

## 8. Harvest authority model

Harvest is a second domain resolver, not a loot popup.

Input:

- defeated/escaped monster anatomy state;
- accessible severed parts;
- harvest tools;
- hunter skill/perks;
- time/safety constraints;
- player harvest choices.

Output:

- extracted material stacks;
- remaining carcass/part capacity;
- quality grades;
- time cost;
- failures/damage;
- journal/bestiary knowledge.

Invariant examples:

- extracted quantity cannot exceed original anatomical capacity;
- one discrete organ cannot be harvested twice;
- destroyed unique part cannot yield an intact unique component;
- extraction changes remaining carcass state if revisiting carcasses is supported;
- yield explanation is reproducible from recorded inputs/seed.

## 9. Exploration visual target

Preferred look: **angled aerial 2.5D stylized realism**.

The player should read the environment quickly on a phone while still feeling depth and scale.

### Camera

Preferred prototype:

- landscape orientation;
- elevated 35–55 degree downward angle;
- orthographic or long-focal-length perspective tested side by side;
- player kept slightly below screen center to expose forward terrain;
- limited zoom range;
- optional discrete camera rotation rather than unrestricted orbit if rotation hurts navigation.

### Terrain

- clear traversable vs blocked shapes;
- readable elevation steps;
- terrain palette tied to biome;
- paths/tracks readable without glowing navigation paint;
- water/cliffs/vegetation produce strong silhouettes.

### Characters/monsters

- monsters are visually larger than normal wildlife and recognizable from aerial view;
- simplified distant rigs/animations;
- high-value anatomy silhouettes remain readable;
- avoid tiny realistic proportions that disappear on a phone screen.

### 2D/3D hybrid options

Option A: 3D terrain + 3D characters + 2D/billboard vegetation/details.

Option B: 3D terrain/structures + 2D character sprites with directional animation.

Option C: full 3D with aggressive mobile simplification.

Preferred first experiment: Option A because monsters can transition naturally to first-person combat while cheaper decorative layers remain 2D/billboarded.

## 10. Combat visual target

Combat is first person, but turn-based.

It should feel like facing a dangerous animal/monster at close tactical range, not like selecting menu entries over a static portrait.

### Camera

- human eye height;
- bounded turn-based camera motion;
- camera follows authoritative position node;
- looking/targeting can inspect anatomy without becoming unrestricted real-time movement;
- camera animation between nodes should be short and readable.

### Monster framing

- creature must occupy enough screen space to make anatomy meaningful;
- large attacks use readable anticipation/telegraph poses;
- body-part damage changes silhouette/material/posture when practical;
- severed parts visibly detach only after domain resolution says they are severed.

### Targeting

Default view should not permanently outline every body part.

When the player enters target selection:

- current valid parts become subtly selectable;
- selected part receives a clear highlight/reticle;
- UI shows known chance/modifiers without exposing hidden data the player has not learned;
- inaccessible/occluded parts explain why they cannot be targeted.

### Damage feedback

Use layers:

- hit reaction;
- wound decal/material change;
- posture change;
- break animation;
- sever animation;
- combat text/log only where necessary.

Do not rely solely on floating damage numbers.

## 11. Combat UI layout concept

Landscape phone layout.

### Center

First-person creature/environment view.

### Lower left

Player condition:

- health;
- stamina;
- AP;
- reaction availability;
- major status.

### Lower/right action area

Contextual action categories:

- MOVE;
- ATTACK;
- DEFEND;
- ITEM/TOOL;
- INSPECT;
- ESCAPE.

Selecting a category opens only legal actions.

### Top/side

- turn order/timeline;
- monster known status;
- cover state;
- range/bearing;
- telegraphed threat.

### Target-part mode

- list or contextual reticle of targetable parts;
- part condition only to the degree known/observable;
- predicted AP/stamina cost;
- accuracy modifier;
- damage-type suitability if discovered.

Touch targets must be comfortably large; no tiny PC-style combat grid UI.

## 12. Exploration UI layout concept

Keep the aerial world visible.

Potential elements:

- virtual movement control or tap/path control, to be tested;
- compact interact button;
- hunt objective;
- minimap only if it adds value;
- quick inventory/tool access;
- tracking/bestiary shortcut;
- alert/monster awareness state.

The exploration HUD should be substantially lighter than combat UI.

## 13. Animation rule

Animation consumes domain events.

Example event stream:

```text
TURN_STARTED(player)
PLAYER_MOVED(node_left_cover)
ATTACK_RESOLVED(weapon_..., part_tail_..., hit=true, damage=..., sever=false)
MONSTER_STATUS_CHANGED(enraged)
MONSTER_ATTACK_TELEGRAPHED(tail_sweep)
TURN_ENDED(player)
```

Presentation animates those events in order.

If an animation is skipped/accelerated, authoritative state is unchanged.

## 14. Monster AI architecture

Separate:

`PERCEIVE STATE → SCORE LEGAL ACTIONS → CHOOSE INTENT → DOMAIN VALIDATES/RESOLVES → PRESENT`

AI cannot directly call animation methods as gameplay authority.

AI action scoring may consider:

- body parts still functional;
- distance;
- player cover;
- player weakness/status;
- monster pain/fear/rage;
- escape route;
- environmental opportunity;
- species personality.

AI decisions should be reproducible under a recorded seed when required for tests.

## 15. Content pipeline

Monster creation should become data-driven before content count grows.

Minimum monster authoring package:

- monster definition;
- anatomy graph;
- body-part combat values;
- attacks + required anatomy tags;
- AI behavior weights;
- harvest capacities;
- visual scene/model references;
- animation references;
- audio references;
- bestiary text;
- validation report.

A validator should reject:

- duplicate IDs;
- attack requiring nonexistent body part;
- harvest resource referencing nonexistent part;
- severable child with invalid attachment;
- negative capacities;
- impossible break/sever thresholds;
- missing combat presentation reference for production content.

## 16. Performance budget philosophy

Before art production, define budgets from the actual Android device.

Measure:

- cold launch time;
- region transition time;
- combat transition time;
- average/95th percentile frame time;
- memory;
- GPU/CPU usage where accessible;
- thermal behavior during repeated battles;
- APK size.

Prefer stable 30/60 FPS targets appropriate to the device over unstable visual effects.

The first engine/device probe should intentionally include:

- aerial hybrid scene;
- one large animated monster;
- first-person close-up;
- basic shadows;
- transparent/billboard foliage;
- UI overlay;
- scene transition.

## 17. Android compatibility policy

The reboot should not repeat the mistake of discovering phone compatibility only after major systems exist.

Before building the vertical slice:

1. identify the exact target phone model/Android/GPU;
2. build a tiny engine probe;
3. install locally;
4. verify launch;
5. verify renderer;
6. verify landscape/touch;
7. verify suspend/resume;
8. measure memory/frame time;
9. freeze the minimum Android/renderer contract only after evidence.

If Godot is selected, the current design candidate is Godot 4.7 with Compatibility rendering for broader older-device support, but this remains a discussion decision until the actual phone probe passes.

## 18. New project repository discipline

When implementation is authorized:

- create a clean reboot root or dedicated repository/branch;
- keep legacy v0.5.8 frozen and separate;
- create `README.md` first;
- create `docs/README.md`/documentation index;
- create architecture/visual/combat/harvest docs;
- create project state/handoff;
- create verification entry point;
- create source only after the ownership map is clear.

Required loop:

`READ → VERIFY → DEFINE ONE SMALL PIECE → IMPLEMENT → TEST → INSPECT → FIX → DOCUMENT → SAVE → READ BACK → NEXT`

## 19. Recommended first code piece after discussion

Not authorized yet.

When the user explicitly starts implementation, the first code piece should **not** be a monster model or large map.

It should be a minimal domain prototype proving:

- `EncounterState`;
- one player;
- one monster;
- body-part definitions;
- AP turn progression;
- one move action;
- one targeted attack;
- one break/sever threshold;
- deterministic test.

Then the engine/device visual probe can connect presentation to that state.

This ordering prevents beautiful presentation from becoming the hidden rules engine.

## 20. Current hold

`DESIGN_RECORDED = YES`

`REBOOT_SOURCE_CREATED = NO`

`LEGACY_SOURCE_DELETED = NO`

`IMPLEMENTATION_AUTHORIZED = NO`

Next action: discuss the design with the user and revise the plan before destructive cleanup or implementation.
