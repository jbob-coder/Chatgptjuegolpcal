# WorldLife RPG — Development Reference

Status: `REBOOT DESIGN / NO IMPLEMENTATION`.
Last reconciled: 2026-09-02.

## Current development boundary

The old v0.5.8 life-sim implementation is legacy history and must not be extended as the active game.

No reboot gameplay code may be created until the user completes the design discussion and explicitly lifts the implementation hold.

Read first:

1. `START_HERE_NEW_CHAT.md`
2. `WORLDLIFE_REBOOT_MASTER_PLAN.md`
3. `WORLDLIFE_REBOOT_ARCHITECTURE_VISUAL_BIBLE.md`
4. `WORLDLIFE_REBOOT_DISCUSSION_CHECKLIST.md`
5. `WORLDLIFE_REBOOT_ENGINE_DECISION.md`
6. this file
7. `WORLDLIFE_EVOLVE_ALIGNMENT.md`

## Non-negotiable development rules

1. Current explicit reboot decisions outrank legacy v0.5.8 design assumptions.
2. Preserve the old checksum-verified source as historical rollback until deletion/archive scope is explicitly resolved.
3. Do not mutate old life-sim source into the new game by default.
4. Build the reboot around one authoritative domain state.
5. Aerial exploration and first-person combat are presentation modes, not separate rules engines.
6. Body-part integrity, break/sever/destroy state, combat position, cover, harvest quantity, inventory and progression are domain-owned.
7. Animations/cameras/UI consume resolved state/events and never decide hit/sever/loot outcomes.
8. Use stable IDs from the first content definition.
9. New save lineage should begin cleanly; do not pretend old life-sim saves are compatible with the hunting RPG.
10. Establish verification before content scale.
11. Make one bounded/reversible piece at a time.
12. Never fabricate build/test/runtime results.
13. Verify the actual Android target phone early before freezing engine/render requirements.
14. Do not use unrelated paid services, runners, assets, APIs or storage without explicit user approval.

## Planned domain boundary

```text
Input
  ↓
Action Request
  ↓
Domain Validation
  ↓
Exploration/Turn/Combat/Harvest Resolver
  ↓
Authoritative State + Domain Events
  ↓
Persistence / Replay / Debug Record
  ↓
Presentation
```

## Planned ownership

### Domain

- game/exploration state;
- encounter state;
- turn/action economy;
- tactical position/cover;
- anatomy/body parts;
- damage/break/sever;
- monster AI decisions;
- status effects;
- harvest;
- inventory/equipment;
- crafting/progression;
- deterministic RNG/event log.

### Content

- monster definitions;
- body-part definitions;
- attacks;
- weapons;
- materials;
- recipes;
- regions;
- cover/environment definitions.

### Presentation

Exploration:
- aerial 2D/3D hybrid renderer/input/camera.

Combat:
- first-person camera/action UI/targeting/animations/effects.

## First implementation sequence after hold is lifted

Do not skip directly to art or a large map.

1. choose/verify engine on actual phone with a tiny probe;
2. create clean reboot source root/repository structure;
3. create verification entry point;
4. implement minimal `EncounterState`;
5. implement AP/turn progression;
6. implement tactical position node + cover state;
7. implement one monster anatomy definition;
8. implement one targeted attack;
9. implement break/sever resolution;
10. test determinism/invariants;
11. connect first-person presentation;
12. implement harvest resolver;
13. implement aerial exploration/encounter transition;
14. integrate one complete hunt loop;
15. phone-test before expanding content.

## Combat invariant examples

- a monster cannot execute an attack that requires a destroyed/severed functional part;
- harvested material cannot exceed anatomy-defined capacity;
- a unique organ cannot be extracted twice;
- cover modifies only actions whose rules reference that cover relationship;
- UI cannot bypass AP/stamina/position legality;
- severed/destroyed are different states;
- same seed + same authoritative action sequence should reproduce deterministic portions of an encounter.

## Android/engine rule

Current candidate: Godot 4.7 Compatibility renderer, but this is not locked.

Before final selection:

- identify target phone/GPU/Android;
- run aerial + first-person + UI probe;
- verify landscape/touch;
- verify scene transition;
- verify suspend/resume;
- observe frame time/memory;
- then freeze engine/render/minimum-device contract.

## Documentation maintenance

When discussion changes design truth, update only affected reboot docs plus the mandatory handoff/readme path.

When implementation starts, every substantial change must update:

- current objective/state;
- ownership/path map if changed;
- tests actually run;
- result status (`IMPLEMENTED`, `TESTED`, `VERIFIED`, runtime gate as applicable);
- blockers/risks/unknowns.

## Current next bounded piece

**Design discussion.**

No code, build, APK or destructive cleanup is the next piece until the user explicitly ends the discussion hold.
