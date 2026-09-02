# WorldLife RPG — Systems Guide

Status: `REBOOT DESIGN ONLY`.
Last reconciled: 2026-09-02.

No reboot gameplay system below is implemented yet. This document maps intended authority and subsystem relationships for discussion.

## Authority map

- `GameState` / equivalent reboot root state — persistent game truth.
- `ExplorationState` — region/player/monster exploration state.
- `EncounterState` — authoritative turn-based battle state.
- `CombatResolver` — action legality and combat resolution.
- `AnatomySystem` — body-part definitions/states and functional dependencies.
- `MonsterAI` — chooses legal intentions/actions from encounter state.
- `HarvestResolver` — converts accessible anatomy condition into bounded material results.
- `Inventory/Equipment/Crafting` — persistent material/player progression.
- presentation layers — aerial exploration and first-person combat rendering/input only.

Core rule: presentation does not become a second game engine.

## High-level gameplay loop

`EXPLORE → TRACK → PREPARE → ENCOUNTER → POSITION → TARGET ANATOMY → BREAK/SEVER → SURVIVE/WIN/ESCAPE → HARVEST → CRAFT/UPGRADE → NEXT HUNT`

## Exploration loop

Aerial 2D/3D hybrid presentation reads authoritative exploration state.

Planned responsibilities:

- movement/collision;
- region/sector loading;
- monster roaming;
- tracks/clues;
- gathering;
- terrain/cover tags;
- encounter initiation;
- camps/safe zones;
- map/bestiary/quest access.

Encounter creation snapshots relevant world state into `EncounterState` rather than creating an unrelated combat copy.

## Combat loop

`TURN START → choose movement/posture/attack/support action → validate AP/stamina/position/cover/target → resolve → emit events/mutate state → monster/next actor turn`

Player options are designed to include:

- move/step left/right/forward/back;
- close/create distance;
- flank/circle;
- enter/leave/reposition cover;
- stand/crouch/brace/guard;
- dodge/block/parry/reaction where legal;
- quick/basic/heavy/precision attacks;
- target a specific body part;
- inspect/analyze;
- items/tools/traps;
- stamina recovery;
- terrain interaction;
- wait/pass;
- retreat/escape.

Exact action economy remains open: AP pool is preferred for prototyping; Move/Main/Reaction is an alternative.

## Spatial combat loop

Recommended first model: tactical nodes/range bands rather than unrestricted first-person locomotion.

Each combat position may define:

- range;
- bearing;
- cover;
- elevation;
- terrain;
- movement links/costs;
- escape link.

First-person camera animates between authoritative positions.

## Anatomy loop

Every monster has data-defined body parts.

Part state progression can include:

`INTACT → WOUNDED → BROKEN and/or SEVERED → DESTROYED`

Exact transitions depend on part definition.

Body parts own:

- integrity;
- armor/tissue/bone response;
- hit difficulty;
- break/sever thresholds;
- function tags;
- harvest capacities.

Attack definitions can require functional anatomy tags. Destroying anatomy therefore changes legal monster behavior.

## Damage loop

`ACTION → target part → accuracy/cover/evasion → damage type vs structure → integrity/wound change → break/sever evaluation → function change → behavior/harvest state update`

Primary planned physical damage types:

- cutting;
- piercing;
- blunt.

Additional damage categories depend on final setting.

## Monster AI loop

`PERCEIVE AUTHORITATIVE STATE → enumerate legal actions → score → choose → validate/resolve through same domain rules → present`

AI may consider:

- distance/bearing;
- player cover;
- monster anatomy injuries;
- stamina/status;
- fear/rage/pain;
- escape routes;
- species behavior;
- hazards/environment.

## Harvest loop

Harvest is derived from actual anatomical state.

`CARCASS/SEVERED PART + tool/skill/choice → validate access/capacity → calculate condition/mass/quality → extract material → reduce remaining capacity → persist result`

Invariants:

- yield cannot exceed anatomical capacity;
- one unique organ cannot duplicate itself;
- destroyed material cannot produce an intact component by random roll;
- damage type/condition can alter material quality/quantity;
- clean break/sever strategies can be intentionally rewarded.

## Crafting/progression loop

Harvested materials feed:

- weapons;
- armor;
- tools;
- traps/consumables;
- upgrades;
- research/bestiary;
- quests/economy later.

Equipment-driven progression is the current preferred direction, but final progression remains a discussion decision.

## Visual loop

Exploration:
- angled aerial 2.5D/hybrid stylized realism.

Combat:
- human-height first-person tactical view;
- context-sensitive body-part targeting;
- visible monster telegraphs and anatomy damage;
- restrained HUD designed for landscape touch.

Animation receives resolved domain events. It does not determine results.

## Save loop

The reboot should start a new save lineage rather than migrate unrelated life-sim saves into hunting-RPG state.

Planned requirements:

- schema versioning;
- stable IDs;
- validation/repair;
- deterministic encounter seed/state where practical;
- recovery/backups;
- old legacy saves remain separate unless explicitly handled.

## Tooling/creator loop

Creator tools come after stable data models.

Preferred order:

`stable content schemas → validators → domain behavior → tests → inspector/simulator → creator UI/import/export`

Useful future tools:

- monster builder;
- anatomy graph editor;
- attack builder;
- harvest table editor;
- weapon/material/recipe editor;
- encounter simulator;
- stable ID generator;
- validation dashboard;
- balance reports.

Do not build creator UI that writes transient presentation state before content/domain contracts exist.

## Current next milestone

Discussion and design approval only.

`IMPLEMENTED = NO`
`TESTED = NO`
`REBOOT_APK_BUILD_VERIFIED = NO`
`REBOOT_PHONE_RUNTIME_VERIFIED = NO`
