# Current Piece

PIECE_ID: PIECE-009
TITLE: QA structure/state validators
STATUS: STATIC_VERIFIED
PURPOSE: Add bounded automated guards for project structure, state consistency, current-piece validity, and regression-baseline integrity, then make verify_all.py orchestrate them.

IN_SCOPE:
- scripts/qa/preflight.py
- scripts/qa/verify_structure.py
- scripts/qa/verify_project_state.py
- scripts/qa/verify_current_piece.py
- scripts/qa/regression_guard.py
- scripts/qa/verify_all.py orchestration
- Project-control updates required to represent Piece 009 and its machine-readable quality baseline.

OUT_OF_SCOPE:
- Gameplay changes.
- Godot API research/documentation baseline.
- Godot runtime/parser claims.
- Character/campaign data contracts.

FILES_ALLOWED_TO_CHANGE:
- scripts/qa/preflight.py
- scripts/qa/verify_structure.py
- scripts/qa/verify_project_state.py
- scripts/qa/verify_current_piece.py
- scripts/qa/regression_guard.py
- scripts/qa/verify_all.py
- tests/verify_project_control_core.py
- project_control/MASTER_STATE.md
- project_control/CURRENT_PIECE.md
- project_control/ROADMAP.md
- project_control/QUALITY_BASELINE.md
- project_control/DECISIONS.md
- project_control/ISSUES.md
- project_control/CHANGELOG.md

FILES_EXPECTED_TO_CREATE:
- scripts/qa/preflight.py
- scripts/qa/verify_structure.py
- scripts/qa/verify_project_state.py
- scripts/qa/verify_current_piece.py
- scripts/qa/regression_guard.py

SOURCE_FACTS_USED:
- USER_DIRECTIVE: required QA scripts and non-zero failure behavior.
- VERIFIED_REPOSITORY_FACT: Piece 008 sealed complete before Piece 009 starts.

ASSUMPTIONS:
- QA scripts must remain standard-library-only and runnable from the game root on Python 3.10+.

KNOWN_UNKNOWNS:
- Git object existence cannot be checked in a non-git reconstructed snapshot; verify_project_state performs the check when a real .git worktree is available and reports the limitation otherwise.
- Godot runtime remains unavailable.

ACCEPTANCE_CRITERIA:
- preflight.py checks minimum local prerequisites and fails non-zero on missing requirements.
- verify_structure.py validates the dedicated game root, required directories/control records, and the configured main scene.
- verify_project_state.py validates relational continuity among MASTER_STATE, CURRENT_PIECE, ROADMAP, and commit-pointer formatting.
- verify_current_piece.py validates all mandatory piece fields, allowed status, non-empty scope lists, and commit-pointer rules.
- regression_guard.py enforces the machine-readable minimum quality baseline without hard-coding transient piece IDs.
- verify_all.py runs all five QA validators plus all seven existing tests, and fails non-zero if any child check fails.
- No gameplay file changes.

TESTS_REQUIRED:
- python scripts/qa/verify_all.py

REGRESSION_GATES:
- Existing seven tests continue to pass.
- Five new QA validators pass.
- Existing project-control core verification is future-proofed so a later legitimate runtime-gate promotion does not create a stale-test regression.
- Total static checks: 12/12.
- RUNTIME_GATE_NOT_EXECUTED remains explicit.

STARTING_COMMIT: 3e6e77dce323031e4124b8e3857a83d7a2346594
ENDING_COMMIT: PENDING_COMMIT_READBACK

RESULT: Proposed QA validators pass in the connector-fetched reconstructed snapshot.

FAILURES_FOUND:
- QA-009-01: Initial Piece 009 review found hard-coded RUNTIME_GATE_NOT_EXECUTED assertions in the existing project-control test and proposed state/regression validators. Those assertions would reject a future legitimate RUNTIME_VERIFIED state.

FIXES_APPLIED:
- Runtime-gate checks now validate consistency between MASTER_STATE and QUALITY_BASELINE instead of freezing the current transient value.
- verify_project_state.py now handles an unavailable git executable as an explicit local limitation rather than crashing.

FINAL_STATUS: STATIC_VERIFIED
