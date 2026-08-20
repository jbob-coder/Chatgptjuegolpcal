# Current Piece

PIECE_ID: PIECE-007
TITLE: Repair cumulative static verification regression
STATUS: COMPLETE
PURPOSE: Restore the cumulative static QA baseline before any new gameplay development.

IN_SCOPE:
- Remove the obsolete Piece 003 assertion that forbids the already-completed Piece 004 mouse-look implementation.
- Add a cumulative static suite entry point.
- Record the discovered regression and current static baseline.

OUT_OF_SCOPE:
- Gameplay behavior changes.
- Gravity, jumping, sprinting, walls, ceiling, furniture, HUD, Steal, NPCs, world simulation.
- Godot runtime claims.

FILES_ALLOWED_TO_CHANGE:
- tests/verify_movement.py
- scripts/qa/verify_all.py
- project_control/CURRENT_PIECE.md
- project_control/QUALITY_BASELINE.md
- project_control/REGRESSION_LOG.md
- project_control/piece_history/PIECE-007.md

FILES_EXPECTED_TO_CREATE:
- scripts/qa/verify_all.py
- project_control/CURRENT_PIECE.md
- project_control/QUALITY_BASELINE.md
- project_control/REGRESSION_LOG.md
- project_control/piece_history/PIECE-007.md

SOURCE_FACTS_USED:
- VERIFIED_REPOSITORY_FACT: Piece 004 intentionally added mouse capture/mouse-look to scripts/player_controller.gd.
- VERIFIED_REPOSITORY_FACT: tests/verify_movement.py still forbade MOUSE_MODE_CAPTURED, so the cumulative suite failed.

ASSUMPTIONS:
- None required for gameplay or canon.

KNOWN_UNKNOWNS:
- Godot 4.7 runtime behavior remains unexecuted in the current environment.

ACCEPTANCE_CRITERIA:
- verify_movement.py continues to verify walking behavior.
- verify_movement.py continues to forbid not-yet-implemented gravity, jump, and sprint behavior.
- verify_movement.py no longer rejects the completed mouse-look behavior.
- scripts/qa/verify_all.py returns non-zero if any static verifier fails.
- All six existing static verifiers pass together in the reconstructed GitHub snapshot.

TESTS_REQUIRED:
- python scripts/qa/verify_all.py

REGRESSION_GATES:
- No gameplay files change.
- Six existing static verifiers all pass cumulatively.

STARTING_COMMIT: 7eb700fc031a32da53aa2ef656a99e6d5488a80e
ENDING_COMMIT: 69555333e8f2a14299d6bd4dcb7b82003ba0e007

RESULT: Repair commit was read back from GitHub. The committed movement verifier contains the cumulative guard fix, and the committed verify_all.py contains the cumulative runner that was tested against the reconstructed repository snapshot.

FAILURES_FOUND:
- REG-0001: verify_movement.py rejected Piece 004 mouse look even though Piece 004 is already committed and documented complete.

FIXES_APPLIED:
- Removed only the obsolete mouse-look prohibition from the Piece 003 verifier.
- Added cumulative verify_all.py orchestration.

FINAL_STATUS: COMPLETE
