# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-02

## Active project identity

This is a completely new game using the same repository/project area that previously contained WorldLife RPG.

WorldLife is no longer active. Do not resume WorldLife life-sim/city/apartment/Admin work.

`Unnamed Hunt RPG` is temporary.

## Current phase

**DESIGN / STRUCTURE / DOCUMENTATION**

No gameplay code, engine project, scenes, APK or production assets are authorized yet.

## Mandatory read order — basic to detailed

1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`
6. `GAME_EXPERIENCE_BIBLE.md`
7. `VISUAL_WORLD_BEHAVIOR_BIBLE.md`
8. `MAP_WORLD_SETTLEMENT_STRUCTURE.md`
9. `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`
10. `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`
11. `FIRST_SETTLEMENT_BLUEPRINT.md`
12. `NEW_GAME_MASTER_PLAN.md`
13. `MECHANICAL_SYSTEMS_GUIDE.md`
14. `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`
15. `BEHAVIOR_PATTERN_SYSTEM.md`
16. `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`
17. `SYSTEM_ARCHITECTURE_BLUEPRINT.md`
18. `CONTENT_DATA_GUIDE.md`
19. `CODE_GUIDE.md`
20. `PERFORMANCE_BUDGETS_AND_CAPS.md`
21. `ADMIN_CREATOR_SYSTEM.md`
22. `TESTING_VERIFICATION_PLAN.md`
23. `IMPLEMENTATION_ROADMAP.md`
24. `DEVELOPMENT_REFERENCE.md`
25. `EVOLVE_ALIGNMENT.md`
26. `NEW_GAME_DISCUSSION_CHECKLIST.md`
27. `NEW_GAME_ARCHITECTURE_VISUAL_BIBLE.md` when supporting detail is needed.

## Locked direction so far

### Design-quality governance
- work in bounded pieces rather than expanding every system at once;
- every meaningful mechanic must identify player value, authoritative owner, dependent systems, invariants/caps and verification path;
- distinguish LOCKED/CURRENT, SELECTED ARCHITECTURE, PROTOTYPE TARGET, OPEN, FUTURE OPTION and REJECTED/NOT PREFERRED;
- reuse existing attributes/effects/status/terrain/capability/anatomy/crystal/mutation/behavior/knowledge primitives before inventing new subsystems;
- project-wide correctness, input, save integrity, tactical readability, explainability and Android performance outrank decorative complexity.

### Visual/player experience
- grounded stylized wilderness/frontier monster-hunting fantasy;
- illustrated dimensional overview, not literal paper/craft;
- aerial exploration around 40–50° downward target;
- stylized 3D player/major monsters;
- selective 2D/billboard/impostor details;
- first-person combat entered from same encounter context;
- restrained hunter-field-document UI;
- state-based music/audio.

### Model/art direction
- grounded stylized 3D / illustrated realism;
- believable physical scale with mild silhouette exaggeration for phone readability;
- important models must work at aerial, nearby exploration and first-person/close distance;
- one monster model lineage/identity supports combat and exploration LODs;
- gameplay anatomy maps to visual regions and persistent break/sever states;
- crystal/mutation visuals are biologically integrated rather than constant neon effects;
- modular humanoid clothing/equipment and modular settlement-building kits preferred;
- simplified collision proxies/LOD/degradation are designed in from the start;
- exact production geometry/texture/bone budgets remain open until device profiling.

### World/map structure
- no single enormous always-loaded open world;
- macro World Atlas for long-distance geography/travel;
- settlements are fully walkable physical spaces;
- frontier gate/outpost transition separates civilization from active wilderness;
- hunting regions are physical aerial spaces divided into streamable sectors;
- ordinary wilderness sector changes remain continuous whenever possible;
- first-person battlefields are local tactical footprints derived from exact wilderness location;
- danger gradient: `Settlement Core → Frontier/Outpost → Field Camp → Wilderness → Deep Territory/Nest`;
- ordinary random monster combat does not occur in settlement cores;
- off-screen world/ecology state uses bounded persistent aggregates rather than running everything everywhere.

### First settlement
Detailed authority: `FIRST_SETTLEMENT_BLUEPRINT.md`.

- technical working ID `SETTLEMENT_01`; final name open;
- compact frontier settlement on defensible elevated river/chasm geography;
- repeated hunt services use a short **Hunter Service Loop** rather than long mandatory cross-town travel;
- current loop: contracts/lodge → storage/loadout → smith/craft/processing → hunter gate, with recovery/home access nearby;
- core repeated travel legs target roughly 10–25 seconds as a prototype quality goal;
- market/residential/social breadth surrounds rather than disrupts the repeated service loop;
- 2–3 elevation bands, curved streets/roofs/walls/terrain prevent full-town visibility;
- important small/medium interiors seamless where device budgets allow;
- deterministic NPC schedules use active/background/logical runtime fidelity tiers;
- settlement uses district/culling cells and measurable service-route travel/performance tooling;
- gate corridor is the primary settlement↔wilderness streaming threshold;
- return-from-hunt material processing is intentionally close to the gate.

### Gameplay
- physical region exploration/tracking;
- first-person turn-based tactical combat;
- movement/cover/bearing/posture/terrain;
- targetable anatomy;
- wound/break/sever/destroy;
- condition-based harvest;
- material-driven crafting/equipment/research.

### Stats/effects
- current six-role attributes: Might, Finesse, Agility, Endurance, Perception, Resolve;
- current internal bounded-scale recommendation: 1–100, exact practical values open;
- equipment/status/terrain/weather/posture/context/crystal/mutation all use one shared typed modifier pipeline;
- explicit stacking/caps/floors;
- AP/reaction scaling tightly restricted;
- development calculation traces required;
- contextual hit quality preferred over generic hidden critical chance.

### Autonomous behavior
- **NO AI behavior system**;
- NPCs/creatures use deterministic authored schedules/patterns;
- explicit conditions, priorities, cooldowns, phases and capability checks;
- simple actors have simple patterns; complex monsters can have layered authored patterns;
- behavior uses normal domain action requests and remains inspectable/reproducible.

### Crystal life force / mutation / ecology
- crystal-bearing creatures have an internal life crystal;
- current crystal energy is an authoritative life-force reserve;
- zero usable crystal energy means death;
- desperate creatures can burn life force for berserk/overdrive through deterministic behavior rules;
- crystal **Tier, Rank, Quality, Element, Energy and Condition** are distinct concepts;
- mutation is data-driven and can change anatomy, capabilities, effects, elemental/terrain adaptation, deterministic behavior and harvest;
- mutation combinations are bounded through prerequisites/incompatibilities/support limits;
- off-screen ecology uses region/species aggregate state rather than full individual simulation.

### Architecture
- one authoritative game state;
- presentation does not decide gameplay outcomes;
- definitions separate from runtime instances;
- stable IDs/data-driven content;
- deterministic/replay-friendly rules where practical;
- new save lineage;
- bounded scalable systems;
- Admin/Creator tools use validated schemas/commands.

## Performance/bug rule

Anything scalable requires a cap/budget, cleanup/unload behavior, instrumentation, isolation toggle when practical and target-device verification.

Settlement, frontier, hunting-region and combat spaces use different simulation/render budgets. Current/adjacent wilderness sectors get full activity; distant/off-screen state is reduced or aggregate.

In Settlement 01, logical population may exceed fully rendered/animated population; off-screen NPCs preserve schedule/location state without full pathfinding/rendering.

Do not sacrifice input/tactical readability/anatomy/telegraphs/simulation correctness before decoration.

## Admin/Creator rule

Future development tools should include:
- state/stat/modifier inspectors;
- calculation traces;
- status/effect/terrain test tools;
- deterministic behavior pattern trace/editor;
- crystal/mutation/ecology tools;
- world-atlas node/route editor;
- settlement district/service/route overlays;
- settlement service-path travel-time measurement;
- NPC active/background/logical tier display;
- region-sector/streaming/ecology overlays;
- encounter-footprint/tactical-node/cover preview;
- anatomy/attack editors;
- harvest simulator;
- replay/save/performance tools;
- content validation/export.

They never become a hidden second rules engine.

## Implementation sequence

`DESIGN → ENGINE/PHONE PROBE → DOMAIN CORE → STATS/EFFECTS CORE → CRYSTAL/MUTATION CORE → CONTENT VALIDATION → COMBAT CORE → COMBAT PRESENTATION → HARVEST → INVENTORY/EQUIPMENT/CRAFTING → SETTLEMENT/REGION STRUCTURE → EXPLORATION DOMAIN → ECOLOGY AGGREGATE → AERIAL PRESENTATION → COMPLETE SETTLEMENT↔HUNT LOOP → SAVE HARDENING → ADMIN/DEBUG → CREATOR TOOLS → PRODUCTION ART/AUDIO → SECOND-CONTENT PROOF → WORLD EXPANSION`

## Current bounded documentation sequence

1. Design quality governance — RECORDED.
2. Model art direction/asset standard — RECORDED.
3. First settlement blueprint — RECORDED.
4. **First hunting-region blueprint — NEXT RECOMMENDED PIECE.**
5. First complete monster design packet.
6. Player progression/equipment packet.
7. Exact combat-economy packet.
8. Engine-specific mapping only after engine/device evidence.

## Current exact next action

Continue discussion or begin the first hunting-region blueprint as the next bounded piece.

Do not create gameplay source, scenes, APK or final production assets until the user explicitly authorizes implementation.

## Status

DESIGN_RECORDED = YES
DOCUMENTATION_SYSTEM_RECORDED = YES
DESIGN_QUALITY_GOVERNANCE_RECORDED = YES
MODEL_ART_DIRECTION_RECORDED = YES
FIRST_SETTLEMENT_BLUEPRINT_RECORDED = YES
WORLD_MAP_STRUCTURE_DESIGNED = YES
SETTLEMENT_HUNTING_REGION_SEPARATION_DESIGNED = YES
MECHANICS_DOCUMENTED = YES
STATS_EFFECTS_SYSTEM_DESIGNED = YES
DETERMINISTIC_BEHAVIOR_SYSTEM_DESIGNED = YES
AI_BEHAVIOR_SYSTEM = NO
CRYSTAL_LIFE_FORCE_SYSTEM_DESIGNED = YES
MUTATION_ECOSYSTEM_SYSTEM_DESIGNED = YES
CODE_STRUCTURE_PLANNED = YES
PERFORMANCE_CAPS_PLANNED = YES
ADMIN_CREATOR_SYSTEM_PLANNED = YES
TESTING_PLAN_RECORDED = YES
IMPLEMENTATION_ROADMAP_RECORDED = YES
GAMEPLAY_SOURCE_CREATED = NO
PRODUCTION_ASSETS_CREATED = NO
ENGINE_SELECTED = NO
IMPLEMENTATION_AUTHORIZED = NO
