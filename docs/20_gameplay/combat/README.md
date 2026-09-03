# 20_gameplay/combat — Tactical Combat Package

Status: ACTIVE DESIGN PACKAGE / SEVEN GENERIC CONTRACTS + MONSTER 01 NORMAL ATTACK/BERSERK CONTENT RECORDED / NO COMBAT IMPLEMENTATION
Last reconciled: 2026-09-03

## Purpose

Own reusable first-person turn-based combat rules. Monster/content packages consume these rules without redefining their timing, resolution, resource or status laws.

The game is the objective. This README maps generic ownership, current content consumers, readiness and exact continuation.

## Generic combat authorities

1. `ACTION_ECONOMY_CONTRACT.md` — 4 AP / 1 RP / persistent Stamina / bounded reactions / one normal activation max.
2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md` — hard legality, AttackControl/DefenseControl, cover, one bounded seeded variance source, hit-quality pipeline.
3. `FIRST_WEAPON_FAMILY_CONTRACT.md` — Field Poleblade.
4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md` — normalized 100-point reference, +10 passive, Catch Breath, movement/reaction/weapon costs.
5. `INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT.md` — deterministic snapshot/no random opener/no ordinary extra turns.
6. `FIRST_SLICE_STATUS_SET_PROTOTYPE_CONTRACT.md` — Bleeding/Staggered/Off-Balance/Braced/Guarded, no independent status RNG.
7. `FIRST_SLICE_TERRAIN_EFFECT_SET_CONTRACT.md` — Stable/Rough/Shallow Water/Mud + Brush/High Ground/Narrow, no terrain slip RNG.

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
- all attacks retain authoritative telegraph/reaction windows;
- no separate status-proc RNG;
- normal attacks do not spend Crystal Energy by default.

### Berserk authority
`BERSERK_PROTOTYPE_CONTRACT.md`.

Selected Berserk content:
- entry Energy window `>20%` and `<=60%` plus deterministic desperation pressure;
- one Berserk episode per hunt until an explicit ecological recovery owner resets it;
- entry consumes full 4-AP activation, 10% Max Core Energy, +20 strain;
- later active activation consumes 5% Max Core Energy +10 strain;
- attack Core surcharges: Charge 5%, Head 2%, Ram 4%, Stomp 2%, Tail 3%;
- Berserk AP: Charge 3, Head 2, Ram 2, Stomp 2, Tail 2;
- existing Stamina costs unchanged;
- still max one damaging attack/activation;
- no Initiative reroll/extra turn;
- no removed reaction windows;
- no anatomy repair/substitution;
- critical when Energy <=12% or strain >=80;
- critical + legal retreat + no Nest Defense exits to `EXHAUSTED_CRITICAL`;
- otherwise Berserk can continue to zero-Energy death.

This is species content, not an eighth generic combat contract.

## Ownership

- Action Economy owns AP/RP/timing.
- Stamina owns Stamina rules/base costs.
- Initiative owns schedule/order.
- Status owner owns status lifetime/stacking/removal.
- Terrain owner owns generic terrain costs/tags.
- Combat Resolution owns contact/defense/cover/hit quality.
- Field Poleblade owns hunter weapon capabilities.
- Monster 01 attack packet owns normal attack profiles/legality.
- Monster 01 Berserk packet owns Berserk state/Energy/strain/action modifiers.
- Monster 01 behavior selects deterministically from legal candidates.
- Region 01 owns physical terrain/cover/clearance placement.

No lower-level content or presentation file may silently override a generic owner.

## Presentation boundary

UI/animation may visualize state/telegraphs/resources/order/status/terrain/Crystal strain but never:
- advances turns;
- spends/refunds AP/RP/Stamina/Core Energy independently;
- duplicates Berserk drain/surcharge;
- rerolls attacks/status/Initiative;
- re-enables destroyed-anatomy attacks;
- changes range/clearance because animation reaches farther;
- creates hidden extra hits/attacks;
- removes a reaction window;
- decides zero-Energy death.

## Current combat-design gate

Recorded generic core:
Action Economy / Resolution / First Weapon / Stamina / Initiative / Status / Terrain.

Recorded first content consumer:
- Monster 01 normal attack packet;
- Monster 01 Berserk prototype.

`COMBAT_DESIGN_READINESS = PARTIAL / SEVEN_GENERIC_CONTRACTS + MONSTER_01_ATTACK + BERSERK_RECORDED`
`COMBAT_IMPLEMENTATION = BLOCKED_BY_READINESS_GATES`

Still required before real combat implementation:
1. `SOLO_PARTY_BASELINE_CONTRACT`;
2. defeat/retreat baseline;
3. prerequisite engine/domain/stats/Crystal/content implementation/tests.

## Exact next bounded dependency

`SOLO_PARTY_BASELINE_CONTRACT`

Keep it limited to first-slice solo-vs-party participation/control/turn ownership. Do not combine it with defeat/retreat resolution or production source.