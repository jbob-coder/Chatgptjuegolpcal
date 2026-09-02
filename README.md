# Unnamed Hunt RPG

Status: NEW GAME / DESIGN DISCUSSION / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

This repository/project area is being reused for a completely new game. WorldLife RPG is no longer the active project and must not be treated as the implementation base.

The permanent game name is not decided. `Unnamed Hunt RPG` is only a working label for documentation.

## Read first

1. `START_HERE_NEW_CHAT.md`
2. `PROJECT_HANDOFF.md`
3. `NEW_GAME_MASTER_PLAN.md`
4. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
5. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`
6. `DEVELOPMENT_REFERENCE.md`
7. `EVOLVE_ALIGNMENT.md`
8. `NEW_GAME_DISCUSSION_CHECKLIST.md`

Do not begin gameplay coding until the user explicitly finishes the design discussion and authorizes implementation.

## Core game direction

### Exploration
- aerial/top-down angled 2.5D/3D hybrid presentation;
- visual philosophy comparable to the readability of a Paper-Mario-like dimensional overview, but **not** a literal paper/craft art style;
- intended visual identity: **an illustrated hunting world brought to life**;
- current camera target: roughly 40–50° downward, elevated, landscape-phone composition;
- physical movement through hunting regions;
- nature, terrain, tracks, elevation, water, cover, hazards, camps and roaming creatures communicate information before HUD markers;
- player and major monsters are preferably stylized 3D so the same creature can transition naturally into first-person combat;
- 2D/billboard/impostor details may be used selectively for mobile performance;
- world theme target: grounded stylized wilderness / frontier monster-hunting fantasy.

The detailed visual and environmental behavior contract is `VISUAL_WORLD_BEHAVIOR_BIBLE.md`.

### Combat
When an encounter starts, presentation transitions from the aerial world into first person and combat becomes tactical turn-based play.

The encounter must preserve the same monster, injuries, approach direction, terrain, cover, range, elevation, hazards and escape context rather than loading an unrelated battle creature/state.

The player should be able to make meaningful choices such as:
- move left/right/forward/back;
- close or create distance;
- flank/circle;
- take or leave cover;
- crouch/brace/guard;
- dodge/block/parry when legal;
- attack with different techniques;
- select a specific body part;
- inspect/analyze;
- use items/tools/traps;
- recover stamina;
- prepare reactions;
- interact with terrain;
- retreat/escape when possible.

The full catalog is in `NEW_GAME_MASTER_PLAN.md`.

## Anatomy / break / sever / harvest

Creature anatomy is authoritative gameplay data.

Body parts can have their own integrity, defenses, exposure, break/sever rules, functional consequences, and harvest capacities.

Damage to anatomy changes monster behavior/capabilities and should remain visually persistent. Harvested quantity and quality derive from what actually survives the fight. A destroyed component cannot magically produce full-quality loot, and a unique structure cannot generate impossible duplicate parts.

## Visual behavior laws

- exploration reads like a dimensional illustrated diorama, not a flat map;
- the game does not use a literal paper aesthetic;
- the wilderness uses large readable forms before tiny decorative detail;
- important monster anatomy contributes to aerial silhouette and first-person targeting;
- combat camera movement follows authoritative tactical movement;
- animations never decide whether a hit, break, sever or harvest succeeded;
- damaged/broken/severed anatomy shown by the renderer must match domain state;
- HUD stays restrained and touch-readable so the creature/environment remains visible;
- when performance must be reduced, decorative effects/density are cut before tactical readability.

## Core architecture law

Presentation is not a second game engine.

```text
Input
  ↓
Domain Action Request
  ↓
Validate / Resolve
  ↓
Authoritative State + Domain Events
  ↓
Persistence / Replay / Debug
  ↓
Aerial or First-Person Presentation
```

UI and animation represent resolved state. They do not secretly decide hits, severing, loot, position, or persistent progression.

## Engine status

No engine is locked yet.

Candidates for discussion/compatibility testing include:
- Godot 4.7 + GDScript + Compatibility renderer;
- LibGDX + Kotlin;
- native Android/3D stack only if evidence justifies rebuilding substantial game-engine functionality manually.

The actual target Android phone should pass a tiny renderer/input/camera-transition probe before engine commitment.

## First vertical slice target

Only after design approval:
- one compact hunting region;
- one aerial exploration mode using the approved illustrated-wilderness look;
- one roaming creature;
- one continuous aerial-to-first-person encounter transition;
- one first-person tactical combat arena derived from the same region context;
- 6–8 meaningful body parts;
- approved turn/action economy;
- movement + cover + targeted attacks + defense;
- at least one break and one sever interaction;
- monster behavior and visuals altered by anatomy damage;
- condition-based harvest result;
- one craftable upgrade;
- save/reload;
- Android phone verification.

Do not scale into a large map, bestiary, crafting tree, story campaign, or creator suite until this complete loop works.

## EVOLVE operating rule

For substantial work use:
READ STATE → VERIFY STATE → DEFINE ONE SMALL PIECE → INSPECT OWNERSHIP → IMPLEMENT → TEST → REGRESSION CHECK → UPDATE DOCS → SAVE/COMMIT → READ BACK → MARK STATUS → NEXT PIECE

Use precise gates:
DESIGNED / IMPLEMENTED / STATIC_VERIFIED / TESTED / COMPILED / APK_BUILD_VERIFIED / PHONE_RUNTIME_VERIFIED / VISUAL_QUALITY_VERIFIED / PERFORMANCE_VERIFIED.

Never claim a higher gate from lower evidence.

## Current state

- NEW_GAME_DESIGN_RECORDED = YES
- VISUAL_WORLD_BEHAVIOR_DESIGNED = YES
- WORLDLIFE_ACTIVE = NO
- GAMEPLAY_SOURCE_CREATED = NO
- IMPLEMENTATION_AUTHORIZED = NO
- ENGINE_SELECTED = NO
- APK_BUILD_VERIFIED = NO
- PHONE_RUNTIME_VERIFIED = NO

Google Drive permanent deletion of the old frozen WorldLife archive was attempted but blocked by the platform safety layer, so it is not reported as deleted. It is not active authority for this new game.
