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
EVIDENCE: GitHub readback at e2c217b98b54ba985a5599bb151f2afacab25426 shows scripts/player_controller.gd uses event.screen_relative.x/y; tests/verify_mouse_look.py requires those expressions; the same controller blob exists at sealed Piece 006. Piece 010 guide/reference log claimed event.relative.
ROOT_CAUSE: Documentation research relied on a stale remembered repository observation instead of re-reading the live referenced file, and the documentation verifier checked for the stale phrase rather than relational agreement with code.
SEVERITY: HIGH_SOURCE_INTEGRITY
FILES_AFFECTED: docs/godot/GODOT_4_7_MASTER_TOOL_AND_FEATURE_GUIDE.md; docs/godot/GODOT_IMPLEMENTATION_REFERENCE_LOG.md; tests/verify_godot_docs_baseline.py; project_control/QUALITY_BASELINE.md; project_control/ISSUES.md
FIX_ATTEMPTS: 1
FINAL_FIX: Correct repository observations to screen_relative; add live controller cross-check to the Godot docs verifier; align verified-commit baseline; resolve stale issues; make project-state QA compare MASTER_STATE and QUALITY_BASELINE verified-commit pointers.
TEST_EVIDENCE: Commit 921fbaf8abc09e61d0b98fc4f286cef1ecb367ba contains the repair; merged Piece 011 candidate preserves it and passes 13/13 static checks.
RESOLVED_COMMIT: PENDING_PIECE_011_FINAL_READBACK
STATUS: REPAIR_CANDIDATE_VERIFIED


## REG-0003

REGRESSION_ID: REG-0003
DISCOVERED_IN_PIECE: PIECE-011
BEFORE_STATE: Piece 010 implementation commit 4c64bcbaabf2eaff5f23d3e94212175644a1263f had gravity as the next evidence-backed planned gameplay piece.
AFTER_STATE: Piece 010 seal e2c217b98b54ba985a5599bb151f2afacab25426 inserted four repository-organization systems and changed MASTER_STATE to cite a user separation directive; first Piece 011 repair 921fbaf8abc09e61d0b98fc4f286cef1ecb367ba retained those systems and the unregistered pointer.
EVIDENCE: ROADMAP/MASTER_STATE at 921fbaf8... contain the organization systems and `continuous-development/separation directives`; SOURCE_REGISTRY at the same commit contains no separation directive; DECISIONS contains no decision authorizing the original reorder.
ROOT_CAUSE: Future work was inserted during a seal commit without registering the asserted user source or recording the required architectural/roadmap decision, and the first repair focused on the separate mouse truth drift.
SEVERITY: HIGH_GOVERNANCE_INTEGRITY
FILES_AFFECTED: project_control/MASTER_STATE.md; project_control/ROADMAP.md; project_control/SOURCE_REGISTRY.md; project_control/DECISIONS.md; project_control/QUESTIONS_AND_ANSWERS.md; project_control/KNOWN_UNKNOWNS.md; tests/verify_project_control_core.py
FIX_ATTEMPTS: 1
FINAL_FIX: Remove unverified systems from the active roadmap; register the authority conflict as Q-0002/U-0005; restore gravity as the next evidence-backed piece; remove the unregistered separation pointer; add a guard that current-user directive pointers correspond to registered source evidence.
TEST_EVIDENCE: Merged Piece 011 candidate passes the complete 13-check reconstructed static suite; committed readback pending.
RESOLVED_COMMIT: PENDING_PIECE_011_FINAL_READBACK
STATUS: REPAIR_CANDIDATE_VERIFIED

## REG-0004

REGRESSION_ID: REG-0004
DISCOVERED_IN_PIECE: PIECE-013
BEFORE_STATE: DECISIONS.md contained D-0001–D-0009 and SOURCE_REGISTRY.md contained SOURCE-001–SOURCE-007 at the exact sealed Piece 012 baseline.
AFTER_STATE: A local section-ordering expression matched zero records and temporarily left each file with only its title. The defect was not committed or published.
EVIDENCE: Immediate `wc -l` reported two lines in each ledger; section-header searches returned none.
ROOT_CAUSE: The dynamic regular expression used an incorrectly escaped pattern and the generated replacement was applied before validating the parsed section count.
SEVERITY: HIGH_GOVERNANCE_INTEGRITY_LOCAL
FILES_AFFECTED: project_control/DECISIONS.md; project_control/SOURCE_REGISTRY.md; scripts/qa/verify_structure.py
FIX_ATTEMPTS: 1
FINAL_FIX: Restore exact ledgers from sealed GitHub commit 7a70f8a7b01baa00f86d29df8f22a1989beabd65; append new records explicitly in order; add structure gates requiring at least eleven unique decision and source IDs.
TEST_EVIDENCE: Restored ledgers contain eleven unique IDs each; structure regression gate passes; full Piece 013 suite passes 15/15; exact GitHub readback matched all 28 intended blobs.
RESOLVED_COMMIT: e5eb014293e96ca08586603f7bdc46679c31aaa7
STATUS: RESOLVED
