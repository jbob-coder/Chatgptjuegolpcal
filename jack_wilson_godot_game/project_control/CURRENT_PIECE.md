# Current Piece

PIECE_ID: PIECE-011
TITLE: Repair post-Piece-010 truth/state drift
STATUS: STATIC_VERIFIED
PURPOSE: Restore repository truth before new architecture work by correcting stale Piece 010 repository observations and stale project-control bookkeeping without changing gameplay.

IN_SCOPE:
- Correct the Godot guide and reference log to match the live screen_relative mouse-look implementation.
- Strengthen tests/verify_godot_docs_baseline.py so repository observations are cross-checked against the live controller.
- Align MASTER_STATE and QUALITY_BASELINE verified-commit pointers.
- Strengthen verify_project_state.py so verified-commit pointer drift fails QA.
- Mark ISSUE-003 resolved because Piece 010 supplied the required Godot documentation baseline.
- Mark ISSUE-004 resolved as stale documentation because the controller already uses screen_relative.
- Record REG-0002 and Piece 011 repair evidence.
- Reorder roadmap so repository organization resumes only after this repair.

OUT_OF_SCOPE:
- Gameplay code changes.
- User-surface/four-plane files.
- Control-folder migration.
- Action/resource graph implementation.
- Gravity or other gameplay features.
- Godot runtime claims.

FILES_ALLOWED_TO_CHANGE:
- docs/godot/GODOT_4_7_MASTER_TOOL_AND_FEATURE_GUIDE.md
- docs/godot/GODOT_IMPLEMENTATION_REFERENCE_LOG.md
- tests/verify_godot_docs_baseline.py
- scripts/qa/verify_project_state.py
- project_control/MASTER_STATE.md
- project_control/CURRENT_PIECE.md
- project_control/ROADMAP.md
- project_control/QUALITY_BASELINE.md
- project_control/DECISIONS.md
- project_control/SOURCE_REGISTRY.md
- project_control/ISSUES.md
- project_control/REGRESSION_LOG.md
- project_control/CHANGELOG.md
- project_control/piece_history/PIECE-011.md

FILES_EXPECTED_TO_CREATE:
- project_control/piece_history/PIECE-011.md

SOURCE_FACTS_USED:
- VERIFIED_REPOSITORY_FACT: scripts/player_controller.gd at Piece 011 starting HEAD uses event.screen_relative.x and event.screen_relative.y.
- VERIFIED_REPOSITORY_FACT: tests/verify_mouse_look.py at Piece 011 starting HEAD requires event.screen_relative for both axes.
- VERIFIED_REPOSITORY_FACT: the same player-controller blob is present at sealed Piece 006 and Piece 011 starting HEAD.
- VERIFIED_REPOSITORY_FACT: Piece 010 documentation incorrectly stated the current controller used event.relative.
- VERIFIED_REPOSITORY_FACT: QUALITY_BASELINE LAST_VERIFIED_COMMIT lagged MASTER_STATE after Piece 010.
- VERIFIED_REPOSITORY_FACT: ISSUE-003 and ISSUE-004 statuses were stale after Piece 010/live-code verification.

ASSUMPTIONS:
- None about gameplay behavior; this piece repairs documentation/control truth only.

KNOWN_UNKNOWNS:
- Godot runtime/parser behavior remains unexecuted.
- Exact historical commit that first introduced screen_relative is not needed to repair the false current-state claim; verified evidence establishes it existed by Piece 006.

ACCEPTANCE_CRITERIA:
- Guide and reference log state that the live controller uses screen_relative.
- No guide statement claims the current controller uses event.relative.
- Documentation verifier reads the live controller and rejects future documentation/controller mismatch.
- MASTER_STATE and QUALITY_BASELINE LAST_VERIFIED_COMMIT values agree.
- Project-state verifier enforces that agreement.
- ISSUE-003 and ISSUE-004 are resolved with evidence.
- REG-0002 records the truth-drift failure and fix.
- Existing gameplay files remain byte-identical.
- Static suite remains at least 13/13.
- Runtime gate remains unexecuted.

TESTS_REQUIRED:
- python tests/verify_godot_docs_baseline.py
- python scripts/qa/verify_project_state.py
- python scripts/qa/verify_all.py

REGRESSION_GATES:
- No gameplay file changes.
- Existing 8 static tests remain present/passing.
- Existing 5 QA validators remain present/passing.
- Total static checks remain at least 13/13.
- RUNTIME_GATE_NOT_EXECUTED remains explicit.

STARTING_COMMIT: e2c217b98b54ba985a5599bb151f2afacab25426
ENDING_COMMIT: PENDING_COMMIT_READBACK

RESULT: Repair prepared and reconstructed cumulative static suite passed 13/13; GitHub commit/readback still pending.

FAILURES_FOUND:
- REG-0002: Piece 010 documentation falsely described the live mouse-look implementation as event.relative even though live and historical repository reads show event.screen_relative.
- QA-011-01: QUALITY_BASELINE LAST_VERIFIED_COMMIT lagged MASTER_STATE after Piece 010.
- QA-011-02: ISSUE-003 remained OPEN after its required documentation was completed.
- QA-011-03: ISSUE-004 described an already-fixed condition as an open future gameplay repair.

FIXES_APPLIED:
- Correct technical documentation and add controller cross-check to the documentation verifier.
- Align verified-commit state and add a relational project-state QA assertion.
- Resolve stale issue records.
- Defer all new architecture work until this repair is sealed.

FINAL_STATUS: STATIC_VERIFIED
