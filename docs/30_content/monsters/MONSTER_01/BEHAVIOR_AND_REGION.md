# MONSTER_01 — Deterministic Behavior and Region 01 Use

Status: SELECTED FIRST-MONSTER PATTERN DESIGN / NORMAL ATTACK LEGALITY LINKED / BERSERK DETAIL NEXT / NO IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Apply deterministic authored-pattern behavior to the Mudcrest Raker and bind it to Region 01 while using `COMBAT_ATTACK_PACKET.md` as the authority for concrete normal attack legality/profiles.

There is no runtime generative AI decision system.

## Ownership boundary

This file owns:
- activity/territorial/combat/retreat state selection;
- deterministic rule priorities;
- Region 01 route/context use;
- which currently legal action candidate behavior selects.

`COMBAT_ATTACK_PACKET.md` owns:
- normal attack IDs;
- anatomy/capability requirements;
- AP/Stamina commitments;
- range/bearing/clearance legality;
- telegraph/reaction compatibility;
- terrain/cover constraints;
- status consequence requests;
- guard-impact drains.

Behavior cannot override attack illegality.

## Species behavior identity

The Mudcrest Raker is:
- territorial;
- cautious when healthy and not cornered;
- forceful around feeding/rest/nest resources;
- willing to retreat when badly injured and a legal route exists;
- increasingly desperate under severe injury/core strain;
- predictable enough that observation and knowledge matter.

It should not attack merely because player and monster share a sector.

## Normal activity states

Candidate authored states:
- `RESTING`;
- `FORAGING`;
- `DRINKING_WALLOWING`;
- `MINERAL_RUBBING`;
- `TRAVELING`;
- `ALERT`;
- `TERRITORIAL_WARNING`;
- `ENGAGING`;
- `WOUNDED_RETREAT`;
- `NEST_DEFENSE`;
- `BERSERK`;
- `EXHAUSTED_CRITICAL`.

Berserk's exact entry/drain/action-profile changes are not defined here yet; the next bounded packet owns them.

## Region 01 route anchors

### S01 River Ford / Mud Flats
- drinking/wallowing;
- strong footprint evidence;
- wet/mud-adapted movement context;
- viable close combat with only lane-validated Charge/Sweep.

### S02 Rootwood Thicket
- rooting/foraging;
- vegetation evidence;
- occlusion/constrained routes;
- frequent `NARROW`/solid-root restrictions on charge/sweep.

### S03 Feeding Meadow
- primary feeding;
- warning/territorial display;
- long-sight engagement;
- clearest `M01_HORN_CHARGE` proving ground.

### S04 Rocky Rise
- mineral rubbing/marking;
- observation route where body fit allows;
- hard-ground evidence.

### S05 Deepwood Basin
- rest;
- route convergence;
- wounded retreat/reacquisition.

### S06 Nesting Shelf / Crystal Fault
- deep rest/nest;
- strongest territory-defense context;
- later berserk/desperation context.

### S00 Field Camp
Not a normal activity anchor.

## Normal deterministic activity pattern

Conceptual authored priority:

```text
IF resting_requirement_high AND safe → S05/S06 REST
ELSE IF thirst/wallow_condition → S01
ELSE IF feeding_condition → S03 or S02
ELSE IF mineral_rub_condition → S04
ELSE → deterministic legal territory travel
```

Seeded per-instance/day variation may choose among equivalent authored options if reproducibility is preserved.

## Detection and warning escalation

`UNAWARE → ALERT → WARNING DISPLAY → ENGAGE OR WITHDRAW`.

Inputs can include:
- distance;
- line of sight;
- player movement/noise;
- activity;
- territory importance;
- injury;
- sensory mutation/capability;
- legal escape/approach routes.

No omniscient detection.

Warning actions can include:
- orient horns/front armor to threat;
- scrape/stamp;
- vocalize;
- partial/false charge display;
- interpose body between hunter and nest/feeding anchor.

Warning presentation does not resolve damage.

## Normal combat action candidates

Concrete attack authority:
`COMBAT_ATTACK_PACKET.md`.

Legal normal damaging IDs:
- `M01_HORN_CHARGE`;
- `M01_HEAD_SWEEP_GORE`;
- `M01_SHOULDER_RAM`;
- `M01_FORELEG_STOMP`;
- `M01_TAIL_SWEEP`.

Behavior also may choose non-damaging authored actions such as reposition/warning/recovery/retreat when those owners define them.

## First-slice non-berserk selection philosophy

This file does not add a random weighted attack chooser.

Conceptual deterministic priority:

```text
IF core_energy <= 0 → DIE
ELSE IF berserk_active → USE BERSERK PROFILE (next packet owns exact rules)
ELSE IF severe_injury AND legal_retreat AND NOT nest_defense → RETREAT
ELSE collect currently legal normal attack candidates from COMBAT_ATTACK_PACKET
ELSE select highest-priority authored candidate for current range/bearing/territory/anatomy state
ELSE REPOSITION / WARNING / RECOVER
```

Within normal attack candidates, a first-slice priority can use the existing ecological/combat identity:
1. rear/flank threat + legal Tail Sweep → prefer `M01_TAIL_SWEEP`;
2. charge range/front lane + full charge capability → prefer `M01_HORN_CHARGE`;
3. close front with horn/head legality → `M01_HEAD_SWEEP_GORE`;
4. close body-force opportunity + ram capability → `M01_SHOULDER_RAM`;
5. close local foreleg threat + side-specific functional foreleg → `M01_FORELEG_STOMP`;
6. otherwise reposition/warn/recover.

This priority is a prototype authored order, not an animation script. A candidate that fails attack legality is skipped with a trace reason.

## Attack-repeat safeguard

Monster 01's attack packet allows at most one damaging attack per normal activation.

Therefore behavior cannot chain two damaging candidates merely because AP remains.

No hidden animation combo or reaction grants another normal attack.

## Anatomy-dependent selection changes

### Horn damage
If full horn-charge capability is lost:
- `M01_HORN_CHARGE` is removed from legal candidates;
- `M01_HEAD_SWEEP_GORE` may degrade to hornless impact Head Sweep when both horns are broken;
- behavior naturally considers Ram/Stomp/Tail/reposition instead.

### Foreleg severe damage
- full Horn Charge/Ram capability changes according to attack packet;
- selected damaged-side Stomp is illegal;
- retreat/turning confidence may reduce through explicit authored rules.

### Hindleg damage
- route/retreat/pivot capability can degrade;
- Tail Sweep may become illegal if pivot capability fails.

### Tail sever
- `M01_TAIL_SWEEP` becomes illegal immediately;
- behavior should orient front armor/horns toward rear pressure when an authored rule calls for it;
- no tail hitbox remains.

### Dorsal plate break
- does not create omniscient behavior;
- explicit pain/vulnerability posture rules may read known anatomy state if authored.

## Terrain and cover decision inputs

Behavior reads the same authoritative geometry used by attack legality.

Examples:
- do not select Horn Charge if a solid root/boulder blocks the lane;
- do not select Tail Sweep in a narrow arc the tail cannot clear;
- do not assume Brush is physical cover;
- do not apply a generic High-Ground aggression/damage bonus;
- Mud/Shallow Water do not cause random behavior slips.

## Escape selection

When retreat is selected:
1. read current sector;
2. collect legal adjacent sectors from Region 01 topology;
3. filter by body-fit/blocked-route/hazard/anatomy mobility constraints;
4. apply authored preference rules;
5. use deterministic tie resolution;
6. persist route intent;
7. leave combat into the same persistent monster instance.

Example preferences remain:
- S03 heavily wounded → prefer S05 when legal;
- S01 → S02/S03 depending state;
- S05 critically injured/nest-oriented → S06;
- S06 has fewer exits and stronger nest-defense/desperation context.

No topology-breaking teleport.

## Tracking evidence emitted

- S01 drinking/wallowing → deep prints/water disturbance;
- S02 rooting → uprooted vegetation/root gouges;
- S03 feeding → remains/trampled grass;
- S04 rubbing → horn/plate scratches/mineral flakes;
- travel → footprints/broken brush;
- wounded retreat → blood/scuff/changed gait;
- broken/severed part event → physical fragment/source only if anatomy/harvest event creates it.

Detached tail is never duplicated along the escape route.

## Berserk boundary

Current behavior recognizes only the abstract `berserk_active` branch.

Exact entry conditions, Crystal Energy drain, visible tell, attack commitment/priority changes, stop/critical/death behavior are intentionally deferred to:
`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`.

Berserk may not:
- restore broken horns;
- regrow tail;
- restore disabled leg capability;
- bypass physical cover/clearance;
- create extra normal turns silently.

## Debug trace requirement

Developer trace must show:
- current state/sector;
- sensed player facts;
- anatomy capability flags;
- terrain/cover/clearance facts;
- core Energy/strain when relevant;
- each considered rule/action;
- pass/fail reason;
- final selected action/retreat route;
- evidence emitted.

Example:

```text
M01_HORN_CHARGE: FAIL — HORN_CHARGE_CAPABILITY_DISABLED
M01_TAIL_SWEEP: FAIL — TAIL_DISTAL_SEVERED
M01_SHOULDER_RAM: FAIL — NARROW_CLEARANCE
M01_FORELEG_STOMP: PASS — RIGHT_FORELEG_FUNCTIONAL + TARGET_CLOSE_RIGHT
SELECTED: M01_FORELEG_STOMP
```

## First-slice acceptance

Before adding more monsters, Monster 01 should eventually prove:
- at least three normal activity patterns;
- warning → engagement escalation;
- all five normal attack legality profiles;
- horn-dependent attack loss/change;
- tail-sever attack loss;
- leg-injury attack/retreat change;
- one legal sector escape/reacquisition chain;
- one later berserk entry/drain chain;
- deterministic replay for identical authoritative state/seed.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`BEHAVIOR_RUNTIME_IMPLEMENTED = NO`

## Exact next dependency

`MONSTER_01_BERSERK_PROTOTYPE_CONTRACT`.