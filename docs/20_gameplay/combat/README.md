# 20_gameplay/combat — Tactical Combat Package

Status: ACTIVE DESIGN PACKAGE / EIGHT GENERIC FIRST-SLICE CONTRACTS + MONSTER 01 NORMAL ATTACK/BERSERK CONTENT RECORDED / NO COMBAT IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own reusable first-person turn-based combat rules. Monster/content packages consume these rules without redefining timing, resolution, resource, status, terrain, party-control or scheduler laws.

The game is the objective. This README maps generic ownership, current content consumers, readiness and exact continuation.

## Generic combat authorities

1. `ACTION_ECONOMY_CONTRACT.md` — 4 AP / 1 RP / persistent Stamina / bounded reactions / one normal activation max.
2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md` — hard legality, AttackControl/DefenseControl, cover, one bounded seeded variance source, hit-quality pipeline.
3. `FIRST_WEAPON_FAMILY_CONTRACT.md` — Field Poleblade.
4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md` — normalized 100-point reference, +10 passive, Catch Breath, movement/reaction/weapon costs.
5. `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md` — deterministic snapshot/no random opener/no ordinary extra turns.
6. `FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md` — Bleeding/Staggered/Off-Balance/Braced/Guarded, no independent status RNG.
7. `FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md` — Stable/Rough/Shallow Water/Mud + Brush/High Ground/Narrow, no terrain slip RNG.
8. `SOLO_PARTY_BASELINE_CONTRACT.md` — solo-capable optional parties, max 3 active hunters, player controls only own hunter, deterministic companion behavior/orders, shared scheduler but independent actor resources.

## Solo / party baseline

Selected:
`FIRST_SLICE_PARTY_MODE = SOLO_CAPABLE_WITH_OPTIONAL_COMPANIONS`.

Prototype cap:
`MAX_ACTIVE_HUNTERS_IN_PARTY = 3` = player + up to two companions.

Direct control:
`PLAYER_DIRECT_CONTROL = PLAYER_HUNTER_ONLY`.

Hard party laws:
- no core hunt requires companions;
- every hunter owns separate Health/AP/RP/Stamina/status/position/equipment/Initiative state;
- party members share no AP/RP/Stamina pool;
- all participants use the same deterministic Initiative comparator/RoundRoster;
- allied turns are not grouped automatically;
- each eligible actor gets at most one normal activation per round;
- companions use authored deterministic behavior, not runtime generative AI;
- player may issue at most one successful `ISSUE_COMPANION_ORDER` per own activation for 1 AP;
- order set: Standard / Focus Part / Hold Position / Close Distance;
- orders never bypass target-part, terrain, cover, AP/Stamina, equipment or knowledge legality;
- companion reactions are deterministic and spend that companion's RP/Stamina;
- absent companions do not teleport into an encounter;
- late entrants obey Initiative's next-round rule;
- no mid-combat body switching.

## Monster 01 content consumers

Package:
`/docs/30_content/monsters/MONSTER_01/`.

### Normal attack authority
`COMBAT_ATTACK_PACKET.md`.

Selected attacks:
- Horn Charge 4 AP / 30 Stamina;
- Head Sweep/Gore 2 / 14;
- Shoulder Ram 3 / 22;
- Foreleg Stomp 2 / 12;
- Tail Sweep 3 / 18.

Normal laws:
- internal 4-AP budget;
- max one damaging attack per activation;
- anatomy/range/bearing/clearance/cover are hard legality;
- authoritative telegraph/reaction windows;
- no separate status-proc RNG;
- normal attacks do not spend Crystal Energy by default.

### Berserk authority
`BERSERK_PROTOTYPE_CONTRACT.md`.

Selected Berserk content:
- entry Energy window >20% and <=60% plus deterministic desperation pressure;
- one episode per hunt until explicit ecological reset;
- entry consumes full activation, 10% Max Core Energy, +20 strain;
- later active activation consumes 5% Max Core Energy +10 strain;
- attack Core surcharges: Charge 5%, Head 2%, Ram 4%, Stomp 2%, Tail 3%;
- Berserk AP: 3/2/2/2/2;
- existing Stamina unchanged;
- still max one damaging attack/activation;
- no Initiative reroll/extra turn/reaction removal/anatomy repair;
- critical at Energy <=12% or strain >=80;
- legal retreat + no Nest Defense can exit to `EXHAUSTED_CRITICAL`;
- otherwise zero Core Energy means death.

Monster 01 values remain species content, not generic combat rules.

## Ownership

- Action Economy owns AP/RP/timing.
- Stamina owns Stamina rules/base costs.
- Initiative owns scheduler/order/late-entry/removal slots.
- Status owner owns status lifetime/stacking/removal.
- Terrain owner owns generic terrain costs/tags.
- Combat Resolution owns contact/defense/cover/hit quality.
- Field Poleblade owns hunter weapon capabilities.
- Solo/Party baseline owns first-slice party participation/control/companion-command boundaries.
- Behavior Pattern System owns generic authored deterministic actor behavior architecture.
- Monster 01 attack packet owns normal attack profiles/legality.
- Monster 01 Berserk packet owns Berserk state/Energy/strain/action modifiers.
- Monster 01 behavior selects deterministically from legal candidates.
- Region 01 owns physical terrain/cover/clearance placement.

No lower-level content or presentation file may silently override a generic owner.

## Presentation boundary

UI/animation may visualize state, telegraphs, resources, order, companions, commands, status, terrain and Crystal strain but never:
- advances turns;
- creates/removes actor slots independently;
- spends/refunds AP/RP/Stamina/Core Energy independently;
- selects a companion's authoritative action;
- body-switches because a UI panel changed;
- duplicates command/Berserk costs;
- rerolls attacks/status/Initiative;
- re-enables destroyed-anatomy attacks;
- removes reaction windows;
- decides zero-Energy death.

## Current combat-design gate

Recorded generic first-slice core:
Action Economy / Resolution / First Weapon / Stamina / Initiative / Status / Terrain / Solo-Party Baseline.

Recorded first content consumer:
- Monster 01 normal attack packet;
- Monster 01 Berserk prototype.

`SOLO_PARTY_BASELINE_RECORDED = YES`
`PARTY_RUNTIME_IMPLEMENTED = NO`
`COMBAT_DESIGN_READINESS = PARTIAL / EIGHT_GENERIC_CONTRACTS + MONSTER_01_ATTACK + BERSERK_RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`

Still required before real combat implementation:
1. `DEFEAT_RETREAT_BASELINE_CONTRACT`;
2. prerequisite engine/domain/stats/Crystal/content implementation/tests.

## Exact next bounded dependency

`DEFEAT_RETREAT_BASELINE_CONTRACT`

Keep that pass limited to first-slice defeat/downed/terminal outcome, voluntary retreat/escape, monster defeat/escape, encounter termination, hunt continuation/failure and scheduler/persistence boundaries.

Do not combine it with production implementation, reward-economy expansion or companion relationship systems.
