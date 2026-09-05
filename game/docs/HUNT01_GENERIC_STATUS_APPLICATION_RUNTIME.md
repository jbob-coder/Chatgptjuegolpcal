# Hunt-01 Generic Status Application Runtime

Status: IMPLEMENTED / AUTOMATED VERIFICATION PENDING
Last reconciled: 2026-09-04

## Purpose

Consume an already-valid content-owned status application request and mutate one authoritative generic combat status instance exactly once. This layer never decides whether a hit/wound qualified for a status.

Owner:
`game/scripts/gameplay/combat/hunt01_status_application_runtime.gd`.

Schema:
`uhr.hunt01.status_application.v1`.

Input schema:
`uhr.status_application_request.v1` with consumer `PENDING_GENERIC_STATUS_APPLICATION_RUNTIME`.

## Current supported definitions

### `status_bleeding`

- category `PERSISTENT_PHYSICAL_CONDITION`;
- stack rule `STACK_INTENSITY_CAPPED`;
- maximum intensity `3`;
- one actor-level instance;
- first application at round `R` records `first_tick_round = R + 1`;
- reapplications increase intensity only up to 3 and do not move the original first eligible tick;
- periodic hook is recorded as `ROUND_END`, but execution remains `PENDING_STATUS_TIMING_RUNTIME`.

### `status_off_balance`

- category `TEMPORARY_STABILITY_CONDITION`;
- stack rule `REFRESH_DURATION`;
- one actor-level instance;
- reapplication refreshes `last_application_round` without intensity stacking;
- natural expiry metadata records `TURN_END` after the target completes its next normal activation;
- actual expiry/Brace interaction remains `PENDING_STATUS_TIMING_RUNTIME` / later action integration.

## Deterministic transaction law

A request must already be marked `VALID_STATUS_APPLICATION_REQUEST`, carry the selected request schema, stable request/source/target identity, trigger `ON_HIT_OR_DAMAGE_CONSEQUENCE`, and route to the generic status consumer.

The first accepted request ID commits one `STATUS_ON_APPLY_COMMITTED` transaction. Re-reading the same request ID returns `STATUS_APPLICATION_READBACK_IDEMPOTENT` and cannot increase intensity, refresh duration twice or emit another ON_APPLY trace.

No independent random status proc exists.

## Integration

The Mudcrest Head Sweep wound/contact classifier remains the content qualification owner. It creates/reuses one `StatusApplicationRuntime` node under the authoritative combat shell and synchronously dispatches only qualified requests. The generic owner does not inspect hit quality, penetration or impact dominance to invent its own requests.

Strong Block/no-contact/no-wound paths emit no request and therefore create no status state.

## Persistence continuity boundary

`get_persistence_snapshot()` exports current generic status instances plus consumed request transactions. `restore_persistence_snapshot()` rehydrates that state into an empty initialized owner without replaying ON_APPLY.

This is an in-memory deterministic continuity contract for future save integration. It is not the game's persistence/save-file system.

## Explicitly deferred

This layer does not execute:
- Bleeding periodic Health consequences;
- `ROUND_END` scheduling;
- `TURN_START_PRE_RECOVERY` Staggered transitions;
- Off-Balance `TURN_END` natural removal;
- deliberate Brace removal/application integration;
- Guarded/Braced/Staggered producers;
- final status resistance/immunity values;
- AP/RP/Stamina refresh/spend;
- Initiative edits;
- structural break/sever, defeat or harvest.

## Verification target

Static gate:
`HUNT01_GENERIC_STATUS_APPLICATION_SOURCE_STATIC_VERIFIED`.

Headless gate:
`HUNT01_GENERIC_STATUS_APPLICATION_RUNTIME_VERIFIED`.

The dedicated production test must prove real Head Sweep → Bleeding integration, zero status on Strong Block, stable ID lookup, capped intensity, Off-Balance refresh metadata, duplicate request idempotence, no Health/resource/anatomy mutation from synthetic status applications, persistence rehydrate without ON_APPLY replay and unchanged prior combat regressions. Android export remains required. Phone/performance remain deferred.
