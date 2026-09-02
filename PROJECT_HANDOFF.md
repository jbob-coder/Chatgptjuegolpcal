# Unnamed Hunt RPG — Project Handoff

Status: DESIGN / CONTENT PACKETS / REFERENCE ASSET QA / NO GAMEPLAY IMPLEMENTATION
Last reconciled: 2026-09-02

## CURRENT_OBJECTIVE

Continue bounded design documentation while gameplay implementation remains on hold.

Most recent completed gameplay packet:
`docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.

Current next bounded gameplay task:
**Combat Resolution / Hit Quality and Defense Contract** — define accuracy/evasion, cover, dodge/block/parry, hit-quality tiers, targeting difficulty and deterministic/randomness boundaries without implementing combat code.

Reference-image generation remains generally authorized, but repeated Hunter technical multiview generation using the current image-generation method is intentionally paused after v001/v002/v003 failed technical-source QA.

Gameplay code, engine project, scenes, APK and game-ready 3D implementation remain NOT authorized.

## CURRENT SOURCE OF TRUTH

Read in this order:
1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `PROJECT_HANDOFF.md`
4. `DOCUMENTATION_INDEX.md`
5. `docs/README.md`
6. `DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`
7. owning package files for the active task.

Current specialized handoff for art/model work:
`docs/70_handoff/ASSET_GENERATION_PASS_2026-09-02.md`.

Do not reconstruct the project from old WorldLife files or stale chat memory.

## DOCUMENTATION STRUCTURE

Selected rule:
**folders organize ownership; packages organize one playable thing/system.**

Important package areas:
- `docs/10_world/regions/REGION_01/`
- `docs/20_gameplay/progression/`
- `docs/20_gameplay/combat/`
- `docs/30_content/hunters/HUNTER_BASE_01/`
- `docs/30_content/monsters/MONSTER_01/`
- `docs/40_art/asset_pipeline/`
- `docs/40_art/reviews/`

Existing root authorities remain valid until a separate link-safe migration.

## CORE GAME IDENTITY

Grounded stylized monster-hunting tactical RPG:

`PREPARE IN WALKABLE SETTLEMENT → ENTER CONTINUOUS HUNTING REGION → TRACK/OBSERVE → ENGAGE → FIRST-PERSON TURN-BASED TACTICAL COMBAT → TARGET ANATOMY → BREAK/SEVER → MONSTER ESCAPES OR FALLS → REACQUIRE/HARVEST → RETURN/PROCESS/CRAFT/RESEARCH`.

Visual identity:
**an illustrated hunting world brought to life**.

Behavior:
**NO AI behavior system.** NPCs/creatures use deterministic authored patterns, conditions, schedules, priorities, cooldowns and capability checks.

## WORLD STRUCTURE

Selected hierarchy:
`WORLD ATLAS → WALKABLE SETTLEMENT → HUNTER GATE/FRONTIER TRANSITION → CONTINUOUS STREAMED HUNTING REGION → LOCAL FIRST-PERSON ENCOUNTER`.

Scale convention:
`1 world unit = 1 meter`.

Settlement 01:
- defensible frontier river/chasm geography;
- Hunter Service Loop;
- repeated core-service legs ~10–25 sec prototype target;
- 2–3 elevation bands;
- active/background/logical NPC fidelity;
- important interiors seamless when budget permits.

Region 01 sectors:
- S00 Trailhead/Field Camp;
- S01 River Ford/Mud Flats;
- S02 Rootwood Thicket;
- S03 Feeding Meadow;
- S04 Rocky Rise;
- S05 Deepwood Basin;
- S06 Nesting Shelf/Crystal Fault.

Region rules:
- looped/branched topology;
- ordinary sector boundaries continuous/streamed;
- physical tracking evidence rather than permanent GPS;
- persistent monster state across escape/reacquisition;
- combat footprints derived from actual local terrain.

## STATS / EFFECTS / CRYSTAL

Primary attribute direction:
Might / Finesse / Agility / Endurance / Perception / Resolve.

Equipment, statuses, terrain, weather, posture, injuries and other modifiers use one shared typed modifier pipeline with explicit stacking, caps and calculation traces.

Crystal rules:
- one internal life crystal for relevant creatures;
- current crystal energy is life force;
- zero usable energy means death;
- berserk spends that same reserve;
- Tier / Rank / Quality / Element / Energy / Condition are distinct;
- mutations are bounded and may affect anatomy, capabilities, behavior, terrain adaptation and harvest.

## PLAYER PROGRESSION — CURRENT SELECTED DIRECTION

Authority:
`docs/20_gameplay/progression/PLAYER_PROGRESSION_AND_EQUIPMENT_SYSTEM.md`.

Selected model:
**HYBRID / EQUIPMENT + MASTERY + KNOWLEDGE WEIGHTED.**

Progression vectors:
- slow bounded base-attribute growth;
- weapon mastery;
- equipment and equipment specialization;
- monster/hunter knowledge;
- harvest/craft proficiency;
- Hunter Rank / reputation / access;
- preparation/tools/loadout.

Quality laws:
- no universal gear score as primary truth;
- no exponential health/damage treadmill;
- AP is not a normal progression reward;
- Hunter Rank primarily controls trust/access rather than raw combat multipliers;
- equipment is the largest practical combat-expression vector but must preserve tradeoffs;
- mastery should unlock handling/technique depth rather than simple repeated percentage damage;
- knowledge improves information, not monster anatomy;
- harvesting progression cannot create physical material beyond remaining anatomy;
- late progression must not make anatomy, terrain or preparation irrelevant;
- first slice proves only a small progression loop.

Open progression details:
- exact starting/soft-cap attribute values;
- exact mastery/rank names/counts;
- exact armor UI slot count;
- durability/sharpness;
- respec/failure-loss rules;
- human crystal technology/use;
- final endgame ceiling.

## COMBAT ACTION ECONOMY — CURRENT SELECTED DIRECTION

Authority:
`docs/20_gameplay/combat/ACTION_ECONOMY_CONTRACT.md`.

Selected resource separation:
- `AP` = current-turn tactical opportunity;
- `RP` = bounded out-of-turn defensive response;
- `STAMINA` = persistent multi-turn exertion.

Selected architecture:
- normal AP refreshes per actor turn and does not bank;
- ordinary attributes/progression do not create extra normal turns;
- reactions occur only in explicit reaction windows;
- baseline normal defender chooses at most one normal reaction per window;
- reaction recursion/counter recursion is blocked;
- body-part selection inside an already legal attack is not automatically an additional AP charge;
- cover/posture/movement are authoritative states;
- UI/animation cannot spend/refund AP/RP/stamina or advance turns.

First-slice prototype targets:
- hunter `MAX_AP = 4`;
- hunter normal `MAX_RP = 1`;
- standard adjacent movement commonly `1 AP`;
- standard attack commonly `2 AP`;
- precision attack commonly `3 AP`;
- heavy/full-turn commitment commonly `4 AP`;
- aim/brace/analyze/recovery commonly `1 AP`;
- larger reposition commonly `2 AP` plus stamina.

Important anti-loop laws:
- no normal AP banking;
- no ordinary extra-turn progression;
- no stamina→unlimited AP conversion;
- no 0 AP tactical-state mutation loops;
- no repeated normal reactions from one incoming action;
- no UI-owned refunds;
- status/turn hooks fire once per authoritative event;
- save/reload cannot duplicate resources/actions/status ticks.

Open combat-economy details:
- exact stamina scale/recovery formula;
- exact initiative formula;
- weapon-specific action costs;
- exact block/parry/dodge formulas;
- guard upkeep;
- ammo/reload economy;
- exact tool/item costs;
- party activation rules if party play is later approved.

## HUNTER BASE 01

Authorities:
- `docs/30_content/hunters/HUNTER_BASE_01/README.md`;
- `PROPORTION_AND_ATTACHMENT_CONTRACT.md`.

Selected:
- reusable production/modeling base, not final protagonist;
- 1.75 m prototype height;
- realistic adult humanoid proportions;
- practical frontier cloth/leather/limited protection;
- modular harness/pouches/boots/field tools;
- stable normalized prototype body anchors and attachment vocabulary;
- final weapon family and final story identity remain OPEN.

Hunter technical multiview state:
- H02 v001 → `REVISE`;
- H02 v002 → `REVISE`;
- H02A v003 → `REVISE_METHOD`;
- same-method H02A v004 should NOT be generated;
- DCC blockout specification is recorded but actual DCC implementation is not authorized.

## MONSTER 01 — MUDCREST RAKER

Authorities:
- `docs/30_content/monsters/MONSTER_01/README.md`;
- `ANATOMY_AND_DAMAGE.md`;
- `CRYSTAL_AND_MUTATION.md`;
- `BEHAVIOR_AND_REGION.md`.

Selected prototype:
- Region 01 territorial root-foraging/omnivorous quadruped;
- ~6.6 m nose-to-tail;
- ~3.0 m shoulder/main-body height;
- front-heavy body;
- paired mineral horn crest;
- breakable dorsal plates;
- broad mud-adapted feet;
- long tail with legal distal sever zone;
- internal forward-torso crystal core;
- provisional Mineral/Earth-type expression;
- berserk consumes life force and cannot restore lost anatomy.

First-slice target groups:
HEAD / HORN_CREST / FORELEG_L / FORELEG_R / HINDLEG_L / HINDLEG_R / DORSAL_PLATES / TAIL.

## ASSET PIPELINE CURRENT STATE

Google Drive project root:
`Unnamed Hunt RPG` — `1N3FbZhLE9ZfEy1Og-iNiB2B7nyyfangt`.

Separate lanes remain:
- modeling references;
- working 2D runtime assets;
- 3D conversion inputs;
- approved exports.

Do not mix lanes implicitly.

Asset authorities include:
- `docs/40_art/asset_pipeline/ASSET_LINEAGE_AND_APPROVAL_MANIFEST.md`;
- `GENERATED_SHEET_REGISTRY.md`;
- `ASSET_QA_GATES.md`;
- `RASTER_RESOLUTION_AND_ZOOM_QUALITY.md`;
- `HUNTER_TECHNICAL_SOURCE_PACK_STANDARD.md`;
- `HUNTER_DCC_BLOCKOUT_SPECIFICATION.md`;
- `PNG_TO_3D_AUTOMATION_PIPELINE.md`.

No Hunter/Monster 3D asset is game-ready or conversion-approved.

## NEXT BOUNDED WORK

**Combat Resolution / Hit Quality and Defense Contract**.

It should decide only:
- attack legality and target acquisition sequence;
- accuracy/evasion relationship;
- directional cover interaction;
- dodge/block/parry/brace resolution boundaries;
- hit-quality tiers such as graze/normal/clean/precision;
- body-part targeting difficulty/exposure;
- deterministic vs seeded-random boundaries;
- how armor/anatomy protection enters resolution;
- failure/miss consequences;
- Admin calculation traces;
- what remains OPEN for first combat testing.

Do not implement combat in that pass.

## STATUS GATES

`DESIGN_RECORDED = YES`
`DOCS_FOLDER_STRUCTURE_RECORDED = YES`
`REGION_01_DESIGNED = YES`
`HUNTER_BASE_01_DESIGNED = YES`
`MONSTER_01_DESIGNED = YES`
`PLAYER_PROGRESSION_PACKET = RECORDED`
`PLAYER_PROGRESSION_MODEL = SELECTED_HYBRID`
`COMBAT_ACTION_ECONOMY = RECORDED`
`FIRST_SLICE_AP_TARGET = 4`
`FIRST_SLICE_RP_TARGET = 1`
`AP_BANKING = NO`
`REACTION_RECURSION = BLOCKED`
`HUNTER_TECHNICAL_MULTIVIEW_ROUTE = PAUSED_BY_QA`
`HUNTER_DCC_BLOCKOUT_SPECIFICATION = RECORDED`
`DCC_IMPLEMENTATION_AUTHORIZED = NO`
`GAMEPLAY_SOURCE_CREATED = NO`
`ENGINE_SELECTED = NO`
`IMPLEMENTATION_AUTHORIZED = NO`
`APK_BUILD_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`

## AUTHORITY

Current explicit user instruction > current owning repository authorities/packages > future verified source/tests/runtime evidence > chat memory/summaries.
