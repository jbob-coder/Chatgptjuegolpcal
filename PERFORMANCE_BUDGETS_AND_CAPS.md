# Unnamed Hunt RPG — Performance Budgets and Caps

Status: PLANNING CONTRACT / MUST BE CALIBRATED ON TARGET ANDROID DEVICE
Last reconciled: 2026-09-02

## Purpose

Prevent the project from becoming slow, unstable or impossible to debug as content grows. These are initial guardrails, not final measured device limits. Every cap must eventually be replaced or confirmed by target-device evidence.

The rule is:
**performance is a feature and a design constraint, not a cleanup task at the end.**

## 1. Budget hierarchy

Protect in this order:
1. input responsiveness;
2. deterministic gameplay correctness;
3. body-part/monster readability;
4. combat telegraphs;
5. camera stability;
6. stable frame pacing;
7. world navigation/readability;
8. audio cues;
9. decorative effects/detail.

When overloaded, reduce decorative work before gameplay-critical presentation.

## 2. Frame targets

Initial target candidates:
- preferred: stable 60 FPS on capable target hardware;
- acceptable fallback: stable 30 FPS on older supported hardware;
- never prefer unstable 45–60 over a locked, responsive 30.

At 60 FPS the frame budget is ~16.7 ms.
At 30 FPS the frame budget is ~33.3 ms.

Final target must be chosen after the engine/device probe.

## 3. Runtime caps philosophy

Every scalable subsystem gets a cap or budget:
- active high-detail monsters;
- visible distant creatures/NPCs;
- behavior-pattern evaluations;
- derived-stat recalculations;
- status/effect processing;
- particles;
- decals/wounds;
- dynamic lights;
- shadow casters;
- audio voices;
- loaded sectors;
- physics bodies;
- tactical cover nodes;
- UI overlays;
- event log size;
- save history/backups;
- debug telemetry buffers.

Caps prevent accidental unbounded growth.

## 4. Initial scene caps to test

These are conservative planning placeholders until profiling exists.

### Exploration
- 1 player high-detail presentation;
- 1–3 nearby important monsters with full relevant behavior/render quality;
- additional distant wildlife/NPCs use simplified update/presentation or are culled;
- load only current region sectors plus small adjacency/preload margin;
- limit real-time shadow casting to high-value nearby actors/lights;
- pool repeated vegetation/effects where engine supports it;
- avoid one unique material per prop.

### Combat
- 1 primary large monster in first slice;
- player first-person equipment;
- limited tactical environment;
- only combat-relevant cover/hazards active;
- cap simultaneous wound decals/effects;
- cap persistent severed-part visual objects;
- no exploration-only distant population at full render/update rate.

## 5. Simulation/behavior update tiers

Not every actor evaluates behavior every frame.

TIER 0 — player/current combatant decision points
- full required gameplay resolution;
- autonomous actor evaluates behavior when a decision is needed, not continuously.

TIER 1 — nearby relevant roaming actors
- event-driven behavior plus bounded periodic checks.

TIER 2 — distant loaded region actors
- low-frequency schedule/pattern advancement.

TIER 3 — unloaded/off-region ecology/NPCs
- coarse schedule/state transition only if persistence requires it.

Rendering and behavior/simulation tiers are independent.

## 6. Deterministic behavior cap rules

- no machine-learning/generative-AI runtime behavior;
- pathfinding is event-driven/throttled, not recalculated every frame for every actor;
- combat behavior evaluates explicit rules once per decision point;
- nearby exploration actors use event triggers plus bounded periodic checks;
- distant actors use reduced update frequency;
- pack/group systems require explicit actor/member caps before implementation;
- behavior debug traces use bounded buffers;
- boss complexity comes from more authored rules, not higher evaluation frequency.

Useful behavior triggers:
- schedule/time block changed;
- weather changed;
- player entered awareness range;
- actor damaged;
- status/anatomy capability changed;
- quest/event flag changed;
- current action completed/cooldown expired.

## 7. Stats/effect evaluation caps

Detailed mechanics: `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`.

Rules:
- derived stats are cached;
- equipment/status changes invalidate only affected derived values where practical;
- terrain/context calculations happen on movement/action validation rather than every visual frame;
- status periodic hooks run at defined timing points, not uncontrolled loops;
- duplicate stack groups are bounded;
- calculation traces are development-only and disabled/limited in production;
- distant/unloaded actors do not run full combat-context modifier evaluation.

Development instrumentation should count:
- derived-stat recalculations per second/frame;
- effect evaluations per action;
- active status instances;
- modifier source count per actor;
- behavior rules checked per decision.

Unexpected growth becomes a regression signal.

## 8. Anatomy complexity caps

First-slice target:
- 6–8 meaningful targetable parts;
- additional non-targetable harvest-only structures only if simple;
- avoid dozens of independently simulated micro-parts.

Long-term targetable-part count is justified by tactical value and touch usability, not anatomical completeness.

## 9. Tactical node caps

First slice:
- small encounter layout;
- approximately 6–12 useful player tactical nodes as starting range;
- only nodes that create meaningful position/cover/bearing/terrain decisions;
- avoid huge invisible tactical grids.

Complex encounters grow later only after UI/behavior performance/readability are verified.

## 10. Particle/VFX policy

Prioritize:
- telegraph clarity;
- impact feedback;
- break/sever readability.

Caps:
- pooled emitters;
- bounded lifetime;
- automatic cleanup;
- no unbounded blood/particle accumulation;
- lower quantity/detail at distance;
- mobile-friendly transparency usage.

If the player cannot tell what happened without particles, the underlying animation/material/readability is too dependent on VFX.

## 11. Damage visual caps

Use bounded wounds, decals, cracks, blood marks and severed objects.

When cap is reached:
- merge/reuse/remove oldest low-value cosmetic state;
- never remove authoritative broken/severed state;
- preserve major silhouette-changing damage.

## 12. Audio caps

Highest priority:
- active monster telegraph;
- immediate player feedback;
- combat impacts.

Lower priority:
- distant ambience;
- repeated decorative wildlife;
- redundant footsteps outside relevant range.

Use distance/priority culling and voice limits supported by the engine.

## 13. Memory policy

- do not load every biome/monster asset at startup;
- load current region/encounter assets deliberately;
- unload heavy combat presentation assets when leaving combat if not reused;
- use compression/atlases appropriate to selected engine/platform;
- use LOD/impostors where visual testing supports them;
- monitor transition peak memory, not only steady state.

## 14. Asset size policy

- reusable materials/atlases before unique textures;
- hero monster detail receives more budget than distant props;
- first-person-visible monster surfaces receive more detail than aerial-only scenery;
- source masters stay separate from runtime-optimized exports where practical;
- avoid oversized binaries that make source transport fragile.

## 15. Loading/streaming rule

Track:
- cold boot;
- save load;
- hub→region;
- sector crossing;
- aerial→combat;
- combat→harvest/world;
- region→hub.

No transition should accidentally duplicate heavy scenes in memory.

## 16. Performance instrumentation

Development builds should expose where engine/platform permits:
- FPS/frame time;
- CPU/GPU/render metrics;
- memory;
- active entity counts;
- visible monster count;
- behavior evaluation counts/tiers;
- active statuses/modifier count;
- derived-stat recalculation counts;
- particle count;
- loaded sectors;
- current quality tier;
- hitch/transition timings.

This belongs in the Admin/Developer overlay.

## 17. Degradation ladder

When a device cannot hold target performance:
1. reduce decorative particles;
2. reduce distant ambient creatures;
3. reduce decorative prop density;
4. reduce expensive transparency;
5. reduce shadow distance/count/resolution;
6. lower distant LOD/texture detail;
7. reduce environmental animation frequency;
8. reduce noncritical distant behavior update frequency;
9. reduce post effects;
10. simplify noncritical lighting.

Do not first remove:
- monster body-part readability;
- tactical cover/terrain readability;
- critical telegraphs;
- input responsiveness;
- authoritative stats/status/terrain correctness.

## 18. Bug isolation architecture

Development toggles should eventually allow:
- disable particles;
- disable dynamic shadows;
- disable ambient wildlife;
- freeze roaming behavior updates;
- replace monster renderer with debug proxy;
- disable audio/music;
- simplify foliage;
- disable damage decals;
- show tactical nodes/terrain tags only;
- run domain combat without presentation;
- load minimal test region;
- disable calculation traces;
- force a minimal deterministic behavior profile;
- suppress nonessential status presentation while keeping domain status logic active.

This distinguishes domain, behavior, stats/effects, renderer, audio and content problems.

## 19. Watchdog/invariant rules

Development checks should catch:
- entity count runaway;
- duplicate monster IDs;
- event queue/log growth;
- invalid tactical occupancy;
- orphaned severed-part objects;
- repeated resource loading;
- save loop/write spam;
- behavior evaluating far more often than policy allows;
- derived stats recalculating without input changes;
- unbounded status/modifier accumulation;
- scene transitions leaving previous heavy scene active unexpectedly.

## 20. Performance gate per feature

A feature is not performance-cleared until:
- entity/effect count is bounded;
- cleanup/unload behavior is defined;
- target-device impact is measured when executable;
- it can be disabled/isolate-tested in development when practical;
- worst-case scenario is tested, not only an empty scene.

## 21. Current status

No measured final caps exist because no engine/device probe has executed.

All numbers are planning ranges/guardrails until runtime evidence confirms them.