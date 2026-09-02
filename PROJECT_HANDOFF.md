# Unnamed Hunt RPG — Project Handoff

Status: DESIGN / CONTENT PACKETS / REFERENCE-ASSET GENERATION / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE

Generate and review the first registered Hunter Base 01 and Monster 01 visual-reference sheets from stable recorded designs.

Reference-image generation is authorized. Gameplay code, engine project, scenes, APK and final game-ready 3D implementation are still not authorized.

## CURRENT SOURCE OF TRUTH

Read:
1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`
6. owning package files for the task.

Current asset-pass handoff:
`docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md`.

Do not reconstruct the project from old WorldLife files or chat memory.

## DOCUMENTATION STRUCTURE

Selected rule:
**folders organize ownership; packages organize one playable thing.**

Current package areas:
- `docs/10_world/regions/REGION_01/`;
- `docs/30_content/hunters/HUNTER_BASE_01/`;
- `docs/30_content/monsters/MONSTER_01/`;
- `docs/40_art/asset_pipeline/`.

Existing root design authorities remain valid until a future link-safe migration.

## CORE GAME IDENTITY

Grounded stylized monster-hunting tactical RPG:

`PREPARE IN WALKABLE SETTLEMENT → ENTER CONTINUOUS HUNTING REGION → TRACK/OBSERVE → ENGAGE → FIRST-PERSON TURN-BASED TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → MONSTER ESCAPES OR FALLS → REACQUIRE/HARVEST → RETURN/PROCESS/CRAFT/RESEARCH`.

Visual identity:
**an illustrated hunting world brought to life**.

Behavior:
**NO AI behavior system.** NPCs/creatures use deterministic authored patterns/conditions.

## WORLD STATE

Selected hierarchy:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE/FRONTIER TRANSITION → CONTINUOUS STREAMED HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Current scale convention:
`1 world unit = 1 meter`.

Settlement 01:
- defensible frontier river/chasm geography;
- Hunter Service Loop;
- repeated core-service legs ~10–25 sec prototype target;
- 2–3 elevation bands;
- active/background/logical NPC fidelity;
- important interiors seamless when budget permits.

Region 01:
- S00 Trailhead/Field Camp;
- S01 River Ford/Mud Flats;
- S02 Rootwood Thicket;
- S03 Feeding Meadow;
- S04 Rocky Rise;
- S05 Deepwood Basin;
- S06 Nesting Shelf/Crystal Fault;
- looped/branched topology;
- continuous ordinary sector boundaries;
- physical tracking evidence rather than permanent exact GPS;
- persistent monster state across sector escape/reacquisition;
- first-person encounter footprints derived from real local terrain.

## STATS/EFFECTS/CRYSTAL

Current primary attributes:
Might / Finesse / Agility / Endurance / Perception / Resolve.

Equipment/status/terrain/weather/posture/injury/crystal/mutation use one shared typed modifier pipeline with explicit stacking/caps/traces.

Crystal rules:
- one internal life crystal for relevant creatures;
- current crystal energy is life force;
- zero usable energy means death;
- berserk consumes that same reserve;
- Tier/Rank/Quality/Element/Energy/Condition are distinct;
- mutation is bounded and may affect anatomy/capabilities/effects/behavior/terrain adaptation/harvest.

## HUNTER BASE 01

Authority:
`docs/30_content/hunters/HUNTER_BASE_01/README.md`.

Purpose:
reusable production/modeling base; not the final story protagonist.

Selected:
- 1.75 m prototype height;
- realistic adult humanoid proportions;
- practical frontier layered cloth/leather/limited protection;
- modular harness, pouches, boots and field tools;
- restrained material/color language;
- no giant fantasy armor;
- three silhouette/loadout tests: light tracking, balanced hunt, reinforced dangerous-hunt;
- final weapon family OPEN;
- final face/sex/gender/name/story identity OPEN.

## MONSTER 01 — MUDCREST RAKER

Authorities:
- `docs/30_content/monsters/MONSTER_01/README.md`;
- `ANATOMY_AND_DAMAGE.md`;
- `CRYSTAL_AND_MUTATION.md`;
- `BEHAVIOR_AND_REGION.md`.

Selected body/mechanical design:
- Region 01 territorial root-foraging/omnivorous quadruped;
- ~6.6 m nose-to-tail;
- ~3.0 m shoulder/main-body height;
- front-heavy mass;
- broad wedge head;
- paired mineral horn crest;
- breakable dorsal plates;
- robust mud-adapted feet;
- long muscular tail with legal distal sever boundary;
- internal forward-torso/sternal crystal core;
- provisional Mineral/Earth-type elemental expression;
- restrained biological/mineral crystal visuals.

First-slice target groups:
- HEAD;
- HORN_CREST;
- FORELEG_L;
- FORELEG_R;
- HINDLEG_L;
- HINDLEG_R;
- DORSAL_PLATES;
- TAIL.

Functional consequences:
- horn break weakens/removes strongest horn-charge version;
- foreleg injury impairs charge/stability;
- hindleg injury impairs retreat/reposition;
- dorsal plate break exposes/protects local surface and changes harvest;
- tail sever removes tail-sweep capability and creates one physical detached harvest source;
- berserk cannot restore any broken/severed anatomy.

Mutation reference variants:
- Mirestep Pads;
- Bastion Plates;
- Deep-Scent Crest;
- Resonant Core Veins.

Deterministic activity/escape uses actual Region 01 sectors. Critically injured animals prefer valid deeper retreat routes rather than teleporting.

## ASSET STORAGE — GOOGLE DRIVE

Project root:
`Unnamed Hunt RPG`
ID: `1N3FbZhLE9ZfEy1Og-iNiB2B7nyyfangt`

### Modeling references
`01_Modeling_References` — `1qsF_JUYBs9ZQ-1lZPHsTCwWn87W46VIs`
- Hunter — `1XM-kcLfxD3Af-HAPRu4zlO691RgDJLlE`
- Monster_01 — `1klaz1KEefbWZ2cMMH3N6m--lbQqf9CUe`

### Working runtime 2D
`02_2D_Runtime_Assets` — `1PJ7uzt8oZBE5jFPXoBeldGVVv9Dy1Ko_`
- UI icons — `1lB-X102Z804LpQw5SBuDMibHHqtWVQzR`
- bestiary/portraits/illustrations — `1Qz3XZYmsYP-BtXmmdVHnMxBe_-lk7h2Q`
- decals/VFX sprites — `1oAkamHy_0AZtDksTOAyA_BrNHpdOmiMY`
- maps/billboards/impostors — `1d14laLOIaHoL9ydx75IBWGfh0i_xqYbe`

### 3D conversion inputs
`03_3D_Conversion_Inputs` — `1hs-qJiiF6R-1NLBmlChvSK4rlQilONLz`
- Hunter — `1fbVPHHyVmGuqAxaKsUXSKAYdYk-BeJy4`
- Monster_01 — `19iD9tQXEtQEL-Io8Y5MD5h-WPRVKYjEa`

### Approved exports
`04_Approved_Exports` — `1yrS6vXQElSahDUtFJjjst25gq8RIGm2P`
- 2D runtime — `1S7q8hBrcFoI2iPSJqWXPWJrGmxfPu3A_`
- 3D game ready — `1rA4FTPUfX1VXdU3QlhVMEShr5gzn7Z_g`

Never mix these lanes.

## ASSET PIPELINE AUTHORITIES

- `docs/40_art/asset_pipeline/README.md`
- `RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`
- `RUNTIME_2D_ASSET_GUIDE.md`
- `PNG_TO_3D_AUTOMATION_PIPELINE.md`
- `ASSET_QA_GATES.md`
- `GENERATED_SHEET_REGISTRY.md`

### Zoom-quality fix

Do not enlarge a small PNG indefinitely.

Use:
- high-resolution master source;
- separate native-detail sheets/crops;
- vector/SDF for scalable geometric/icon assets;
- master→runtime derivative chain;
- engine mip/filter/LOD later;
- optional AI upscaling only for visual/reference restoration, not technical truth.

A modeling reference's resolution is not an Android runtime texture budget.

### Runtime 2D

Eligible examples after cleanup/QA:
- UI icons;
- bestiary illustrations;
- portraits;
- contract art;
- map symbols;
- decals;
- VFX sprites;
- verified-3D-derived billboards/impostors.

Generated images that merely resemble normal/ORM/UV/hit/collision/navigation maps are not technically valid runtime maps.

## PNG → 3D AUTOMATION

Current target:

`APPROVED REFERENCE`
→ `CLEAN/MULTIVIEW CONVERSION INPUT`
→ `IMAGE-TO-3D CANDIDATES`
→ `BLENDER NORMALIZE/CLEAN/REPORT`
→ `TOPOLOGY QA/RETOPO`
→ `ANATOMY BINDING`
→ `BREAK/SEVER SETUP`
→ `RIG`
→ `DEFORMATION TESTS`
→ `ANIMATION`
→ `LOD`
→ `COLLISION/HIT PROXIES`
→ `ENGINE IMPORT`
→ `ANDROID QA`
→ `GAME_READY`.

Researched current candidate tools/services:
- Meshy;
- Tripo;
- Rodin/Hyper3D;
- Blender for free technical cleanup/orchestration.

A downloaded generated GLB/FBX is only `RECONSTRUCTION_CANDIDATE`, never automatically `GAME_READY`.

## CURRENT SHEET REGISTRY ORDER

1. `HUNTER_BASE_01_H02_TURNAROUND_SCALE_v001.png`
2. `HUNTER_BASE_01_H04_MODULAR_SILHOUETTES_v001.png`
3. `MONSTER_01_M01_M02_HERO_TURNAROUND_v001.png`
4. `MONSTER_01_M03_ANATOMY_v001.png`
5. `MONSTER_01_M04_DAMAGE_STATES_v001.png`
6. `MONSTER_01_M05_CRYSTAL_MUTATION_VARIANTS_v001.png`
7. `MONSTER_01_M08_THREE_DISTANCE_v001.png`

If generation quota/limits intervene, stop only at a completed-sheet boundary and preserve status.

## NEXT ACTION

Generate/review sheets in registry order.

After the visual-reference pass:
1. player progression/equipment packet;
2. exact combat economy;
3. engine/device probe only after explicit implementation authorization.

## STATUS GATES

`DOCS_FOLDER_STRUCTURE_RECORDED = YES`
`REGION_01_DESIGNED = YES`
`HUNTER_BASE_01_DESIGNED = YES`
`MONSTER_01_DESIGNED = YES`
`ASSET_DRIVE_STRUCTURE_CREATED = YES`
`RASTER_ZOOM_POLICY_RECORDED = YES`
`RUNTIME_2D_POLICY_RECORDED = YES`
`PNG_TO_3D_PIPELINE_RECORDED = YES`
`ASSET_QA_GATES_RECORDED = YES`
`REFERENCE_SHEET_GENERATION = ACTIVE`
`GAMEPLAY_SOURCE_CREATED = NO`
`PRODUCTION_3D_GAME_READY_ASSET = NO`
`ENGINE_SELECTED = NO`
`IMPLEMENTATION_AUTHORIZED = NO`
`APK_BUILD_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`

## AUTHORITY

Current explicit user instruction > current owning repository authorities/packages > future verified source/tests/runtime evidence > chat memory/summaries.
