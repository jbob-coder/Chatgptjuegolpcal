# Hunt-01 Basic Runtime Autorun Handoff — 2026-09-13

Status: IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED THROUGH MONSTER + HUNTER COMBAT EXCHANGES

CURRENT_OBJECTIVE: make the already-implemented basic Hunt-01 runtime automatically repeatable and regression-gated without creating player-facing autoplay.

CURRENT_STATE: complete through one deterministic Monster combat exchange plus one deterministic Hunter attack/anatomy exchange. The real production Region-01 scene executes two fresh-instance boot/run/teardown cycles in one Godot process and reproduces the same integrated runtime signature.

LAST_VERIFIED_STATE: source revision `72109e2d56205da85f6ce898d22bb9f8f0558b0b` passed full production workflow `34772015152`, job `103763209477`.

COMPLETED_WORK:
- retained `game/tests/hunt01_basic_runtime_autorun_test.gd` as the test-only integration owner;
- retained static preflight `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py` and existing production workflow gate;
- preserved fresh world identity, zeroed tracking/encounter state, seven-clue `OBSERVATION_READY`, physical ENGAGE and current combat-owner attachment;
- preserved initial deterministic out-of-range Monster idle proof;
- preserved authored N01→N02→N05→N08→N10 movement and the real `M01_TAIL_SWEEP`→Field Poleblade Block exchange;
- preserved deterministic Tail Sweep costs/consequences: Monster 3 AP / 18 Stamina, Block 1 RP / 6 Stamina, SOLID, `BLOCK_STRONG`, Hunter Health 100→98, no strong-Block status request and Round-3 Hunter return;
- added Hunter-attack integration without modifying production runtime code;
- Round 3 proves Measured Cut is out of range at N10, then uses authored N10→N08→N05→N07→N09 movement through normal 1-AP adjacent moves;
- four-step reposition consumes all Round-3 AP, proving no action-economy bypass;
- ending Round 3 uses existing `M01_HEAD_SWEEP_GORE` + Poleblade Block as the real Monster activation bridge and returns Round-4 Hunter at N09;
- Round 4 commits existing `POLEBLADE_MEASURED_CUT` into `DORSAL_PLATES`;
- existing cost remains 2 AP / 12 Stamina; contact remains selected-part CLEAN; protection remains `MINERALIZED_DORSAL_PLATE`; anatomy remains 100→95;
- attack readback does not reroll and anatomy replay remains idempotent;
- teardown rejects tactical/evidence/Monster/telegraph group leakage and the second fresh instance matches the first;
- protected player movement/look behavior is untouched.

IN_PROGRESS: none for the Hunter-attack autorun slice.

NEXT_ACTION: `FIRST_SLICE_HUNT01_BASIC_AUTORUN_REAL_STATUS_LIFECYCLE_REGRESSION` — extend the same test-only fresh-instance smoke through one already-implemented real hostile status producer and the existing generic status application/timing lifecycle while preserving both combat exchanges.

BLOCKERS: none for that verification-only extension.

OPEN_QUESTIONS: Bleeding periodic HP magnitude; Braced/Guarded runtime integration details; structural crack/break/sever thresholds; exact Hunter escape-node geometry; forced recovery destination/time/costs; Monster terminal/escape execution; downstream harvest/inventory/crafting/persistence.

IMPORTANT_DECISIONS:
- autorun is CI/development verification, not player-facing autoplay;
- no synthesized normal gameplay input or automatic locomotion;
- no new gameplay RNG or balance values;
- two fresh scene instances must remain independent;
- full production Android pipeline remains the acceptance gate;
- integrated Hunter attack consumes the already-verified attack/anatomy APIs rather than inventing a second attack path;
- next status integration must use a real existing producer and generic owners, not synthetic parallel status state.

KNOWN_RISKS: full hunt loop remains partial; automated Android export is not phone acceptance; no sustained-performance evidence exists.

FILES_CHANGED for Hunter-attack autorun implementation:
- `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- `game/docs/HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION.md`.

IMPLEMENTATION_AND_LATEST_TESTED_SOURCE: `72109e2d56205da85f6ce898d22bb9f8f0558b0b`.

TESTS_RUN / TEST_RESULTS: run 79 `34772015152` SUCCESS. Static/manifest gates, Godot 4.7.2 parse/import, AppShell/Region-01 smokes, production integration, extended basic autorun through Monster and Hunter exchanges, all current combat/anatomy/status/outcome regressions, Android debug export and artifact upload passed.

REPOSITORY_HEAD_AT_VERIFICATION: `72109e2d56205da85f6ce898d22bb9f8f0558b0b`.

ARTIFACT: ID `10322585732`; `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`; 57,515,440 bytes; SHA-256 `b5ff76fe19528a5c88de3018e0e1366fd00432ea6ceaeaba09a42f497331f3b6`.

EXTERNAL_REFERENCES: none required for this verification-only slice.

ASSUMPTIONS: none added to gameplay semantics; the autorun consumes already-verified runtime APIs and test-only helpers.

UNKNOWNS: phone acceptance and sustained performance remain unverified.
