# Hunt-01 Basic Runtime Autorun Handoff — 2026-09-13

Status: IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED THROUGH ONE REAL COMBAT EXCHANGE

CURRENT_OBJECTIVE: make the already-implemented basic Hunt-01 runtime automatically repeatable and regression-gated without creating player-facing autoplay.

CURRENT_STATE: complete through one deterministic Monster combat exchange. The real production Region-01 scene executes two fresh-instance boot/run/teardown cycles in one Godot process and reproduces the same integrated runtime signature.

LAST_VERIFIED_STATE: promoted source revision `c541c735fe93b049cc25d8c29a2c048ceb6139fe` passed full production workflow `34771386938`, job `103761502217`.

COMPLETED_WORK:
- retained `game/tests/hunt01_basic_runtime_autorun_test.gd` as the test-only integration owner;
- retained static preflight `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py` and the existing production workflow gate;
- autorun proves fresh world identity, zeroed tracking/encounter state, seven-clue `OBSERVATION_READY`, physical ENGAGE and current combat-owner attachment;
- autorun preserves the initial deterministic Round-1→Round-2 out-of-range Monster idle proof;
- each cycle follows authored N01→N02→N05→N08→N10 tactical movement through the existing runtime;
- each cycle resolves the real Mudcrest `M01_TAIL_SWEEP` through the existing Field Poleblade Block reaction;
- existing costs/consequences remain deterministic: Monster 3 AP / 18 Stamina attack cost, Block 1 RP / 6 Stamina commitment, SOLID hit quality, `BLOCK_STRONG`, Hunter Health 100→98, no strong-Block status request, no Off-Balance/Staggered, and scheduler return to Round 3 Hunter;
- resolution readback remains idempotent;
- teardown rejects tactical/evidence/Monster/telegraph group leakage and the second fresh instance matches the first;
- protected player movement/look behavior is untouched;
- run 76 static failure was repaired at documentation wording only without weakening a gate;
- run 78 re-verified the promoted package/front-door state on exact revision `c541c735fe93b049cc25d8c29a2c048ceb6139fe`.

IN_PROGRESS: none for the combat-exchange autorun slice.

NEXT_ACTION: `FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_ATTACK_EXCHANGE_REGRESSION` — extend the same test-only fresh-instance smoke through one already-implemented Hunter `POLEBLADE_MEASURED_CUT`/Mudcrest anatomy transaction while preserving the verified Tail Sweep/Block exchange.

BLOCKERS: none for that verification-only extension.

OPEN_QUESTIONS: Bleeding periodic HP magnitude; Braced/Guarded runtime integration details; structural crack/break/sever thresholds; exact Hunter escape-node geometry; forced recovery destination/time/costs; Monster terminal/escape execution; downstream harvest/inventory/crafting/persistence.

IMPORTANT_DECISIONS:
- autorun is CI/development verification, not player-facing autoplay;
- no synthesized normal gameplay input or automatic locomotion;
- no new gameplay RNG or balance values;
- two fresh scene instances must remain independent;
- full production Android pipeline remains the acceptance gate;
- Hunter-attack integration must consume the already-verified Measured Cut/anatomy APIs rather than inventing a second attack path.

KNOWN_RISKS: full hunt loop remains partial; automated Android export is not phone acceptance; no sustained-performance evidence exists.

FILES_CHANGED for combat-exchange extension:
- `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- `game/docs/HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION.md`.

IMPLEMENTATION_COMMIT: `c85db3c152dc798ed1a03508a77f5066c50f0e2c`.
CONTRACT_REPAIR_COMMIT: `b270ef14787043252648c18ff02df31936e2f9a2`.
PROMOTION_AND_LATEST_TESTED_SOURCE: `c541c735fe93b049cc25d8c29a2c048ceb6139fe`.

TESTS_RUN / TEST_RESULTS: run 76 `34771015107` stopped before Godot on one static documentation phrase mismatch. Run 77 `34771120281` SUCCESS verified the implementation. Run 78 `34771386938` SUCCESS verified the promoted state: static/manifest gates, Godot 4.7.2 parse/import, AppShell/Region-01 smokes, production integration, extended basic autorun combat exchange, all current combat/anatomy/status/outcome regressions, Android debug export and artifact upload passed.

REPOSITORY_HEAD_AT_VERIFICATION: `c541c735fe93b049cc25d8c29a2c048ceb6139fe`.

ARTIFACT: ID `10322166858`; `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`; 57,504,706 bytes; SHA-256 `a092e435471bd7411fd63902e67cb44608c7c1c1e8ff98e4401bbf969b6db6ff`.

EXTERNAL_REFERENCES: none required for this verification-only slice.

ASSUMPTIONS: none added to gameplay semantics; the autorun consumes already-verified runtime APIs and test-only helpers.

UNKNOWNS: phone acceptance and sustained performance remain unverified.
