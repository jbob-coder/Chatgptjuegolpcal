# Hunt-01 Generic Status Timing Runtime

Status: IMPLEMENTED / AUTOMATED VERIFICATION PENDING
Last reconciled: 2026-09-04

Owner: `game/scripts/gameplay/combat/hunt01_status_timing_runtime.gd`.
Schema: `uhr.hunt01.status_timing.v1`.

## Purpose

Execute deterministic lifecycle timing for already-applied status state without owning status qualification, ON_APPLY, AP/RP/Stamina, Initiative order, presentation or unresolved Bleeding damage magnitude.

## Hook ordering

The combat shell exposes one registered status-timing driver. It calls:
- `TURN_START_PRE_RECOVERY` after selecting an eligible activation and before passive Stamina recovery/AP-RP refresh;
- `TURN_END` before the actor's roster slot becomes `ACTED` and before scheduler advancement;
- `ROUND_END` after the current roster is terminal and before the next round is created.

Hook IDs are deterministic and idempotent.

## Off-Balance lifecycle

If `status_off_balance` is active when its target reaches `TURN_START_PRE_RECOVERY`, the status application owner records `expiry_armed_round` for that activation. At the matching `TURN_END`, the timing owner requests one natural removal through the status owner.

Therefore:
- a status applied after TURN_START during an already-running activation cannot expire at that same turn end;
- a skipped/ineligible slot never receives TURN_START and therefore cannot gain free natural recovery;
- duplicate hook delivery cannot remove twice.

## Bleeding cadence boundary

At eligible `ROUND_END`, active Bleeding instances are processed in sorted stable actor/status identity order. No event occurs before `first_tick_round`. At most one event per actor/status/round is emitted.

The emitted event status is `PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE` and records intensity, source identity and round. `health_magnitude_status = NOT_SELECTED_PENDING_AUTHORITY`.

This timing layer does not select or apply periodic HP loss. Exact Bleeding magnitude remains a future content/health-consequence decision.

## Safety boundary

Timing contains no RNG, resource commitment/refresh, Initiative reordering, anatomy mutation, movement, status qualification reroll or presentation-owned gameplay.

Static target: `HUNT01_GENERIC_STATUS_TIMING_SOURCE_STATIC_VERIFIED`.
Headless target: `HUNT01_GENERIC_STATUS_TIMING_RUNTIME_VERIFIED`.
Phone/performance remain deferred.
