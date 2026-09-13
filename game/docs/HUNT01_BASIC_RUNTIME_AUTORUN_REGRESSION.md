# Hunt-01 Basic Runtime Autorun Regression

Status: IMPLEMENTED / MONSTER + HUNTER COMBAT EXCHANGES STATIC+HEADLESS+ANDROID BUILD VERIFIED
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
- teardown removes the world and Hunt-01 groups before the next cycle.

The test executes two fresh-instance scene lifecycles in one Godot process and compares a stable runtime signature containing both combat exchange results. The second cycle starts from zero tracking/encounter state and reproduces the first cycle after the same deterministic path.

## Safety boundary

Test-only helpers record evidence and position the Hunter only for the existing pre-combat engagement boundary. Once combat is staged, existing test APIs drive authored tactical movement, reaction decisions, Monster attacks, Hunter attack commitment and anatomy handoff. Normal production input is not synthesized, protected analog left-stick/right-look controls are unchanged, and no automatic player locomotion or combat-choice system is introduced.

The verified extension selects no new Bleeding HP magnitude, structural thresholds, withdrawal geometry, recovery costs, Monster death/escape semantics, combat RNG or final combat balance. It consumes already-selected attack, Block, protection and provisional anatomy values exactly as owned by current runtimes.

## Verification gates

Static gate: `HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED`.
Headless base gate: `HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED`.
Headless Monster combat-exchange gate: `HUNT01_BASIC_RUNTIME_AUTORUN_COMBAT_EXCHANGE_VERIFIED`.
Headless Hunter-attack gate: `HUNT01_BASIC_RUNTIME_AUTORUN_HUNTER_ATTACK_EXCHANGE_VERIFIED`.

The production Android workflow executes this autorun test and its static preflight. These assertions remain inside the same mandatory production verification step rather than creating a parallel gameplay runtime.

## Verified evidence

Basic autorun implementation commit: `07ad99f71fd0da45ff458fe8d5e770d02ab07783`.
Monster combat-exchange implementation commit: `c85db3c152dc798ed1a03508a77f5066c50f0e2c`.
Monster combat-exchange contract repair: `b270ef14787043252648c18ff02df31936e2f9a2`.
Prior promoted source: `c541c735fe93b049cc25d8c29a2c048ceb6139fe`.
Hunter-attack integration / latest tested source: `72109e2d56205da85f6ce898d22bb9f8f0558b0b`.
Production workflow `34772015152`: SUCCESS.
Job `103763209477`: SUCCESS.
Artifact `10322585732`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,515,440 bytes, SHA-256 `b5ff76fe19528a5c88de3018e0e1366fd00432ea6ceaeaba09a42f497331f3b6`.

Run 79 passed static/manifest checks, Godot 4.7.2 parse/import, production smokes, both fresh-instance Monster + Hunter combat exchange cycles, all current regressions, Android debug export and artifact upload.

## Next bounded verification extension

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_REAL_STATUS_LIFECYCLE_REGRESSION`.

The next extension may connect one already-implemented real hostile status producer to the existing generic status application/timing owners inside this same two-cycle smoke. It must preserve both verified combat exchanges and must not create player-facing autoplay, synthetic parallel status state, new RNG, balance values, Bleeding HP magnitude, structural thresholds or Monster terminal semantics.
