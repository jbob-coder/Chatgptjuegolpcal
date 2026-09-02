# REGION_01 — First Hunting Region

Status: SELECTED FIRST-REGION STRUCTURE + PROTOTYPE TARGETS / NO IMPLEMENTATION
Last reconciled: 2026-09-02

Technical package ID: `REGION_01`
Final display name: **OPEN**
Working biome description: **temperate river-and-root forest basin with open feeding ground, rocky elevation and a deeper crystal-influenced territory**.

## Purpose

Define the first continuous hunting region beyond Settlement 01's hunter gate.

This package is intentionally bounded. It does **not** define every future biome, the final first monster species, all gathering resources, final art assets, exact crystal-element roster or engine implementation.

It applies these root authorities:
- `/MAP_WORLD_SETTLEMENT_STRUCTURE.md`;
- `/WORLD_SCALE_STREAMING_TRANSITION_GUIDE.md`;
- `/CRYSTAL_MUTATION_ECOSYSTEM_SYSTEM.md`;
- `/STATS_ATTRIBUTES_EFFECTS_SYSTEM.md`;
- `/BEHAVIOR_PATTERN_SYSTEM.md`;
- `/MODEL_ART_DIRECTION_AND_ASSET_STANDARD.md`;
- `/MODEL_REFERENCE_IMAGE_AND_CREATION_PIPELINE.md`;
- `/PERFORMANCE_BUDGETS_AND_CAPS.md`;
- `/DESIGN_QUALITY_GATES_AND_DEPENDENCY_MATRIX.md`.

## Primary quality fix

A hunting region should not be a pretty corridor and should not be a giant empty map.

REGION_01 is designed as a **small connected ecosystem graph with route redundancy**:
- each sector has a distinct hunting/terrain purpose;
- ordinary sector boundaries are continuous;
- multiple middle sectors have more than one useful entrance/exit;
- the monster can retreat through the same physical network;
- tracking evidence can lead through more than one plausible route;
- local first-person battle footprints are embedded in real terrain;
- the player cannot see the entire region from normal gameplay camera.

## Sector set

Prototype uses seven planning sectors:

| ID | Working role | Primary gameplay identity |
|---|---|---|
| `R01_S00` | Frontier Trailhead / Field Camp | safe edge, orientation, limited recovery/loadout, wilderness handoff |
| `R01_S01` | River Ford / Mud Flats | water, mud, strong footprints, constrained crossings |
| `R01_S02` | Rootwood Thicket | concealment, broken sight lines, scratches/vegetation evidence |
| `R01_S03` | Feeding Meadow | open sight lines, feeding evidence, exposed approach |
| `R01_S04` | Rocky Rise | elevation, long local views, wind/exposure, route observation |
| `R01_S05` | Deepwood Basin | stronger danger pressure, dense cover, convergence/retreat territory |
| `R01_S06` | Nesting Shelf / Crystal Fault | deepest territory, nest/retreat destination, highest local mutation pressure |

Names are working labels, not final lore/display names.

## Selected topology

```text
                 R01_S04 ROCKY RISE
                 /       |       \
                /        |        \
 R01_S03 FEEDING MEADOW--+----R01_S06 NESTING SHELF
      /   |     \               /
     /    |      \             /
R01_S01--R01_S02--R01_S05 DEEPWOOD BASIN
 RIVER      ROOTWOOD       /
    \        /            /
     \      /            /
      R01_S00 TRAILHEAD / FIELD CAMP
```

Canonical adjacency is defined in `REGION_TOPOLOGY.md`; this diagram is explanatory.

The graph deliberately avoids a single sequence such as `A→B→C→D→Boss`.

## Danger gradient

Preferred progression:

`FIELD CAMP → OUTER HUNTING TERRAIN → ACTIVE FEEDING/TRAVEL TERRITORY → DEEP TERRITORY → NEST/CRYSTAL FAULT`

Danger is ecological, not an invisible level wall.

A skilled/knowledgeable player may use alternate routes, but deeper sectors should naturally expose the player to:
- stronger monster presence;
- fewer safe retreat assumptions;
- more difficult terrain combinations;
- more specialized mutation/ecological pressure;
- higher consequence if the hunt goes badly.

## Scale targets

PROTOTYPE TARGETS only:
- 7 planning sectors including trailhead/camp;
- typical meaningful sector characteristic span roughly **100–180 m**, allowed to vary by terrain;
- total region occupies several hundred meters through folded terrain rather than a giant flat square;
- important gameplay-detail camera radius remains local per world-scale guide;
- far ridges/trees/landmarks may be visible through LOD, but the full sector graph must never read like a board-game map during normal play.

Exact dimensions, traversal times and resident-sector count require engine/device proof.

## Local navigation philosophy

Use geography to hide scale and support tracking:
- river bends;
- terrain folds;
- ridges;
- canopy/tree masses;
- large roots;
- boulder walls;
- elevation changes;
- narrow crossings;
- open meadow breaks.

The player should learn routes by landmarks and evidence rather than constant floating arrows.

## Field camp

`R01_S00` contains the first field camp/safe anchor.

Candidate functions:
- local safe respawn/checkpoint depending final save policy;
- limited recovery;
- limited loadout/tool adjustment;
- region map/notes;
- fast-travel anchor only after discovery/activation rules are decided.

The field camp is **not** a second full settlement. It should not replace the smith, processing, market, full research or normal settlement loop.

Exact camp services remain OPEN until progression/save design is locked.

## Persistent monster requirement

The first hunted large monster is not spawned fresh per sector.

A persistent relevant monster must preserve across region/encounter transitions:
- instance identity;
- anatomy injuries;
- broken/severed parts;
- statuses that persist by rule;
- crystal energy/condition;
- mutation state;
- behavior phase/important memory flags;
- current/retreat sector;
- evidence generated by its movement/injury.

The region package defines valid movement/retreat geography; the generic behavior system decides from authored conditions which legal route/action is selected.

## Region discovery

The map should distinguish:
- permanent discovered terrain/landmarks;
- known camp/paths;
- temporary or uncertain monster evidence;
- research-gated ecology/mutation information.

The region map does not grant permanent exact monster GPS.

## Package file map

- `README.md` — local authority/front door.
- `REGION_TOPOLOGY.md` — sector adjacency, purpose, routes, landmarks and route-quality rules.
- `TRACKING_AND_ESCAPE.md` — evidence chains, persistent monster movement, retreat and reacquisition.
- `TERRAIN_ECOLOGY_MUTATION.md` — terrain tags, habitat use, aggregate ecology and mutation/element pressure.
- `ENCOUNTER_FOOTPRINTS.md` — local first-person combat locations and tactical mapping rules.
- `STREAMING_AND_PERFORMANCE.md` — continuous sector streaming, simulation tiers, caps/instrumentation.
- `VISUAL_REFERENCE_PLAN.md` — environment PNG/reference pack needed before production art.
- `ACCEPTANCE_CHECKLIST.md` — graybox/design/device proof gates.

## What this package does not own

It does not define:
- generic mud formulas;
- generic AP/stamina formulas;
- damage/sever formulas;
- behavior-rule engine semantics;
- crystal Tier/Rank/Quality system;
- mutation-combination engine;
- final monster anatomy;
- engine scene/node/class layout.

Those stay with their owning system/content documents.

## Current decision state

LOCKED/CURRENT:
- Region 01 is continuous across ordinary internal sector boundaries whenever technically possible;
- local gameplay camera never reveals the entire region;
- monster identity/state persists across sectors and encounters;
- region uses real tracking evidence rather than exact omniscient tracking;
- first-person battle footprints derive from real local terrain;
- deterministic authored behavior remains the autonomous behavior model;
- ecology/mutation outside active actors remains bounded/aggregate.

SELECTED ARCHITECTURE:
- seven-sector prototype graph above;
- looped/branched middle-region topology;
- field camp at the safe frontier edge;
- river/root forest/meadow/ridge/deepwood/nest roles.

PROTOTYPE TARGET:
- roughly 100–180 m characteristic sector spans, variable by terrain;
- several-hundred-meter overall physical region;
- only current/required neighboring sectors at high runtime fidelity.

OPEN:
- final region name/lore;
- exact first monster;
- exact element roster used here;
- exact camp services/save/fast-travel rules;
- exact gatherable resources;
- weather/day-night impact;
- precise meter dimensions and sector resident budget;
- engine implementation.

## Next package dependency

Once this region package is coherent, the next bounded content design should be the **first monster complete design packet**. That monster can then be designed against real terrain, retreat routes, encounter footprints and ecological pressures rather than in isolation.
