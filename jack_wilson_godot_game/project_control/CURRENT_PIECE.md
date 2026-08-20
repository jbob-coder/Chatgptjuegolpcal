# Current Piece

PIECE_ID: PIECE-008
TITLE: Persistent continuation core
STATUS: COMPLETE
PURPOSE: Add the minimum durable project-control records required for a future session to reconstruct the verified state without relying on chat memory.

IN_SCOPE:
- MASTER_STATE.md
- ROADMAP.md
- DECISIONS.md
- QUESTIONS_AND_ANSWERS.md
- SOURCE_REGISTRY.md
- KNOWN_UNKNOWNS.md
- ISSUES.md
- CHANGELOG.md
- A static verifier for the project-control core.

OUT_OF_SCOPE:
- Gameplay changes.
- Remaining QA scripts beyond verify_all.py.
- Godot documentation guide/reference-log content.
- Campaign character/ability data contracts.

FILES_ALLOWED_TO_CHANGE:
- project_control/MASTER_STATE.md
- project_control/CURRENT_PIECE.md
- project_control/ROADMAP.md
- project_control/QUALITY_BASELINE.md
- project_control/DECISIONS.md
- project_control/QUESTIONS_AND_ANSWERS.md
- project_control/SOURCE_REGISTRY.md
- project_control/KNOWN_UNKNOWNS.md
- project_control/ISSUES.md
- project_control/CHANGELOG.md
- project_control/piece_history/PIECE-008.md
- tests/verify_project_control_core.py

FILES_EXPECTED_TO_CREATE:
- project_control/MASTER_STATE.md
- project_control/ROADMAP.md
- project_control/DECISIONS.md
- project_control/QUESTIONS_AND_ANSWERS.md
- project_control/SOURCE_REGISTRY.md
- project_control/KNOWN_UNKNOWNS.md
- project_control/ISSUES.md
- project_control/CHANGELOG.md
- project_control/piece_history/PIECE-008.md
- tests/verify_project_control_core.py

SOURCE_FACTS_USED:
- USER_DIRECTIVE: repository must contain persistent operational memory.
- VERIFIED_REPOSITORY_FACT: Piece 007 was sealed complete at the starting HEAD for Piece 008.

ASSUMPTIONS:
- None about unverified campaign recovery hints.

KNOWN_UNKNOWNS:
- Listed in project_control/KNOWN_UNKNOWNS.md.

ACCEPTANCE_CRITERIA:
- All required continuation-core files exist.
- MASTER_STATE contains every mandatory continuation field.
- MASTER_STATE points to the correct repository, game root, branch, completed piece, current piece, and next planned piece.
- ROADMAP preserves completed pieces and identifies the next bounded piece.
- Source registry distinguishes read sources from pointer-only sources.
- Known unknowns preserve reversible geometry and runtime uncertainty.
- The project-control verifier remains valid when CURRENT_PIECE advances instead of hard-coding Piece 008.
- Cumulative static suite passes 7/7.

TESTS_REQUIRED:
- python scripts/qa/verify_all.py

REGRESSION_GATES:
- No gameplay file changes.
- Existing six static verifiers remain passing.
- New project-control verifier passes.

STARTING_COMMIT: dc18e83165f319b1770c03484eb1d200b6e5d8a0
ENDING_COMMIT: 2707ca1dd4794b29210594e1524d647e6d936c77

RESULT: Persistent continuation core was created, statically verified in the connector-fetched reconstructed snapshot, and read back from GitHub. The first committed verifier was rejected during readback because its transient piece-ID assertions would have become stale; the corrected committed verifier derives current/next IDs and status from project state.

FAILURES_FOUND:
- QA-008-01: The first Piece 008 verifier hard-coded LAST_COMPLETED_PIECE=PIECE-007, CURRENT_PIECE=PIECE-008, NEXT_PLANNED_PIECE=PIECE-009, and STATIC_VERIFIED. It would have failed legitimately as soon as Piece 009 started, recreating the stale-test failure class repaired in REG-0001.

FIXES_APPLIED:
- Reworked verify_project_control_core.py to derive the current piece ID, current status, and next planned piece from the committed control records and validate their internal consistency instead of freezing transient IDs.
- Retained fixed invariants for repository, game root, branch, source-read classification, reversible room uncertainty, and runtime-gate honesty.
- Read back the corrected verifier and Piece 008 record from GitHub at 2707ca1dd4794b29210594e1524d647e6d936c77 before completion.

FINAL_STATUS: COMPLETE
