# Unnamed Hunt RPG

Status: NEW GAME / DESIGN DISCUSSION / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

This repository/project area is being reused for a completely new game. WorldLife RPG is no longer the active project and must not be treated as the implementation base.

The permanent game name is not decided. `Unnamed Hunt RPG` is only a working label for documentation.

## Read first

1. `START_HERE_NEW_CHAT.md`
2. `PROJECT_HANDOFF.md`
3. `NEW_GAME_MASTER_PLAN.md`
4. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md`
5. `NEW_GAME_DISCUSSION_CHECKLIST.md`

Do not begin gameplay coding until the user explicitly finishes the design discussion and authorizes implementation.

## Core game direction

### Exploration
- aerial/top-down angled 2D/3D hybrid presentation;
- physical movement through hunting regions;
- tracking, gathering, terrain, cover, hazards, camps and roaming creatures;
- mobile-readable landscape presentation;
- exact rendering mix and camera behavior remain discussion decisions.

### Combat
When an encounter starts, presentation switches to first person and combat becomes tactical turn-based play.

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

Damage to anatomy changes monster behavior/capabilities. Harvested quantity and quality derive from what actually survives the fight. A destroyed component cannot magically produce full-quality loot, and a unique structure cannot generate impossible duplicate parts.

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
- one aerial exploration mode;
- one roaming creature;
- one encounter transition;
- one first-person tactical combat arena;
- 6–8 meaningful body parts;
- approved turn/action economy;
- movement + cover + targeted attacks + defense;
- at least one break and one sever interaction;
- monster behavior altered by anatomy damage;
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
- WORLDLIFE_ACTIVE = NO
- GAMEPLAY_SOURCE_CREATED = NO
- IMPLEMENTATION_AUTHORIZED = NO
- ENGINE_SELECTED = NO
- APK_BUILD_VERIFIED = NO
- PHONE_RUNTIME_VERIFIED = NO

Google Drive permanent deletion of the old frozen WorldLife archive was attempted but blocked by the platform safety layer, so it is not reported as deleted. It is not active authority for this new game.
