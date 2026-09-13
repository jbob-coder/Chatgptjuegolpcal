# Hunt-01 Basic Runtime Autorun Regression

Status: IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED
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

The test executes two fresh-instance scene lifecycles in one Godot process and compares a stable runtime signature. The second cycle starts from zero tracking/encounter state and matches the first cycle after the same deterministic path.

## Safety boundary

Test-only helpers may record evidence and position the Hunter to exercise existing runtime boundaries. Normal production input is not synthesized, protected analog left-stick/right-look controls are unchanged, and no automatic player locomotion or combat-choice system is introduced.

The gate selects no new Bleeding HP magnitude, structural thresholds, withdrawal geometry, recovery costs, Monster death/escape semantics or final combat balance.

## Verification evidence

Static gate: `HUNT01_BASIC_RUNTIME_AUTORUN_SOURCE_STATIC_VERIFIED`.
Headless gate: `HUNT01_BASIC_RUNTIME_AUTORUN_VERIFIED`.

Implementation commit: `07ad99f71fd0da45ff458fe8d5e770d02ab07783`.
Verification/contract-repair commit: `3c6a792851e5dec9756f6e99bd09de291fe266b2`.
Production workflow `34763505121`: SUCCESS.
Job `103740308986`: SUCCESS.
Artifact `10319379031`: `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`, 57,495,532 bytes, SHA-256 `488a3f31bf589a194332402b8c8cf1ee8c9a9f57edb0d5d7a77adf5693b68b7f`.

Run 73 failed only because the documentation did not explicitly use the static gate's required `fresh-instance` governance phrase. Commit `3c6a792...` repaired that wording without changing runtime semantics or weakening the gate. Run 74 passed the entire production pipeline.

## Next bounded verification extension

`FIRST_SLICE_HUNT01_BASIC_AUTORUN_COMBAT_EXCHANGE_REGRESSION` may deepen this smoke through one already-implemented deterministic combat exchange, but must remain test-only automation and preserve normal gameplay controls.
