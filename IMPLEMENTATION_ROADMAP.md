# Unnamed Hunt RPG — Implementation Roadmap

Status: PLANNING ONLY / IMPLEMENTATION NOT AUTHORIZED
Last reconciled: 2026-09-02

## Purpose

Build the game from foundational risk to detail, proving each dependency before expanding content. This roadmap intentionally begins with experience/technical validation, then domain mechanics, then presentation, then content scale and creator tooling.

## Mandatory loop

For every piece after implementation authorization:

`READ STATE → VERIFY → DEFINE ONE SMALL PIECE → IDENTIFY OWNER → IMPLEMENT → TEST → PROFILE IF RELEVANT → INSPECT REGRESSION → FIX → UPDATE DOCS → SAVE/COMMIT → READ BACK → MARK GATE → NEXT`

No phase advances because it merely looks promising.

# Stage 0 — Design foundation

CURRENT STAGE.

Complete/record:
- game experience philosophy;
- aerial/first-person visual behavior;
- core hunting loop;
- anatomy/harvest mechanics;
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
- first settlement;
- first region;
- first monster;
- first weapon;
- solo/party baseline;
- action economy;
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

Measure:
- cold launch;
- FPS/frame pacing;
- memory;
- aerial→combat transition;
- touch latency/usability;
- thermal behavior;
- crashes/render problems.

No real combat/harvest source yet.

Gate: `ENGINE_PHONE_PROBE_VERIFIED`

# Stage 2 — Project skeleton and domain core

Create the real source structure only after Stage 1 passes.

Implement:
- app/game shell;
- content repository interfaces;
- stable ID types/validation;
- domain result/error model;
- seeded RNG abstraction;
- `GameState` skeleton;
- `PlayerState`;
- `WorldState`;
- `MonsterDefinition/Instance`;
- `BodyPartDefinition/State`;
- `EncounterState`;
- domain-event model;
- test runner/verification entry point.

Gate: `DOMAIN_FOUNDATION_TESTED`

# Stage 3 — Content validation foundation

Before mass content:
- species validator;
- anatomy graph validator;
- attack reference validator;
- capability validator;
- harvest-source validator;
- material/recipe validator;
- encounter-layout validator.

Create minimal first-slice test content only.

Gate: `CONTENT_SCHEMA_VALIDATED`

# Stage 4 — Tactical combat core

Implement domain-only mechanics:
- turn order;
- AP/action economy approved model;
- stamina;
- reaction resource;
- tactical nodes;
- movement/reposition;
- range/bearing;
- cover;
- body-part exposure;
- one weapon family;
- attack resolution;
- break/sever/destroy;
- capability loss;
- one monster AI policy;
- telegraph/pending intent;
- victory/escape/failure states.

Tests before presentation.

Gate: `COMBAT_CORE_TESTED`

# Stage 5 — Combat presentation

Connect first-person presentation to domain events:
- first-person EncounterScene;
- tactical camera movement;
- monster renderer/rig;
- action categories;
- body targeting mode;
- telegraphs;
- impacts;
- break/sever presentation;
- cover visualization;
- combat HUD;
- audio cues;
- animation skip/fast-forward safety.

Gate: `COMBAT_PRESENTATION_PHONE_VERIFIED`

# Stage 6 — Harvest core

Implement:
- harvest source/capacity;
- condition/quality mapping;
- extraction action/method;
- one tool path;
- unique-part invariants;
- severed-part/carcass state;
- material award/depletion;
- harvest explanation result.

Prove different combat damage creates different harvest outcomes.

Gate: `HARVEST_CORE_TESTED`

# Stage 7 — Inventory and crafting

Implement:
- material stacks;
- inventory;
- one crafted item/upgrade path;
- recipe validation;
- material consumption;
- equipment update;
- one upgrade with visible gameplay consequence.

Gate: `CRAFT_LOOP_TESTED`

# Stage 8 — Exploration domain

Implement:
- player world position;
- traversal/collision;
- region definition;
- monster world instance;
- monster roaming minimal policy;
- tracks/evidence;
- encounter initiation;
- camp/exit minimal flow;
- transfer to same monster instance in EncounterState.

Gate: `EXPLORATION_DOMAIN_TESTED`

# Stage 9 — Aerial exploration presentation

Implement:
- RegionScene;
- final chosen aerial camera projection;
- touch movement;
- terrain/structures;
- hunter presentation;
- roaming monster presentation;
- tracking clues;
- lightweight exploration HUD;
- region ambience/music;
- encounter camera transition.

Gate: `EXPLORATION_PHONE_VERIFIED`

# Stage 10 — Full vertical loop integration

Join:
`TITLE/INTRO → HUB/MINIMAL PREP → REGION → TRACK → ENGAGE → COMBAT → BREAK/SEVER → HARVEST → RETURN → CRAFT → SAVE/RELOAD`

Requirements:
- same monster identity through world/combat;
- injuries persist correctly;
- no duplicate harvest;
- upgrade persists;
- Android lifecycle safe.

Gate: `VERTICAL_SLICE_RUNTIME_VERIFIED`

# Stage 11 — Save system hardening

Implement/verify:
- schema 1;
- atomic save behavior where supported;
- save validation;
- backup/recovery;
- active hunt/encounter persistence policy;
- migration fixture framework;
- corruption handling.

Gate: `SAVE_SYSTEM_VERIFIED`

# Stage 12 — Read-only Admin/Debug foundation

Build after real state exists:
- state inspector;
- anatomy inspector;
- encounter inspector;
- event log;
- content validation panel;
- performance overlay;
- feature-disable/isolation toggles.

Gate: `ADMIN_INSPECTOR_VERIFIED`

# Stage 13 — Admin mutation/test tools

Add typed commands:
- set player resources;
- give materials/items;
- spawn validated monster;
- start preset encounter;
- set part state;
- force monster intent;
- reset encounter;
- teleport to test anchor;
- duplicate save into test profile.

Commands preserve structural invariants.

Gate: `ADMIN_TEST_COMMANDS_VERIFIED`

# Stage 14 — Creator tools

Only after schemas are stable enough:
- creature editor;
- anatomy tree editor;
- attack editor;
- harvest simulator;
- material/recipe editor;
- encounter layout builder;
- region debug authoring helpers;
- validate/export/import content package;
- deterministic replay viewer.

Gate: `CREATOR_WORKFLOW_VERIFIED`

# Stage 15 — First real art/audio production pass

Replace placeholders systematically:
- hunter art;
- first monster production model/rig;
- region modular kit;
- settlement kit;
- materials/textures;
- animations;
- effects;
- title/hub/region/combat music;
- telegraph/impact/environment audio.

Every production asset has provenance and performance budget.

Gate: `FIRST_SLICE_VISUAL_AUDIO_QUALITY_VERIFIED`

# Stage 16 — Second-content extensibility proof

Add:
- second monster with different anatomy/behavior;
- second weapon family or substantially different technique set;
- second material/upgrade path;
- additional encounter layout.

Purpose: prove architecture is reusable rather than secretly hard-coded for monster one.

Gate: `EXTENSIBILITY_PROVEN`

# Stage 17 — World/campaign expansion

Only now expand:
- additional regions/biomes;
- hub depth;
- contracts/story;
- NPCs;
- research progression;
- economy;
- broader crafting trees;
- ecology;
- weather/day-night gameplay if justified.

Each new system still follows the small-piece loop.

# Stage 18 — Optimization and release discipline

Continuous throughout, but release preparation includes:
- target device matrix;
- quality presets;
- worst-case benchmarks;
- save migration testing;
- crash/ANR review;
- accessibility pass;
- content validation all-green;
- APK integrity/signing/version checks;
- runtime regression suite.

## Anti-shortcut rules

Do not:
- create 20 monsters before one hunt is fun;
- create a giant open world before region streaming/performance is proven;
- create final UI before domain action/result requirements are stable;
- create a huge creator editor before schemas exist;
- optimize speculative bottlenecks while ignoring measured ones;
- declare phone behavior from desktop/build success;
- allow admin tools to bypass invariants invisibly.

## Current position

The project remains at Stage 0. Planning/documentation is active. Gameplay source creation is still blocked pending explicit user authorization after design discussion.