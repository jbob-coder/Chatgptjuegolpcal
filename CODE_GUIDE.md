# Unnamed Hunt RPG — Code Guide

Status: STRUCTURAL PLAN / ENGINE-SPECIFIC SOURCE NOT CREATED
Last reconciled: 2026-09-02

## Purpose

Explain how future code should be divided, what each layer does, how to improve it safely, and how to isolate slow or bug-prone systems.

This guide is engine-neutral until engine selection is verified.

## 1. Code philosophy

Code should optimize for:
- correctness;
- clear ownership;
- testability;
- deterministic debugging;
- bounded performance cost;
- easy content expansion;
- replaceable presentation;
- readable source;
- safe save evolution.

Avoid clever architecture that obscures state flow.

## 2. Dependency direction

Preferred:

`Presentation / Platform → Domain API ← Persistence / Tools / Tests`

Content definitions are consumed by Domain.

Domain must not depend on rendering/UI classes.

## 3. Planned modules/packages

### `domain/world`
World and region truth:
- region ID/state;
- world position;
- roaming monster instances;
- camps/interactables;
- exploration-to-encounter context.

### `domain/exploration`
- movement requests;
- traversal validation;
- tracking interactions;
- gathering;
- encounter initiation.

### `domain/encounter`
- turn order;
- AP/stamina/reactions;
- tactical nodes;
- cover;
- legal action queries;
- encounter outcomes.

### `domain/creature`
- species/runtime monster model;
- capabilities;
- state transitions shared across world/combat.

### `domain/anatomy`
- body-part graph;
- part integrity;
- break/sever/destroy rules;
- exposure;
- capability changes.

### `domain/damage`
- hit/armor/damage resolution;
- wounds/status integration;
- damage profiles.

### `domain/ai`
- legal action scoring/selection;
- no direct mutation or animation calls.

### `domain/harvest`
- recoverable anatomical capacity;
- method/tool/condition calculation;
- extraction/depletion.

### `domain/inventory`
- item/material stacks;
- equipment.

### `domain/crafting`
- recipes;
- crafting/upgrading;
- material consumption.

### `domain/knowledge`
- bestiary/research/mastery visibility rules.

### `persistence`
- save schema;
- serialization;
- validation;
- migration;
- backup/repair.

### `presentation/exploration`
- aerial camera;
- region visual scene;
- player/monster visuals;
- exploration HUD;
- input adapter.

### `presentation/combat`
- first-person camera;
- monster visual adapter;
- tactical movement animation;
- body-part targeting overlay;
- combat HUD;
- event presentation.

### `presentation/shared`
- UI components;
- audio;
- VFX;
- loading/transitions;
- accessibility presentation.

### `admin`
- read-only inspectors;
- typed admin commands;
- creator tools;
- performance dashboard.

### `content`
Data definitions, not runtime mutation logic.

### `tests`
Unit/domain/content/integration/save/replay tests.

## 4. File/class responsibility rule

A file/class should have one primary reason to change.

Warning signs:
- one `GameManager` owns saving, UI, combat, audio and monster AI;
- one monster script contains all species-specific logic;
- UI button callbacks directly edit state;
- combat renderer calculates damage;
- save serializer performs gameplay decisions.

Split by responsibility, not arbitrarily by line count.

## 5. Public domain API

Presentation should interact through narrow operations such as:
- `queryLegalActions()`;
- `dispatchAction(request)`;
- `getSnapshot()`;
- `consume/readDomainEvents()`;
- `loadContent(id)`.

Exact names depend on language/engine.

Do not expose mutable internals to UI for convenience.

## 6. State mutation rule

Authoritative state changes happen through validated domain functions/commands.

Prefer pure or near-pure resolution functions where practical:

`oldState + request + definitions + rng → result(newState, events)`

This improves testing and replay.

## 7. Error/result model

Avoid silent failure and generic booleans.

Return structured results:
- accepted/rejected;
- rejection code;
- player-facing explanation key;
- state delta/events;
- diagnostic metadata in development.

## 8. Logging

Use structured, bounded logs.

Useful categories:
- lifecycle;
- save;
- region transition;
- encounter;
- combat action;
- AI decision;
- anatomy transition;
- harvest;
- content validation;
- performance;
- fatal/nonfatal error.

Do not continuously print every frame.

## 9. Feature isolation

Every expensive or unstable presentation subsystem should be separable from domain behavior.

Examples:
- domain combat can run headless;
- monster can render as debug proxy;
- foliage can be disabled;
- VFX can be disabled;
- music can be disabled;
- AI can use deterministic test policy;
- tactical geometry can display as debug nodes.

This allows binary-search debugging of system failures.

## 10. Performance-sensitive code rules

Avoid in per-frame paths unless measured/needed:
- repeated allocations;
- repeated content parsing;
- pathfinding for every entity every frame;
- rebuilding UI trees for unchanged state;
- expensive debug string generation;
- repeated disk/save writes;
- synchronous large asset loads during active combat;
- scanning all world entities for local queries.

Use caching/indexing only where correctness and invalidation are clear.

## 11. Save writes

Do not write the entire save every visual frame.

Save triggers can include:
- explicit save/checkpoint;
- region transition;
- encounter completion/start where needed;
- important progression change;
- app background/suspend with safe lifecycle handling.

Debounce/batch noncritical writes if platform behavior supports it.

## 12. Testing-friendly design

Inject or abstract:
- RNG;
- clock/time if mechanics use time;
- content repository;
- save repository;
- AI policy when useful.

Avoid hidden global singletons controlling domain rules if they make deterministic testing difficult.

## 13. Content-specific behavior

Prefer data/capability composition before subclasses such as:
`FlyingHornedVenomFireMonsterBossV2`.

Code should implement reusable mechanics; content data combines them.

Use custom source only when a genuinely unique mechanic cannot be represented clearly through existing schemas.

## 14. Improving code safely

Before refactor:
1. identify behavior being preserved;
2. ensure tests cover it;
3. identify performance or maintainability problem;
4. make bounded change;
5. run regression tests;
6. compare behavior/performance;
7. update docs if ownership changed.

Do not refactor merely for aesthetics during a blocker repair.

## 15. Bug-fix protocol

For a bug:
1. record exact observed behavior;
2. classify severity;
3. separate symptom from hypothesis;
4. reproduce with smallest state/fixture;
5. identify authoritative owner;
6. add regression test if possible;
7. fix root cause;
8. verify adjacent invariants;
9. test on device if runtime-related;
10. record result.

Do not make several speculative fixes at once.

## 16. Performance regression protocol

When slowdown appears:
1. reproduce in a fixed scene/state;
2. record baseline metrics;
3. use admin toggles to disable subsystems;
4. identify CPU/GPU/memory/loading category;
5. find owner;
6. optimize the bottleneck, not unrelated code;
7. compare before/after metrics;
8. retain quality-critical features where possible.

## 17. Code comments/documentation

Comments should explain:
- invariant;
- non-obvious reasoning;
- compatibility constraint;
- algorithmic tradeoff;
- external/platform limitation.

Do not comment obvious syntax.

Every important subsystem should eventually have a short source-adjacent README explaining:
- responsibility;
- key types/files;
- state flow;
- invariants;
- tests;
- performance concerns;
- extension points.

## 18. Definition of done for code

A mechanic is not done until appropriate gates pass:
- source exists;
- static/content validation passes;
- unit/domain tests pass;
- integration tests pass where relevant;
- build compiles;
- runtime behavior verified when visual/input/platform-dependent;
- performance checked when cost can be meaningful;
- documentation updated;
- saved state/readback verified.

## 19. Anti-monolith rule

Never allow one scene/controller/view-model/script to become the owner of:
- world simulation;
- combat;
- save;
- UI;
- audio;
- admin;
- content loading.

When responsibilities begin accumulating, split at domain boundaries before adding more features.

## 20. Engine adaptation

Once engine is selected, this guide must be translated into concrete folders/classes/scenes and API conventions, but the ownership laws remain unless evidence proves a better structure.