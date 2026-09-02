# MONSTER_01 — Crystal and Mutation Packet

Status: SELECTED FIRST-MONSTER EXPRESSION / GLOBAL TIER-RANK NUMBERS OPEN
Last reconciled: 2026-09-02

## Purpose

Apply the global crystal life-force/mutation system to the Mudcrest Raker without inventing a separate monster-only power system.

## Baseline crystal profile

The Mudcrest Raker carries one internal life crystal in the forward torso/sternal cavity.

Current selected prototype direction:
- first-region baseline crystal class, not apex-world tier;
- primary provisional elemental expression: **Mineral / Earth-type**;
- high structural integration with horns/dorsal plates;
- life-force reserve directly powers biological function and berserk overdrive;
- crystal remains physically internal and normally hidden.

Exact Tier, Rank, Quality display bands and numbers remain OPEN until the global crystal roster is decided.

## Visual crystal language

Baseline creature should not glow constantly.

Normal state:
- subtle mineral grain/veins near plate bases/horn roots;
- mostly matte biological/mineral surfaces;
- no bright exposed crystal core.

High strain / berserk:
- restrained warm internal glow/seam response under selected plate/horn-root areas;
- stronger breathing/pulse rhythm;
- localized dust/mineral shedding or vibration if affordable;
- no full-body neon transformation.

Core-empty/death:
- active glow/energy response collapses;
- physical crystal may remain harvestable depending condition;
- intrinsic tier/rank/quality/element identity does not vanish merely because energy is zero.

## Berserk trigger philosophy

Berserk is not automatic at a fixed HP threshold alone.

Use deterministic conditions such as:
- severe injury;
- low but nonzero core energy;
- cornered/no preferred escape path;
- nest/core territory threatened;
- repeated stagger/pressure;
- authored species desperation phase.

Candidate first-slice trigger combination:
`IF critically pressured AND core_energy > 0 AND (retreat blocked OR nest-threatened OR severe-injury) → ENTER_BERSERK`

Exact thresholds remain balance candidates.

## Berserk cost

Every berserk turn/action should consume additional crystal life force and/or build core strain.

Candidate effects:
- more aggressive pattern priorities;
- reduced pain/stagger response;
- stronger/faster charge preparation;
- more forceful body/tail attacks when required anatomy remains intact;
- improved footing/impact stability;
- increased crystal strain and self-destructive energy drain.

Important invariants:
- broken horns stay broken;
- severed tail stays severed;
- damaged legs stay damaged;
- berserk cannot recreate armor plates;
- zero usable core energy means death.

## Baseline ecological adaptation

The base species already has non-mutation/common inherited adaptations for Region 01:
- broad mud-capable feet;
- strong forequarters for rooting/charge;
- mineralized horn/plate tissues;
- scent/ground-reading behavior appropriate to dense basin terrain.

These should not all be called rare mutations. Mutation is reserved for meaningful divergence from the baseline species package.

## Mutation Variant A — Mirestep Pads

Working mutation ID:
`mutation_raker_mirestep`

Concept:
- broader flexible toe pads;
- deeper textured underside;
- slightly wider stance;
- reduced mud movement/footing penalty through the shared effect system.

Visual effect:
- visible but restrained foot anatomy change;
- no unrelated color transformation.

Behavior consequence candidate:
- more willing to use River Ford/Mud Flats as chase/escape territory.

Harvest consequence candidate:
- altered pad/tendon material only if the global harvest system approves a useful material.

## Mutation Variant B — Bastion Plates

Working mutation ID:
`mutation_raker_bastion_plates`

Concept:
- enlarged/thicker dorsal and shoulder mineral plates;
- stronger protection but increased burden/turning cost candidate.

Visual:
- noticeably higher broken-stone plate silhouette;
- still recognizably the same species.

Gameplay:
- stronger plate protection;
- potentially slower rapid repositioning;
- breaking plates becomes more valuable tactically;
- material yield/quality changes according to actual remaining plate mass.

## Mutation Variant C — Deep-Scent Crest

Working mutation ID:
`mutation_raker_deepscent`

Concept:
- enlarged nasal/sensory folds/crest around upper muzzle and skull base;
- improved detection/tracking of nearby actors through scent/ground disturbance under suitable conditions.

Visual:
- changed muzzle/crest shape rather than glowing magic effect.

Behavior:
- may detect concealed hunter sooner in favorable wind/terrain conditions when the global sensory system supports it.

Do not give omniscient player location.

## Mutation Variant D — Resonant Core Veins

Working mutation ID:
`mutation_raker_resonant_veins`

Concept:
- stronger crystal-to-mineral vascular integration around plate/horn roots;
- higher overdrive output but faster strain/energy consumption candidate.

Visual:
- subtle mineral vein network visible at rest;
- brighter/clearer during berserk;
- never a full glowing body.

Gameplay candidate:
- stronger berserk actions;
- faster life-force depletion;
- potentially greater risk of crystal structural damage under overload.

## Mutation incompatibility/support candidates

To keep mutation bounded:
- Bastion Plates and extreme Mirestep widening may compete for support/burden budget;
- Resonant Core Veins requires sufficient crystal quality/stability candidate;
- no creature automatically receives every positive variant;
- regional pressure influences probability but does not bypass prerequisites.

Exact support-cost numbers remain open.

## Regional pressure relationship

Region 01 candidate pressures:
- S01 River/Mud: favors mud/footing adaptation;
- S04 Rocky Rise / S06 Crystal Fault: favors mineral/plate/core-expression variants;
- S05 dense Deepwood: may favor sensory/navigation adaptations.

These are tendencies, not guaranteed sector-specific spawn skins.

## Mutation sheet requirement

`MONSTER_01_M05_CRYSTAL_MUTATION_VARIANTS_v001.png` should show the same base species in consistent neutral side/3/4 presentation:
1. baseline;
2. Mirestep Pads;
3. Bastion Plates;
4. Deep-Scent Crest;
5. Resonant Core Veins / restrained berserk presentation.

Generated visual differences are reference candidates. Exact gameplay effects remain owned by data/effect definitions.

## 3D implementation implications

Preferred mutation implementation hierarchy:
- material/mask parameter when shape does not change;
- modular/swappable mesh region when anatomy changes locally;
- shape key/morph only if it deforms safely across LOD/rig;
- separate whole-body mesh only when mutation fundamentally changes topology and the content cost is justified.

For the first slice, avoid requiring five entirely independent rigs.

## Harvest relationship

Mutations may alter:
- material family;
- material capacity;
- quality;
- rarity/research value;
- crystal condition/value.

They never create material beyond actual anatomy/capacity.

## Current selected vs open

SELECTED:
- provisional mineral/earth expression;
- internal core;
- restrained visual energy;
- berserk consumes life force;
- four mutation concepts for reference exploration;
- mutations preserve species lineage.

OPEN:
- final element name/ID;
- exact crystal tier/rank/quality;
- exact energy reserve/recovery;
- exact berserk cost/thresholds;
- final mutation support costs;
- exact harvest outputs.
