# MONSTER_01 — Mudcrest Raker

Status: SELECTED FIRST-MONSTER PROTOTYPE DESIGN / NORMAL COMBAT ATTACK PACKET RECORDED / DISPLAY NAME PROVISIONAL / NO IMPLEMENTATION
Last reconciled: 2026-09-03

## Identity

Technical package ID: `MONSTER_01`
Provisional species ID: `species_r01_mudcrest_raker`
Working display name: **Mudcrest Raker**

The display name can change. Stable package/species IDs and the current mechanical body design are the authority.

## Why this is the first monster

Monster 01 is designed to prove the game's core hunt systems with one coherent animal rather than an exception-heavy boss.

It must demonstrate:
- Region 01 movement through mud, roots, meadow, ridge and deep territory;
- deterministic territory/activity patterns;
- readable tracking evidence;
- persistent escape/reacquisition;
- horn break;
- dorsal plate break;
- leg impairment;
- distal tail sever;
- anatomy-dependent attack loss/change;
- Crystal Energy and later desperation berserk;
- terrain-readable combat;
- condition-based harvesting;
- aerial silhouette and first-person anatomy readability.

## Ecological concept

Large territorial quadrupedal omnivore/root-forager adapted to wet forest basins and mineral-rich ground.

It is not a generic evil predator. Normal activities include rooting/feeding, river drinking/wallowing, mineral rubbing, deep-basin rest, territorial warning and wounded retreat.

## Body plan

Selected prototype:
- ~6.6 m nose-to-tail;
- ~3.0 m shoulder/main-body height;
- front-loaded quadrupedal mass;
- low wedge head;
- paired mineralized horn/crest structures;
- heavy shoulder/dorsal plates;
- four robust legs with mud-adapted feet;
- muscular tail with mineralized distal ridge;
- deep forward-torso Crystal core, not a baseline externally targetable part.

Exact mass remains open until blockout volume is checked.

## Player-facing target groups

Detailed authority: `ANATOMY_AND_DAMAGE.md`.

First-slice groups:
1. Head;
2. Horn Crest;
3. Foreleg L;
4. Foreleg R;
5. Hindleg L;
6. Hindleg R;
7. Dorsal Plates;
8. Tail;
plus general torso contact.

## Normal combat attack packet

Authority:
`COMBAT_ATTACK_PACKET.md`.

Selected first-slice normal damaging attacks:
1. `M01_HORN_CHARGE`;
2. `M01_HEAD_SWEEP_GORE`;
3. `M01_SHOULDER_RAM`;
4. `M01_FORELEG_STOMP`;
5. `M01_TAIL_SWEEP`.

First-slice Monster 01 activation model:
- one normal activation per round;
- internal 4-AP budget using the shared action-economy framework;
- maximum one damaging attack per activation;
- persistent Stamina/exertion costs;
- no normal attack spends Crystal Energy by default;
- no hidden multiattack from animation;
- no independent status-proc RNG.

Prototype attack costs:
- Horn Charge `4 AP / 30 Stamina`;
- Head Sweep/Gore `2 / 14`;
- Shoulder Ram `3 / 22`;
- Foreleg Stomp `2 / 12`;
- Tail Sweep `3 / 18`.

Anatomy consequences:
- broken horn capability removes full Horn Charge;
- both horns broken convert Head Sweep/Gore to impact-only Head Sweep;
- severe forequarter support loss removes full Charge/Ram as defined;
- damaged selected foreleg can remove that side's Stomp;
- distal tail sever removes Tail Sweep immediately and persistently.

## Combat role

Monster 01 rewards positional/anatomical thinking rather than raw DPS.

Normal attack coverage:
- long frontal lane: Horn Charge;
- close front/front-flank: Head Sweep/Gore;
- horn-independent body force: Shoulder Ram;
- local forequarter pressure: Foreleg Stomp;
- rear/flank defense: Tail Sweep.

Bite is intentionally not a separate first-slice attack because it does not add enough new tactical proof beyond the selected five.

Berserk variants are explicitly deferred to the next bounded packet and must remain anatomy-legal variants/priority changes rather than unrelated magic attacks.

## Terrain/Region 01 relationship

Primary sectors:
- S01 River Ford / Mud Flats;
- S02 Rootwood Thicket;
- S03 Feeding Meadow;
- S04 Rocky Rise;
- S05 Deepwood Basin;
- S06 Nesting Shelf / Crystal Fault.

S00 Field Camp is not a normal monster activity anchor.

Combat footprint implications:
- Meadow Edge is the cleanest Horn Charge proving ground;
- Riverbank Ford supports close attacks plus lane-validated charge/sweep;
- Root/Boulder Hollow frequently restricts charge/sweep through Narrow/solid geometry;
- Deep Nest Shelf uses real elevation/clearance, not generic high-ground damage bonuses.

## Deterministic behavior

Authority:
`BEHAVIOR_AND_REGION.md`.

There is no runtime generative AI decision system.

Behavior selection reads:
- player range/bearing;
- line/cover/terrain;
- anatomy capability flags;
- injury/status;
- current territory/activity;
- Crystal reserve/strain where relevant;
- retreat/nest context;
- legal attacks exposed by `COMBAT_ATTACK_PACKET.md`.

Behavior may never select an attack that the attack packet marks illegal.

## Crystal/mutation

Authority:
`CRYSTAL_AND_MUTATION.md`.

Provisional expression: Mineral / Earth-type biological adaptation.

Normal attack packet does not consume Crystal Energy by default. The next bounded content/design dependency owns the first berserk Energy/strain behavior.

## Surface/material language

- thick matte hide;
- mud-stained lower limbs;
- mineral/keratin horns and dorsal plates;
- tougher shoulder hide;
- softer joint/belly/neck flex areas;
- restrained crystal/mineral seams only where biologically justified.

Avoid constant neon glow or generic rock-magic identity.

## Package file map

- `README.md` — Monster 01 front door/current package map;
- `ANATOMY_AND_DAMAGE.md` — target groups, break/sever/impairment and harvest-condition anatomy;
- `COMBAT_ATTACK_PACKET.md` — normal first-slice attack definitions, capability gates, costs, reactions, terrain/cover/status relationships;
- `BEHAVIOR_AND_REGION.md` — deterministic activity/combat selection/retreat/Region 01 use;
- `CRYSTAL_AND_MUTATION.md` — Crystal/mutation direction and later berserk inputs.

## Reference generation sequence

1. `MONSTER_01_M01_M02_HERO_TURNAROUND_v001.png`;
2. `MONSTER_01_M03_ANATOMY_v001.png`;
3. `MONSTER_01_M04_DAMAGE_STATES_v001.png`;
4. `MONSTER_01_M05_CRYSTAL_MUTATION_VARIANTS_v001.png`;
5. `MONSTER_01_M08_THREE_DISTANCE_v001.png`.

## Current decision state

RECORDED:
- quadrupedal front-heavy body plan;
- ~6.6 m length / ~3.0 m shoulder scale prototype;
- horn crest / dorsal plates / mud-adapted feet / severable distal tail;
- Region 01 ecology/route relationship;
- deterministic behavior architecture;
- five normal first-slice attacks;
- anatomy-dependent attack loss/change;
- normal attack AP/Stamina commitments and player-reaction compatibility.

OPEN/LATER:
- final name;
- exact mass;
- final element naming;
- final Crystal tier/rank/quality values;
- final health/damage numbers;
- final species Max Stamina;
- final harvest quantities;
- final art/audio;
- first berserk prototype — next bounded dependency;
- runtime implementation/tests.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_ATTACK_RUNTIME_IMPLEMENTED = NO`

## Exact next package dependency

`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`

Keep that pass limited to berserk entry, Energy/strain drain, visible tell, bounded changes to existing anatomy-legal attacks/behavior priority and stop/critical/death rules.