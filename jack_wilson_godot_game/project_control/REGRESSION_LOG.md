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
TEST_EVIDENCE: `python scripts/qa/verify_all.py` passes all six static verifiers in the reconstructed GitHub snapshot.
RESOLVED_COMMIT: PENDING_COMMIT_READBACK
