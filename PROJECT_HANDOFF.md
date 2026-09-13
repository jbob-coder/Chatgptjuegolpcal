# PROJECT HANDOFF — Unnamed Hunt RPG

Status: PRODUCTION HUNT-01 THROUGH REAL STATUS LIFECYCLE ANDROID BUILD VERIFIED / HUNTER DEFEAT TERMINAL AUTORUN NEXT / PHONE QA DEFERRED-BATCH
Last reconciled: 2026-09-13

CURRENT_OBJECTIVE: build the smallest reliable playable Hunt-01 foundation and continuously fold already-implemented basics into one deterministic fresh-instance production smoke without creating player-facing autoplay.

CURRENT_STATE: the real production Region-01 scene now repeats tracking→ENGAGE, the real Tail Sweep/Poleblade Block exchange, authored reposition, the real Dorsal Measured Cut/anatomy exchange, and a real hostile Bleeding application/timing lifecycle across two independent fresh instances. Dedicated regressions also verify Hunter Downed/`HUNTERS_DEFEATED` terminal execution.

LAST_VERIFIED_STATE: source revision `9e854599780301e3e9c045b1bac73de9e27b5238` passed full production workflow `34779190819`, job `103782938270`.

COMPLETED_WORK:
- continuous 440×440 m Hunt-01 world/tracking/physical ENGAGE foundation;
- protected 6.25 m/s exploration and ~115° first-person control foundation;
- deterministic turn shell, resources and authored tactical movement;
- Hunter Measured Cut, Mudcrest anatomy, reaction/Block, Head Sweep and Tail Sweep;
- Hunter defense, health/injury and generic encounter outcome;
- species wound/contact classification;
- generic Bleeding/Staggered/Off-Balance application and timing;
- Staggered→Off-Balance exact-once transition and Off-Balance expiry;
- CLEAN Tail Sweep→generic Staggered producer integration;
- Hunter Downed/defeat terminal chain in its dedicated production regression;
- two-cycle basic autorun with tracking/ENGAGE and clean teardown;
- integrated Tail Sweep/Block exchange: SOLID / `BLOCK_STRONG`, Hunter Health 100→98;
- integrated Hunter attack/anatomy exchange: real Dorsal Measured Cut, CLEAN selected contact, anatomy 100→95;
- integrated real status lifecycle: Round-4 CLEAN/no-guard Head Sweep changes Health 96→84, establishes provisional horn penetration, emits one real Bleeding +1 request, dispatches through the generic status owner, schedules first tick Round 5, and Round-5 `ROUND_END` emits exactly one pending Bleeding periodic consequence;
- pending Bleeding event retains `NOT_SELECTED_PENDING_AUTHORITY`, contains no damage amount and does not mutate Health; after the real Round-5 strong Block Health is 82 and Round 6 returns normally with 4 AP / 1 RP;
- both fresh instances reproduce the same integrated signature;
- run 81 re-passed all current regressions and Android export.

IN_PROGRESS: none for the real-status lifecycle slice.

NEXT_ACTION: `FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_DEFEAT_TERMINAL_REGRESSION` — extend the same verification-only fresh-instance smoke through the already-implemented Hunter Downed/`HUNTERS_DEFEATED` terminal chain.

BLOCKERS: none for that verification-only extension. Forced recovery/respawn remains blocked downstream because destination/time/cost authority is still open.

OPEN_QUESTIONS: Bleeding periodic HP magnitude; Braced/Guarded runtime integration details; structural crack/break/sever thresholds; exact Hunter escape-node geometry; forced recovery destination/time/costs; Monster terminal/escape execution; downstream harvest/inventory/crafting/persistence.

IMPORTANT_DECISIONS:
- autorun is CI/development verification, not player-facing autoplay;
- normal movement/look controls remain protected and unchanged;
- no new gameplay RNG or balance values;
- two fresh scene instances must remain independent;
- status application/timing in the integrated smoke must come through real producers and scheduler hooks, not direct synthetic status calls;
- Bleeding periodic event remains pending only while HP magnitude is unresolved;
- next terminal integration must use existing health/outcome/scheduler owners and a real final hostile contact; test-only health preparation may only shorten setup to the already-verified zero-Health boundary;
- recovery/respawn is not part of the next terminal verification slice.

KNOWN_RISKS: full hunt loop remains partial; automated Android export is not phone acceptance; no sustained-performance evidence exists; Monster structural defeat/escape and downstream harvest/inventory/crafting are not implemented end-to-end.

FILES_CHANGED for real-status autorun implementation:
- `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- `game/docs/HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION.md`.

IMPLEMENTATION_SOURCE: `9e854599780301e3e9c045b1bac73de9e27b5238`.
LATEST_TESTED_SOURCE: `9e854599780301e3e9c045b1bac73de9e27b5238`.

TESTS_RUN / TEST_RESULTS: production run 81 `34779190819` SUCCESS. Static/manifest gates, Godot 4.7.2 parse/import, AppShell/Region-01 smokes, production integration, extended two-cycle basic autorun through both combat exchanges and real Bleeding lifecycle, all current combat/anatomy/status/outcome regressions, Android debug export and artifact upload passed.

REPOSITORY_HEAD_AT_VERIFICATION: `9e854599780301e3e9c045b1bac73de9e27b5238`.

ARTIFACT: ID `10324690130`; `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`; 57,526,652 bytes; SHA-256 `5eda52a2aa21afb6777880a6c62bfd8205fe0b2116b945b7cf13b724737b4aa9`.

EXTERNAL_REFERENCES: none required for this verification-only slice.

ASSUMPTIONS: none added to gameplay semantics; current provisional combat/health/status fixtures remain exactly as owned by existing production runtimes.

UNKNOWNS: phone acceptance, sustained performance, final Bleeding periodic HP magnitude and post-defeat recovery remain unverified/unselected.

READ_FIRST_NEXT_SLICE:
- `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- `game/tests/hunt01_hunter_downed_encounter_outcome_runtime_test.gd`;
- `game/scripts/gameplay/combat/hunt01_hunter_health_injury_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_encounter_outcome_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- `.github/workflows/production-hunt01-graybox-android.yml`.
