# Unnamed Hunt RPG — Implementation Roadmap

Status: PLANNING ONLY / IMPLEMENTATION NOT AUTHORIZED
Last reconciled: 2026-09-02

## Purpose

Build the game from foundational risk to detail, proving each dependency before expanding content. This roadmap begins with experience/technical validation, then domain mechanics, then presentation, then content scale and creator tooling.

## Mandatory loop

`READ STATE → VERIFY → DEFINE ONE SMALL PIECE → IDENTIFY OWNER → IMPLEMENT → TEST → PROFILE IF RELEVANT → INSPECT REGRESSION → FIX → UPDATE DOCS → SAVE/COMMIT → READ BACK → MARK GATE → NEXT`

No phase advances because it merely looks promising.

# Stage 0 — Design foundation

CURRENT STAGE.

Complete/record:
- game experience philosophy;
- aerial/first-person visual behavior;
- core hunting loop;
- anatomy/harvest mechanics;
- six-role attribute direction;
- shared modifier/effect architecture;
- equipment/status/terrain/weather interaction rules;
- deterministic NPC/creature behavior architecture;
- crystal life-force architecture;
- Tier/Rank/Quality/Element separation;
- desperation/berserk reserve-drain model;
- mutation architecture and support limits;
- bounded ecosystem/population strategy;
- architecture/ownership;
- content schema plan;
- code guide;
- performance caps;
- Admin/Creator architecture;
- verification rules.

Still discuss/lock:
- final name;
- setting/history/technology/magic;
- player role;
- crystal origin and human relationship to crystals;
- exact crystal tiers/ranks/quality bands/elements;
- energy recovery rules;
- exact berserk rules;
- mutation origin/inheritance;
- ecosystem persistence depth;
- first settlement/region/monster/weapon;
- solo/party baseline;
- exact action economy;
- exact starting attributes/formulas/caps;
- first equipment slots/loadout;
- first status list;
- first terrain effect set;
- gore intensity;
- harvesting interaction depth;
- progression/death/failure;
- target phone/Android baseline;
- engine.

Gate: `DESIGN_SLICE_APPROVED`

# Stage 1 — Engine and Android probe

Purpose: fail cheaply if the rendering stack is wrong.

Create only:
- boot/title prototype;
- tiny forest/diorama region;
- aerial 40–50° camera;
- hunter placeholder;
- one large animated monster placeholder;
- billboard/2D foliage experiment;
- touch movement;
- camera descent to first-person;
- combat HUD mock overlay;
- first-person close monster framing;
- basic audio playback;
- suspend/resume.

Measure cold launch, FPS/frame pacing, memory, transition cost, touch usability, thermal behavior and crashes/render problems.

No real combat/harvest source yet.

Gate: `ENGINE_PHONE_PROBE_VERIFIED`

# Stage 2 — Project skeleton and domain core

Create real source structure only after Stage 1 passes.

Implement:
- app/game shell;
- content repository interfaces;
- stable ID types/validation;
- domain result/error model;
- seeded RNG abstraction;
- `GameState` skeleton;
- `PlayerState` with bounded primary attributes;
- `WorldState`;
- `MonsterDefinition/Instance`;
- `BodyPartDefinition/State`;
- `EncounterState`;
- domain-event model;
- test runner/verification entry point.

Gate: `DOMAIN_FOUNDATION_TESTED`

# Stage 3 — Shared stats/effects foundation

Implement before content begins inventing bonuses independently:
- six primary attribute data model;
- derived-stat evaluator;
- typed `EffectDefinition`;
- modifier operations;
- stack groups/policies;
- caps/clamps/floors;
- equipment effect application;
- status runtime instance/lifecycle;
- terrain/weather context effects;
- calculation trace;
- cache/invalidation rules.

Tests:
- modifier order;
- stack policies;
- caps;
- equipment + status + terrain combinations;
- deterministic traces;
- no repeated recalculation without input change.

Gate: `STATS_EFFECTS_CORE_TESTED`

# Stage 4 — Crystal, mutation and ecology foundation

Implement the smallest authoritative core before combat content relies on it:
- crystal intrinsic definition: Tier/Rank/Quality/Element;
- runtime `CrystalCoreState`: current/max Energy, Condition, Strain;
- zero-Energy death invariant;
- explicit energy transaction API;
- berserk activation/drain state skeleton;
- mutation definition schema;
- mutation prerequisites/incompatibilities/support-load validation;
- mutation effect integration through the shared effects system;
- mutation capability/anatomy hooks;
- minimal region/species population aggregate model;
- deterministic creature-variant generation from base species + allowed mutation profile;
- crystal/mutation debug trace data.

First implementation limits:
- one element;
- one practical tier;
- small rank range;
- small quality range/bands;
- 2–4 mutations;
- one berserk rule;
- one aggregate population profile.

Tests:
- zero Energy resolves death;
- berserk cannot overspend without death resolution;
- intrinsic crystal properties remain separate from current Energy;
- invalid mutation combinations rejected;
- support/load cap enforced;
- mutation-derived effects use normal modifier pipeline;
- deterministic variant generation;
- no full ecology work every frame.

Gate: `CRYSTAL_MUTATION_CORE_TESTED`

# Stage 5 — Content validation foundation

Before mass content:
- species/NPC validator;
- attribute-range validator;
- anatomy validator;
- attack reference validator;
- capability validator;
- effect/status validator;
- terrain/weather validator;
- deterministic behavior-profile/rule validator;
- crystal Tier/Rank/Quality/Element validator;
- mutation prerequisite/incompatibility/load validator;
- ecology/population-profile validator;
- harvest validator;
- material/recipe validator;
- encounter-layout validator.

Create minimal first-slice test content only.

Gate: `CONTENT_SCHEMA_VALIDATED`

# Stage 6 — Tactical combat core

Implement domain-only mechanics:
- turn order;
- approved AP/action economy;
- stamina;
- reaction resource;
- tactical nodes;
- movement/reposition;
- terrain movement effects;
- range/bearing;
- cover;
- body-part exposure;
- one weapon family;
- attack/context modifier resolution;
- hit-quality bands;
- break/sever/destroy;
- capability loss;
- small status set;
- one deterministic monster behavior profile;
- core-energy consequences from defined severe injuries/effects;
- one desperation/berserk pattern;
- berserk actions that still obey anatomy/capability legality;
- telegraph/pending action;
- victory/escape/failure.

Tests before presentation.

Gate: `COMBAT_CORE_TESTED`

# Stage 7 — Combat presentation

Connect first-person presentation to domain events:
- first-person EncounterScene;
- tactical camera movement;
- monster renderer/rig;
- action categories;
- body targeting mode;
- telegraphs;
- impacts;
- break/sever presentation;
- terrain/cover visualization;
- status indicators;
- readable berserk/crystal-overdrive presentation;
- combat HUD;
- audio cues;
- animation skip/fast-forward safety.

Gate: `COMBAT_PRESENTATION_PHONE_VERIFIED`

# Stage 8 — Harvest core

Implement:
- harvest source/capacity;
- condition/quality mapping;
- extraction action/method;
- one tool path;
- unique-part invariants;
- severed-part/carcass state;
- material award/depletion;
- crystal extraction result using Tier/Rank/Quality/Element + Condition;
- one physical core cannot be duplicated;
- harvest explanation result.

Prove different combat damage creates different anatomy/crystal harvest outcomes.

Gate: `HARVEST_CORE_TESTED`

# Stage 9 — Inventory, equipment and crafting

Implement:
- material stacks;
- inventory;
- first equipment slots/loadout;
- equip/unequip effect invalidation;
- one crafted item/upgrade;
- recipe validation;
- material consumption;
- one upgrade with visible gameplay consequence;
- crystal crafting hook only if world premise has been explicitly decided.

Gate: `EQUIPMENT_CRAFT_LOOP_TESTED`

# Stage 10 — Exploration domain

Implement:
- player world position;
- traversal/collision;
- reusable terrain tags/effects;
- region definition;
- monster world instance with persistent crystal/mutation state;
- deterministic minimal roaming/territory pattern;
- tracks/evidence;
- encounter initiation;
- camp/exit minimal flow;
- transfer to same monster instance in `EncounterState`.

Gate: `EXPLORATION_DOMAIN_TESTED`

# Stage 11 — Bounded ecology integration

Implement only enough ecology to prove the architecture:
- one region/species aggregate;
- abundance/development distribution;
- allowed mutation distribution;
- elemental/terrain pressure inputs;
- spawn variant selection from validated aggregate/profile;
- persistence of aggregate state if required;
- no full off-screen actor simulation.

Do not implement broad breeding/predator-prey evolution yet.

Gate: `ECOLOGY_AGGREGATE_TESTED`

# Stage 12 — Aerial exploration presentation

Implement:
- RegionScene;
- final aerial camera projection;
- touch movement;
- terrain/structures;
- hunter presentation;
- roaming monster presentation with visible mutation differences where relevant;
- tracking clues;
- lightweight HUD;
- region ambience/music;
- encounter camera transition.

Gate: `EXPLORATION_PHONE_VERIFIED`

# Stage 13 — Full vertical loop integration

Join:
`TITLE/INTRO → HUB/MINIMAL PREP → REGION → TRACK → ENGAGE → COMBAT → BREAK/SEVER/BERSERK → DEFEAT/ESCAPE → HARVEST → RETURN → CRAFT/EQUIP → SAVE/RELOAD`

Requirements:
- same monster identity through world/combat;
- injuries/statuses/crystal/mutations persist correctly;
- terrain/context transfers correctly;
- no duplicate anatomy/crystal harvest;
- equipment modifiers recalculate correctly;
- deterministic behavior remains valid after anatomy/status/core changes;
- zero core Energy death invariant holds;
- Android lifecycle safe.

Gate: `VERTICAL_SLICE_RUNTIME_VERIFIED`

# Stage 14 — Save system hardening

Implement/verify:
- schema 1;
- atomic save where supported;
- validation;
- backup/recovery;
- attribute/equipment/status persistence;
- crystal Energy/Condition/Tier/Rank/Quality/Element persistence where runtime-relevant;
- mutation profile persistence;
- ecology aggregate persistence policy;
- behavior-state persistence only where needed;
- active hunt/encounter policy;
- migration fixtures;
- corruption handling.

Gate: `SAVE_SYSTEM_VERIFIED`

# Stage 15 — Read-only Admin/Debug foundation

Build after real state exists:
- state/attribute/derived-stat inspector;
- modifier/calculation trace;
- behavior-rule trace;
- status/terrain inspector;
- crystal/mutation inspector;
- berserk energy transaction trace;
- anatomy/encounter inspector;
- ecology aggregate inspector;
- event log;
- content validation panel;
- performance overlay;
- feature-isolation toggles.

Gate: `ADMIN_INSPECTOR_VERIFIED`

# Stage 16 — Admin mutation/test tools

Add typed commands:
- set resources/attributes;
- equip/give items/materials;
- apply/remove status;
- set terrain/weather context;
- set crystal Energy/Condition in test profile;
- activate/deactivate berserk for diagnostics;
- apply/remove mutation in validated test context;
- generate deterministic creature variant;
- modify test ecology pressure/aggregate;
- spawn validated actor;
- start preset encounter;
- set part state;
- evaluate/force behavior rule for diagnostics;
- reset encounter;
- teleport to test anchor;
- duplicate save into test profile.

Commands preserve structural invariants.

Gate: `ADMIN_TEST_COMMANDS_VERIFIED`

# Stage 17 — Creator tools

Only after schemas stabilize:
- actor/creature editor;
- stats/equipment/effect editor;
- status editor/simulator;
- terrain/weather editor/debugger;
- deterministic behavior-pattern editor;
- crystal Tier/Rank/Quality/Element editor;
- mutation editor/compatibility viewer;
- ecology pressure/population simulator;
- anatomy editor;
- attack editor;
- harvest simulator;
- material/recipe editor;
- encounter layout builder;
- region authoring helpers;
- validate/export/import package;
- deterministic replay viewer.

Gate: `CREATOR_WORKFLOW_VERIFIED`

# Stage 18 — First real art/audio production pass

Replace placeholders systematically:
- hunter art;
- first monster model/rig with mutation/crystal/berserk visual support;
- region modular kit;
- settlement kit;
- materials/textures;
- animations;
- effects;
- title/hub/region/combat music;
- crystal/berserk/telegraph/impact/environment audio.

Every production asset has provenance/performance budget.

Gate: `FIRST_SLICE_VISUAL_AUDIO_QUALITY_VERIFIED`

# Stage 19 — Second-content extensibility proof

Add:
- second monster with different anatomy/behavior/crystal/mutation/terrain adaptation;
- second weapon family or substantially different techniques;
- second equipment/status interaction;
- second material/upgrade path;
- additional encounter layout.

Purpose: prove architecture is reusable rather than secretly hard-coded for monster one.

Gate: `EXTENSIBILITY_PROVEN`

# Stage 20 — World/campaign expansion

Only now expand regions, hubs, contracts/story, NPC schedules/patterns, research, economy, crafting, ecology, mutation distributions, elemental habitats and broader weather/day-night mechanics when justified.

Potential later ecosystem systems include migration, predator/prey changes, hunting-pressure adaptation, breeding/repopulation and persistent regional mutation shifts.

# Stage 21 — Optimization and release discipline

Continuous throughout, with release preparation including:
- target-device matrix;
- quality presets;
- worst-case benchmarks;
- behavior/effect/crystal/mutation/ecology performance caps;
- save migration testing;
- crash/ANR review;
- accessibility pass;
- content validation all-green;
- APK integrity/signing/version checks;
- runtime regression suite.

## Anti-shortcut rules

Do not:
- create 20 monsters before one hunt is fun;
- create dozens of elements/mutations before the first crystal system is understandable;
- simulate thousands of full off-screen creatures;
- let berserk become a free generic stat multiplier;
- let crystal health replace anatomy gameplay;
- create a giant world before streaming/performance is proven;
- create final UI before domain requirements stabilize;
- create huge creator editor before schemas exist;
- hard-code per-item/per-status/per-terrain/per-mutation math in presentation scripts;
- build opaque AI when authored condition patterns are the design;
- optimize speculative bottlenecks while ignoring measured ones;
- declare phone behavior from desktop/build success;
- allow Admin tools to bypass invariants invisibly.

## Current position

The project remains at Stage 0. Planning/documentation is active. Gameplay source creation remains blocked pending explicit user authorization after design discussion.