# Shooter RPG — Foundation Design 001

Status: FOUNDATION DESIGN LOCKED FOR FIRST PROTOTYPE
Last reconciled: 2026-09-16
Branch target: `shooter-rpg`
Working design branch: `shooter-rpg-foundation-design-001`

## 0. Purpose

This document defines the first independent gameplay foundation for Shooter RPG.

Shooter RPG is a standalone project. Nothing in this document is inherited from previous games unless explicitly stated here.

The design goal is a small, high-quality third-person pixel shooter RPG that is immediately readable on a phone, feels responsive before it becomes complex, and can expand without requiring a large open world.

Core rule:

**PLAYER SKILL + POSITIONING + WEAPON HANDLING FIRST; RPG SYSTEMS MODIFY OPTIONS AND EFFICIENCY WITHOUT INVALIDATING GOOD AIM.**

A shot that visually and mechanically lands should not randomly miss because of an invisible RPG accuracy roll.

---

# 1. Core player fantasy

Working fantasy:

**You are a frontier gunner operating from a fortified settlement, taking short expeditions into dangerous territory, surviving firefights, recovering useful equipment/resources, and gradually becoming a more capable specialist.**

The game should feel:
- dangerous but readable;
- exploratory without becoming an enormous open world;
- tactical without turning into a menu-heavy tactics game;
- RPG-driven without making enemies into extreme bullet sponges;
- visually stylized through deliberate pixel treatment;
- playable offline as a complete single-player experience.

First release direction is **single-player, offline-first**. Multiplayer is out of scope for the foundation and must not influence architecture or controls unless explicitly approved later.

## Core loop

`SETTLEMENT → TAKE OBJECTIVE → PHYSICALLY LEAVE → TRAVERSE SHORT ROUTE → SCOUT/ENGAGE → SHOOT/MOVE/SURVIVE → RECOVER REWARD → RETURN → UPGRADE/CHOOSE → NEXT RUN`

The loop should begin producing decisions within minutes, not after a long tutorial.

---

# 2. Camera / perspective

Selected perspective:

**third-person over-the-shoulder follow camera**.

Normal exploration:
- player remains visible;
- camera sits behind and slightly above the character;
- enough forward visibility to read paths and threats;
- right-side drag rotates yaw/pitch;
- camera collision pulls the camera forward rather than clipping through walls;
- camera recenters only when requested or after a configurable idle delay, never fighting active player input.

Combat aiming:
- holding AIM shifts the camera closer toward the weapon shoulder;
- reticle becomes precise;
- movement becomes strafe-oriented relative to camera;
- exact FOV, shoulder offset, camera distance and aim zoom remain prototype variables.

Shoulder swap is deferred until the basic camera is proven.

No first-person mode is required in the first slice.

---

# 3. Movement

Foundation movement is deliberately compact.

First-slice movement states:
- walk/analog move;
- run as normal full-stick locomotion;
- sprint when movement magnitude is high and the player is not aiming/firing/reloading;
- aim-strafe;
- one short evasive dash/dodge with cooldown or stamina cost;
- contextual interaction.

Not in first slice:
- free jump;
- crouch;
- prone;
- climbing system;
- parkour;
- sticky cover system.

Reason: each additional locomotion state multiplies camera, animation, collision and mobile-control complexity. The first prototype should prove that moving, aiming and firing already feel good.

Environmental cover is physical geometry. The player uses walls, rocks, carts and corners by positioning rather than snapping into a cover mode.

---

# 4. Aiming / shooting

The shooter loop must feel deterministic and immediate.

## Input model

- right-side drag = camera / aim direction;
- AIM button = tighten aim / shoulder camera;
- FIRE button = fire current weapon;
- RELOAD button = manual reload;
- when magazine is empty, pressing FIRE may trigger reload if safe to do so;
- optional touch aim assist is allowed, but must never rotate the camera aggressively against player intent.

## Accuracy law

Player aim is authoritative.

RPG stats may modify:
- recoil recovery;
- weapon sway;
- reload speed;
- handling speed;
- hip-fire spread;
- effective range;
- critical/weak-point bonuses where explicitly designed.

They must not turn a visibly centered close-range shot into an arbitrary miss.

## First weapon

First implemented firearm category:

**semi-automatic frontier carbine**.

Why:
- clear single-shot feedback;
- easier recoil tuning than automatic fire;
- works at close and medium range;
- encourages deliberate aiming;
- easy to read in pixel animation;
- exposes reload/ammo/aim systems without requiring several weapon families.

First-slice secondary action:
- quick melee shove / weapon-butt strike for emergency space-making.

No second firearm is required in the first vertical slice.

Future categories may include sidearms, shotguns, repeaters, automatic weapons or special weapons, but none are foundation promises.

---

# 5. Damage / health baseline

First-slice combat should be lethal enough that cover and movement matter.

Player baseline:
- one health pool;
- no regenerating combat shield;
- limited healing item;
- damage feedback through animation, screen treatment and audio without hiding the scene.

Enemy baseline:
- one health pool;
- one readable weak point;
- no RPG-level-based health inflation in the first slice.

Damage rule:
- body shots are reliable;
- weak-point shots reward precision;
- weapon upgrades should improve effectiveness in bounded steps rather than multiply damage until early enemies become meaningless.

Enemy auto-scaling to player level is not part of the foundation.

---

# 6. First-slice enemy

Working enemy archetype:

**Sentry Automaton** — placeholder name and art identity.

Purpose:
- prove ranged enemy behavior without requiring a large humanoid animation library;
- provide a readable weak point;
- support simple patrol and combat states;
- fit a stylized pixel-3D presentation.

Required AI states only:
1. IDLE/PATROL;
2. SUSPICIOUS/ACQUIRE;
3. COMBAT;
4. REPOSITION;
5. DOWNED/DESTROYED.

Combat behavior:
- detects player within clear rules;
- aims before firing;
- uses short readable bursts or single shots;
- pauses between attacks;
- may move to a nearby valid position;
- exposes one weak point;
- cannot perfectly track the player through walls.

No behavior tree framework is required until this state machine proves insufficient.

---

# 7. RPG progression depth

The first version is a shooter with RPG progression, not a stat spreadsheet.

Foundation progression layers:

### Character growth
Three compact attributes:
- **Vigor** — survivability / recovery capacity;
- **Handling** — recoil, reload and weapon responsiveness;
- **Mobility** — sprint/dodge efficiency and movement resilience.

### Equipment growth
Weapon modifications can change:
- magazine capacity;
- reload behavior;
- recoil;
- range;
- weak-point effectiveness;
- utility properties.

### Perks
Perks should unlock behavior or playstyle changes rather than only +X% damage.

Examples for later:
- faster reload after a dodge;
- improved accuracy after remaining still briefly;
- recover a small amount of dodge stamina after a weak-point hit.

## First-slice progression proof

After completing the first objective, the player chooses **one of two permanent upgrades** and can see the changed behavior in the next run.

No large skill tree is required yet.

## Balance law

Progression should make the player more capable, not remove the need to aim, move or use cover.

---

# 8. World / travel structure

Selected structure for the foundation:

**compact connected zones, not a massive open world and not mission-menu teleportation.**

First playable space:

`GATE DISTRICT → OUTER ROAD → BROKEN CHECKPOINT`

All names are working names.

The settlement gate is the safe start/end point.

The outer road provides:
- movement/camera space;
- one visual landmark;
- one interaction or pickup;
- one short line-of-sight transition into danger.

The broken checkpoint provides:
- first combat arena;
- physical cover;
- enemy patrol/reposition space;
- reward object;
- return path.

The player physically walks between these spaces.

World compression rule:
- remove empty traversal;
- preserve the feeling of distance through composition, elevation, background vistas and route shape;
- every short route should contain navigation, observation, threat, resource or decision value.

Fast travel is not required for the first slice.

---

# 9. Mobile HUD / controls

Landscape-first two-thumb layout.

## Left side
- virtual movement stick in lower-left;
- stick region large enough for thumb drift;
- no tiny fixed joystick target.

## Right side
- free camera/aim drag surface across most of the unobstructed right half;
- FIRE button near lower-right;
- AIM button above/inside comfortable right-thumb reach;
- RELOAD near FIRE but separated enough to avoid accidental presses;
- DODGE near the lower-right edge;
- INTERACT appears contextually and replaces/de-emphasizes nonessential buttons when relevant.

## HUD
- upper-left: health + compact status only;
- upper-center: optional one-line objective/compass cue;
- upper-right: pause/menu and optional compact navigation marker;
- center: reticle only during combat/aiming states;
- lower-right: ammo integrated near the weapon controls;
- lower-left: movement area remains visually quiet.

No permanent large quest panel.

All UI must use anchors/containers and safe-area data, never hard-coded coordinates tied to one phone.

Accessibility/settings planned from the beginning:
- camera sensitivity;
- aim sensitivity;
- aim assist strength/off;
- left-handed/fire-button alternatives later;
- screen shake strength/off;
- UI scale;
- subtitles/captions when narrative/audio content exists.

---

# 10. Pixel 3D rendering approach

Selected technical art target:

**real 3D gameplay rendered through a deliberate low-resolution pixel pipeline, with UI rendered separately for readability.**

Recommended first prototype implementation:
- real 3D geometry, collision and animation;
- low-resolution world viewport with a vertical baseline around 360 pixels;
- dynamic width based on device aspect ratio rather than forcing black bars on every ultrawide phone;
- nearest-neighbor upscale for the world image;
- UI rendered in a separate high-resolution canvas with pixel-authored assets/fonts;
- nearest or nearest-mipmap texture treatment where appropriate;
- simplified lighting: one dominant sun/key light, ambient fill, limited dynamic shadow complexity;
- no heavy temporal anti-aliasing that smears pixel edges;
- pixel-scale VFX rather than smooth high-resolution particles pasted on top.

A 640×360 world target is the starting reference for 16:9. Exact internal dimensions remain a device-test variable.

Pixel-art law:

**Do not use a full-screen pixelation shader as a substitute for authored pixel assets, readable silhouettes and coherent materials.**

The selected visual image remains a composition/style target, not a literal asset sheet.

---

# 11. Engine / implementation baseline

Selected foundation engine:

**Godot 4.7.2-stable**.

Reasoning:
- open-source and free;
- current stable Godot release as of this design pass;
- Android export support;
- strong fit for a small standalone 3D project;
- supports separate 3D resolution scaling / viewport approaches and responsive UI;
- keeps the project independent from commercial engine licensing or paid cloud services.

The engine choice is independent of any previous project using Godot.

New project root:
`shooter_game/`

Shooter RPG will use its own:
- `project.godot`;
- scenes;
- scripts;
- assets;
- tests;
- export presets;
- CI workflow;
- save lineage;
- Android package identity.

No previous-game runtime folder is an implementation dependency.

---

# 12. Smallest playable vertical slice

Slice ID:
`SHOOTER_RPG_VERTICAL_SLICE_001`

The slice is successful when the following complete loop works:

1. game launches into the Gate District;
2. player can move with left stick;
3. player can rotate camera with right-side drag;
4. player can aim with a third-person shoulder camera;
5. player can fire and reload the carbine;
6. player physically walks through the gate onto the Outer Road;
7. one contextual interaction/pickup works;
8. one Sentry Automaton detects and engages the player at the Broken Checkpoint;
9. player can use physical cover, shoot the enemy and hit its weak point;
10. player can take damage and use one healing item;
11. enemy can be defeated;
12. one reward can be collected;
13. player returns to the Gate District;
14. player chooses one of two permanent upgrades;
15. save/load preserves the chosen upgrade and basic player state;
16. the game can be packaged for Android;
17. the slice runs on the target phone without HUD overlap or unusable controls;
18. the pixel presentation reads cleanly at phone size.

Anything not required to prove this loop is deferred.

---

# 13. Explicitly deferred systems

Not required for Vertical Slice 001:
- multiplayer;
- open-world streaming;
- large city simulation;
- romance/social simulation;
- crafting tree;
- procedural world generation;
- vehicle system;
- several weapon families;
- several enemy factions;
- dialogue trees;
- cinematic cutscenes;
- day/night cycle;
- weather simulation;
- companion AI;
- skill tree with dozens of nodes;
- loot rarity tiers;
- live-service systems;
- account/login/network backend.

These can be reconsidered only after the core shooter feel and visual style are proven.

---

# 14. Quality gates

The first playable slice is not accepted because it merely runs.

It must pass four separate gates:

### CONTROL QUALITY
- movement does not fight the camera;
- aiming feels stable;
- fire/reload/dodge buttons are reachable;
- camera does not clip badly in the test environment.

### COMBAT READABILITY
- player can understand why shots hit or miss;
- enemy attack has a readable tell;
- cover works spatially;
- weak point is identifiable without a giant neon outline.

### VISUAL QUALITY
- pixel scale is coherent;
- UI does not overlap important world space;
- player/enemy silhouettes read on phone;
- lighting does not wash out pixel textures;
- scene resembles the quality direction of the selected reference without copying placeholder content literally.

### TECHNICAL QUALITY
- clean project root under `shooter_game/`;
- stable Android launch;
- no dependency on previous-game runtime code;
- save/load round trip works;
- no severe frame pacing/input latency on target phone;
- tests and build evidence are recorded separately from subjective visual acceptance.

---

# 15. Foundation decisions summary

LOCKED FOR FIRST PROTOTYPE:
- standalone Shooter RPG;
- single-player offline-first;
- third-person over-shoulder camera;
- real-time shooting;
- semi-automatic carbine first;
- deterministic reticle-based hit logic;
- no random RPG miss on a visibly valid hit;
- physical cover, no sticky cover mode;
- compact connected world route;
- one ranged Sentry Automaton enemy;
- shallow three-attribute RPG layer;
- one post-objective permanent upgrade choice;
- pixel-styled real 3D world;
- low-resolution world rendering + separate readable UI;
- Godot 4.7.2-stable;
- separate `shooter_game/` implementation root;
- Android landscape as the first device target.

PROVISIONAL / TUNE BY PROTOTYPE:
- camera FOV, distance, pitch, shoulder offset;
- movement speeds;
- dodge duration/cost;
- recoil/spread;
- damage values;
- enemy detection/range;
- internal render resolution;
- exact button positions/sizes;
- exact art palette and environment names.

NEXT BOUNDED PIECE:
`SHOOTER_RPG_PROJECT_SCAFFOLD_001`

Create only the independent Godot project skeleton, project settings, initial scene ownership, input map, test/readme structure and first CI/static sanity checks. Do not build the full vertical slice in one commit.
