# Unnamed Hunt RPG

Status: NEW GAME / DESIGN + CONTENT PACKETS + REFERENCE-ASSET GENERATION / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

This repository/project area is being reused for a completely new game. WorldLife RPG is no longer active and is not the implementation base.

`Unnamed Hunt RPG` is a temporary working label.

## 1. Game identity

A grounded stylized monster-hunting tactical RPG with three connected spatial/gameplay layers:

1. **Walkable settlement / hub life** — preparation, services, crafting, research, NPC schedules and recovery.
2. **Aerial wilderness exploration** — physically traversed 2.5D/3D hunting regions with continuous streamed sectors.
3. **First-person turn-based tactical combat** — encounters derived from the exact wilderness location and persistent monster state.

Core loop:

`PREPARE → LEAVE SETTLEMENT → ENTER REGION → TRACK → OBSERVE → APPROACH → ENGAGE → POSITION → TARGET ANATOMY → BREAK/SEVER → MONSTER ESCAPES OR FALLS → REACQUIRE/HARVEST → RETURN → PROCESS → CRAFT/EQUIP/UPGRADE/RESEARCH → HUNT HARDER PREY`

Visual identity:
**an illustrated hunting world brought to life**.

## 2. Current phase and stop gate

Current work is:
- design;
- documentation/package architecture;
- first content packets;
- reference PNG generation and asset-pipeline planning.

Not currently authorized/verified:
- gameplay source;
- engine project;
- scenes;
- APK;
- game-ready production 3D assets;
- Android runtime.

Reference-image generation is authorized.

## 3. Start/read order

Start with:
1. `START_HERE_NEW_CHAT.md`
2. `PROJECT_HANDOFF.md`
3. `DOCUMENTATION_INDEX.md`
4. `docs/README.md`

Current asset-generation handoff:
- `docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md`.

Do not reconstruct current state from old chat summaries when repository files are available.

## 4. Documentation/package structure

```text
docs/
├── 00_project/        governance/process
├── 10_world/          atlas/settlements/regions
├── 20_gameplay/       reusable mechanics
├── 30_content/        hunters/monsters/equipment/etc.
├── 40_art/            art/model/reference/runtime-2D/3D-conversion pipeline
├── 50_technical/      architecture/code/platform mapping
├── 60_quality/        QA/performance/debug/admin
└── 70_handoff/        continuity records
```

Rule:
**folders organize ownership; packages organize one playable thing.**

Existing root design authorities remain valid until a separate link-safe migration.

## 5. World structure

Selected hierarchy:

`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE / FRONTIER TRANSITION → CONTINUOUS STREAMED HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`

Key decisions:
- no one enormous always-loaded world;
- settlements are physical walkable spaces, not menu-only hubs;
- ordinary wilderness sector boundaries remain continuous whenever practical;
- normal exploration camera stays local rather than exposing the entire region;
- first-person combat preserves the actual monster, terrain, cover, injuries and escape context;
- current measurement convention: **1 world unit = 1 meter**.

## 6. Settlement 01

Authority:
`FIRST_SETTLEMENT_BLUEPRINT.md`.

Selected prototype:
- compact defensible river/chasm frontier settlement;
- Hunter Service Loop keeps contracts/storage/smith-processing/gate close;
- repeated core-service travel roughly 10–25 seconds prototype target;
- 2–3 elevation bands;
- important interiors seamless when device budget permits;
- deterministic NPC schedules with active/background/logical runtime fidelity;
- district/culling partitions;
- return-from-hunt processing close to gate.

## 7. Region 01

Package:
`docs/10_world/regions/REGION_01/`.

Working identity:
**temperate river-and-root forest basin with feeding meadow, rocky elevation, deep basin and crystal-influenced nesting shelf.**

Planning sectors:
- S00 Trailhead / Field Camp;
- S01 River Ford / Mud Flats;
- S02 Rootwood Thicket;
- S03 Feeding Meadow;
- S04 Rocky Rise;
- S05 Deepwood Basin;
- S06 Nesting Shelf / Crystal Fault.

The middle graph is looped/branched rather than a corridor.

Tracking uses physical evidence and knowledge, not permanent exact GPS.

Persistent hunted monsters keep the same identity/anatomy/crystal/mutation/required behavior state across sector escape and reacquisition.

## 8. Gameplay systems

### Behavior
**No AI behavior system.**

NPCs/creatures use deterministic authored states, schedules, conditions, priorities, cooldowns, phases and capability requirements.

### Stats/effects
Current six-role direction:
- Might;
- Finesse;
- Agility;
- Endurance;
- Perception;
- Resolve.

Equipment/status/terrain/weather/posture/injury/crystal/mutation/context use one shared typed effect pipeline with explicit stacking/caps/traces.

### Anatomy/harvest
Monster anatomy is authoritative gameplay data.

Damage may wound/break/sever/destroy physical structures. Harvest derives from surviving anatomy/crystal condition; impossible duplicate loot is forbidden.

### Crystal/mutation
- relevant creatures contain an internal life crystal;
- current crystal energy is life force;
- zero usable energy means death;
- desperation/berserk consumes that reserve;
- Tier, Rank, Quality, Element, Energy and Condition are separate;
- mutations are bounded/data-driven and may alter anatomy/capabilities/effects/behavior/terrain adaptation/harvest.

## 9. Hunter Base 01

Package:
`docs/30_content/hunters/HUNTER_BASE_01/README.md`.

Purpose:
production/modeling/scale base, not the final story protagonist.

Selected:
- 1.75 m prototype height;
- realistic adult humanoid proportions;
- practical frontier layered cloth/leather/limited protective plates;
- modular harness, pouches, boots and field tools;
- no giant fantasy armor;
- three art/loadout silhouettes: light tracking, balanced hunt, reinforced dangerous-hunt;
- final face/identity/weapon family remain OPEN.

## 10. Monster 01 — Mudcrest Raker

Package:
`docs/30_content/monsters/MONSTER_01/`.

Working display name:
**Mudcrest Raker**.

Selected first-monster prototype:
- Region 01 territorial root-foraging/omnivorous quadruped;
- ~6.6 m nose-to-tail;
- ~3.0 m shoulder/main-body height;
- front-heavy;
- broad wedge head;
- paired mineral horn crest;
- breakable dorsal plates;
- mud-adapted feet;
- long tail with legal distal sever boundary;
- internal forward-torso/sternal crystal core;
- provisional Mineral/Earth-type affinity;
- restrained biological/mineral crystal presentation.

Target groups:
`HEAD / HORN_CREST / FORELEG_L / FORELEG_R / HINDLEG_L / HINDLEG_R / DORSAL_PLATES / TAIL`.

Functional consequences include horn-charge loss, leg mobility/retreat impairment, local plate exposure and tail-sweep loss after severing.

Mutation reference variants:
- Mirestep Pads;
- Bastion Plates;
- Deep-Scent Crest;
- Resonant Core Veins.

Berserk consumes crystal life force and never repairs lost anatomy.

## 11. Asset-production lanes

Detailed authority:
`docs/40_art/asset_pipeline/README.md`.

Google Drive root:
`Unnamed Hunt RPG`
ID: `1N3FbZhLE9ZfEy1Og-iNiB2B7nyyfangt`

Separate lanes:
- Modeling References — `1qsF_JUYBs9ZQ-1lZPHsTCwWn87W46VIs`;
- 2D Runtime Assets — `1PJ7uzt8oZBE5jFPXoBeldGVVv9Dy1Ko_`;
- 3D Conversion Inputs — `1hs-qJiiF6R-1NLBmlChvSK4rlQilONLz`;
- Approved Exports — `1yrS6vXQElSahDUtFJjjst25gq8RIGm2P`.

A concept/reference file is never game-ready merely because it looks good.

## 12. Zoom/resolution quality

Authority:
`docs/40_art/asset_pipeline/RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`.

Quality solution:
- preserve high-resolution masters;
- split important close detail into separate native-resolution sheets;
- use vector/SDF for scalable geometric/icon assets where practical;
- export every smaller derivative from the master;
- use engine mip/filter/LOD rules later;
- AI upscaling may improve reference readability but cannot become technical truth for geometry, UVs, PBR maps, hit masks or measurements.

Do not assume one crowded PNG can support unlimited zoom.

## 13. Runtime 2D

Authority:
`docs/40_art/asset_pipeline/RUNTIME_2D_ASSET_GUIDE.md`.

Potential direct game assets after cleanup/device QA:
- UI icons;
- bestiary/field-guide illustrations;
- portraits;
- contract art;
- map symbols;
- decals;
- VFX sprites;
- billboards/impostors generated from verified 3D assets.

Normal/ORM/UV/collision/navigation/hit maps require deterministic technical production, not visual imitation.

## 14. PNG → 3D automation

Authority:
`docs/40_art/asset_pipeline/PNG_TO_3D_AUTOMATION_PIPELINE.md`.

Target:

`APPROVED REFERENCE → CLEAN/MULTIVIEW INPUT → IMAGE-TO-3D CANDIDATES → BLENDER NORMALIZE/QA → TOPOLOGY → ANATOMY BINDING → BREAK/SEVER → RIG → DEFORMATION → ANIMATION → LOD → COLLISION/HIT PROXIES → ENGINE → ANDROID QA → GAME_READY`.

Current researched candidate services/tools:
- Meshy;
- Tripo;
- Rodin/Hyper3D;
- Blender for technical cleanup/orchestration.

A one-click generated GLB/FBX is only a reconstruction candidate until the downstream gates pass.

## 15. Current reference-sheet sequence

Registry:
`docs/40_art/asset_pipeline/GENERATED_SHEET_REGISTRY.md`.

1. Hunter turnaround + scale;
2. Hunter modular-equipment silhouettes;
3. Monster 01 hero concept + turnaround;
4. Monster anatomy;
5. damage/break/sever;
6. crystal/mutation variants;
7. three-distance monster readability.

If generation limits interrupt work, stop only at a completed-sheet boundary.

## 16. Quality law

Authority:
`docs/40_art/asset_pipeline/ASSET_QA_GATES.md`.

Important assets must be checked at:
- native pixels;
- close-detail crops;
- intended display size;
- aerial view;
- nearby exploration;
- first-person distance;
- conversion/rig/LOD stages when applicable.

Fix defects at the earliest stage containing the defect instead of hiding them downstream.

## 17. Current next action

Generate/review the registered Hunter/Monster reference sheets.

After the reference pass, continue with:
1. player progression/equipment packet;
2. exact combat economy;
3. engine/device probe only after explicit implementation authorization.

## 18. Current status

- DESIGN_RECORDED = YES
- REGION_01_DESIGNED = YES
- HUNTER_BASE_01_DESIGNED = YES
- MONSTER_01_DESIGNED = YES
- ASSET_DRIVE_STRUCTURE_CREATED = YES
- RASTER_ZOOM_POLICY_RECORDED = YES
- RUNTIME_2D_POLICY_RECORDED = YES
- PNG_TO_3D_PIPELINE_RECORDED = YES
- ASSET_QA_GATES_RECORDED = YES
- REFERENCE_SHEET_GENERATION = ACTIVE
- GAMEPLAY_SOURCE_CREATED = NO
- GAME_READY_3D_ASSET = NO
- ENGINE_SELECTED = NO
- IMPLEMENTATION_AUTHORIZED = NO
- APK_BUILD_VERIFIED = NO
- PHONE_RUNTIME_VERIFIED = NO
