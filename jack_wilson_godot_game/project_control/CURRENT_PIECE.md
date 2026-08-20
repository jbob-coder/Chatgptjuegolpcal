# Current Piece

PIECE_ID: PIECE-010
TITLE: Godot 4.7 documentation baseline and implementation reference log
STATUS: COMPLETE
PURPOSE: Establish the repository-side, version-specific Godot technical authority baseline before adding another engine behavior.

IN_SCOPE:
- docs/godot/GODOT_4_7_MASTER_TOOL_AND_FEATURE_GUIDE.md
- docs/godot/GODOT_IMPLEMENTATION_REFERENCE_LOG.md
- tests/verify_godot_docs_baseline.py
- Teach verify_structure.py that the two Godot baseline records are now mandatory.
- Record documentation findings and non-blocking implementation issues without changing gameplay.

OUT_OF_SCOPE:
- Gravity implementation.
- Mouse-look behavior changes.
- Godot runtime execution.
- Exhaustive research of systems not yet needed by an implementation piece.

FILES_ALLOWED_TO_CHANGE:
- docs/godot/GODOT_4_7_MASTER_TOOL_AND_FEATURE_GUIDE.md
- docs/godot/GODOT_IMPLEMENTATION_REFERENCE_LOG.md
- tests/verify_godot_docs_baseline.py
- scripts/qa/verify_structure.py
- project_control/MASTER_STATE.md
- project_control/CURRENT_PIECE.md
- project_control/ROADMAP.md
- project_control/QUALITY_BASELINE.md
- project_control/SOURCE_REGISTRY.md
- project_control/DECISIONS.md
- project_control/ISSUES.md
- project_control/CHANGELOG.md
- project_control/piece_history/PIECE-010.md

FILES_EXPECTED_TO_CREATE:
- docs/godot/GODOT_4_7_MASTER_TOOL_AND_FEATURE_GUIDE.md
- docs/godot/GODOT_IMPLEMENTATION_REFERENCE_LOG.md
- tests/verify_godot_docs_baseline.py
- project_control/piece_history/PIECE-010.md

SOURCE_FACTS_USED:
- VERIFIED_GODOT_DOCUMENTATION: official Godot 4.7 versioned documentation exists and 4.7 is a supported release.
- VERIFIED_GODOT_DOCUMENTATION: CharacterBody3D velocity/move_and_slide semantics; Input.get_vector; InputMap action APIs; InputEventMouseMotion.screen_relative guidance; ProjectSettings 3D gravity settings.
- VERIFIED_REPOSITORY_FACT: current player mouse look uses event.relative; current player gravity is not implemented.

ASSUMPTIONS:
- The master guide grows incrementally per bounded system rather than inventing entries for unresearched systems.

KNOWN_UNKNOWNS:
- Godot runtime/parser behavior remains unexecuted.
- Future systems in the guide's research matrix are PLANNED, not verified.

ACCEPTANCE_CRITERIA:
- Both required Godot documentation records exist.
- All implementation-authority URLs for currently validated systems are official Godot 4.7 pages.
- Guide distinguishes official documentation evidence, repository evidence, static verification, planned research, and runtime verification.
- Reference log records class/API/restriction/decision evidence for current movement/input and planned gravity.
- Device sensor Input.get_gravity is explicitly separated from world 3D gravity.
- Existing event.relative use is recorded as a non-blocking quality issue, not silently changed.
- Cumulative static suite passes 13/13.
- Committed documentation and verifier are readable back from GitHub.

TESTS_REQUIRED:
- python scripts/qa/verify_all.py

REGRESSION_GATES:
- Five QA validators pass.
- Eight static tests pass.
- Total static checks: 13/13.
- No gameplay file changes.
- RUNTIME_GATE_NOT_EXECUTED remains explicit.

STARTING_COMMIT: 5e0aac0d8857e5ce18889da3cd12dc83a248cc7e
ENDING_COMMIT: 4c64bcbaabf2eaff5f23d3e94212175644a1263f

RESULT: Godot 4.7 documentation baseline committed, statically verified at 13/13 in the reconstructed snapshot, and read back from GitHub.

FAILURES_FOUND:
- ISSUE-004 identified: current mouse-look code uses event.relative, while Godot 4.7 recommends screen_relative for captured mouse aiming to avoid content-scale sensitivity changes.

FIXES_APPLIED:
- No gameplay fix inside this documentation-only piece; the finding is recorded for a dedicated bounded implementation piece.

FINAL_STATUS: COMPLETE
