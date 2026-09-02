# WorldLife RPG

> **CURRENT STATE — FULL REBOOT DISCUSSION:** The former v0.5.8 Android life-sim project is legacy frozen history. A new monster-hunting tactical RPG design has been recorded, but no reboot gameplay code has been created and implementation is intentionally on hold until the user finishes the design discussion.

## Start here

Read:

1. `START_HERE_NEW_CHAT.md`
2. `REBOOT_STATUS.md`
3. `WORLDLIFE_REBOOT_MASTER_PLAN.md`
4. `WORLDLIFE_REBOOT_ARCHITECTURE_VISUAL_BIBLE.md`
5. `WORLDLIFE_REBOOT_DISCUSSION_CHECKLIST.md`
6. `WORLDLIFE_PROJECT_HANDOFF.md`
7. `WORLDLIFE_DEVELOPMENT_REFERENCE.md`
8. `WORLDLIFE_SYSTEMS_GUIDE.md`
9. `WORLDLIFE_EVOLVE_ALIGNMENT.md`

## New intended game

WorldLife is being redesigned from zero as a hunting RPG built around two connected modes.

### Exploration

- aerial/top-down angled 2D/3D hybrid presentation;
- physical movement through hunt regions;
- tracking, gathering, cover/environmental features and encounter initiation;
- Android landscape-first readability and performance.

### Combat

When battle starts, presentation switches to first person and the encounter becomes tactical turn-based combat.

Planned player choices include:

- step/move left, right, forward or backward;
- close/create distance;
- flank/circle;
- take, leave or reposition between cover;
- stand/crouch/brace/guard;
- dodge/block/parry where legal;
- basic/heavy/quick/precision attacks;
- select a specific monster body part;
- use items/tools/traps;
- inspect/analyze;
- recover stamina;
- prepare reactions;
- interact with terrain;
- retreat/escape.

The complete action catalog and action-economy alternatives are in `WORLDLIFE_REBOOT_MASTER_PLAN.md`.

## Anatomy / break / sever / harvesting

Creature anatomy is intended to be authoritative data, not cosmetic hitboxes.

Body parts may be wounded, broken, severed or destroyed. Damaging anatomy can remove or weaken monster attacks and movement capabilities.

Harvest yield is derived from what physically survived the battle. A clean intact sever can preserve a valuable component; burning, crushing or destroying that part can reduce or eliminate usable material. Unique anatomy cannot magically produce impossible duplicate loot.

Harvested materials feed crafting, equipment upgrades, research and later RPG progression.

## Architecture rule

The reboot keeps the strongest lesson from the previous project:

**presentation is not a second game engine.**

Target authority flow:

```text
Input
  ↓
Domain action request
  ↓
Validate / resolve
  ↓
Authoritative state + domain events
  ↓
Persistence / replay / debug record
  ↓
Aerial or first-person presentation
```

Animations, UI and cameras represent resolved state. They do not determine hits, severing, loot or persistent position.

## Technology — open decision

The previous Kotlin + Jetpack Compose + SceneView stack is not assumed to survive the reboot.

Current candidates:

1. **Godot 4.7 + GDScript + Compatibility renderer** — current recommendation for discussion because the reboot needs integrated 2D/3D, scenes, animation, Android export and game-focused tooling.
2. **LibGDX + Kotlin** — viable Android-first alternative with more manual content/editor tooling.
3. **Compose + SceneView** — not preferred for this reboot unless a new constraint justifies rebuilding many game-engine systems manually.

Before selecting an engine, the actual target Android phone must pass a tiny renderer/input/transition probe.

## Planned first vertical slice

Only after discussion/approval:

- one compact wilderness region;
- one aerial exploration camera;
- one roaming monster;
- one encounter transition;
- one first-person combat arena;
- 6–8 meaningful body parts;
- AP/turn system;
- movement + cover + targeted attacks + defense;
- at least one break and one sever interaction;
- monster behavior changes from anatomy damage;
- condition-based harvest result;
- one craftable upgrade;
- save/reload;
- Android phone verification.

Do not build a large map or monster catalog before this core loop works.

## Current hold

`REBOOT_DESIGN_RECORDED = YES`

`REBOOT_SOURCE_CREATED = NO`

`IMPLEMENTATION_AUTHORIZED = NO`

`LEGACY_SOURCE_DELETED = NO`

Next action: discuss the reboot and resolve `WORLDLIFE_REBOOT_DISCUSSION_CHECKLIST.md`.

## Legacy v0.5.8 history

The old source remains preserved strictly as rollback/history while cleanup is discussed:

- frozen source: `0.5.8`
- package: `com.jackwilson.worldlife`
- Drive source folder: `https://drive.google.com/drive/folders/1WABizspRFJxOURbTpqbPdIAda2Uv00Qp`
- frozen source SHA-256: `478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822`

It must not be used as the default reboot implementation base.

Permanent deletion of old Drive/GitHub/APK/save history is deferred until the user explicitly resolves the cleanup checklist after discussion, preserving EVOLVE rollback and destructive-operation safety.
