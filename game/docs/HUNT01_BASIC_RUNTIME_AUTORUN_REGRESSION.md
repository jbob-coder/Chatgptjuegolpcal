# Hunt-01 Basic Runtime Autorun Regression

Status: IMPLEMENTED / HUNTER-ATTACK EXTENSION PENDING STATIC+HEADLESS+ANDROID BUILD VERIFICATION
Last reconciled: 2026-09-13

## Purpose

Provide a deterministic development/CI fresh-instance repeatability gate around the already-implemented Hunt-01 basics. This is not player-facing autoplay and does not alter normal player movement, camera control, combat decisions or runtime ownership.

## Covered path

Each autorun cycle uses the real production `region_01_hunt01_graybox.tscn` and existing owners to prove:
- fresh world build and stable scenario/hunt/Monster/encounter identity;
- fresh tracking starts with zero evidence and `SEARCHING` state;
- the existing seven-clue tracking runtime reaches `OBSERVATION_READY`;
- the Hunter reaches the real physical engagement zone;
- explicit same-location ENGAGE stages the existing first-person encounter;
- the existing combat shell, tactical movement, reaction, Hunter attack, Mudcrest anatomy and Mudcrest attack owners attach correctly;
- one Hunter end-turn plus out-of-range Monster idle advances deterministically to Round 2 Hunter without fabricating an attack;
- authored tactical movement follows `N01 → N02 → N05 → N08 → N10` through the existing movement runtime;
- the real Mudcrest `M01_TAIL_SWEEP` opens its existing reaction window at N10 and spends its already-verified resources;
- the existing Field Poleblade Block commits through the real reaction owner, preserves its existing resource cost, and resolves the already-verified deterministic SOLID/BLOCK_STRONG consequence;
- the existing health/injury readback remains 100 → 98 for that blocked combat exchange and the generic status owner confirms the strong Block emitted neither Off-Balance nor Staggered;
- the scheduler returns to Round 3 Hunter after the Tail Sweep exchange;
- the Hunter then follows the authored `N10 → N08 → N05 → N07 → N09` route through the same tactical movement owner rather than teleporting or bypassing action economy;
- the four-step Round-3 approach reaches valid Measured Cut geometry while consuming the activation's 4 AP;
- ending Round 3 at N09 drives the existing Mudcrest Head Sweep + Poleblade Block path as the real Monster activation bridge and returns the scheduler to Round 4 Hunter;
- the already-implemented Hunter `POLEBLADE_MEASURED_CUT` then commits at N09 against `DORSAL_PLATES` through the existing Hunter attack owner;
- existing attack economy remains 2 AP / 12 Stamina, selected-part contact remains CLEAN, dorsal protection remains `MINERALIZED_DORSAL_PLATE`, and the existing anatomy handoff remains provisional integrity 100 → 95;
- Hunter attack readback does not reroll and replaying the anatomy handoff remains idempotent;
- teardown removes the world and Hunt-01 groups before the next cycle.

The test executes two fresh-instance scene lifecycles in one Godot process and compares a stable runtime signature containing both the preserved Monster combat exchange and the Hunter attack/anatomy exchange. The second cycle starts from zero tracking/encounter state and must reproduce the first cycle after the same deterministic path.

## Safety boundary

Test-only helpers may record evidence and position the Hunter only for the existing pre-combat engagement boundary. Once combat is staged, existing test APIs drive authored tactical movement, reaction decisions, Monster attacks, Hunter attack commitment and anatomy handoff. Normal production input is not synthesized, protected analog left-stick/right-look controls are unchanged, and no automatic player locomotion or combat-choice system is introduced.

The extension selects no new Bleeding HP magnitude, structural thresholds, withdrawal geometry, recovery costs, Monster death/escape semantics, combat RNG or final combat balance. It consumes the already-selected Measured Cut, Block, attack-control, protection and provisional anatomy values exactly as owned by current runtimes.

## Verification gates

Static gate: `HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED`.
Headless base gate: `HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED`.
Headless Monster combat-exchange gate: `HUNT01_BASIC_RUNTIME_AUTORUN_COMBAT_EXCHANGE_VERIFIED`.
Headless Hunter-attack gate: `HUNT01_BASIC_RUNTIME_AUTORUN_HUNTER_ATTACK_EXCHANGE_VERIFIED`.

The production Android workflow already executes this autorun test and its static preflight. The Hunter attack assertions remain inside the same mandatory production verification step rather than creating a parallel gameplay runtime.

## Previous verified evidence

Basic autorun implementation commit: `07ad99f71fd0da45ff458fe8d5e770d02ab07783`.
Combat-exchange implementation commit: `c85db3c152dc798ed1a03508a77f5066c50f0e2c`.
Combat-exchange contract-repair commit: `b270ef14787043252648c18ff02df31936e2f9a2`.
Promoted verified source revision: `c541c735fe93b049cc25d8c29a2c048ceb6139fe`.
Production workflow `34771386938`: SUCCESS.
Job `103761502217`: SUCCESS.
Artifact `10322166858`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,504,706 bytes, SHA-256 `a092e435471bd7411fd63902e67cb44608c7c1c1e8ff98e4401bbf969b6db6ff`.

Run 76 failed before Godot only because this documentation lacked the exact space-separated `combat exchange` governance phrase required by its static preflight. Commit `b270ef14787043252648c18ff02df31936e2f9a2` corrected documentation wording only. Runs 77 and 78 then passed the combat-exchange implementation and promoted state respectively.

The Hunter-attack extension described above requires a new full production workflow before it can be promoted from pending to verified.
