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
- visible distant creatures;
- active AI updates;
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
- 1–3 nearby important monsters with full behavior/render quality;
- additional distant wildlife uses simplified update/presentation or is culled;
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
- no exploration-only distant population simulation at full render/update rate.

## 5. Simulation update tiers

Not every entity updates every frame.

Suggested tiers:

TIER 0 — player/current combatants
- full required gameplay update.

TIER 1 — nearby relevant roaming monsters
- frequent AI/movement updates.

TIER 2 — distant region creatures
- low-frequency logical simulation.

TIER 3 — unloaded/off-region ecology
- coarse scheduled/state-transition simulation only if eventually needed.

Rendering and simulation tiers are independent.

## 6. AI cap rules

- expensive pathfinding should be event-driven or throttled, not recalculated every frame for every creature;
- combat AI evaluates legal actions once per decision point, not continuously;
- off-screen monsters use reduced update frequency;
- pack simulation must have an explicit member cap before implementation;
- AI debug traces use bounded buffers.

## 7. Anatomy complexity caps

Rich anatomy can become expensive mechanically and visually.

First-slice target:
- 6–8 meaningful targetable parts;
- additional non-targetable harvest-only structures allowed only if simple;
- avoid dozens of independently simulated micro-parts.

Long-term targetable-part count should be justified by tactical value and touch usability, not anatomical completeness.

## 8. Tactical node caps

First slice:
- small encounter layout;
- approximately 6–12 useful player tactical nodes as a starting design range;
- only nodes that create meaningful position/cover/bearing decisions;
- avoid huge invisible tactical grids.

Complex encounters can grow later only after UI/AI performance and readability are verified.

## 9. Particle/VFX policy

Prioritize:
- telegraph clarity;
- impact feedback;
- break/sever readability.

Caps:
- pooled emitters;
- bounded lifetime;
- automatic cleanup;
- no unbounded blood/particle accumulation;
- lower quality/quantity at distance;
- mobile-friendly transparency usage.

If the player cannot tell what happened without the particles, the underlying animation/material/readability is too dependent on VFX.

## 10. Damage visual caps

Use a bounded system for:
- wounds;
- decals;
- cracks;
- blood marks;
- severed objects.

When cap is reached:
- merge/reuse/remove oldest low-value cosmetic state;
- never remove the authoritative broken/severed state;
- maintain major silhouette-changing damage.

## 11. Audio caps

Audio voices must be prioritized.

Highest priority:
- active monster telegraph;
- immediate player feedback;
- active combat impacts.

Lower priority:
- distant ambience;
- repeated decorative wildlife;
- redundant footsteps outside relevant range.

Use distance/priority culling and voice limits supported by engine.

## 12. Memory policy

- do not load every biome/monster asset at startup;
- load current region/encounter assets deliberately;
- unload heavy combat presentation assets when returning to exploration if not reused;
- use texture compression/atlas strategy appropriate to selected engine/platform;
- use LODs/impostors where visual testing supports them;
- monitor peak memory during transition, not only steady state.

## 13. Asset size policy

Asset size should follow visible need.

Initial philosophy:
- reusable materials/atlases before unique textures;
- hero monster detail receives more budget than distant props;
- first-person-visible monster surfaces require more detail than aerial-only scenery;
- keep source masters separate from runtime-optimized exports where possible.

Repository/transport file-size policy remains conservative; do not create oversized binaries that make source transport fragile.

## 14. Loading/streaming rule

Region loading should be explicit.

Track:
- cold boot;
- save load;
- hub→region;
- sector crossing;
- aerial→combat;
- combat→harvest/world;
- region→hub.

No transition should accidentally duplicate heavy scenes in memory without a reason.

## 15. Performance instrumentation

Development builds should eventually expose:
- FPS/frame time;
- CPU frame estimate where available;
- GPU/render statistics where engine exposes them;
- memory;
- active node/entity counts;
- active AI count;
- visible monster count;
- particle count;
- draw-call/material indicators where available;
- loaded sectors;
- current quality tier;
- recent hitch/transition timings.

This belongs in the Admin/Developer overlay.

## 16. Degradation ladder

When a device cannot hold the target:
1. reduce decorative particles;
2. reduce distant ambient creatures;
3. reduce decorative prop density;
4. reduce expensive transparency;
5. reduce shadow distance/count/resolution;
6. lower distant LOD/texture detail;
7. reduce environmental animation frequency;
8. reduce noncritical AI update frequency;
9. reduce post effects;
10. simplify noncritical lighting.

Do not first remove:
- monster body-part readability;
- tactical cover visibility;
- critical telegraphs;
- input responsiveness;
- authoritative simulation correctness.

## 17. Bug isolation architecture

Slow or unstable subsystems must be independently disable-able in development builds.

Feature/debug toggles should eventually allow:
- disable particles;
- disable dynamic shadows;
- disable ambient wildlife;
- freeze roaming AI;
- replace monster render with debug proxy;
- disable audio;
- simplify foliage;
- disable damage decals;
- bypass music layers;
- show tactical nodes only;
- run domain combat without presentation;
- load minimal test region.

This lets us distinguish domain bugs from renderer/audio/content bugs.

## 18. Watchdog/invariant rules

Development checks should catch:
- entity count runaway;
- duplicate monster instance IDs;
- event queue growth;
- unbounded log growth;
- invalid tactical occupancy;
- orphaned severed-part objects;
- repeated resource loading;
- save loop/write spam;
- AI deciding too frequently;
- scene transitions leaving previous scene active unexpectedly.

## 19. Performance gate per feature

A feature is not performance-cleared until:
- its entity/effect count is bounded;
- cleanup/unload behavior is defined;
- target-device impact is measured when executable;
- it can be disabled/isolate-tested in development when practical;
- worst-case scenario is tested, not only an empty scene.

## 20. Current status

No measured final caps exist yet because no engine/device probe has been executed.

All numbers above are planning ranges/guardrails and must be labeled as such until runtime evidence confirms them.