# Hunt-01 Generic Status Application Runtime

Status: IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED
Last reconciled: 2026-09-04

## Purpose

Consume already-valid content-owned status application requests and mutate authoritative generic combat status instances exactly once. This layer never decides whether a hit/wound qualified.

Owner: `game/scripts/gameplay/combat/hunt01_status_application_runtime.gd`.
Schema: `uhr.hunt01.status_application.v1`.
Input: `uhr.status_application_request.v1`, consumer `PENDING_GENERIC_STATUS_APPLICATION_RUNTIME`.

## Verified behavior

`status_bleeding`: actor-level `STACK_INTENSITY_CAPPED`, max 3, first application records `first_tick_round = R + 1`, later applications cannot move that original first eligible tick. Periodic hook metadata is `ROUND_END` / `PENDING_STATUS_TIMING_RUNTIME`.

`status_off_balance`: actor-level `REFRESH_DURATION`, one instance, reapplication updates last-application state without intensity stacking. Natural expiry metadata is `TURN_END` after the target completes its next normal activation, still pending the timing owner.

Each stable application request ID commits ON_APPLY once. Re-read returns `STATUS_APPLICATION_READBACK_IDEMPOTENT` without another stack/refresh/trace event.

In-memory persistence snapshot/rehydration preserves instances and consumed request identity without replaying ON_APPLY. This is a continuity contract, not the final game save system.

The owner has no status proc RNG and does not spend/refresh AP/RP/Stamina, reorder Initiative, mutate Hunter Health/anatomy, move actors or give presentation gameplay authority.

## Integration

Mudcrest wound/contact classification remains species/content-owned. It creates/reuses one generic status application node under the combat shell and dispatches only qualified requests. Strong Block/no-contact/no-wound paths produce no status state.

## Verification evidence

Implementation `6c9fc8592ce0de769f213790cc0e3e0a8ff95fdc`.
Workflow `33936580266`: SUCCESS.
Job `101225581109`: SUCCESS.
Static gate `HUNT01_GENERIC_STATUS_APPLICATION_SOURCE_STATIC_VERIFIED`.
Headless gate `HUNT01_GENERIC_STATUS_APPLICATION_RUNTIME_VERIFIED`.
Artifact `9960395435`: `UnnamedHuntRPG-Hunt01-StatusApplication-debug`, 57,410,444 bytes, SHA-256 `4606069697c5ae9128acf27ddad65724613ad8e83d53e8791a292339c8b0b15f`.

The same run passed all preceding production regressions plus Android export/upload.

## Deferred boundary

This layer does not execute Bleeding periodic Health consequences, ROUND_END scheduling, TURN_START_PRE_RECOVERY transitions, Off-Balance natural removal, deliberate Brace integration, Guarded/Braced/Staggered producers, structural damage, defeat or harvest.

Phone acceptance and sustained performance remain deferred/not verified.
