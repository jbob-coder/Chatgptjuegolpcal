# MONSTER_01 — Deterministic Behavior and Region 01 Use

Status: SELECTED FIRST-MONSTER PATTERN DESIGN / EXACT TIMINGS OPEN
Last reconciled: 2026-09-02

## Purpose

Apply the project's deterministic authored-pattern system to the Mudcrest Raker and bind it to the actual Region 01 sector graph.

There is no AI decision system.

## Species behavior identity

The Mudcrest Raker should feel:
- territorial;
- cautious when uninjured and not cornered;
- forceful when defending feeding/rest/nest resources;
- willing to disengage when badly injured if a valid retreat exists;
- increasingly desperate as anatomy/core condition worsens;
- predictable enough that observation and research create advantage.

It should not attack the player simply because both actors exist in the same sector.

## Normal activity patterns

Possible normal state set:
- `RESTING`
- `FORAGING`
- `DRINKING/WALLOWING`
- `MINERAL_RUBBING`
- `TRAVELING`
- `ALERT`
- `TERRITORIAL_WARNING`
- `ENGAGING`
- `WOUNDED_RETREAT`
- `NEST_DEFENSE`
- `BERSERK`
- `EXHAUSTED/CRITICAL`

Exact names may change in implementation.

## Region 01 route anchors

### S01 River Ford / Mud Flats
Uses:
- drinking;
- wallowing/cooling;
- mud-based scent masking/body care candidate;
- strong footprint evidence;
- Mirestep mutation favored route.

### S02 Rootwood Thicket
Uses:
- rooting/foraging;
- scraping/breaking vegetation;
- concealment/ambush-like surprise through occlusion without AI;
- alternate movement loop.

### S03 Feeding Meadow
Uses:
- primary feeding/foraging;
- warning/territorial display;
- long-sightline engagement;
- common first-hunt observation location.

### S04 Rocky Rise
Uses:
- mineral rubbing/scraping;
- territorial marking;
- route to/from deeper areas if body fit/grade supports it;
- high-quality scratch/plate evidence.

### S05 Deepwood Basin
Uses:
- resting;
- route convergence;
- wounded retreat;
- lower-visibility reacquisition.

### S06 Nesting Shelf / Crystal Fault
Uses:
- deep rest/nest;
- strongest territory-defense condition;
- desperation/berserk context;
- mineral/core influence.

### S00 Field Camp
Normal monster rule:
- avoid as a regular activity anchor;
- may approach outer edge only in authored emergency/contract conditions later;
- no routine camp invasion in first slice.

## Example normal schedule/pattern cycle

Not a clock-locked simulation requirement, but a deterministic content pattern can resemble:

```text
IF resting requirement high AND safe → S05/S06 rest
ELSE IF thirst/wallow condition → S01
ELSE IF feeding condition → S03 or S02
ELSE IF mineral-rub condition → S04
ELSE → patrol/travel among valid territory anchors
```

Variation may be seeded from creature instance/day state so the animal is not identical every run while remaining reproducible.

## Player detection / warning

Suggested escalation:

`UNAWARE`
→ `SUSPICIOUS/ALERT`
→ `WARNING DISPLAY`
→ `ENGAGE OR WITHDRAW`

Conditions can include:
- distance;
- line of sight;
- player movement/noise;
- wind/scent if later implemented;
- creature current activity;
- territory importance;
- injury;
- mutation/sensory capabilities.

Do not give omniscient detection.

## Warning behavior

Before some engagements, the Raker may:
- turn front armor/horns toward threat;
- scrape/stamp ground;
- low vocalization;
- short false/partial charge;
- body posture increase;
- move between player and feeding/nest anchor.

This teaches the player the horn/forequarter threat before full combat.

## Combat pattern conditions

Example authored priorities, simplified:

```text
IF core_energy <= 0 → DIE
ELSE IF berserk_active → use berserk profile
ELSE IF severe_injury AND legal_retreat AND not nest_defense → RETREAT
ELSE IF tail_intact AND player_bearing == REAR_OR_FLANK AND tail_attack_ready → TAIL_SWEEP
ELSE IF horn_capability AND player_range == CHARGE_RANGE AND charge_lane_clear → HORN_CHARGE
ELSE IF player_range == CLOSE_FRONT → HEAD_SWEEP / SHOULDER_RAM
ELSE IF player_near_foreleg_zone → STOMP / MUD_SHOVE
ELSE → REPOSITION / WARNING / RECOVER
```

Exact priority order and cooldowns wait for combat-economy work.

## Anatomy-dependent pattern changes

### Horn crest broken
- remove/replace full horn-charge action;
- keep shoulder/body ram if forelegs/body can support it;
- warning display silhouette changes;
- may prefer tail/body defense more often.

### One foreleg severely injured
- charge legality/range reduced or removed depending severity;
- retreat speed reduced;
- turning/brace impaired;
- behavior may prefer defensive orientation/escape.

### Hindleg injury
- retreat/reposition speed reduced;
- tail-sweep setup may become less favorable;
- more stationary defense candidate.

### Tail severed
- tail sweep illegal;
- rear defense weakened;
- behavior should turn front armor toward threat more often where pattern rules specify.

### Dorsal plates broken
- no magical behavioral knowledge required, but pain/vulnerability state can change defensive posture;
- may prioritize keeping exposed side away from threat if species rule explicitly reads injury state.

## Escape selection

When retreat is selected:
1. read current sector;
2. collect legal adjacent sectors from Region 01 topology;
3. filter by body-fit/blocked-route/hazard constraints;
4. apply authored preference weights/priorities;
5. choose deterministic best route/tie rule;
6. persist destination/route intent;
7. exit encounter into the same monster instance in exploration.

Example preferences:
- from S03 Feeding Meadow: prefer S05 Deepwood if heavily wounded; S01/S02 possible under other conditions;
- from S01 River: prefer S02/S03 depending state; Mirestep variant may prefer S01 longer;
- from S05: prefer S06 when critically injured/nest-oriented;
- from S06: fewer retreat options; cornered/nest-defense conditions may increase berserk likelihood.

Do not teleport directly from S03 to S06 if topology does not permit it.

## Tracking evidence emitted by behavior

Activity can create evidence events:
- S01 drinking/wallowing → deep mud prints/water disturbance;
- S02 rooting → uprooted vegetation/root gouges;
- S03 feeding → feeding remains/trampled grass;
- S04 rubbing → horn/plate scratches/mineral flakes;
- travel → footprints/broken brush;
- wounded retreat → blood, changed gait, drag/scuff;
- broken horn/plate event → physical fragment only if global damage/harvest event creates one;
- severed tail → detached tail remains at valid encounter location, not duplicated along escape route.

Evidence remains bounded by cleanup/age rules.

## Berserk pattern

Candidate entry:

```text
IF not berserk_active
AND core_energy > 0
AND severe_pressure
AND (retreat_unavailable OR nest_threatened OR desperation_rule)
THEN enter BERSERK
```

During berserk:
- spend additional core energy/strain;
- prioritize aggressive legal attacks;
- shorten some defensive hesitation;
- retain anatomy restrictions;
- optionally end berserk if energy critical and a retreat becomes available, depending final species rule.

If energy reaches zero, creature dies.

## Exhausted/critical phase

After berserk or severe injury, if still alive:
- slower movement;
- longer recovery;
- reduced charge frequency;
- possible attempt to disengage;
- strong breathing/posture presentation.

This creates a visible consequence rather than endless rage escalation.

## Admin/debug trace requirement

Developer view should show:
- current state;
- current sector/anchor;
- perceived player facts;
- anatomy capability flags;
- core energy/strain;
- valid rules;
- failed rules with reason;
- selected rule/action;
- selected retreat route;
- evidence emitted.

Example:

```text
HORN_CHARGE: FAIL — HORN_CAPABILITY_DISABLED
TAIL_SWEEP: FAIL — TAIL_SEVERED
RETREAT_S05: PASS — severe injury + legal route
BERSERK: FAIL — legal retreat exists
SELECTED: RETREAT_S05
```

## First-slice behavior acceptance

Before adding more monsters, Monster 01 should prove:
- at least three normal activity patterns;
- warning → engagement escalation;
- horn-dependent combat change;
- tail-sever behavior change;
- leg-injury retreat change;
- one legal sector escape/reacquisition chain;
- one berserk entry/energy-drain chain;
- deterministic replay of same state/inputs.
