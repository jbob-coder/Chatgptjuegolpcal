# Regression Log

## REG-0001

REGRESSION_ID: REG-0001
DISCOVERED_IN_PIECE: PIECE-007
BEFORE_STATE: Piece 003 verifier correctly prohibited mouse look before Piece 004 existed.
AFTER_STATE: Piece 004 added mouse look to the shared player controller, but the Piece 003 verifier retained the obsolete prohibition.
EVIDENCE: Running the six committed static verifiers against the connector-fetched snapshot failed only tests/verify_movement.py with `AssertionError: mouse-look leaked into walking piece`.
ROOT_CAUSE: A per-piece scope guard was not converted into a cumulative regression invariant after a later legitimate piece extended the same controller.
SEVERITY: HIGH_QA_INTEGRITY
FILES_AFFECTED: tests/verify_movement.py
FIX_ATTEMPTS: 1
FINAL_FIX: Remove only the obsolete MOUSE_MODE_CAPTURED prohibition; retain walking assertions and guards against not-yet-implemented gravity, jump, and sprint. Add scripts/qa/verify_all.py to run every committed static verifier together.
TEST_EVIDENCE: `python scripts/qa/verify_all.py` passed all six static verifiers in the reconstructed GitHub snapshot. GitHub readback confirmed the committed repair content.
RESOLVED_COMMIT: 69555333e8f2a14299d6bd4dcb7b82003ba0e007
STATUS: RESOLVED

## REG-0002

REGRESSION_ID: REG-0002
DISCOVERED_IN_PIECE: PIECE-011
BEFORE_STATE: The live player controller and mouse-look verifier used and required event.screen_relative.
AFTER_STATE: Piece 010 technical documentation recorded a VERIFIED_REPOSITORY observation that the current controller used event.relative and opened ISSUE-004 for a migration that was already unnecessary. Related Piece 010 bookkeeping also left QUALITY_BASELINE and ISSUE-003 stale.
EVIDENCE: GitHub readback at e2c217b98b54ba985a5599bb151f2afacab25426 shows scripts/player_controller.gd uses event.screen_relative.x/y; tests/verify_mouse_look.py requires those expressions; the same controller blob exists at sealed Piece 006. Piece 010 guide/reference log claim event.relative.
ROOT_CAUSE: Documentation research relied on a stale remembered repository observation instead of re-reading the live referenced file, and the documentation verifier checked for the stale phrase rather than relational agreement with code.
SEVERITY: HIGH_SOURCE_INTEGRITY
FILES_AFFECTED: docs/godot/GODOT_4_7_MASTER_TOOL_AND_FEATURE_GUIDE.md; docs/godot/GODOT_IMPLEMENTATION_REFERENCE_LOG.md; tests/verify_godot_docs_baseline.py; project_control/QUALITY_BASELINE.md; project_control/ISSUES.md
FIX_ATTEMPTS: 1
FINAL_FIX: Correct repository observations to screen_relative; add live controller cross-check to the Godot docs verifier; align verified-commit baseline; resolve stale issues; make project-state QA compare MASTER_STATE and QUALITY_BASELINE verified-commit pointers.
TEST_EVIDENCE: Reconstructed Piece 011 cumulative static suite passes 13/13 before GitHub commit/readback.
RESOLVED_COMMIT: PENDING_PIECE_011
STATUS: REPAIRING
