# Hunt-01 Basic Runtime Autorun Regression

Status: IMPLEMENTED / COMBAT-EXCHANGE EXTENSION PENDING STATIC+HEADLESS+ANDROID BUILD VERIFICATION
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

The test executes two fresh-instance scene lifecycles in one Godot process and compares a stable runtime signature that now includes the combat-exchange result. The second cycle starts from zero tracking/encounter state and must reproduce the first cycle after the same deterministic path.

## Safety boundary

Test-only helpers may record evidence and position the Hunter to exercise existing runtime boundaries. Existing test APIs drive authored tactical movement and the already-implemented reaction decision. Normal production input is not synthesized, protected analog left-stick/right-look controls are unchanged, and no automatic player locomotion or combat-choice system is introduced.

The extension does not select new Bleeding HP magnitude, structural thresholds, withdrawal geometry, recovery costs, Monster death/escape semantics, combat RNG or final combat balance.

## Verification gates

Static gate: `HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED`.
Headless base gate: `HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED`.
Headless combat-exchange gate: `HUNT01_BASIC_RUNTIME_AUTORUN_COMBAT_EXCHANGE_VERIFIED`.

The production Android workflow already executes this autorun test and its static preflight. The combat-exchange assertions therefore remain inside the same mandatory production verification step rather than creating a parallel gameplay runtime.

## Previous verified evidence

Basic autorun implementation commit: `07ad99f71fd0da45ff458fe8d5e770d02ab07783`.
Fresh-instance verification/contract-repair commit: `3c6a792851e5dec9756f6e99bd09de291fe266b2`.
Promoted verified baseline: `65b99b9119c0454bd116c2916b494b8577d00666`.
Production workflow `34763692168`: SUCCESS.
Job `103740804098`: SUCCESS.
Artifact `10319768031`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,495,537 bytes, SHA-256 `1309c74b6e08174591eddcc3b85797aba89817b83fd0b47b2e8aef860714a857`.

The combat-exchange extension described above requires a new full production workflow before it can be promoted from pending to verified.
