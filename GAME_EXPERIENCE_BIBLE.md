# Unnamed Hunt RPG — Game Experience Bible

Status: DESIGN CONTRACT / NO IMPLEMENTATION
Last reconciled: 2026-09-02

## Purpose

Define how the game should feel from the instant it launches through exploration, combat, harvesting and return to the hub. This is the player-facing layer above the mechanical and technical documents.

The goal is to prevent a technically correct game from becoming visually incoherent, menu-heavy, slow, or emotionally flat.

# 1. Experience statement

The player should feel like a hunter entering a beautiful but dangerous living wilderness, reading physical evidence, choosing how to approach enormous creatures, fighting them tactically at close range, and carrying the physical consequences of that fight into harvesting and progression.

The game should not feel like:
- a mobile menu game with a decorative map;
- a Paper Mario imitation;
- a real-time FPS paused between attacks;
- a loot machine where anatomy does not matter;
- a giant simulation spreadsheet hidden behind combat.

The intended identity is:
**an illustrated hunting world brought to life.**

# 2. Boot and introduction flow

Target player flow:

`APP LAUNCH → SHORT STUDIO/GAME MARK → TITLE SCENE → CONTINUE / NEW HUNT / SETTINGS → INTRODUCTION → FIRST HUB/OUTPOST → FIRST TRAINING/CONTRACT → FIRST REGION`

## 2.1 Launch

Launch should be fast and restrained.

Avoid:
- long unskippable logos;
- mandatory network waits for an offline game;
- heavy cinematic loading before the player can reach the menu.

Performance target must later be measured on the actual phone.

## 2.2 Title screen

The title screen should communicate the game's world immediately.

Candidate composition:
- distant wilderness panorama or living diorama scene;
- one large creature silhouette or signs of a creature rather than constant action;
- hunter equipment/camp elements in foreground;
- ambient environmental movement;
- understated title treatment;
- music establishing the frontier/wilderness tone.

Menu:
- Continue;
- New Game;
- Load/Profiles if supported;
- Settings;
- Credits;
- Admin/Developer entry only in development builds or behind an explicit developer mode.

## 2.3 New-game introduction

The introduction should teach the world through play rather than dumping lore.

Preferred structure:
1. establish the hunter/player role;
2. establish the settlement/hunting culture;
3. introduce basic movement and interaction;
4. give a simple assignment or disturbance;
5. teach physical tracks/signs;
6. reveal the first monster from the aerial perspective;
7. enter a controlled first tactical encounter;
8. teach target selection and one defensive/movement decision;
9. show visible anatomy consequence;
10. harvest one meaningful material;
11. return and craft/repair/upgrade something useful.

This teaches the complete loop early.

Do not expose every combat mechanic in the tutorial.

# 3. Camera language

## Exploration camera

Current target:
- angled aerial overview;
- roughly 40–50° downward angle;
- player and nearby monster silhouettes readable on a phone;
- enough forward visibility to read terrain and evidence;
- limited camera freedom rather than unrestricted orbit by default;
- projection to be proven with orthographic vs long-lens perspective tests.

The camera should create a dimensional/diorama overview feeling without paper-craft visuals.

## Combat camera

- first-person;
- grounded around hunter eye level;
- tactical position changes move the viewpoint physically;
- looking can inspect, but looking alone does not change tactical position;
- monster framing prioritizes anatomy and attack telegraphs;
- camera motion remains comfortable on phone.

## Encounter transition

Signature sequence:
`AERIAL WORLD → THREAT/ENGAGEMENT CONFIRMED → CAMERA DESCENDS/APPROACHES HUNTER → FIRST-PERSON VIEW SETTLES → COMBAT HUD APPEARS → TURN STATE BEGINS`

The same environment and monster must visually survive the transition.

# 4. World scale

The world should feel larger than the currently loaded space.

Use region-based design:
- compact but dense playable hunting regions;
- surrounding inaccessible/distant geography extends the visual horizon;
- regions connect through paths, travel transitions or world map depending on later design;
- settlements/hubs are separate spaces or dedicated region areas;
- do not render the whole future world at once.

Scale priorities:
1. readable traversal;
2. meaningful hunting distance;
3. enough space for monster territories and tracking;
4. combat-capable terrain;
5. streaming/performance safety.

Avoid huge empty terrain created only to claim map size.

# 5. Environmental composition

A region is built in layers.

## Layer A — gameplay structure
- traversable ground;
- cliffs/water/blockers;
- encounter-capable areas;
- cover;
- hazards;
- monster paths/territories;
- camps;
- exits;
- important gathering nodes.

## Layer B — navigation identity
- landmark trees;
- rock formations;
- ruins;
- rivers;
- ridgelines;
- nests;
- constructed markers;
- distinctive vegetation clusters.

## Layer C — hunting information
- tracks;
- scratches;
- broken plants;
- dung/shedding;
- blood;
- calls/sounds;
- feeding remains;
- territorial markings.

## Layer D — atmosphere
- small vegetation;
- insects;
- particles;
- distant wildlife;
- decorative debris;
- subtle environmental motion.

If performance is constrained, reduce Layer D before A–C.

# 6. Visual theme

Current accepted direction:
**grounded stylized frontier wilderness fantasy.**

Not photorealistic.
Not childish.
Not paper/cardboard.
Not maximal grimdark.

Materials:
- wood;
- stone;
- canvas;
- rope;
- leather;
- iron/steel;
- ceramic;
- bone;
- shell;
- hide;
- monster-derived crafted materials.

Nature should frequently appear stronger/larger than human construction.

# 7. Character readability

From aerial view:
- hunter silhouette must remain recognizable;
- weapons may be slightly exaggerated for readability;
- movement animations should be clear at small screen size;
- clothing/material color separation should survive distance.

From combat view:
- player body/hands/weapon presentation should communicate current equipment where feasible;
- weapon should not obscure most of the monster;
- first-person presentation should prioritize target visibility over cinematic weapon size.

# 8. Monster presentation

Monsters are the visual centerpiece.

Design priorities:
- recognizable silhouette from aerial view;
- major combat anatomy visible in first person;
- readable anticipation poses;
- believable scale;
- clear locomotion identity;
- body-part damage visibly changes appearance/function;
- damaged states persist through the hunt.

A monster should look like the same individual in aerial exploration and first-person combat.

# 9. Music structure

Music should support hunting state rather than play one constant loop.

Proposed music layers/states:

## Title theme
Establishes identity: wilderness, frontier, mystery, scale.

## Hub theme
Safer, warmer instrumentation; human activity and recovery.

## Region ambient exploration
Sparse enough that environmental sounds and tracking matter.

## Suspicion / nearby threat layer
Subtle tension when evidence/awareness indicates proximity.

## Encounter transition sting
Short identity cue when battle authority begins.

## Combat base
Rhythmic but leaves room for telegraph sounds.

## Monster phase/enrage layer
Can add percussion/harmony/intensity without replacing every track.

## Critical/player danger layer
Use sparingly; should not become constant alarm music.

## Victory/downed-monster resolution
Short release, then return toward environmental sound/harvest state.

## Harvest/post-hunt
Low-intensity reflective layer or ambient-only depending on scene.

Music system should support stems/layers later if engine/audio budget permits, but a simpler state-based transition system is acceptable first.

# 10. Audio information hierarchy

Gameplay-important sounds outrank decorative sounds.

Priority:
1. monster attack telegraphs;
2. player danger/status cues;
3. hit/impact/material feedback;
4. monster movement/calls;
5. tracking/evidence interactions;
6. environment;
7. decorative ambience.

Do not let music mask critical telegraphs.

Potential material impact differentiation:
- hide/flesh;
- bone;
- shell/plate;
- horn;
- metal;
- wood/stone cover.

# 11. Exploration HUD

Keep light.

Potential persistent elements:
- health/stamina only when relevant;
- compact objective/hunt state;
- interaction prompt;
- optional directional/map information;
- quick tool access;
- awareness/threat cue.

Bestiary/map/inventory open as deliberate overlays rather than permanently occupying the screen.

# 12. Combat HUD

Combat UI expands because tactical decisions require information.

Core categories:
- MOVE;
- ATTACK;
- DEFEND;
- ITEM/TOOL;
- INSPECT;
- ESCAPE.

Supporting information:
- health;
- stamina;
- AP/action resource;
- reaction availability;
- current cover;
- current range/bearing;
- known monster condition;
- telegraphed threat;
- turn order where useful.

Targetable body parts appear contextually in targeting mode, not as permanent neon outlines.

# 13. Menu and information theme

Use a restrained hunter-field-tool visual language.

Good references conceptually:
- field notebook;
- annotated map;
- equipment bench;
- anatomical sketch;
- specimen/research catalog.

Avoid coating every panel in fake parchment or heavy ornament.

Function/readability comes first.

# 14. Bestiary presentation

Bestiary pages can evolve visually with knowledge.

Unknown creature:
- silhouette/partial entry;
- uncertain notes.

Observed:
- rough sketch;
- tracks/habitat clues.

Researched:
- labeled anatomy;
- attack tells;
- known materials;
- known resistance/weakness information.

Mastered:
- complete field knowledge and advanced hunting notes.

# 15. Harvest presentation

The harvest view should preserve physical context.

Potential approach:
- carcass/severed-part overview;
- selectable available anatomy;
- tool/method choice;
- visible condition and expected recovery range where knowledge allows;
- clear explanation of damaged/lost material;
- extracted resources visibly leave remaining capacity if persistent carcasses are supported.

Avoid a disconnected slot-machine loot explosion.

# 16. Crafting presentation

Crafting should show the physical connection between monster material and equipment.

Useful UI:
- recipe silhouette/model;
- required materials grouped by source;
- quality requirement;
- what the upgrade changes mechanically;
- where unknown material can be researched/found once knowledge allows.

# 17. Pacing

The game loop should alternate:
- quiet observation;
- rising tension;
- tactical conflict;
- relief/reward;
- preparation/decision.

Do not make every minute combat.
Do not make tracking a long empty walk.
Do not make harvesting/crafting slower than the decisions justify.

# 18. Accessibility/usability targets

Plan from the beginning for:
- scalable UI/text;
- large touch targets;
- remappable/adjustable controls where practical;
- camera sensitivity;
- screen shake toggle/strength;
- motion reduction;
- subtitle/caption support;
- contrast/readability options;
- color not being the sole carrier of critical combat information;
- audio cue redundancy for essential telegraphs where practical.

# 19. First-session target

The first session should communicate, in order:
1. who/what the player is;
2. this is a hunting frontier;
3. the aerial world is physically explorable;
4. monsters leave readable evidence;
5. combat changes perspective and becomes tactical;
6. anatomy targeting changes monster capability;
7. what you damage changes what you can harvest;
8. harvesting leads to tangible progression;
9. there is a larger world/creature mystery or progression goal worth continuing.

# 20. Experience verification questions

Before calling a vertical slice successful:
- Can a new player understand where they can move without excessive markers?
- Can they recognize the monster from aerial view?
- Does the camera transition make spatial sense?
- Does combat feel like facing the creature rather than selecting menu commands over a picture?
- Does repositioning change tactical options?
- Is body damage readable?
- Can the player explain why harvest yield changed?
- Does one crafted upgrade create a reason to hunt again?
- Does the world feel coherent across exploration, combat and hub?
- Does it run responsively on the target Android phone?