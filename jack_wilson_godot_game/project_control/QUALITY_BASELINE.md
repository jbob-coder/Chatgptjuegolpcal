# Quality Baseline

LAST_VERIFIED_COMMIT: d816448c3fb9dee56254d95190909ae8ab62048a
STATIC_TEST_COUNT: 9
STATIC_TEST_PASS_COUNT: 9
QA_VALIDATOR_COUNT: 7
TOTAL_STATIC_CHECK_COUNT: 16
TOTAL_STATIC_PASS_COUNT: 16
STATIC_VERIFICATION_STATUS: PASS_PIECE_014_CANDIDATE
RUNTIME_VERIFICATION_STATUS: RUNTIME_GATE_NOT_EXECUTED
PARSER_RUNTIME_STATUS: NOT_VERIFIED_BY_GODOT_ENGINE
BROKEN_REFERENCES: 0
STABLE_ID_VIOLATIONS: 0
SOURCE_PROVENANCE_VIOLATIONS: 0
FILE_PLACEMENT_VIOLATIONS: 0
OPEN_REGRESSIONS: 0
OPEN_BLOCKERS: 1

Known limitation: Godot executable is unavailable in the current execution environment, so parser/runtime verification remains open. A normal clean GitHub clone succeeded in the current environment on 2026-08-23; commit-object existence and static checks now run against a real worktree. The earlier clone failure remains preserved as historical ISSUE-002 evidence.

Architecture minimums: dedicated implementation root is `jack_wilson_godot_game/`; cumulative tests may not reject legitimate later completed features; project-control tests derive transient state rather than hard-coding it; repository observations in technical documentation must match live referenced files; current-user directive pointers must map to registered source evidence; source uncertainty remains explicit; runtime verification cannot be inferred from static checks.
