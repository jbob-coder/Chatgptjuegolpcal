# Quality Baseline

LAST_VERIFIED_COMMIT: 94688bda38135ffbf43bc001c81a1ecabc180989
STATIC_TEST_COUNT: 7
STATIC_TEST_PASS_COUNT: 7
QA_VALIDATOR_COUNT: 5
TOTAL_STATIC_CHECK_COUNT: 12
TOTAL_STATIC_PASS_COUNT: 12
STATIC_VERIFICATION_STATUS: PASS_RECONSTRUCTED_SNAPSHOT
RUNTIME_VERIFICATION_STATUS: RUNTIME_GATE_NOT_EXECUTED
PARSER_RUNTIME_STATUS: NOT_VERIFIED_BY_GODOT_ENGINE
BROKEN_REFERENCES: 0
STABLE_ID_VIOLATIONS: 0
SOURCE_PROVENANCE_VIOLATIONS: 0
FILE_PLACEMENT_VIOLATIONS: 0
OPEN_REGRESSIONS: 0
OPEN_BLOCKERS: 1

Known limitation: Godot executable is unavailable in the current execution environment. The execution container also cannot resolve github.com for git clone, so static verification is run on a connector-fetched reconstructed snapshot. Git commit existence checks are performed only when a real git worktree is available and are explicitly reported as unavailable otherwise.

Architecture minimums: dedicated implementation root is `jack_wilson_godot_game/`; cumulative tests may not reject legitimate later completed features; project-control tests derive transient state rather than hard-coding it; source uncertainty remains explicit; runtime verification cannot be inferred from static checks.
