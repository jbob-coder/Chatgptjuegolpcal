# Hunt-01 Hunter Defense Consequence Runtime

Status: IMPLEMENTED / AUTOMATED VERIFICATION PENDING
Last reconciled: 2026-09-04

## Purpose

Consume the first stable hostile `PENDING_HUNTER_DAMAGE_RUNTIME` transaction without inventing final Hunter health or injury numbers.

Generic owner:
`game/scripts/gameplay/combat/hunt01_hunter_defense_consequence_runtime.gd`.

Schema:
`uhr.hunt01.hunter_defense_consequence.v1`.

## First executable rules

- hostile resolution identity is consumed exactly once and replay/readback is idempotent;
- `NO_CONTACT / MISS` produces zero resource/health consequence;
- `FIELD_POLEBLADE_DIRECTIONAL_GUARD` consumes the already-recorded Head Sweep impact profile separately from the 1 RP / 6 Stamina Block commitment;
- Head Sweep's selected standard impact drain is 10 Stamina;
- impact drain is clamped to available Stamina and cannot create debt;
- the impact spend uses a separate stable zero-RP shell resource transaction keyed to the hostile resolution;
- body contact without active guard applies no Block impact drain and remains pending for the health/injury owner.

## Reversible Block fixture

`PROVISIONAL_FIRST_SLICE_POLEBLADE_BLOCK_OUTCOME_FIXTURE` exists only to make the first hostile defense transaction executable while final Guard Stability/Might/equipment formulas remain open.

Current deterministic mapping after physically legal Block commitment:
- impact drain cannot be fully met → `BLOCK_BROKEN`;
- fully funded `GRAZE` or `SOLID` contact → `BLOCK_STRONG`;
- fully funded `CLEAN` contact → `BLOCK_PARTIAL`.

This mapping is not final balance. It is intentionally isolated behind a named fixture so later validated guard formulas can replace it without changing transaction identity or resource ownership.

## Downstream boundary

Any body contact still emits:
`PENDING_HUNTER_HEALTH_INJURY_RUNTIME`.

This layer does not select:
- Hunter Max Health;
- final health damage amount;
- wound severity;
- Bleeding/Off-Balance/Staggered application;
- forced movement;
- armor values;
- final Block balance;
- Dodge/Parry/Brace outcomes.

## Verification target

Static gate:
`HUNT01_HUNTER_DEFENSE_CONSEQUENCE_SOURCE_STATIC_VERIFIED`.

Headless gate:
`HUNT01_HUNTER_DEFENSE_CONSEQUENCE_RUNTIME_VERIFIED`.

The dedicated headless test must prove the real Head Sweep Block path, 6-Stamina commitment + 10-Stamina impact separation, Round-3 recovery from the resulting reserve, stable replay/no double drain, and no-contact zero consequence. Android export remains required. Phone/performance remain deferred.
