# Unnamed Hunt RPG — Admin / Creator / Debug System

Status: DESIGN TARGET / NO IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

Define an in-game development/admin system that makes creation, balancing, testing and debugging faster without turning UI state into gameplay authority.

This system is for development and creator workflows first. Any player-facing sandbox/editor features would be a separate future decision.

## 1. Core law

Admin tools may inspect and request controlled mutations, but they must not secretly become a second game engine.

Preferred flow:

`ADMIN UI → ADMIN COMMAND → VALIDATE → AUTHORITATIVE DOMAIN/CONTENT SERVICE → RESULT → SAVE/TEST STATE → UI READBACK`

Where an admin operation intentionally bypasses normal gameplay restrictions, it must still preserve structural invariants.

## 2. Modes

### Inspector mode
Read-only.

Can view:
- player state;
- region state;
- monster instances;
- anatomy graph/state;
- tactical nodes;
- cover/hazards;
- inventory/materials;
- knowledge/progression;
- current RNG/encounter identifiers;
- performance metrics;
- recent domain events.

### Debug mutation mode
Controlled developer mutations.

Examples:
- set health/stamina/AP;
- give/remove item/material;
- teleport to valid region anchor;
- force encounter;
- set monster part condition;
- force break/sever for test;
- apply/remove status;
- advance/restart turn;
- set knowledge stage;
- reset encounter;
- spawn a validated test monster instance.

### Creator mode
Data/content authoring and validation.

Examples:
- create/edit monster definition;
- edit anatomy hierarchy;
- edit attacks/capability requirements;
- edit behavior profile;
- edit harvest sources;
- edit materials/recipes;
- create/edit encounter layout nodes/cover;
- create/edit region metadata/anchors;
- preview visual asset references;
- validate/export content package.

Creator mode must operate on explicit content definitions and never directly modify production definitions without validation/versioning.

## 3. Development-build access

Preferred:
- completely absent or inaccessible in production builds unless explicitly enabled;
- guarded by development flag/profile;
- clearly display DEV/ADMIN state;
- separate test save/profile to avoid corrupting normal play data.

## 4. Admin command architecture

Conceptual commands:

`PlayerAdminCommand`
- SetHealth;
- SetStamina;
- GiveItem;
- GiveMaterial;
- SetKnowledge;
- TeleportToAnchor.

`EncounterAdminCommand`
- StartEncounterPreset;
- SetTurnActor;
- SetAP;
- ApplyStatus;
- SetPartIntegrity;
- BreakPart;
- SeverPart;
- ForceMonsterIntent;
- EndEncounter;
- ResetEncounter.

`WorldAdminCommand`
- SpawnMonster;
- DespawnMonster;
- MoveMonsterToAnchor;
- SetWeather/Time if later mechanical;
- RevealTrack;
- ResetRegionState.

Every command returns:
- success/rejection;
- normalized state result;
- warnings;
- affected IDs;
- domain events when applicable.

## 5. Creature creator

Creator form should expose:
- species ID;
- display name key;
- body scale;
- ecology tags;
- behavior profile;
- anatomy tree;
- attack list;
- harvest sources;
- region compatibility;
- visual/animation/audio references.

Workflow:
1. create draft species;
2. add anatomy;
3. validate graph;
4. add attacks;
5. validate capability requirements;
6. add harvest sources;
7. validate capacity/reference rules;
8. assign behavior;
9. assign presentation references;
10. run simulated encounter tests;
11. spawn in test region;
12. export/version only after checks pass.

## 6. Anatomy editor

Must support:
- tree view;
- parent/child relationships;
- targetable/breakable/severable toggles;
- integrity/threshold values;
- capability tags;
- harvest capacities;
- visual target anchors;
- per-part test damage controls.

Validation panel shows:
- cycles;
- orphan parts;
- duplicate IDs;
- impossible thresholds;
- missing visual target refs;
- broken attack/harvest dependencies.

## 7. Attack editor

Fields:
- ID/name;
- actor/species/weapon association;
- AP/stamina cost;
- range/bearing;
- target rules;
- damage profile;
- required capabilities;
- telegraph;
- reaction windows;
- AI tags/weights;
- presentation references.

Test buttons:
- resolve once against selected target;
- run 100/1000 deterministic simulations where useful;
- display illegal conditions;
- display predicted/observed state transitions.

## 8. Harvest simulator

Select:
- monster species/instance;
- part condition;
- damage history category;
- sever/break/destroy state;
- tool;
- skill/method;
- knowledge state.

Output:
- recoverable materials;
- quantity;
- quality;
- lost material explanation;
- invariant warnings.

This should become a high-value balancing tool before many monsters exist.

## 9. Encounter builder

Creator UI can define:
- tactical nodes;
- adjacency;
- cover;
- elevation;
- hazards;
- range/bearing relationships;
- escape routes;
- spawn anchors;
- visual anchor mapping.

Views:
- aerial layout;
- first-person preview from each node;
- connectivity graph;
- line-of-sight/cover debug;
- monster-size fit check.

Validation rejects unreachable or contradictory layouts.

## 10. Region debug tools

Overlay options:
- traversal bounds;
- collision;
- region/sector boundaries;
- monster territory/path;
- tracking evidence anchors;
- gathering nodes;
- encounter-capable zones;
- tactical cover anchors;
- streaming state;
- active AI tiers;
- spawn rules.

## 11. Live combat debugger

Display:
- turn/round;
- actor resources;
- legal action list;
- selected AI scores/intents;
- current range/bearing;
- cover state;
- anatomy integrity;
- capabilities currently enabled/disabled;
- pending telegraph;
- RNG seed/sequence marker;
- recent domain events.

Allow pause/step through one action at a time in development.

## 12. Deterministic replay

The admin system should eventually capture enough information to replay a combat case for bugs.

Useful capture:
- content version/hash;
- encounter definition;
- initial authoritative state;
- seed;
- player/admin actions;
- AI decisions or reproducible input state;
- domain events;
- final state.

A bug report can then say: `Replay encounter fixture X` instead of relying on vague description.

## 13. Save inspector

Features:
- show schema version;
- show object IDs/references;
- validate invariants;
- create sanitized diagnostic export;
- duplicate into test slot;
- repair preview;
- never silently alter production save without explicit operation.

## 14. Performance dashboard

Display bounded metrics:
- FPS/frame time;
- memory;
- active entity count;
- active/rendered monsters;
- AI update tiers;
- loaded sectors;
- draw/render metrics available from engine;
- particle count;
- audio voice count;
- transition timings;
- recent hitch markers.

Provide toggles to isolate systems:
- particles;
- shadows;
- foliage;
- decals;
- ambient wildlife;
- roaming AI;
- music;
- monster high-detail renderer;
- combat VFX;
- debug proxies.

## 15. Content package lifecycle

Creator content states:
- DRAFT;
- VALIDATION_FAILED;
- VALIDATED;
- PLAYTEST_READY;
- TESTED;
- APPROVED;
- RELEASED.

The tool should never label content TESTED merely because validation passed.

## 16. Import/export

Later creator content should support deterministic text/data export suitable for source control.

Principles:
- human-inspectable where practical;
- stable ordering/format to avoid noisy diffs;
- explicit schema version;
- validation before import/activation;
- no arbitrary executable scripts embedded in content data by default.

## 17. Undo/rollback

Creator edits need:
- unsaved draft state;
- undo/redo where practical;
- explicit save/export;
- versioned content files;
- rollback through source control.

Admin runtime mutations do not need unlimited undo but should offer reset/reload test-state actions.

## 18. Safety against accidental corruption

- development profile separate from normal save;
- destructive commands require explicit selection/confirmation in UI where high-impact;
- creator content validates before activation;
- no direct editing of stable released IDs without migration warning;
- no invisible mutation when merely opening inspector screens.

## 19. Highest-value creation workflow

The Admin/Creator system exists so future development can do:

`DEFINE CONTENT → VALIDATE → SPAWN TEST → INSPECT STATE → SIMULATE/PLAY → IDENTIFY BUG/BALANCE ISSUE → EDIT DATA → REVALIDATE → REPLAY`

instead of repeatedly changing hard-coded source and rebuilding for every numerical/content adjustment.

## 20. Build order

Do not build the giant editor first.

Recommended sequence:
1. read-only state inspector;
2. performance/debug overlay;
3. bounded encounter preset loader;
4. anatomy/part debug controls;
5. harvest simulator;
6. content validators;
7. simple form-based definition editors;
8. visual encounter-layout editor;
9. broader region/content creation tools.

Creator UI follows validated domain/content schemas; it does not define them.