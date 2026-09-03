# MONSTER_01 — Mudcrest Raker

Status: SELECTED FIRST-MONSTER PROTOTYPE DESIGN / NORMAL ATTACK + BERSERK PACKETS RECORDED / DISPLAY NAME PROVISIONAL / NO IMPLEMENTATION
Last reconciled: 2026-09-03

## Identity

Technical package ID: `MONSTER_01`
Provisional species ID: `species_r01_mudcrest_raker`
Working display name: **Mudcrest Raker**

The display name can change. Stable package/species IDs and the current mechanical body design are the authority.

## Why this is the first monster

Monster 01 is designed to prove the core hunt systems with one coherent animal rather than an exception-heavy boss.

It must demonstrate:
- Region 01 ecology/tracking/escape;
- deterministic authored behavior;
- horn break, plate break, leg impairment and distal-tail sever;
- anatomy-dependent attack loss/change;
- terrain/cover-aware first-person combat;
- Crystal life-force desperation berserk;
- persistent monster state through escape/reacquisition;
- condition-based harvesting;
- readable aerial silhouette + close anatomy states.

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
- deep forward-torso internal Crystal core, not a normal externally targetable part.

Exact mass remains open until blockout volume is checked.

## Player-facing target groups

Authority: `ANATOMY_AND_DAMAGE.md`.

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

## Normal combat packet

Authority: `COMBAT_ATTACK_PACKET.md`.

Selected normal damaging attacks:
- `M01_HORN_CHARGE` — 4 AP / 30 Stamina;
- `M01_HEAD_SWEEP_GORE` — 2 / 14;
- `M01_SHOULDER_RAM` — 3 / 22;
- `M01_FORELEG_STOMP` — 2 / 12;
- `M01_TAIL_SWEEP` — 3 / 18.

Normal activation laws:
- one normal activation per round;
- internal 4-AP budget;
- maximum one damaging attack per activation;
- persistent Stamina;
- no normal attack spends Crystal Energy by default;
- no hidden multiattack from animation;
- no independent status-proc RNG;
- lost anatomy removes/changes dependent attacks.

## Berserk prototype

Authority: `BERSERK_PROTOTYPE_CONTRACT.md`.

Berserk is a one-episode-per-hunt desperation state that spends Crystal life force for increased attack commitment/aggression.

### Entry gate

Requires:
- alive;
- not already active/used;
- `core_energy_ratio > 0.20` and `<= 0.60`;
- at least one desperation pressure: Retreat Denied, Nest Defense, or Severe Anatomy;
- nonterminal state.

Severe Anatomy requires at least two major capability-loss facts. There is no HP-only trigger and no random berserk roll.

### Entry transition

`M01_ENTER_BERSERK`:
- consumes the full 4-AP activation;
- cannot attack in that activation;
- costs 10% of Max Core Energy;
- adds +20 Core Strain;
- visibly telegraphs the state;
- marks the episode used.

### Active drain

Each later Berserk activation that continues:
- costs 5% Max Core Energy before action selection;
- adds +10 strain;
- dies immediately if Energy reaches zero.

Attack Energy/strain surcharge:
- Horn Charge: 5% / +12;
- Head Sweep/Gore: 2% / +5;
- Shoulder Ram: 4% / +8;
- Foreleg Stomp: 2% / +4;
- Tail Sweep: 3% / +6.

Berserk AP costs:
- Charge 3;
- Head Sweep/Gore 2;
- Ram 2;
- Stomp 2;
- Tail Sweep 2.

Existing Stamina costs remain unchanged.

Hard laws:
- still max one damaging attack per activation;
- no extra turns or Initiative reroll;
- all normal telegraph/reaction windows remain;
- Berserk never restores horns/tail/legs/plates;
- Berserk never bypasses range/bearing/clearance/cover/status legality.

### Critical exit

`BERSERK_CRITICAL = core_energy_ratio <= 0.12 OR core_strain >= 80`.

If critical + legal retreat + no active Nest Defense:
- Berserk ends;
- state becomes `EXHAUSTED_CRITICAL`;
- the 5% activation drain is not paid;
- episode-used remains true.

If critical while retreat is unavailable or Nest Defense remains active, Berserk continues and may burn the creature to death.

## Deterministic behavior

Authority: `BEHAVIOR_AND_REGION.md`.

There is no runtime generative AI decision system.

Ownership:
- `COMBAT_ATTACK_PACKET.md` owns normal attack legality/profile;
- `BERSERK_PROTOTYPE_CONTRACT.md` owns Berserk entry/drain/action modifiers/exit;
- `BEHAVIOR_AND_REGION.md` selects deterministically from currently legal candidates.

Behavior cannot select a disabled attack or override a Crystal/terrain/anatomy failure.

## Crystal/mutation

Authority: `CRYSTAL_AND_MUTATION.md`.

Provisional expression: Mineral / Earth-type biological adaptation.

Core Energy is life force. Zero usable Energy means death. Berserk uses percentage-of-Max Energy costs so the first-slice behavior is exact without freezing the final absolute capacity.

## Region 01 relationship

Primary sectors:
S01 River Ford, S02 Rootwood Thicket, S03 Feeding Meadow, S04 Rocky Rise, S05 Deepwood Basin, S06 Nesting Shelf/Crystal Fault.

S00 Field Camp is not a normal activity anchor.

Combat implications:
- Meadow Edge is clearest for Horn Charge;
- Riverbank Ford supports close attacks plus lane-validated charge/sweep;
- Root/Boulder Hollow frequently restricts Charge/Sweep through Narrow/solid geometry;
- Deep Nest Shelf is the strongest Nest Defense/Berserk context;
- physical terrain remains authoritative; High Ground gives no generic damage bonus.

## Package file map

- `README.md` — Monster 01 package front door;
- `ANATOMY_AND_DAMAGE.md` — target groups/break/sever/impairment;
- `COMBAT_ATTACK_PACKET.md` — normal attack definitions;
- `BERSERK_PROTOTYPE_CONTRACT.md` — Berserk entry/Energy/strain/action changes/exit/death;
- `BEHAVIOR_AND_REGION.md` — deterministic activity/combat/retreat/Region 01 selection;
- `CRYSTAL_AND_MUTATION.md` — Crystal/mutation and species energy-expression context.

## Current decision state

RECORDED:
- first-monster body/anatomy/Region relationship;
- deterministic behavior architecture;
- five normal attacks;
- normal AP/Stamina/reaction relationships;
- anatomy-dependent attack loss/change;
- exact first-slice Berserk entry window/pressure predicates;
- entry/activation/attack Core Energy + strain costs;
- Berserk AP discounts without extra attacks/turns;
- critical-exit and zero-Energy death boundary.

OPEN/LATER:
- final name/mass/element naming;
- final Crystal tier/rank/quality and absolute Max Energy;
- final health/damage numbers;
- final species Max Stamina;
- final harvest quantities;
- final art/audio;
- runtime implementation/tests.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`MONSTER_01_COMBAT_RUNTIME_IMPLEMENTED = NO`

## Exact next package dependency

`SOLO_PARTY_BASELINE_CONTRACT`

That next pass is a reusable gameplay/combat participation contract, not another Monster 01-specific attack packet.