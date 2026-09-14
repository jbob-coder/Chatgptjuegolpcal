# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH HUNTER DEFEAT TERMINAL ANDROID BUILD VERIFIED / 2 GB STORAGE CAP SELECTED / PACKAGE CAP CI GATE NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-14

CURRENT_OBJECTIVE: build the smallest reliable playable Hunt-01 foundation and continuously fold already-implemented basics into one deterministic fresh-instance production smoke without creating player-facing autoplay.

CURRENT_STATE: the real production Region-01 scene now repeats tracking→ENGAGE, Tail Sweep/Poleblade Block, authored reposition, Dorsal Measured Cut/anatomy, a real hostile Bleeding lifecycle and a real Hunter defeat-terminal chain across two independent fresh instances. The user has also selected a hard 2 GB total player-required game-storage ceiling.

LAST_VERIFIED_STATE: revision `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c` passed full production workflow `34880096112`, job `104096962757`.

COMPLETED_WORK:
- continuous 440×440 m Hunt-01 world/tracking/physical ENGAGE foundation;
- protected 6.25 m/s exploration and ~115° first-person control foundation;
- deterministic turns/resources/tactical movement;
- Hunter Measured Cut, Mudcrest anatomy, Block/reaction, Head Sweep and Tail Sweep;
- Hunter defense, health/injury, generic encounter outcome, wound/contact and generic statuses;
- exact-once Staggered→Off-Balance timing and CLEAN Tail Sweep→Staggered producer in dedicated regressions;
- two-cycle fresh-instance autorun through the Monster exchange, Hunter attack/anatomy exchange and real Bleeding lifecycle;
- integrated defeat-terminal extension: test-only Health preparation stops at 10, then real Round-6 Head Sweep action sequence 5 causes 10→0, commits Hunter `ACTIVE → DOWNED`, keeps living Mudcrest `ACTIVE`, commits `HUNTERS_DEFEATED`, freezes the scheduler with no current actor, rejects post-terminal advancement and preserves idempotent outcome readback;
- run 84 passed the entire current production pipeline and Android export;
- hard player-required storage ceiling selected at exactly 2,000,000,000 bytes.

IN_PROGRESS: package/front-door promotion of run-84 evidence.

NEXT_ACTION: `FIRST_SLICE_ANDROID_PACKAGE_2GB_STORAGE_CAP_CI_GATE` — add a production Android workflow check that fails if the exported APK exceeds 2,000,000,000 bytes and records package-size evidence.

BLOCKERS: none for the package-size CI gate. Installed-footprint verification remains a separate future device/release task. Forced recovery/respawn remains blocked because destination/time/cost authority is open.

OPEN_QUESTIONS: installed-footprint measurement method on release/target device; Bleeding periodic HP magnitude; Braced/Guarded runtime integration; structural crack/break/sever thresholds; Hunter escape-node geometry; forced recovery destination/time/costs; Monster terminal/escape execution; harvest/inventory/crafting/persistence.

IMPORTANT_DECISIONS:
- total player-required game footprint hard cap = `2,000,000,000` bytes;
- mandatory split/downloaded runtime content counts toward that cap;
- dev-only source/repo/CI-only files do not count;
- APK size evidence does not equal installed-footprint evidence;
- autorun remains verification only, never player-facing autoplay;
- normal controls remain protected;
- no new gameplay RNG/balance values;
- defeat final transition must come from a real hostile attack; recovery remains separate and unresolved.

KNOWN_RISKS: full hunt loop remains partial; automated Android export is not phone acceptance; no sustained-performance or complete installed-footprint measurement exists; structural/withdrawal/harvest/inventory/crafting remain incomplete.

FILES_CHANGED for the verified user-requested continuation:
- `PERFORMANCE_BUDGETS_AND_CAPS.md`;
- `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- `game/docs/HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION.md`.

STORAGE_POLICY_COMMIT: `f3b5dfb672127fa90303e689466f41a3cbe439ff`.
DEFEAT_TERMINAL_IMPLEMENTATION_SOURCE: `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

TESTS_RUN / TEST_RESULTS: run 84 `34880096112` SUCCESS: authoritative/static gates, Godot 4.7.2 parse/import, AppShell and Region-01 smokes, production integration, extended two-fresh-instance basic autorun through Hunter defeat terminal, all current combat/anatomy/status/outcome regressions, Android debug export and artifact upload.

REPOSITORY_HEAD_AT_VERIFICATION: `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`.

ARTIFACT: ID `10362706279`; `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`; 57,536,941 bytes; SHA-256 `ba02d634d1435ed294f42bf5db8e2c55470265da4026aa1488e4b2ce30792917`.

EXTERNAL_REFERENCES: none required for these verification/governance slices.

ASSUMPTIONS: none added to gameplay semantics; the 2 GB cap is interpreted as decimal 2,000,000,000 bytes for player-required shipped/runtime content.

UNKNOWNS: phone acceptance, sustained performance, full installed footprint, Bleeding periodic HP magnitude and post-defeat recovery remain unverified/unselected.

READ_FIRST_NEXT_SLICE:
- `PERFORMANCE_BUDGETS_AND_CAPS.md`;
- `.github/workflows/production-hunt01-graybox-android.yml`;
- `game/export_presets.cfg`;
- current run-84 APK evidence;
- root/build-readiness authority files.
