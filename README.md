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

`PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → SURVIVE → MONSTER ESCAPES OR FALLS → REACQUIRE/HARVEST → RETURN → PROCESS → CRAFT/EQUIP/UPGRADE/RESEARCH → HUNT HARDER PREY`

# 2. Project quality law

Detailed authority: `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`.

Every meaningful feature must identify:
1. player value/decision;
2. authoritative owner;
3. dependent systems;
4. invariants/caps it cannot violate;
5. verification/performance path.

Design statements use:
- LOCKED / CURRENT;
- SELECTED ARCHITECTURE;
- PROTOTYPE TARGET;
- OPEN;
- FUTURE OPTION;
- REJECTED / NOT PREFERRED.

Depth should come from interactions between a bounded set of reusable systems rather than uncontrolled micro-systems.

# 3. Documentation structure

Package-oriented documentation is now being introduced under `docs/`.

Primary guide:
- `docs/README.md`.

Current structure:

```text
docs/
├── 00_project/      # governance/authority/process
├── 10_world/        # atlas/settlements/regions/spatial packages
├── 20_gameplay/     # generic gameplay systems
├── 30_content/      # reusable content/entity packages
├── 40_art/          # models/art/reference-image/presentation
├── 50_technical/    # architecture/code/platform mapping
├── 60_quality/      # tests/performance/debug/admin quality
└── 70_handoff/      # continuity/migration/readback records
```

Quality rule:
**folders organize ownership; content packages organize one playable thing.**

The existing root design documents remain authoritative. They are not being moved in this pass because a safe migration requires link inventory, path updates and readback. New package documentation should reference root owning authorities rather than duplicate their full rules.

# 4. Visual/model identity

Detailed authorities:
- `GAME_EXPERIENCE_BIBLE.md`;
- `VISUAL_WORLD_BEHAVIOR_BIBLE.md`;
- `MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`;
- `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`.

Identity: **an illustrated hunting world brought to life**.

Selected direction:
- grounded stylized 3D / illustrated realism;
- believable physical/world scale;
- strong silhouettes and broad color/value grouping;
- mild exaggeration of gameplay-important shapes for phone readability;
- major assets must read from aerial, nearby exploration and first-person distances;
- same monster identity/model lineage supports exploration LODs and first-person combat;
- anatomy, wounds, breaks and sever states map to authoritative gameplay state;
- crystal/mutation visuals are biologically integrated rather than constant neon glow;
- modular humanoid equipment and modular building/environment kits preferred;
- LOD, culling and simplified collision designed in from the start.

Generated PNGs are reference inputs unless separately technically verified. Concept art does not prove topology, meter scale, UVs, PBR maps, rig, collision, hit regions, LOD geometry or Android performance.

Two current general visual references are saved in Google Drive and recorded in `MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`.

# 5. World, streaming and settlement structure

Detailed authorities:
- `MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `FIRST_SETTLEMENT_BLUEPRINT.md`.

Selected hierarchy:

`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE / TRANSITION CORRIDOR → CONTINUOUS STREAMED HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`

Rules:
- no one enormous always-loaded world;
- settlements are physical gameplay spaces, not menu hubs;
- settlement↔wilderness is a meaningful major-area threshold;
- ordinary wilderness sector changes are technical and remain visually continuous whenever practical;
- local first-person combat derives from the real wilderness location;
- normal gameplay camera stays local and never shows the complete hunting region like a board-game map;
- current measurement convention is 1 world unit = 1 meter;
- safety/danger gradient: settlement core → frontier/outpost → field camp → wilderness → deep territory/nest;
- off-screen NPC/ecology/world state uses bounded logical/aggregate representation.

## Settlement 01

Working technical ID: `SETTLEMENT_01`; final name OPEN.

Current first-settlement target:
- defensible elevated river/chasm geography;
- irregular footprint roughly 220–280 m × 160–230 m as a prototype target;
- compact **Hunter Service Loop**:
  `contracts/lodge → storage/loadout → smith/craft/processing → hunter gate`;
- recovery/home access near that repeated loop;
- typical repeated core-service legs around 10–25 seconds as a prototype quality target;
- 2–3 major elevation bands;
- important small/medium interiors seamless where device budget permits;
- deterministic NPC schedules with active/background/logical runtime fidelity tiers;
- district/culling cells rather than full-town hero-detail runtime;
- material processing close to the return gate.

# 6. First hunting region — REGION_01

Package front door:
- `docs/10_world/regions/REGION_01/README.md`.

Working biome identity:
**temperate river-and-root forest basin with open feeding ground, rocky elevation and a deeper crystal-influenced territory.**

Final display name remains OPEN.

Primary quality fix:
**Region 01 is a connected ecosystem graph with route redundancy, not a linear corridor and not a giant empty map.**

Prototype planning sectors:
- `R01_S00` — Frontier Trailhead / Field Camp;
- `R01_S01` — River Ford / Mud Flats;
- `R01_S02` — Rootwood Thicket;
- `R01_S03` — Feeding Meadow;
- `R01_S04` — Rocky Rise;
- `R01_S05` — Deepwood Basin;
- `R01_S06` — Nesting Shelf / Crystal Fault.

The middle region contains loops/alternate routes. The same hunted monster can move and escape through this physical graph while preserving identity, injuries, anatomy damage, crystal state, mutation state and required behavior state.

Region package documents:
- `REGION_TOPOLOGY.md` — canonical adjacency/route/landmark roles;
- `TRACKING_AND_ESCAPE.md` — evidence, persistent movement, retreat/reacquisition;
- `TERRAIN_ECOLOGY_MUTATION.md` — terrain/habitat/ecology/mutation-pressure application;
- `ENCOUNTER_FOOTPRINTS.md` — local first-person battle locations;
- `STREAMING_AND_PERFORMANCE.md` — current/neighbor/logical fidelity and region stress cases;
- `VISUAL_REFERENCE_PLAN.md` — future Region 01 PNG/reference pack;
- `ACCEPTANCE_CHECKLIST.md` — design/graybox/tracking/streaming/Android gates.

Prototype scale:
- 7 planning sectors including field camp;
- typical meaningful sector characteristic span roughly 100–180 m, variable by terrain;
- several-hundred-meter overall physical region using folded geography rather than flat empty distance;
- exact dimensions/traversal time/resident-sector budgets remain unverified until engine/device testing.

# 7. Exploration and tracking

Exploration is physical, not a menu map.

The world communicates through:
- footprints;
- mud/water disturbance;
- broken vegetation;
- scratches/rubs;
- feeding remains;
- calls/sounds;
- territory/nest signs;
- injury evidence when physically valid;
- mutation/element evidence only when the actual creature/player knowledge supports it.

Tracking indicates likely direction/activity/recency rather than permanent exact monster GPS.

If a monster escapes combat, the same instance returns to the region and can produce new evidence along a legal retreat route. The player may pursue immediately, recover, intercept from learned territory knowledge or abandon/retreat according to later contract rules.

# 8. Combat

Combat is first-person, turn-based and spatial.

Possible actions include:
- reposition/range control/flanking;
- cover/posture;
- dodge/block/parry where permitted;
- targeted body-part attacks;
- inspection;
- tools/traps;
- reactions;
- stamina recovery;
- escape.

Current action-economy candidate remains small AP budget + stamina + limited reaction resource. Exact numbers are OPEN.

Region 01 currently plans representative encounter footprints at:
- River Ford;
- Meadow Edge;
- Root/Boulder Hollow;
- Deep Nest Shelf.

These preserve the real terrain/approach/cover/elevation/escape relationships rather than loading generic arenas.

# 9. Stats/effects

Detailed authority: `STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`.

Current six-role direction:
- Might;
- Finesse;
- Agility;
- Endurance;
- Perception;
- Resolve.

Equipment, statuses, terrain, weather, posture, injuries, crystal/mutation effects and tactical context use one typed modifier pipeline with explicit stacking, caps/floors and calculation traces.

Region 01 applies terrain such as mud/water/roots/open ground/rock; it does not define private formulas for them.

# 10. Deterministic behavior

Detailed authority: `BEHAVIOR_PATTERN_SYSTEM.md`.

**There is no AI behavior system.**

NPCs/creatures use authored states, schedules where relevant, explicit conditions, priorities, cooldowns, capability requirements, phases and deterministic/seeded tie rules where useful.

Region 01 exposes facts such as legal neighboring sectors, feeding/watering/nest locations, terrain, injury state and retreat routes. The future monster packet defines authored rules that use those facts.

# 11. Crystal life force, mutation and ecology

Detailed authority: `CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`.

Core decisions:
- relevant creatures contain an internal life crystal;
- crystal energy is life-force reserve;
- zero usable reserve means death;
- desperation/berserk spends that same reserve;
- Tier, Rank, Quality, Element, current Energy and structural Condition are separate;
- mutation can alter anatomy/capabilities/effects/terrain adaptation/behavior/harvest;
- off-screen ecology uses bounded aggregate region/species state rather than full simulation of every creature.

Region 01 applies a low→higher mutation-pressure gradient from frontier edge toward deep basin/nest territory. This is ecological context, not an invisible level wall or instant mutation zone.

# 12. Anatomy and harvesting

Monster anatomy is gameplay authority.

Parts can wound/break/sever/destroy; those states affect capabilities and physical harvest. One physical structure cannot produce impossible duplicate intact rewards.

Crystal harvest belongs to the same physical logic: intrinsic crystal identity can remain valuable after death while current life-force energy reaches zero; extraction/core damage can later affect physical condition/value if approved.

# 13. Architecture law

One authoritative game state:

```text
PLAYER INPUT / AUTHORED BEHAVIOR INTENT
        ↓
ACTION REQUEST
        ↓
VALIDATION + SHARED EFFECT CONTEXT
        ↓
DOMAIN RESOLUTION
        ↓
AUTHORITATIVE STATE + DOMAIN EVENTS
        ↓
SAVE / REPLAY / DEBUG
        ↓
PRESENTATION / ANIMATION / AUDIO / UI
```

UI, animation, rendering, models and streaming do not secretly decide gameplay truth.

# 14. Performance and debugging

Global authorities:
- `PERFORMANCE_BUDGETS_AND_CAPS.md`;
- `ADMIN_CREATOR_SYSTEM.md`;
- `TESTING_VERIFICATION_PLAN.md`.

Region 01 runtime concept:
- current sector at highest required exploration fidelity;
- required neighboring sectors prepared for seamless crossing;
- next-hop/far context at lower fidelity;
- off-region ecology aggregate/logical;
- active persistent monster state survives representation changes.

Region 01 deliberately contains performance stress cases:
- S01 water + mud + tracks;
- S05 dense foliage/occlusion;
- S04 longer sight lines/LOD;
- first-person promotion of a local footprint.

Development tools should expose sector residency, memory, visible objects, evidence counts, behavior evaluations, persistent monster fidelity, crossing hitches and slow-stream failure behavior.

# 15. Development order

`DESIGN → ENGINE/PHONE PROBE → DOMAIN CORE → STATS/EFFECTS CORE → CRYSTAL/MUTATION CORE → CONTENT VALIDATION → COMBAT CORE → COMBAT PRESENTATION → HARVEST → INVENTORY/EQUIPMENT/CRAFTING → SETTLEMENT/REGION STRUCTURE → EXPLORATION DOMAIN → ECOLOGY/REGION AGGREGATES → AERIAL PRESENTATION → COMPLETE SETTLEMENT↔HUNT LOOP → SAVE HARDENING → ADMIN/DEBUG → CREATOR TOOLS → PRODUCTION ART/AUDIO → SECOND-CONTENT PROOF → WORLD EXPANSION`

# 16. Current bounded documentation sequence

Completed:
1. design quality governance;
2. model art direction/asset standard;
3. model reference image/creation pipeline;
4. first settlement blueprint;
5. documentation folder/package structure;
6. first hunting-region package (`REGION_01`).

Next recommended bounded piece:
7. **first monster complete design packet**, designed against Region 01 rather than in isolation.

After that:
8. player progression/equipment packet;
9. exact combat-economy packet;
10. engine-specific technical mapping only after engine/device evidence.

Do not attempt all remaining pieces at once.

# 17. First vertical slice after explicit authorization

Target only:
- Settlement 01 graybox/service loop;
- hunter gate/transition corridor;
- Region 01 reduced 3-sector technical proof before all seven sectors;
- field camp;
- one persistent large monster;
- representative terrain/tracking;
- aerial→first-person encounter;
- break/sever persistence;
- escape/reacquisition;
- harvest/return/craft one upgrade;
- save/reload;
- target Android verification.

Expand toward the full seven-sector Region 01 only after continuity/streaming/performance are proven.

# 18. Documentation navigation

Start:
1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`

For Region 01:
1. `docs/10_world/README.md`
2. `docs/10_world/regions/README.md`
3. `docs/10_world/regions/REGION_01/README.md`
4. read the package file appropriate to the question.

Do not move existing root authorities until a dedicated documentation-migration pass.

# 19. Verification vocabulary

Use exact gates:
DESIGNED, IMPLEMENTED, STATIC_VERIFIED, CONTENT_VALIDATED, UNIT_TESTED, INTEGRATION_TESTED, COMPILED, APK_BUILD_VERIFIED, PHONE_RUNTIME_VERIFIED, VISUAL_QUALITY_VERIFIED, PERFORMANCE_VERIFIED.

# 20. Current state

- NEW_GAME_DESIGN_RECORDED = YES
- DOCS_FOLDER_STRUCTURE_RECORDED = YES
- DESIGN_QUALITY_GOVERNANCE_RECORDED = YES
- MODEL_ART_DIRECTION_RECORDED = YES
- MODEL_REFERENCE_PIPELINE_RECORDED = YES
- FIRST_SETTLEMENT_BLUEPRINT_RECORDED = YES
- FIRST_HUNTING_REGION_PACKAGE_RECORDED = YES
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

The old frozen WorldLife archive/history is historical residue only and is not new-game authority.
