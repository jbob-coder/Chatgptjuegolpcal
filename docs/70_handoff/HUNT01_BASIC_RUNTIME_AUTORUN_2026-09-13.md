# Hunt-01 Basic Runtime Autorun Handoff — 2026-09-13

Status: IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED

CURRENT_OBJECTIVE: make the already-implemented basic Hunt-01 runtime automatically repeatable and regression-gated without creating player-facing autoplay.

CURRENT_STATE: complete. The real production Region-01 scene now has a dedicated test-only autorun that executes two fresh-instance boot/run/teardown cycles in one Godot process.

LAST_VERIFIED_STATE: source revision `3c6a792851e5dec9756f6e99bd09de291fe266b2` passed full production workflow `34763505121`, job `103740308986`.

COMPLETED_WORK:
- added `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- added static preflight `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- added the static and headless gates to the production Android workflow;
- autorun proves fresh world identity, zeroed tracking/encounter state, seven-clue `OBSERVATION_READY`, physical ENGAGE, current combat owner attachment, deterministic Round-1→Round-2 idle scheduler behavior, teardown cleanliness and matching cycle signatures;
- protected player movement/look behavior is untouched;
- repaired one documentation/static mismatch without weakening any gate.

IN_PROGRESS: none for the basic autorun repeatability slice.

NEXT_ACTION: `FIRST_SLICE_HUNT01_BASIC_AUTORUN_COMBAT_EXCHANGE_REGRESSION` — extend the test-only fresh-instance smoke through one already-implemented deterministic combat exchange using existing tactical movement/reaction/attack/consequence/status owners.

BLOCKERS: none for that verification-only extension.

OPEN_QUESTIONS: Bleeding periodic HP magnitude; Braced/Guarded runtime integration details; structural crack/break/sever thresholds; exact Hunter escape-node geometry; forced recovery destination/time/costs; Monster terminal/escape execution; downstream harvest/inventory/crafting/persistence.

IMPORTANT_DECISIONS:
- autorun is CI/development verification, not player-facing autoplay;
- no synthesized normal gameplay input or automatic locomotion;
- no new gameplay RNG or balance values;
- two fresh scene instances must remain independent;
- full production Android pipeline remains the acceptance gate.

KNOWN_RISKS: full hunt loop remains partial; automated Android export is not phone acceptance; no sustained-performance evidence exists.

FILES_CHANGED for autorun implementation:
- `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- `game/docs/HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION.md`;
- `.github/workflows/production-hunt01-graybox-android.yml`.

REPAIR_FILE:
- `game/docs/HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION.md` wording only in commit `3c6a792851e5dec9756f6e99bd09de291fe266b2`.

TESTS_RUN / TEST_RESULTS: run 74 `34763505121` SUCCESS. Static/manifest gates, Godot 4.7.2 parse/import, AppShell/Region-01 smokes, production integration, basic runtime autorun, all current combat/anatomy/status/outcome regressions, Android debug export and artifact upload passed.

REPOSITORY_HEAD_AT_VERIFICATION: `3c6a792851e5dec9756f6e99bd09de291fe266b2`.

ARTIFACT: ID `10319379031`; `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`; 57,495,532 bytes; SHA-256 `488a3f31bf589a194332402b8c8cf1ee8c9a9f57edb0d5d7a77adf5693b68b7f`.

EXTERNAL_REFERENCES: none required for this verification-only slice.

ASSUMPTIONS: none added to gameplay semantics; the autorun consumes already-verified runtime APIs and test-only helpers.

UNKNOWNS: phone acceptance and sustained performance remain unverified.
