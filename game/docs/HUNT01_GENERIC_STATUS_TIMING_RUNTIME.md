# Hunt-01 Generic Status Timing Runtime

Status: IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED
Last reconciled: 2026-09-05

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

Timing contains no RNG, resource commitment/refresh, Initiative reordering, anatomy mutation, movement, status qualification reroll or presentation-owned gameplay. The final timing regression also verifies that periodic timing does not mutate Hunter Health while ordinary Head Sweep health resolution continues independently.

## Verification evidence

Implementation commit:
`d981b664ae603cfeacde0892f2891eae10ae612d`.

Same-layer QA repair / verified source head:
`57c205e1b2fb1fc69219f44033ef527ea756a353`.

Static target:
`HUNT01_GENERIC_STATUS_TIMING_SOURCE_STATIC_VERIFIED`.

Headless target:
`HUNT01_GENERIC_STATUS_TIMING_RUNTIME_VERIFIED`.

Production workflow `33937504389`: SUCCESS.
Job `101228175010`: SUCCESS.

Artifact:
- ID `9960678247`;
- name `UnnamedHuntRPG-Hunt01-StatusTiming-debug`;
- size `57,428,913` bytes;
- SHA-256 `f275b27c4f0f08a9ba0a45a6dd6c8bbb91a6410a564f947cee4efaed4fc88520`.

Phone/user acceptance remains deferred-batch. Performance remains unverified.

## Next owner

`FIRST_SLICE_HUNTER_DOWNED_ENCOUNTER_OUTCOME_RUNTIME_IMPLEMENTATION`.

The existing health runtime already emits `PENDING_HUNTER_DEFEAT_OUTCOME_RUNTIME` at zero Health and the selected defeat contract defines the player-Hunter `DOWNED` / `HUNTERS_DEFEATED` path. That owner must not invent structural thresholds or unresolved Bleeding periodic HP magnitude.
