# Current Piece

PIECE_ID: PIECE-011
TITLE: Repair post-Piece-010 truth/state and authority drift
STATUS: STATIC_VERIFIED
PURPOSE: Restore repository truth and source authority before new work by correcting stale Piece 010 observations, stale control bookkeeping, and an unsupported roadmap/source insertion without changing gameplay.

IN_SCOPE:
- Preserve the concurrent Piece 011 correction that aligns Godot docs with live event.screen_relative mouse look.
- Preserve the verified-commit relational QA check and resolved stale ISSUE-003/ISSUE-004 records.
- Record REG-0003 for the unsupported Piece 010 seal insertion of four repository-organization systems.
- Remove the unregistered separation-directive pointer and unsupported systems from the active roadmap.
- Record Q-0002/U-0005 so missing authority remains explicit rather than invented.
- Strengthen project-control verification so free-text current-user directive pointers must map to registered source evidence.
- Annotate Piece 010 history without deleting the original failed finding.

OUT_OF_SCOPE:
- Gameplay code changes.
- User-surface/four-plane implementation.
- Control-folder migration.
- Action/resource graph implementation.
- Gravity implementation.
- Godot runtime claims.

FILES_ALLOWED_TO_CHANGE:
- project_control/MASTER_STATE.md
- project_control/CURRENT_PIECE.md
- project_control/ROADMAP.md
- project_control/QUALITY_BASELINE.md
- project_control/DECISIONS.md
- project_control/QUESTIONS_AND_ANSWERS.md
- project_control/SOURCE_REGISTRY.md
- project_control/KNOWN_UNKNOWNS.md
- project_control/REGRESSION_LOG.md
- project_control/CHANGELOG.md
- project_control/piece_history/PIECE-010.md
- project_control/piece_history/PIECE-011.md
- tests/verify_project_control_core.py

FILES_EXPECTED_TO_CREATE:
- project_control/piece_history/PIECE-011.md

SOURCE_FACTS_USED:
- VERIFIED_REPOSITORY_FACT: commit 921fbaf8abc09e61d0b98fc4f286cef1ecb367ba corrected the Piece 010 mouse-look truth drift and verified-commit bookkeeping.
- VERIFIED_REPOSITORY_FACT: MASTER_STATE at 921fbaf8... still cites continuous-development/separation directives.
- VERIFIED_REPOSITORY_FACT: ROADMAP at 921fbaf8... still schedules four organization systems ahead of gravity.
- VERIFIED_REPOSITORY_FACT: SOURCE_REGISTRY at 921fbaf8... has no separation directive and DECISIONS has no decision authorizing that reorder.
- USER_DIRECTIVE: roadmap reordering requires recorded authority/decision; unknown authority must remain UNKNOWN; regressions must be repaired before new work.

ASSUMPTIONS:
- Restoring the last evidence-backed gameplay roadmap after this repair is safer and reversible compared with inventing authority for unregistered organization systems.

KNOWN_UNKNOWNS:
- Whether another session received an explicit user instruction for the removed four repository-organization systems remains UNKNOWN as Q-0002/U-0005.
- Godot runtime/parser behavior remains unexecuted.

ACCEPTANCE_CRITERIA:
- Existing concurrent REG-0002 mouse/documentation repair remains intact.
- MASTER_STATE and QUALITY_BASELINE verified-commit pointers agree.
- ISSUE-003 and ISSUE-004 remain resolved/invalidation-correct.
- REG-0003 records the unsupported roadmap/source insertion with evidence.
- The active roadmap removes unsupported organization systems and schedules gravity next as Piece 012.
- MASTER_STATE contains no unregistered separation-directive pointer.
- SOURCE_REGISTRY explicitly states SOURCE-001 does not authorize those four systems.
- Q-0002/U-0005 preserve the authority uncertainty.
- Project-control verifier rejects unregistered current-user directive pointers.
- Piece 010 history is annotated to invalidate its false event.relative finding without deleting history.
- Cumulative static suite passes 13/13.
- No gameplay file changes.

TESTS_REQUIRED:
- python scripts/qa/preflight.py
- python tests/verify_project_control_core.py
- python scripts/qa/verify_project_state.py
- python scripts/qa/verify_all.py

REGRESSION_GATES:
- Existing 8 static tests remain present/passing.
- Existing 5 QA validators remain present/passing.
- Total static checks remain 13/13.
- OPEN_REGRESSIONS is 0 for the verified repair candidate.
- RUNTIME_GATE_NOT_EXECUTED remains explicit.
- No gameplay file changes.

STARTING_COMMIT: e2c217b98b54ba985a5599bb151f2afacab25426
ENDING_COMMIT: PENDING_COMMIT_READBACK

RESULT: Concurrent repair at 921fbaf8abc09e61d0b98fc4f286cef1ecb367ba was audited and retained; missing governance repair was merged into a reconstructed candidate that passes the complete static suite.

FAILURES_FOUND:
- REG-0002: Piece 010 documentation falsely described the live mouse-look implementation as event.relative; concurrent Piece 011 repair corrected it.
- QA-011-01/02/03: concurrent repair corrected verified-commit and stale issue bookkeeping.
- REG-0003: Piece 010 seal inserted four future organization systems and cited an unregistered separation directive without source registration or roadmap decision; concurrent repair did not remove them.

FIXES_APPLIED:
- Retained the concurrent mouse/documentation and verified-commit fixes.
- Restored the evidence-backed gameplay roadmap with gravity next.
- Removed the unregistered separation authority pointer from active state.
- Added source-authority unknown records and a source-pointer QA guard.
- Annotated Piece 010 history and recorded both regressions without deleting history.

FINAL_STATUS: STATIC_VERIFIED
