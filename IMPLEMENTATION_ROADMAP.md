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
- deterministic NPC/creature behavior pattern architecture;
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

# Stage 4 — Content validation foundation

Before mass content:
- species/NPC validator;
- attribute-range validator;
- anatomy validator;
- attack reference validator;
- capability validator;
- effect/status validator;
- terrain/weather validator;
- deterministic behavior-profile/rule validator;
- harvest validator;
- material/recipe validator;
- encounter-layout validator.

Create minimal first-slice test content only.

Gate: `CONTENT_SCHEMA_VALIDATED`

# Stage 5 — Tactical combat core

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
- one deterministic monster behavior profile/rule set;
- telegraph/pending action;
- victory/escape/failure.

Tests before presentation.

Gate: `COMBAT_CORE_TESTED`

# Stage 6 — Combat presentation

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
- combat HUD;
- audio cues;
- animation skip/fast-forward safety.

Gate: `COMBAT_PRESENTATION_PHONE_VERIFIED`

# Stage 7 — Harvest core

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

# Stage 8 — Inventory, equipment and crafting

Implement:
- material stacks;
- inventory;
- first equipment slots/loadout;
- equip/unequip effect invalidation;
- one crafted item/upgrade;
- recipe validation;
- material consumption;
- one upgrade with visible gameplay consequence.

Gate: `EQUIPMENT_CRAFT_LOOP_TESTED`

# Stage 9 — Exploration domain

Implement:
- player world position;
- traversal/collision;
- reusable terrain tags/effects;
- region definition;
- monster world instance;
- deterministic minimal roaming/territory pattern;
- NPC schedule/pattern foundation only if first slice requires NPCs;
- tracks/evidence;
- encounter initiation;
- camp/exit minimal flow;
- transfer to same monster instance in `EncounterState`.

Gate: `EXPLORATION_DOMAIN_TESTED`

# Stage 10 — Aerial exploration presentation

Implement:
- RegionScene;
- final aerial camera projection;
- touch movement;
- terrain/structures;
- hunter presentation;
- roaming monster presentation;
- tracking clues;
- lightweight HUD;
- region ambience/music;
- encounter camera transition.

Gate: `EXPLORATION_PHONE_VERIFIED`

# Stage 11 — Full vertical loop integration

Join:
`TITLE/INTRO → HUB/MINIMAL PREP → REGION → TRACK → ENGAGE → COMBAT → BREAK/SEVER → HARVEST → RETURN → CRAFT/EQUIP → SAVE/RELOAD`

Requirements:
- same monster identity through world/combat;
- injuries/statuses persist according to policy;
- terrain/context transfers correctly;
- no duplicate harvest;
- equipment modifiers recalculate correctly;
- deterministic monster behavior remains valid after anatomy/status changes;
- Android lifecycle safe.

Gate: `VERTICAL_SLICE_RUNTIME_VERIFIED`

# Stage 12 — Save system hardening

Implement/verify:
- schema 1;
- atomic save where supported;
- validation;
- backup/recovery;
- attribute/equipment/status persistence;
- behavior-state persistence only where needed;
- active hunt/encounter policy;
- migration fixtures;
- corruption handling.

Gate: `SAVE_SYSTEM_VERIFIED`

# Stage 13 — Read-only Admin/Debug foundation

Build after real state exists:
- state/attribute/derived-stat inspector;
- modifier/calculation trace;
- behavior-rule trace;
- status/terrain inspector;
- anatomy/encounter inspector;
- event log;
- content validation panel;
- performance overlay;
- feature-isolation toggles.

Gate: `ADMIN_INSPECTOR_VERIFIED`

# Stage 14 — Admin mutation/test tools

Add typed commands:
- set resources/attributes;
- equip/give items/materials;
- apply/remove status;
- set terrain/weather context;
- spawn validated actor;
- start preset encounter;
- set part state;
- evaluate/force behavior rule for diagnostics;
- reset encounter;
- teleport to test anchor;
- duplicate save into test profile.

Commands preserve structural invariants.

Gate: `ADMIN_TEST_COMMANDS_VERIFIED`

# Stage 15 — Creator tools

Only after schemas stabilize:
- actor/creature editor;
- stats/equipment/effect editor;
- status editor/simulator;
- terrain/weather editor/debugger;
- deterministic behavior-pattern editor;
- anatomy editor;
- attack editor;
- harvest simulator;
- material/recipe editor;
- encounter layout builder;
- region authoring helpers;
- validate/export/import package;
- deterministic replay viewer.

Gate: `CREATOR_WORKFLOW_VERIFIED`

# Stage 16 — First real art/audio production pass

Replace placeholders systematically:
- hunter art;
- first monster model/rig;
- region modular kit;
- settlement kit;
- materials/textures;
- animations;
- effects;
- title/hub/region/combat music;
- telegraph/impact/environment audio.

Every production asset has provenance/performance budget.

Gate: `FIRST_SLICE_VISUAL_AUDIO_QUALITY_VERIFIED`

# Stage 17 — Second-content extensibility proof

Add:
- second monster with different anatomy/behavior/terrain adaptation;
- second weapon family or substantially different techniques;
- second equipment/status interaction;
- second material/upgrade path;
- additional encounter layout.

Purpose: prove architecture is reusable rather than secretly hard-coded for monster one.

Gate: `EXTENSIBILITY_PROVEN`

# Stage 18 — World/campaign expansion

Only now expand regions, hubs, contracts/story, NPC schedules/patterns, research, economy, crafting, ecology and broader weather/day-night mechanics when justified.

# Stage 19 — Optimization and release discipline

Continuous throughout, with release preparation including:
- target-device matrix;
- quality presets;
- worst-case benchmarks;
- behavior/effect performance caps;
- save migration testing;
- crash/ANR review;
- accessibility pass;
- content validation all-green;
- APK integrity/signing/version checks;
- runtime regression suite.

## Anti-shortcut rules

Do not:
- create 20 monsters before one hunt is fun;
- create giant world before streaming/performance is proven;
- create final UI before domain requirements stabilize;
- create huge creator editor before schemas exist;
- hard-code per-item/per-status/per-terrain math in presentation scripts;
- build opaque AI when authored condition patterns are the design;
- optimize speculative bottlenecks while ignoring measured ones;
- declare phone behavior from desktop/build success;
- allow Admin tools to bypass invariants invisibly.

## Current position

The project remains at Stage 0. Planning/documentation is active. Gameplay source creation remains blocked pending explicit user authorization after design discussion.