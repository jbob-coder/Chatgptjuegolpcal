# Hunt-01 Hunter Health / Injury Runtime

Status: IMPLEMENTED / AUTOMATED VERIFICATION PENDING
Last reconciled: 2026-09-04

## Purpose

Consume the first stable `PENDING_HUNTER_HEALTH_INJURY_RUNTIME` transaction exactly once and make incoming Monster contact materially affect Hunter state without pretending prototype balance is final.

Generic owner:
`game/scripts/gameplay/combat/hunt01_hunter_health_injury_runtime.gd`.

Schema:
`uhr.hunt01.hunter_health_injury.v1`.

## Reversible first-slice fixture

`PROVISIONAL_FIRST_SLICE_HUNTER_HEALTH_INJURY_FIXTURE`.

Normalized prototype Max Health:
`100`.

Hit-quality base loads:
- GRAZE `4`;
- SOLID `8`;
- CLEAN `12`.

Residual-force percentages:
- `BLOCK_STRONG` `25%`;
- `BLOCK_PARTIAL` `60%`;
- `BLOCK_BROKEN` `90%`;
- `NO_ACTIVE_GUARD` `100%`.

Applied load is ceiling-rounded, capped by remaining health and health clamps at zero. These are first-slice tuning values only, not final Max Health/damage balance.

## Protection boundary

No authored Hunter gameplay armor profile currently exists. The Hunter visual packet describes clothing/limited plates as art intent but explicitly says gameplay effects come from equipment definitions.

Therefore this slice records:
`PROVISIONAL_NO_AUTHORED_HUNTER_GAMEPLAY_ARMOR_PROFILE_RESIDUAL_FORCE_BASELINE`.

It does not invent protection values from the model.

## Status boundary

The Monster attack packet allows Bleeding only after horn-penetration wound conditions and Off-Balance only for CLEAN impact-dominant contact. The current hostile handoff preserves `PIERCING + IMPACT` channels but does not yet identify dominant channel/confirmed penetration.

Therefore this runtime emits no actual status application request. It may record candidate-only metadata with the missing prerequisite. `status_requests` stays empty until a later layer supplies authoritative wound/channel classification.

## Zero-health boundary

Reaching zero emits:
`PENDING_HUNTER_DEFEAT_OUTCOME_RUNTIME`.

This runtime does not end the encounter, respawn, retreat, drop loot or otherwise implement defeat.

## Integration

The generic defense-consequence owner instantiates this health owner and resolves its health handoff before the defense transaction returns to the Mudcrest attack driver. This keeps the real Head Sweep transaction ordered as:

`CONTACT → DEFENSE/IMPACT → HEALTH/INJURY → reaction close → Monster activation complete`.

The original pending health handoff remains recorded for deterministic replay/readback, while `health_injury_consequence` stores the consumed result.

## Verification target

Static gate:
`HUNT01_HUNTER_HEALTH_INJURY_SOURCE_STATIC_VERIFIED`.

Headless gate:
`HUNT01_HUNTER_HEALTH_INJURY_RUNTIME_VERIFIED`.

The dedicated test must prove real blocked and declined Head Sweep paths, exact first-slice health mutation, replay idempotence, no-injury zero mutation, zero clamp and pending defeat handoff. Android export remains required. Phone/performance remain deferred.