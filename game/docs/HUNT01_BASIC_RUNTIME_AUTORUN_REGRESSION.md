# Hunt-01 Basic Runtime Autorun Regression

Status: IMPLEMENTED / REAL STATUS LIFECYCLE EXTENSION PENDING STATIC+HEADLESS+ANDROID BUILD VERIFICATION
Last reconciled: 2026-09-13

## Purpose

Provide a deterministic development/CI fresh-instance repeatability gate around the already-implemented Hunt-01 basics. This is not player-facing autoplay and does not alter normal player movement, camera control, combat decisions or runtime ownership.

## Covered path

Each autorun cycle uses the real production `region_01_hunt01_graybox.tscn` and existing owners to prove:
- fresh world build and stable scenario/hunt/Monster/encounter identity;
- fresh tracking starts with zero evidence and `SEARCHING` state;
- the existing seven-clue tracking runtime reaches `OBSERVATION_READY`;
- physical engagement plus explicit same-location ENGAGE stages the existing first-person encounter;
- the existing combat shell, tactical movement, reaction, Hunter attack, Mudcrest anatomy and Mudcrest attack owners attach correctly;
- one Hunter end-turn plus out-of-range Monster idle advances deterministically to Round 2 Hunter without fabricating an attack;
- authored movement `N01 → N02 → N05 → N08 → N10` reaches the existing Tail Sweep flank;
- real `M01_TAIL_SWEEP` plus Field Poleblade Block preserves existing resources and deterministic SOLID / `BLOCK_STRONG`, Hunter Health 100 → 98 and no strong-Block Off-Balance/Staggered request;
- the scheduler returns to Round 3 Hunter at preserved N10;
- Measured Cut is still out of working melee at N10;
- authored movement `N10 → N08 → N05 → N07 → N09` reaches attack geometry through normal 1-AP adjacent moves and consumes all Round-3 AP;
- ending Round 3 drives the existing `M01_HEAD_SWEEP_GORE` + Poleblade Block path as the real Monster activation bridge and returns Round-4 Hunter at N09;
- real `POLEBLADE_MEASURED_CUT` commits against `DORSAL_PLATES` through the existing Hunter attack owner;
- existing Measured Cut economy remains 2 AP / 12 Stamina; contact remains selected-part CLEAN; protection remains `MINERALIZED_DORSAL_PLATE`; existing anatomy handoff remains integrity 100 → 95;
- Hunter attack readback does not reroll and replaying the anatomy handoff remains idempotent;
- after that preserved Hunter attack, ending Round 4 opens the next real Head Sweep at action sequence 3;
- explicitly declining that reaction preserves the existing deterministic CLEAN/no-guard consequence, Hunter Health 96 → 84 and provisional horn-penetration classification;
- that real wound emits one Bleeding +1 request through the existing Mudcrest wound/contact owner and dispatches it into the existing generic status application owner;
- the generic owner stores one `status_bleeding` instance with `first_tick_round = 5` and the real Head Sweep resolution as its source identity;
- the new Bleeding instance does not tick during Round 4 because its first eligible hook is Round 5 `ROUND_END`;
- Round 5 ends through the existing real Head Sweep + strong Poleblade Block path, preserving one Bleeding intensity and Hunter Health 84 → 82;
- the real Round-5 status-timing hook emits exactly one `PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE` event with `NOT_SELECTED_PENDING_AUTHORITY` and no selected damage amount;
- the pending periodic event does not mutate Health; Round 6 starts normally on the Hunter with refreshed 4 AP / 1 RP while Bleeding remains persistent at intensity 1;
- teardown removes the world and Hunt-01 groups before the next cycle.

The test executes two fresh-instance scene lifecycles in one Godot process and compares a stable runtime signature containing the preserved Monster combat exchange, Hunter attack/anatomy exchange and real status lifecycle. The second cycle starts from zero tracking/encounter state and reproduces the first cycle after the same deterministic path.

## Safety boundary

Test-only helpers record evidence and position the Hunter only for the existing pre-combat engagement boundary. Once combat is staged, existing test APIs drive authored tactical movement, reaction decisions, Monster attacks, Hunter attack commitment, anatomy handoff and scheduler progression. Status application and timing are not synthesized by the autorun: the test consumes the real Mudcrest wound/contact producer and reads the existing generic application/timing owners after normal scheduler hooks execute.

Normal production input is not synthesized, protected analog left-stick/right-look controls are unchanged, and no automatic player locomotion or combat-choice system is introduced.

The extension selects no new Bleeding HP magnitude, structural thresholds, withdrawal geometry, recovery costs, Monster death/escape semantics, combat RNG or final combat/status balance. `PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE` remains a downstream handoff only; the autorun explicitly verifies that it cannot mutate Health while its magnitude authority is unresolved.

## Verification gates

Static gate: `HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED`.
Headless base gate: `HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED`.
Headless Monster combat-exchange gate: `HUNT01_BASIC_RUNTIME_AUTORUN_COMBAT_EXCHANGE_VERIFIED`.
Headless Hunter-attack gate: `HUNT01_BASIC_RUNTIME_AUTORUN_HUNTER_ATTACK_EXCHANGE_VERIFIED`.
Headless real-status lifecycle gate: `HUNT01_BASIC_RUNTIME_AUTORUN_REAL_STATUS_LIFECYCLE_VERIFIED`.

The production Android workflow already executes this autorun test and its static preflight. The status-lifecycle assertions remain inside the same mandatory production verification step rather than creating a parallel gameplay or status runtime.

## Previous verified evidence

Basic autorun implementation commit: `07ad99f71fd0da45ff458fe8d5e770d02ab07783`.
Monster combat-exchange implementation commit: `c85db3c152dc798ed1a03508a77f5066c50f0e2c`.
Monster combat-exchange contract repair: `b270ef14787043252648c18ff02df31936e2f9a2`.
Hunter-attack integration commit: `72109e2d56205da85f6ce898d22bb9f8f0558b0b`.
Promoted fully verified source before this extension: `578f598e92719949ade1f669aa94ca319a41d94c`.
Production workflow `34772248966`: SUCCESS.
Job `103763843357`: SUCCESS.
Artifact `10322267457`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,515,438 bytes, SHA-256 `638cecf15c678a6f06f36ee4e91139b24623b572b3b16353378878eb90d5fec9`.

Run 80 passed static/manifest checks, Godot 4.7.2 parse/import, production smokes, both fresh-instance Monster + Hunter combat exchange cycles, all current combat/anatomy/status/outcome regressions, Android debug export and artifact upload on exact revision `578f598e92719949ade1f669aa94ca319a41d94c`.

## Current bounded verification extension

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_REAL_STATUS_LIFECYCLE_REGRESSION`.

The implementation above must pass the full production Android workflow before this document may be promoted from pending to verified. It must preserve both existing combat exchanges and must not create player-facing autoplay, synthetic parallel status state, new RNG, balance values, Bleeding HP magnitude, structural thresholds or Monster terminal semantics.
