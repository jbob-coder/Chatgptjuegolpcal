# MONSTER_01 — Mudcrest Raker

Status: SELECTED FIRST-MONSTER PROTOTYPE DESIGN / NORMAL ATTACK + BERSERK + ESCAPE/DEFEAT LINKS RECORDED / DISPLAY NAME PROVISIONAL / NO IMPLEMENTATION
Last reconciled: 2026-09-03

## Identity

Technical package ID: `MONSTER_01`
Provisional species ID: `species_r01_mudcrest_raker`
Working display name: **Mudcrest Raker**

The display name can change. Stable package/species IDs and the current mechanical body design are the authority.

## Why this is the first monster

Monster 01 proves the core hunt systems with one coherent animal rather than an exception-heavy boss.

It must demonstrate:
- Region 01 ecology/tracking/escape;
- deterministic authored behavior;
- horn break, plate break, leg impairment and distal-tail sever;
- anatomy-dependent attack loss/change;
- terrain/cover-aware first-person combat;
- Crystal life-force desperation Berserk;
- persistent Monster state through escape/reacquisition;
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
- four robust mud-adapted legs;
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

Selected damaging attacks:
- `M01_HORN_CHARGE` — 4 AP / 30 Stamina;
- `M01_HEAD_SWEEP_GORE` — 2 / 14;
- `M01_SHOULDER_RAM` — 3 / 22;
- `M01_FORELEG_STOMP` — 2 / 12;
- `M01_TAIL_SWEEP` — 3 / 18.

Normal laws:
- one normal activation per round;
- internal 4-AP budget;
- maximum one damaging attack per activation;
- persistent Stamina;
- no normal attack spends Crystal Energy by default;
- no hidden multiattack/status-proc RNG;
- lost anatomy removes/changes dependent attacks.

## Berserk prototype

Authority: `BERSERK_PROTOTYPE_CONTRACT.md`.

Berserk is a one-episode-per-hunt desperation state that spends Crystal life force for increased commitment/aggression.

Selected entry:
- `core_energy_ratio >0.20` and `<=0.60`;
- plus Retreat Denied, Nest Defense or Severe Anatomy pressure;
- no HP-only/random trigger.

Entry:
- full 4-AP activation;
- no attack same activation;
- 10% Max Core Energy;
- +20 strain;
- visible telegraph.

Later active activation:
- 5% Max Core Energy;
- +10 strain.

Attack Core surcharges:
- Charge 5%; Head 2%; Ram 4%; Stomp 2%; Tail 3%.

Berserk AP:
- Charge 3; Head 2; Ram 2; Stomp 2; Tail 2.

Existing Stamina remains unchanged.

Hard laws:
- still max one damaging attack/activation;
- no extra turns/Initiative reroll;
- no reaction-window removal;
- no anatomy repair/substitution;
- normal terrain/cover/range/status legality remains;
- zero Core Energy means death.

Critical:
`core_energy_ratio <=0.12 OR core_strain >=80`.

Critical + legal retreat + no active Nest Defense exits Berserk to `EXHAUSTED_CRITICAL`; otherwise the Raker may continue burning life force.

## Deterministic behavior / Region 01

Authority: `BEHAVIOR_AND_REGION.md`.

There is no runtime generative AI decision system.

Ownership:
- `COMBAT_ATTACK_PACKET.md` owns normal attack legality/profile;
- `BERSERK_PROTOTYPE_CONTRACT.md` owns Berserk state/cost/action modifiers;
- `BEHAVIOR_AND_REGION.md` selects deterministic legal actions and retreat routes;
- `/docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md` owns final Monster escape/encounter outcome.

Behavior cannot bypass attack/Crystal/terrain/anatomy/outcome legality.

## Escape / reacquisition integration

When behavior selects Wounded Retreat or Exhausted Critical retreat:
1. choose a legal Region route deterministically;
2. obey body-fit/anatomy/terrain blockers;
3. move through current encounter/world space;
4. at a legal Monster escape boundary request `MONSTER_WITHDRAW_FROM_ENCOUNTER` through the generic Defeat/Retreat owner.

Successful escape:
- outcome `MONSTER_ESCAPED`;
- hunt state `HUNT_ACTIVE_REACQUIRE`;
- same Monster instance persists;
- anatomy/injury/Core/Berserk/status/route intent persist;
- tracking evidence can continue from behavior/world state.

No fresh uninjured replacement Monster is spawned.

## Death / harvest handoff

Crystal/body death ownership remains authoritative.

Current hard example:
`core_energy_current <=0 -> creature death`.

On death:
- final anatomy/detached-part condition is preserved;
- combat outcome becomes Monster-dead through the generic Defeat/Retreat owner;
- later harvest systems read that physical state rather than spawning disconnected loot.

The next independent gameplay contract will define finite harvest capacity/condition. This Monster package does not invent those generic formulas.

## Crystal/mutation

Authority: `CRYSTAL_AND_MUTATION.md`.

Provisional expression: Mineral / Earth-type biological adaptation.

Core Energy is life force. Berserk uses percentage-of-Max costs so behavior is exact without freezing final absolute capacity.

## Region 01 relationship

Primary sectors:
S01 River Ford, S02 Rootwood Thicket, S03 Feeding Meadow, S04 Rocky Rise, S05 Deepwood Basin, S06 Nesting Shelf/Crystal Fault.

S00 Field Camp is not a normal activity anchor.

Combat implications:
- Meadow Edge is clearest for Horn Charge;
- Riverbank Ford supports close attacks plus lane-validated charge/sweep;
- Root/Boulder Hollow often restricts Charge/Sweep through Narrow/solid geometry;
- Deep Nest Shelf is strongest Nest Defense/Berserk context;
- physical terrain remains authoritative; High Ground gives no generic damage bonus.

## Package file map

- `README.md` — Monster 01 package front door;
- `ANATOMY_AND_DAMAGE.md` — target groups/break/sever/impairment;
- `COMBAT_ATTACK_PACKET.md` — normal attack definitions;
- `BERSERK_PROTOTYPE_CONTRACT.md` — Berserk entry/Energy/strain/action changes/exit/death;
- `BEHAVIOR_AND_REGION.md` — deterministic activity/combat/retreat/Region 01 selection;
- `CRYSTAL_AND_MUTATION.md` — Crystal/mutation and species energy context.

Generic cross-package outcome authority:
`/docs/20_gameplay/combat/DEFEAT_RETREAT_BASELINE_CONTRACT.md`.

## Current decision state

RECORDED:
- first-monster body/anatomy/Region relationship;
- deterministic behavior architecture;
- five normal attacks;
- normal AP/Stamina/reaction relationships;
- anatomy-dependent attack loss/change;
- first-slice Berserk entry/Energy/strain/AP/critical rules;
- deterministic retreat route ownership;
- generic Monster escape/reacquisition and death-to-harvest handoff.

OPEN/LATER:
- final name/mass/element naming;
- final Crystal tier/rank/quality and absolute Max Energy;
- final health/damage numbers;
- final species Max Stamina;
- final harvest quantities/capacity application — next gameplay layer;
- final art/audio;
- runtime implementation/tests.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`DEFEAT_RETREAT_BASELINE_RECORDED = YES`
`MONSTER_01_COMBAT_RUNTIME_IMPLEMENTED = NO`.

## Current next independent game dependency

`FIRST_SLICE_HARVEST_CAPACITY_AND_CONDITION_CONTRACT`.

That next contract belongs to reusable gameplay/harvest ownership and will consume this package's real anatomy state.