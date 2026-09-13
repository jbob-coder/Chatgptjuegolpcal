# Hunt-01 Basic Runtime Autorun Handoff — 2026-09-13

Status: IMPLEMENTED / STATIC VERIFIED / HEADLESS VERIFIED / ANDROID BUILD VERIFIED THROUGH REAL BLEEDING STATUS LIFECYCLE

CURRENT_OBJECTIVE: make the already-implemented basic Hunt-01 runtime automatically repeatable and regression-gated without creating player-facing autoplay.

CURRENT_STATE: complete through one deterministic Monster combat exchange, one deterministic Hunter attack/anatomy exchange and one real hostile Bleeding application/timing lifecycle. The real production Region-01 scene executes two fresh-instance boot/run/teardown cycles in one Godot process and reproduces the same integrated runtime signature.

LAST_VERIFIED_STATE: revision `83dc865064980eaa3d29c5928b0f59e9a4132c79` passed full production workflow `34779563368`, job `103783955039`.

COMPLETED_WORK:
- retained `game/tests/hunt01_basic_runtime_autorun_test.gd` as the test-only integration owner;
- retained static preflight `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py` and the existing production workflow gate;
- preserved fresh world identity, zeroed tracking/encounter state, seven-clue `OBSERVATION_READY`, physical ENGAGE and combat-owner attachment;
- preserved initial deterministic out-of-range Monster idle proof;
- preserved authored N01→N02→N05→N08→N10 movement and real `M01_TAIL_SWEEP`→Poleblade Block combat exchange;
- preserved Tail Sweep deterministic SOLID / `BLOCK_STRONG`, Hunter Health 100→98 and no strong-Block status request;
- preserved authored N10→N08→N05→N07→N09 reposition through normal AP economy;
- preserved real Head Sweep/Block scheduler bridge and Round-4 Dorsal `POLEBLADE_MEASURED_CUT`, CLEAN selected-part contact and anatomy 100→95;
- added real status lifecycle integration without modifying production runtime code;
- after Measured Cut, Round-4 Hunter end opens real Head Sweep action sequence 3;
- explicit decline resolves existing deterministic CLEAN/no-guard path, applying real Health 96→84;
- species wound/contact owner establishes provisional horn penetration and emits exactly one Bleeding +1 request;
- request dispatches synchronously through existing generic status application owner; stored Bleeding intensity is 1 and first tick is Round 5;
- Round-4 end does not tick the status early;
- Round-5 Head Sweep + strong Block preserves one Bleeding stack and applies only its existing 2-load attack consequence, Health 84→82;
- real Round-5 `ROUND_END` timing emits exactly one `PENDING_BLEEDING_PERIODIC_HEALTH_CONSEQUENCE`;
- pending event contains `NOT_SELECTED_PENDING_AUTHORITY`, no `damage_amount`, retains real producer identity and does not mutate Health;
- Bleeding persists at intensity 1 and Round 6 starts normally on Hunter with 4 AP / 1 RP;
- teardown rejects tactical/evidence/Monster/telegraph group leakage and the second fresh instance matches the first;
- protected player movement/look behavior is untouched;
- run 81 verified the implementation and Android export;
- promotion commit `0f38ac3c18667e53efa89d6eeaebf0f2dcb41745` reconciled package/front doors;
- run 82 failed before Godot only because the promoted regression contract lost the exact `combat exchange` phrase required by the unchanged static preflight;
- repair commit `83dc865064980eaa3d29c5928b0f59e9a4132c79` restored that documentation wording only;
- run 83 passed all current production gates and Android export on the exact repaired promoted revision.

IN_PROGRESS: none for the real-status lifecycle autorun slice.

NEXT_ACTION: `FIRST_SLICE_HUNT01_BASIC_AUTORUN_HUNTER_DEFEAT_TERMINAL_REGRESSION` — extend the same test-only fresh-instance smoke through the already-implemented Hunter Downed/`HUNTERS_DEFEATED` terminal chain.

BLOCKERS: none for that verification-only extension. Forced recovery/respawn is explicitly downstream and blocked because destination/time/cost authority is still open.

OPEN_QUESTIONS: Bleeding periodic HP magnitude; Braced/Guarded runtime integration; structural crack/break/sever thresholds; exact Hunter escape-node geometry; forced recovery destination/time/costs; Monster escape/death execution; downstream harvest/inventory/crafting/persistence.

IMPORTANT_DECISIONS:
- autorun is CI/development verification, not player-facing autoplay;
- no synthesized normal gameplay input or automatic locomotion;
- no new gameplay RNG or balance values;
- two fresh scene instances must remain independent;
- status application/timing is exercised only through real producer/scheduler paths in the integrated smoke;
- pending Bleeding event remains non-damaging until a separate HP magnitude authority exists;
- next terminal integration may use test-only health preparation only to approach the already-verified zero-Health boundary; a real hostile production attack must cause the final defeat;
- recovery/respawn is excluded from that next slice.

KNOWN_RISKS: full hunt loop remains partial; automated Android export is not phone acceptance; no sustained-performance evidence exists; structural/withdrawal/harvest/inventory/crafting remain incomplete.

FILES_CHANGED for real-status lifecycle implementation:
- `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- `game/docs/HUNT01_BASIC_RUNTIME_AUTORUN_REGRESSION.md`.

IMPLEMENTATION_SOURCE: `9e854599780301e3e9c045b1bac73de9e27b5238`.
PROMOTION_COMMIT: `0f38ac3c18667e53efa89d6eeaebf0f2dcb41745`.
GOVERNANCE_REPAIR_AND_LATEST_TESTED_SOURCE: `83dc865064980eaa3d29c5928b0f59e9a4132c79`.

TESTS_RUN / TEST_RESULTS: run 81 `34779190819` SUCCESS verified the implementation. Run 82 `34779452988` stopped before Godot on one documentation-governance phrase check. Run 83 `34779563368` SUCCESS verified the repaired promoted state: static/manifest gates, Godot 4.7.2 parse/import, production smokes/integration, both fresh-instance integrated cycles, all current combat/anatomy/status/outcome regressions, Android debug export and artifact upload.

REPOSITORY_HEAD_AT_VERIFICATION: `83dc865064980eaa3d29c5928b0f59e9a4132c79`.

ARTIFACT: ID `10324451154`; `UnnamedHuntRPG-Hunt01-MudcrestTailSweep-debug`; 57,526,677 bytes; SHA-256 `411bb42819510e84d0f84d8c03033a49e86d3b35ab4cdc9b3251a3f320f22c6d`.

EXTERNAL_REFERENCES: none required for this verification-only slice.

ASSUMPTIONS: none added to gameplay semantics; the autorun consumes already-verified runtime APIs and provisional fixtures exactly as owned.

UNKNOWNS: phone acceptance, sustained performance, Bleeding periodic HP magnitude and post-defeat recovery remain unverified/unselected.

READ_FIRST_NEXT_SLICE:
- `game/tests/hunt01_basic_runtime_autorun_test.gd`;
- `tests/quality/hunt01/hunt01_basic_runtime_autorun_preflight.py`;
- `game/tests/hunt01_hunter_downed_encounter_outcome_runtime_test.gd`;
- `game/scripts/gameplay/combat/hunt01_hunter_health_injury_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_encounter_outcome_runtime.gd`;
- `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`;
- `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_attack_runtime.gd`;
- `.github/workflows/production-hunt01-graybox-android.yml`.
