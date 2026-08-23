# Quality Baseline

LAST_VERIFIED_COMMIT: 231355040900182ce2e8fac65110681cc041b547
STATIC_TEST_COUNT: 9
STATIC_TEST_PASS_COUNT: 9
QA_VALIDATOR_COUNT: 7
TOTAL_STATIC_CHECK_COUNT: 16
TOTAL_STATIC_PASS_COUNT: 16
STATIC_VERIFICATION_STATUS: PASS_COMMITTED_READBACK_WITH_LOCAL_OBJECT_REFRESH_LIMITATION
RUNTIME_VERIFICATION_STATUS: RUNTIME_GATE_NOT_EXECUTED
PARSER_RUNTIME_STATUS: NOT_VERIFIED_BY_GODOT_ENGINE
BROKEN_REFERENCES: 0
STABLE_ID_VIOLATIONS: 0
SOURCE_PROVENANCE_VIOLATIONS: 0
FILE_PLACEMENT_VIOLATIONS: 0
OPEN_REGRESSIONS: 0
OPEN_BLOCKERS: 2

Known limitations: Godot executable is unavailable, so parser/runtime verification remains open. The environment rejected the post-commit `git fetch` for connector-written Piece 014 commit 231355040900182ce2e8fac65110681cc041b547; therefore this stale clone cannot rerun its local object-existence assertion at seal time. Authenticated GitHub head/commit/complete-tree and 26/26 blob identities passed exact readback, and the implementation bytes passed 16/16 before commit. ISSUE-007 preserves this limitation without weakening QA.

Architecture minimums: dedicated implementation root is `jack_wilson_godot_game/`; cumulative tests may not reject legitimate later completed features; project-control tests derive transient state rather than hard-coding it; repository observations in technical documentation must match live referenced files; current-user directive pointers must map to registered source evidence; source uncertainty remains explicit; runtime verification cannot be inferred from static checks.
