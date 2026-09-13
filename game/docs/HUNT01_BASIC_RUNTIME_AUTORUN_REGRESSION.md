# Hunt-01 Basic Runtime Autorun Regression

Status: IMPLEMENTED / COMBAT-EXCHANGE EXTENSION STATIC+HEADLESS+ANDROID BUILD VERIFIED
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
- the existing combat shell, tactical movement, reaction, Mudcrest anatomy and Mudcrest attack owners attach correctly;
- one Hunter end-turn plus out-of-range Monster idle advances deterministically to Round 2 Hunter without fabricating an attack;
- authored tactical movement follows `N01 → N02 → N05 → N08 → N10` through the existing movement runtime;
- the real Mudcrest `M01_TAIL_SWEEP` opens its existing reaction window at N10 and spends its already-verified resources;
- the existing Field Poleblade Block commits through the real reaction owner, preserves its existing resource cost, and resolves the already-verified deterministic SOLID/BLOCK_STRONG consequence;
- the existing health/injury readback remains 100 → 98 for that blocked exchange and the generic status owner confirms the strong Block emitted neither Off-Balance nor Staggered;
- the scheduler returns to Round 3 Hunter after the exchange;
- teardown removes the world and Hunt-01 groups before the next cycle.

The test executes two fresh-instance scene lifecycles in one Godot process and compares a stable runtime signature that includes the combat exchange result. The second cycle starts from zero tracking/encounter state and reproduces the first cycle after the same deterministic path.

## Safety boundary

Test-only helpers may record evidence and position the Hunter to exercise existing runtime boundaries. Existing test APIs drive authored tactical movement and the already-implemented reaction decision. Normal production input is not synthesized, protected analog left-stick/right-look controls are unchanged, and no automatic player locomotion or combat-choice system is introduced.

The verified extension selects no new Bleeding HP magnitude, structural thresholds, withdrawal geometry, recovery costs, Monster death/escape semantics, combat RNG or final combat balance.

## Verification gates

Static gate: `HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED`.
Headless base gate: `HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED`.
Headless combat-exchange gate: `HUNT01_BASIC_RUNTIME_AUTORUN_COMBAT_EXCHANGE_VERIFIED`.

The production Android workflow executes this autorun test and its static preflight. The combat exchange assertions remain inside the same mandatory production verification step rather than creating a parallel gameplay runtime.

## Verified evidence

Basic autorun implementation commit: `07ad99f71fd0da45ff458fe8d5e770d02ab07783`.
Combat-exchange implementation commit: `c85db3c152dc798ed1a03508a77f5066c50f0e2c`.
Combat-exchange contract-repair / verified source commit: `b270ef14787043252648c18ff02df31936e2f9a2`.
Production workflow `34771120281`: SUCCESS.
Job `103760780223`: SUCCESS.
Artifact `10321349678`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,504,703 bytes, SHA-256 `898292db86fd3df24d213ef77e9d17e0c0a2e1d211ee4e8d3d20a67b59c659e8`.

Run 76 failed before Godot only because this documentation lacked the exact space-separated `combat exchange` governance phrase required by its static preflight. Commit `b270ef14787043252648c18ff02df31936e2f9a2` corrected documentation wording only. Run 77 then passed static/manifest checks, Godot 4.7.2 parse/import, production smokes, both fresh-instance combat exchange cycles, all current regressions, Android debug export and artifact upload.

## Next bounded verification extension

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_REGRESSION`.

The next extension may add one already-implemented Hunter `POLEBLADE_MEASURED_CUT`/Mudcrest anatomy transaction to this same two-cycle smoke using current owners and already-selected values. It must preserve the verified Tail Sweep/Block exchange and must not create player-facing autoplay, new RNG, balance values, structural thresholds or Monster terminal semantics.
