# MONSTER_01 — Deterministic Behavior and Region 01 Use

Status: SELECTED FIRST-MONSTER PATTERN DESIGN / NORMAL ATTACK + BERSERK OWNERS LINKED / NO IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Apply deterministic authored-pattern behavior to the Mudcrest Raker and bind it to Region 01 while delegating attack legality and Berserk mechanics to their owning Monster 01 contracts.

There is no runtime generative AI decision system.

## Ownership boundary

This file owns:
- activity/territorial/combat/retreat state selection;
- deterministic rule priorities;
- Region 01 route/context use;
- selection from currently legal action candidates.

`COMBAT_ATTACK_PACKET.md` owns:
- normal attack IDs;
- anatomy/range/bearing/clearance legality;
- AP/Stamina commitments;
- telegraph/reaction compatibility;
- terrain/cover constraints;
- status consequence requests;
- guard-impact drains.

`BERSERK_PROTOTYPE_CONTRACT.md` owns:
- Berserk entry gates;
- Core Energy/strain costs;
- Berserk AP modifiers;
- episode-used persistence;
- critical-exit/death rules.

Behavior cannot override either owner's hard legality.

## Species behavior identity

The Mudcrest Raker is:
- territorial;
- cautious when healthy and not cornered;
- forceful near feeding/rest/nest resources;
- willing to retreat when badly injured and a legal route exists;
- increasingly desperate under anatomy/Core pressure;
- readable/predictable enough for observation and knowledge to matter.

## Normal activity states

Authoring state set:
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

## Region 01 anchors

### S01 River Ford / Mud Flats
Drinking/wallowing, strong evidence, wet/mud-adapted movement, close combat with lane-validated Charge/Sweep.

### S02 Rootwood Thicket
Rooting/foraging, vegetation evidence, occlusion and frequent Narrow/solid-root attack restrictions.

### S03 Feeding Meadow
Primary feeding/warning/long-sight engagement and clearest Horn Charge proving ground.

### S04 Rocky Rise
Mineral rubbing/marking/observation where body fit permits.

### S05 Deepwood Basin
Rest, route convergence, wounded retreat/reacquisition.

### S06 Nesting Shelf / Crystal Fault
Deep rest/nest, strongest territory-defense pressure and primary Nest Defense Berserk context.

### S00 Field Camp
Not a normal activity anchor.

## Normal activity priority

```text
IF resting_requirement_high AND safe → S05/S06 REST
ELSE IF thirst/wallow_condition → S01
ELSE IF feeding_condition → S03 or S02
ELSE IF mineral_rub_condition → S04
ELSE → deterministic legal territory travel
```

Seeded per-instance/day variation may select among equivalent authored options only when reproducibility remains intact.

## Detection/warning escalation

`UNAWARE → ALERT → WARNING DISPLAY → ENGAGE OR WITHDRAW`.

Inputs include distance, line of sight, player noise/movement, activity, territory importance, injury, sensory capability and legal routes.

No omniscient detection.

Warning actions may orient horns/front armor, scrape/stamp, vocalize, display a false/partial charge or interpose between hunter and important territory.

Warning presentation does not resolve damage.

## Normal combat candidate selection

Legal damaging attack IDs come only from `COMBAT_ATTACK_PACKET.md`:
- `M01_HORN_CHARGE`;
- `M01_HEAD_SWEEP_GORE`;
- `M01_SHOULDER_RAM`;
- `M01_FORELEG_STOMP`;
- `M01_TAIL_SWEEP`.

Non-Berserk conceptual priority:

```text
IF core_energy <= 0 → DIE
ELSE IF berserk_active → use Berserk branch below
ELSE IF severe_injury AND legal_retreat AND NOT nest_defense → WOUNDED_RETREAT
ELSE IF Berserk entry gate passes → M01_ENTER_BERSERK
ELSE IF rear/flank threat + Tail Sweep legal → TAIL_SWEEP
ELSE IF charge range/front lane + Charge legal → HORN_CHARGE
ELSE IF close front + Head Sweep legal → HEAD_SWEEP_GORE
ELSE IF close body-force + Ram legal → SHOULDER_RAM
ELSE IF close local foreleg threat + Stomp legal → FORELEG_STOMP
ELSE → REPOSITION / WARNING / RECOVER
```

The Berserk entry gate is evaluated deterministically through `BERSERK_PROTOTYPE_CONTRACT.md`; behavior does not roll for it.

## Berserk branch

When `berserk_active == true`, first evaluate the owner contract's critical-exit/death rules.

If Berserk remains active, behavior filters all attacks through normal attack legality and then uses:

```text
IF rear/flank threat AND Tail Sweep legal → M01_TAIL_SWEEP
ELSE IF front-lane Charge legal → M01_HORN_CHARGE
ELSE IF close front/front-flank Ram legal → M01_SHOULDER_RAM
ELSE IF close Head Sweep legal → M01_HEAD_SWEEP_GORE
ELSE IF side-specific Stomp legal → M01_FORELEG_STOMP
ELSE → aggressive legal reposition toward an existing legal attack
```

Berserk suppresses ordinary Wounded Retreat while active except when the owner contract's critical-exit rule explicitly ends Berserk.

No random weighted attack chooser is added.

## Berserk entry facts consumed by behavior

Behavior supplies/reuses these authoritative facts for the owner contract:
- legal-retreat result after Region/body-fit filtering;
- active Nest Defense context;
- major anatomy capability-loss facts;
- current/max Core Energy;
- episode-used/active flags;
- terminal/alive state.

`PRESSURE_SEVERE_ANATOMY` means at least two major capability losses as defined by `BERSERK_PROTOTYPE_CONTRACT.md`, not one ordinary wound.

## Anatomy-dependent behavior changes

### Horn damage
If full Horn Charge capability is lost:
- remove Horn Charge candidate;
- hornless Head Sweep variant remains where legal;
- behavior considers Ram/Stomp/Tail/reposition.

### Foreleg severe damage
- Charge/Ram legality changes through attack packet;
- damaged-side Stomp is removed;
- retreat/body-fit may also degrade.

### Hindleg damage
- retreat/reposition/pivot can degrade;
- Tail Sweep can become illegal if pivot capability fails.

### Tail sever
- Tail Sweep becomes illegal immediately;
- no tail hitbox/action remains;
- behavior may orient the forequarter toward rear pressure when a rule supports it.

### Dorsal plate break
Does not grant omniscient tactical knowledge. Any posture change must read explicit injury state.

Berserk never reverses any of these facts.

## Terrain/cover inputs

Behavior reads the same authoritative geometry used by attack legality:
- no Charge through a solid root/boulder;
- no Tail Sweep where the arc cannot clear;
- Brush is not physical cover;
- High Ground is not a generic damage/aggression bonus;
- Mud/Shallow Water add no random slip behavior.

## Escape selection

When Wounded Retreat is selected:
1. read current sector;
2. collect legal adjacent Region 01 sectors;
3. filter body fit/blocked route/hazard/anatomy mobility;
4. apply authored preferences;
5. deterministic tie resolution;
6. persist route intent;
7. leave encounter as the same monster instance.

Berserk critical exit may transition to `EXHAUSTED_CRITICAL`; exact defeat/retreat resolution remains a later contract and is not invented here.

## Tracking evidence

Activity can emit bounded evidence:
- S01 wallowing → prints/water disturbance;
- S02 rooting → uprooted vegetation/root gouges;
- S03 feeding → remains/trampled grass;
- S04 rubbing → horn/plate scratches/mineral flakes;
- travel → footprints/broken brush;
- wounded retreat → blood/scuff/changed gait.

Detached/broken parts exist only when anatomy/harvest events create them and are never duplicated along routes.

## Persistence

Persistent Monster 01 state includes, as applicable:
- sector/route intent;
- anatomy capability state;
- Core Energy/strain;
- Berserk active/episode-used state;
- injury/status state;
- emitted evidence references.

Encounter/camera/save reload cannot reset Berserk episode-used or restore lost anatomy.

## Debug trace requirement

Trace should show:
- current state/sector;
- sensed player facts;
- anatomy capability flags;
- terrain/cover/clearance facts;
- Core Energy/ratio/strain;
- Berserk pressure/gate facts;
- considered action rules with PASS/FAIL reason;
- selected action/route;
- evidence emitted.

Example:

```text
BERSERK_ENTRY: PASS — ENERGY 43% + RETREAT_DENIED
M01_ENTER_BERSERK: SELECTED
NEXT ROUND:
M01_HORN_CHARGE: FAIL — HORN_CHARGE_CAPABILITY_DISABLED
M01_TAIL_SWEEP: PASS
SELECTED: M01_TAIL_SWEEP
```

## First-slice acceptance

Before adding more monsters, Monster 01 should eventually prove:
- normal activity patterns/warning escalation;
- all five attack legality profiles;
- anatomy-driven attack loss/change;
- Region escape/reacquisition;
- exact Berserk entry/Energy/strain/critical-exit chain;
- same-state deterministic replay.

`MONSTER_01_ATTACK_PACKET_RECORDED = YES`
`MONSTER_01_BERSERK_PROTOTYPE_RECORDED = YES`
`BEHAVIOR_RUNTIME_IMPLEMENTED = NO`

## Exact next dependency

`SOLO_PARTY_BASELINE_CONTRACT`.