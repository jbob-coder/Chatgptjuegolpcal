# Unnamed Hunt RPG — System Architecture Blueprint

Status: PLANNING AUTHORITY / NO ENGINE SOURCE IMPLEMENTED
Last reconciled: 2026-09-02

## Purpose

Define a mechanically correct architecture before engine-specific source exists. Names of future folders/classes/scenes may change after engine selection, but ownership boundaries and data flow should remain stable unless explicitly redesigned.

## 1. Primary architecture law

There is one authoritative game model.

```text
INPUT / AI INTENT
      ↓
ACTION REQUEST
      ↓
DOMAIN VALIDATION
      ↓
DOMAIN RESOLUTION
      ↓
AUTHORITATIVE STATE CHANGE + DOMAIN EVENTS
      ↓
SAVE / REPLAY / DEBUG RECORD
      ↓
PRESENTATION ADAPTER
      ↓
AERIAL EXPLORATION OR FIRST-PERSON COMBAT UI/ANIMATION/AUDIO
```

Presentation can request. Presentation cannot decree.

## 2. Logical layers

### A. Platform/Game Shell
Responsibilities:
- application lifecycle;
- scene/mode navigation;
- settings;
- input device routing;
- save-slot selection;
- suspend/resume handling;
- platform integration;
- loading/error screens.

Does not own combat or world rules.

### B. Domain Core
Engine-independent gameplay truth.

Subdomains:
- GameSession;
- World/Region;
- Exploration;
- Encounter/Turn;
- Creature/Anatomy;
- Damage/Status;
- Monster AI;
- Harvest;
- Inventory/Equipment;
- Crafting;
- Knowledge/Progression;
- Contracts/Story later.

### C. Content Definitions
Read-only definitions describing species, parts, attacks, weapons, materials, recipes, regions and encounter templates.

Definitions are not mutable runtime instances.

### D. Runtime State
Mutable player/monster/world/encounter state that references stable content IDs.

### E. Persistence
Save schema, serialization, migration, validation, backup/recovery.

### F. Presentation
Exploration renderer/camera/HUD and combat renderer/camera/HUD, animation, VFX, audio and transitions.

### G. Tooling/QA
Validators, deterministic simulation, replay, debug inspectors, performance measurements and later creator tools.

## 3. Definition versus instance rule

Separate immutable content from mutable runtime state.

Example:

`SpeciesDefinition(species_razorjaw)` describes what a Razorjaw can be.

`MonsterInstance(monster_000012)` describes the actual individual being hunted, including current wounds, broken horn, location and behavior state.

Never persist a giant copy of all static species data inside every monster save unless deliberate versioning requires it.

## 4. Recommended domain aggregate structure

Conceptual only:

`GameState`
- save schema/version;
- player state;
- world state;
- active hunt/contract;
- active encounter optional;
- inventory/crafting/progression;
- knowledge state;
- deterministic sequence metadata where required.

`WorldState`
- current region;
- player world position;
- persistent monster instances;
- region flags/interactables;
- camps/discoveries;
- environment gameplay state where needed.

`EncounterState`
- encounter ID;
- source world context;
- participants;
- turn order/index;
- tactical nodes;
- cover/hazard state;
- AP/stamina/reactions;
- monster anatomy states;
- statuses;
- pending telegraphs/intents;
- encounter outcome;
- event history/replay seed as needed.

## 5. Action-command model

All consequential player intent becomes a typed domain request.

Conceptual families:

ExplorationAction:
- Move;
- Interact;
- InspectTrack;
- Gather;
- InitiateEncounter;
- UseCamp;
- ExitRegion.

CombatAction:
- Reposition;
- ChangePosture;
- Attack;
- Defend;
- React;
- UseItem;
- UseTool;
- Inspect;
- Escape;
- Wait.

HarvestAction:
- SelectPart;
- SelectMethod;
- Extract;
- FinishHarvest.

CraftAction:
- Craft;
- Upgrade;
- Equip;
- Dismantle if later approved.

A request may be rejected with an explicit reason. UI should render the reason instead of duplicating legality rules.

## 6. Resolver rule

Each action family has one authoritative resolver/owner.

Example:
`AttackRequest → CombatResolver → Anatomy/Damage services → StateDelta + CombatEvents`

Do not implement the same attack math in AI, UI and test helpers independently.

AI submits or selects the same legal domain action types used by player-controlled actors wherever practical.

## 7. Domain event model

Domain resolution emits facts for presentation and logging.

Examples:
- PlayerMoved;
- EncounterStarted;
- TurnStarted;
- AttackTelegraphed;
- AttackHit;
- AttackMissed;
- PartWounded;
- PartBroken;
- PartSevered;
- PartDestroyed;
- MonsterEnraged;
- MonsterFled;
- PlayerEscaped;
- MonsterDefeated;
- HarvestExtracted;
- ItemCrafted;
- KnowledgeUnlocked.

Events report what occurred. They do not become a second persistent truth source unless the project later adopts event sourcing deliberately.

## 8. Presentation adapter rule

Presentation reads:
- current authoritative snapshot;
- latest domain events;
- content definitions needed for labels/models/audio.

Presentation can maintain transient visual state such as animation time, particles and camera interpolation.

Transient presentation state must be reconstructible/disposable without corrupting gameplay.

If the app is suspended mid-animation, restore from authoritative state, not from animation frame assumptions.

## 9. Exploration-to-combat transfer

One transfer service builds EncounterState from WorldState.

Required mapping:
- exact monster instance;
- monster anatomy/injury state;
- player loadout/status;
- world location;
- relative approach/bearing;
- distance;
- nearby combat nodes derived from encounter geometry/content;
- cover/hazards;
- escape path;
- gameplay-relevant environment conditions.

The source monster is not cloned into unrelated combat health.

## 10. Combat-to-world transfer

On encounter completion, one result service updates WorldState.

Possible outcomes:
- monster defeated → carcass/severed-part harvest state created;
- monster fled → persistent instance returns to region with injuries;
- player escaped → monster remains according to ecology rules;
- player defeated → failure rules execute;
- world cover/hazard mutations persist only if designed as persistent.

No double-awarding harvest when changing modes.

## 11. Anatomy graph

Body parts form a validated graph/tree with stable IDs and attachment relationships.

A part definition can reference:
- parent;
- children;
- structural layer data;
- function tags;
- break/sever rules;
- hit/exposure data;
- harvest capacities;
- visual attachment/target references later.

Runtime part state stores only mutable condition.

Validator must catch:
- missing parent;
- cycles;
- duplicate IDs;
- impossible thresholds;
- attack dependencies on nonexistent functions;
- harvest sources on nonexistent parts.

## 12. Capability/tag system

Use capabilities to connect anatomy to behavior.

Example tags:
- CAN_FLY;
- FUNCTIONAL_TAIL;
- CAN_CHARGE;
- FUNCTIONAL_LEFT_FORELIMB;
- FUNCTIONAL_VENOM_GLAND;
- CAN_BITE.

Capability computation uses current anatomy/status state.

Attacks declare requirements. AI queries legal actions from current capabilities.

This prevents hundreds of monster-specific conditional branches.

## 13. Tactical geometry structure

Combat geometry should be authored/derived separately from render meshes.

`EncounterLayoutDefinition`
- nodes;
- adjacency;
- range relationships;
- bearings;
- cover references;
- elevation;
- hazards;
- escape nodes;
- visual anchors.

Render geometry can change visual detail without silently changing tactical rules.

## 14. Save architecture

New save lineage starts at schema 1 when persistence implementation begins.

Save writes should be transactional/atomic where platform permits.

Validate on load:
- schema;
- required IDs;
- bounded numeric values;
- anatomy states;
- inventory quantities;
- current region/encounter references;
- impossible duplicate unique structures where relevant.

Repair only what can be repaired deterministically and safely. Do not conceal corruption by inventing major player progress.

## 15. Content versioning

Persistent saves reference stable content IDs.

When content definitions change after release:
- preserve old ID meanings where possible;
- add migration/compatibility aliases only deliberately;
- never recycle removed IDs for unrelated content;
- define defaults for newly added runtime fields;
- add regression fixtures.

## 16. RNG architecture

Randomness can exist for uncertainty/variation, but consequential random systems should be controllable for testing.

Prefer:
- seeded RNG per game/encounter or recorded deterministic sequence;
- explicit RNG dependency passed into resolvers;
- no hidden UI randomness determining combat/loot.

Harvest cannot use randomness to violate anatomical capacity.

## 17. Content dependency graph

Typical dependency direction:

`Region → Species/EncounterTemplate`
`Species → Anatomy + Attacks + Behavior`
`Attack → DamageProfile + CapabilityRequirements + PresentationRefs`
`AnatomyPart → HarvestSources + VisualTargetRefs`
`HarvestSource → Material`
`Recipe → Materials → Item/Upgrade`

Validation should fail early when references break.

## 18. Engine-facing scene structure after engine selection

Logical scene responsibilities should map approximately to:
- AppShell;
- MainMenu/Load;
- RegionScene;
- EncounterScene;
- HubScene if separate;
- HarvestUI/scene layer;
- Inventory/Crafting UI;
- shared HUD/UI services;
- presentation/audio services.

Do not put the entire game in one monolithic scene/controller.

## 19. Proposed repository/source organization after implementation authorization

Exact syntax depends on engine, but logical organization should resemble:

```text
/
  README.md
  docs/
  project_control/
  game/
    domain/
      world/
      exploration/
      encounter/
      creature/
      anatomy/
      damage/
      harvest/
      inventory/
      crafting/
      progression/
    content/
      species/
      attacks/
      items/
      materials/
      recipes/
      regions/
      encounters/
    persistence/
    presentation/
      exploration/
      combat/
      ui/
      audio/
      vfx/
    platform/
  tests/
    domain/
    content_validation/
    integration/
    save/
  tools/
  assets/
```

Do not create this source tree until engine selection/implementation is authorized; it is a structural target.

## 20. Dependency law

Preferred dependency direction:

`Platform/Presentation → Domain interfaces/models`

`Domain → no presentation dependency`

`Content → domain data schemas`

`Persistence → domain state schemas`

`Tests/Tools → domain/content/persistence`

The domain core should not import camera, Android View, Compose UI, SceneView or equivalent engine rendering concepts.

## 21. Error handling

Domain rejections should be typed and explainable:
- insufficient AP;
- insufficient stamina;
- target not exposed;
- target severed/unavailable;
- range invalid;
- cover blocks action;
- item unavailable;
- reaction already spent;
- escape route unavailable.

UI maps domain reasons into player-facing language.

## 22. Performance separation

Simulation complexity and rendering complexity are separate budgets.

A creature may have rich simulated anatomy while using simplified distant visuals.

A region can logically contain more creatures than are fully rendered/animated at once.

Never keep expensive first-person monster rigs/effects active for distant aerial monsters unless profiling supports it.

## 23. Mechanic implementation checklist

Before coding any mechanic:
- owner defined;
- input action defined;
- required state defined;
- output/events defined;
- invariants defined;
- save impact defined;
- content references defined;
- UI/presentation responsibility defined;
- tests defined;
- performance risk considered;
- rollback point defined.

No feature is complete because its button appears on screen.