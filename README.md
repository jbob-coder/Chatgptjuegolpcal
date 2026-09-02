# Unnamed Hunt RPG

Status: NEW GAME / DESIGN SYSTEM ACTIVE / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

This repository/project area is being reused for a completely new game. WorldLife RPG is no longer active and is not the implementation base.

`Unnamed Hunt RPG` is a temporary working label.

# 1. What this game is

A grounded stylized monster-hunting tactical RPG with connected spatial/gameplay layers:

1. **Walkable settlement / hub life** — dense social, service, crafting, research and preparation spaces.
2. **Aerial wilderness exploration** — physically traversed 2.5D/3D hunting regions with continuous streamed sectors.
3. **First-person tactical combat** — turn-based encounters derived from the exact wilderness location and monster state.

Core loop:
`PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → SURVIVE → HARVEST → RETURN → PROCESS → CRAFT/EQUIP/UPGRADE/RESEARCH → HUNT HARDER PREY`

# 2. Project quality law

Detailed authority: `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`.

Every meaningful new mechanic must identify:
1. player value/decision;
2. authoritative owner;
3. dependent systems;
4. invariants/caps it cannot violate;
5. verification/performance path.

Design statements are distinguished as:
- LOCKED/CURRENT;
- SELECTED ARCHITECTURE;
- PROTOTYPE TARGET;
- OPEN;
- FUTURE OPTION;
- REJECTED/NOT PREFERRED.

Depth should come from interaction between a bounded set of reusable systems rather than uncontrolled micro-systems.

# 3. Visual and model identity

Detailed authorities:
- `GAME_EXPERIENCE_BIBLE.md`;
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`;
- `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`.

Identity: **an illustrated hunting world brought to life**.

Selected model direction:
- grounded stylized 3D / illustrated realism;
- believable world scale;
- strong silhouettes and broad value/color grouping;
- mild exaggeration of important hands/boots/weapons/anatomy for phone readability;
- important assets must work at aerial, nearby-exploration and first-person distances;
- same monster identity/model lineage supports exploration LODs and first-person combat;
- anatomy, wounds, breaks and sever states map to authoritative gameplay state;
- crystal/mutation visuals are biologically integrated rather than constant neon glow;
- modular humanoid equipment and modular building kits preferred;
- LOD, culling and simplified collision designed in from the start.

Exact production triangle/texture/bone/material budgets remain OPEN until engine/device profiling.

# 4. World, streaming and settlement structure

Detailed authorities:
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`.

The game does **not** use one gigantic always-loaded open world.

Current structure:

`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE / TRANSITION CORRIDOR → CONTINUOUS STREAMED HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`

Key rules:
- world atlas handles long-distance geography/travel;
- settlements are physical gameplay spaces, not menu hubs;
- settlement↔wilderness is a meaningful major-area threshold;
- ordinary wilderness sector boundaries are technical and remain visually continuous whenever possible;
- first-person combat is a local tactical footprint derived from the actual wilderness location;
- normal gameplay camera stays local and never exposes the whole region like a board-game view;
- 1 world unit = 1 meter is the current measurement convention;
- safety/danger gradient: settlement core → frontier/outpost → field camp → wilderness → deep territory/nest;
- normal random monster combat does not occur in settlement cores;
- off-screen world/ecology/NPC state uses lower-cost logical/aggregate representation.

# 5. First settlement quality target

Settlement 01 is currently planned as a compact frontier hunter settlement on defensible elevated river/chasm geography.

Its main quality fix is a **Hunter Service Loop**:

`HUNTER LODGE / CONTRACTS → STORAGE / LOADOUT → SMITH / CRAFT / PROCESSING → HUNTER GATE`

Recovery/home access stays near that repeated loop.

Current prototype targets:
- irregular footprint roughly 220–280 m × 160–230 m;
- repeated core-service walking legs usually around 10–25 seconds;
- 2–3 major elevation bands;
- important small/medium interiors seamless where device budget permits;
- deterministic NPC schedules with active/background/logical runtime fidelity tiers;
- district/culling cells so the entire town is not rendered/animated at maximum detail simultaneously;
- return-from-hunt material processing intentionally close to the gate.

Market/residential/social spaces add optional depth around the repeated gameplay loop rather than forcing long mandatory traversal.

# 6. Exploration behavior

Exploration is physical, not a menu map.

Hunting regions contain terrain/traversal, landmarks, monster territories, deterministic creature routines, tracks/signs, cover/hazards, camps, resources, encounter-capable areas and exits.

The world communicates through footprints, broken vegetation, scratches, blood, calls, feeding remains, nests and environmental damage before relying on glowing waypoints.

# 7. Combat behavior

Combat transitions the camera from the aerial world into first person while preserving encounter context.

Possible actions include repositioning, range control, flanking, cover, posture, dodge/block/parry, targeted attacks, inspection, tools/traps, reactions, stamina recovery and escape.

Current action-economy candidate: small Action Point budget + stamina + limited reaction resource. Exact values remain OPEN.

# 8. Stats and effects

Detailed authority: `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`.

Current six-role direction:
- **Might** — force/heavy handling/break/stagger;
- **Finesse** — precision execution/sever/technique;
- **Agility** — movement/dodge/initiative/footing;
- **Endurance** — stamina/sustain/environmental strain;
- **Perception** — tracking/target acquisition/inspection/telegraph reading;
- **Resolve** — composure/stagger/shock/fear resistance where used.

Equipment, statuses, terrain, weather, posture, crystal/mutation effects and tactical context use one shared effect/modifier system with explicit stacking, caps/floors, cached derived values and calculation traces.

AP/reaction economy does not scale freely from attributes or gear.

# 9. Deterministic NPC and creature behavior

Detailed authority: `BEHAVIOR_PATTERN_SYSTEM.md`.

**There is no AI behavior system.**

NPCs and creatures use authored states/phases, schedules where relevant, explicit conditions, priorities, cooldowns, capability requirements, situation/terrain/weather/crystal/mutation flags and deterministic tie policy.

Simple actors have simple patterns. Important monsters can have layered phases while remaining inspectable and reproducible.

# 10. Crystal life force, mutation and ecosystem

Detailed authority: `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`.

Core decisions:
- crystal-bearing creatures contain an internal life crystal;
- crystal energy is an authoritative life-force reserve;
- zero usable energy means death;
- desperate creatures can burn that reserve for berserker/overdrive states through deterministic behavior conditions;
- crystal Tier, Rank, Quality, Element, Energy Reserve and Condition are separate concepts;
- mutation can alter anatomy, capabilities, stats/effects, elemental/terrain adaptation, behavior and harvest;
- mutation combinations are bounded by prerequisites/incompatibilities/support limits;
- regional ecology can influence mutation distributions;
- off-screen ecology uses region/species aggregates rather than thousands of full creature instances.

# 11. Anatomy and harvesting

Monster anatomy is gameplay authority.

Parts can have integrity, protection, exposure, break/sever/destroy states, capability effects and harvest capacity. Crystal harvest belongs to the same physical system: one creature has one physical core, and its recovered value depends on intrinsic properties plus actual condition/extraction.

Destroyed unique anatomy cannot produce pristine duplicate rewards.

# 12. Architecture law

There is one authoritative game state.

```text
PLAYER INPUT / AUTHORED BEHAVIOR INTENT
        ↓
ACTION REQUEST
        ↓
VALIDATION
        ↓
SHARED CONTEXT / EFFECT EVALUATION
        ↓
DOMAIN RESOLUTION
        ↓
AUTHORITATIVE STATE + DOMAIN EVENTS
        ↓
SAVE / REPLAY / DEBUG
        ↓
PRESENTATION / ANIMATION / AUDIO / UI
```

UI, animation, rendering, models and streaming never secretly decide hits, severing, crystal energy, mutation state, loot, tactical position, world identity or progression.

# 13. Performance and bug isolation

Explicit caps/budgets are required.

Settlement, frontier, wilderness and combat have different simulation/render priorities rather than keeping all systems active everywhere.

Current performance rules include:
- current/required neighboring wilderness sectors promoted; farther state reduced/aggregate;
- settlement NPC population uses active/background/logical fidelity tiers;
- derived stats cached;
- behavior event/decision-driven;
- mutations generated at explicit boundaries;
- modular/instanced repeated assets preferred;
- unused interiors/districts culled/LOD-reduced;
- gameplay correctness/readability/input protected before decoration.

# 14. Admin / Creator system

The future Admin system is a creation/debug workbench.

Planned capabilities include:
- state/stat/effect traces;
- deterministic behavior tracing/editing;
- crystal/mutation/ecology tools;
- world-atlas and region-sector tools;
- settlement district/service/route overlays;
- actual service-path travel-time measurement;
- NPC fidelity/schedule inspection;
- roof/interior/culling/LOD inspection;
- monster territory/tracking overlays;
- encounter footprint/tactical-node previews;
- anatomy/model collision overlays;
- harvest simulation;
- save/replay inspection;
- performance dashboards.

Creator tools use validated domain/content services and never become a second rules engine.

# 15. Development order

`DESIGN → ENGINE/PHONE PROBE → DOMAIN CORE → STATS/EFFECTS CORE → CRYSTAL/MUTATION CORE → CONTENT VALIDATION → COMBAT CORE → COMBAT PRESENTATION → HARVEST → INVENTORY/EQUIPMENT/CRAFTING → SETTLEMENT/REGION STRUCTURE → EXPLORATION DOMAIN → ECOLOGY/REGION AGGREGATES → AERIAL PRESENTATION → COMPLETE SETTLEMENT↔HUNT LOOP → SAVE HARDENING → ADMIN/DEBUG → CREATOR TOOLS → PRODUCTION ART/AUDIO → SECOND-CONTENT PROOF → WORLD EXPANSION`

# 16. Bounded documentation sequence

Completed:
1. design quality governance;
2. model art direction/asset standard;
3. first settlement blueprint.

Next:
4. **first hunting-region blueprint**;
5. first complete monster design packet;
6. player progression/equipment packet;
7. exact combat-economy packet;
8. engine-specific technical mapping only after engine/device evidence.

Do not attempt all remaining pieces in one pass.

# 17. First vertical slice

Only after explicit implementation authorization:
- 1 compact walkable settlement using the Hunter Service Loop;
- 1 outbound gate/transition corridor;
- 1 hunting region with roughly 4–6 meaningful sectors;
- 1 field camp;
- 1 main monster territory and deeper nest/retreat location;
- 2–3 encounter-capable local footprints;
- 1 hunter;
- 1 monster species/instance with deterministic behavior;
- constrained crystal/mutation profile and one berserk pattern;
- 1 weapon/equipment set;
- prototype stats/effects/terrain/statuses;
- aerial tracking/approach;
- same-location first-person combat;
- anatomy break/sever and condition-based anatomy/crystal harvest;
- return to settlement;
- 1 craft/equip upgrade;
- save/reload;
- target Android verification.

# 18. Documentation order — basic to detailed

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

# 19. Verification discipline

Use precise gates: DESIGNED, IMPLEMENTED, STATIC_VERIFIED, CONTENT_VALIDATED, UNIT_TESTED, INTEGRATION_TESTED, COMPILED, APK_BUILD_VERIFIED, PHONE_RUNTIME_VERIFIED, VISUAL_QUALITY_VERIFIED, PERFORMANCE_VERIFIED.

# 20. Current state

- NEW_GAME_DESIGN_RECORDED = YES
- DESIGN_QUALITY_GOVERNANCE_RECORDED = YES
- MODEL_ART_DIRECTION_RECORDED = YES
- FIRST_SETTLEMENT_BLUEPRINT_RECORDED = YES
- WORLD_MAP_STRUCTURE_DESIGNED = YES
- SETTLEMENT_HUNTING_REGION_SEPARATION_DESIGNED = YES
- PLAYER_EXPERIENCE_GUIDE = YES
- VISUAL_WORLD_BEHAVIOR_DESIGNED = YES
- MECHANICAL_SYSTEMS_GUIDE = YES
- STATS_EFFECTS_SYSTEM_DESIGNED = YES
- DETERMINISTIC_BEHAVIOR_SYSTEM_DESIGNED = YES
- AI_BEHAVIOR_SYSTEM = NO
- CRYSTAL_LIFE_FORCE_SYSTEM_DESIGNED = YES
- MUTATION_ECOSYSTEM_SYSTEM_DESIGNED = YES
- SYSTEM_ARCHITECTURE_PLANNED = YES
- CONTENT_DATA_PIPELINE_PLANNED = YES
- CODE_STRUCTURE_PLANNED = YES
- PERFORMANCE_CAPS_PLANNED = YES
- ADMIN_CREATOR_SYSTEM_PLANNED = YES
- TESTING_PLAN_RECORDED = YES
- IMPLEMENTATION_ROADMAP_RECORDED = YES
- GAMEPLAY_SOURCE_CREATED = NO
- PRODUCTION_ASSETS_CREATED = NO
- IMPLEMENTATION_AUTHORIZED = NO
- ENGINE_SELECTED = NO
- APK_BUILD_VERIFIED = NO
- PHONE_RUNTIME_VERIFIED = NO

The old frozen WorldLife Drive archive is historical residue only and is not new-game authority.