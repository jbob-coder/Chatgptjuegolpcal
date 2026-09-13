# Hunt-01 Basic Runtime Autorun Regression

Status: IMPLEMENTED / PENDING STATIC+HEADLESS+ANDROID BUILD VERIFICATION
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
- teardown removes the world and Hunt-01 groups before the next cycle.

The test executes two fresh-instance scene lifecycles in one Godot process and compares a stable runtime signature. The second cycle must start from zero tracking/encounter state and match the first cycle after the same deterministic path.

## Safety boundary

Test-only helpers may record evidence and position the Hunter to exercise existing runtime boundaries. Normal production input is not synthesized, protected analog left-stick/right-look controls are unchanged, and no automatic player locomotion or combat-choice system is introduced.

The gate selects no new Bleeding HP magnitude, structural thresholds, withdrawal geometry, recovery costs, Monster death/escape semantics or final combat balance.

## Verification target

Static gate: `HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED`.
Headless gate: `HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED`.

The production Android workflow must run both gates and keep every existing production regression green before this slice is promoted to verified.
