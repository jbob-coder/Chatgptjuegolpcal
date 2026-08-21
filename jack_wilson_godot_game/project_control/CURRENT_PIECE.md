# Current Piece

PIECE_ID: PIECE-012
TITLE: User surface and four-plane routing contract
STATUS: IN_PROGRESS
PURPOSE: Establish a small enforceable separation between user-facing information, internal control state, game runtime content, and verification material without moving existing control files yet.

IN_SCOPE:
- Create docs/user/START_HERE.md, CURRENT_STATUS.md, and QUESTIONS_FOR_USER.md as non-authoritative user projections.
- Create project_control/ARCHITECTURE.md defining USER_SURFACE, CONTROL_PLANE, GAME_RUNTIME, and VERIFICATION planes.
- Create project_control/registry/ARTIFACT_REGISTRY.json and PATH_REGISTRY.json.
- Add scripts/qa/verify_artifact_routing.py and include it in verify_all.py.
- Teach verify_structure.py the new required directories/records.
- Keep current flat project_control files canonical during this piece and record their planned Piece 013 destinations.

OUT_OF_SCOPE:
- Physically moving existing project-control records.
- Implementing action/resource graph nodes or edges.
- Automatic generation of user projections.
- Gameplay changes, gravity, scenes, or player-controller edits.
- Godot runtime claims.

FILES_ALLOWED_TO_CHANGE:
- docs/user/*
- project_control/ARCHITECTURE.md
- project_control/registry/*
- scripts/qa/verify_artifact_routing.py
- scripts/qa/verify_all.py
- scripts/qa/verify_structure.py
- project_control/MASTER_STATE.md
- project_control/CURRENT_PIECE.md
- project_control/ROADMAP.md
- project_control/QUALITY_BASELINE.md
- project_control/DECISIONS.md
- project_control/CHANGELOG.md
- project_control/piece_history/PIECE-012.md

FILES_EXPECTED_TO_CREATE:
- docs/user/START_HERE.md
- docs/user/CURRENT_STATUS.md
- docs/user/QUESTIONS_FOR_USER.md
- project_control/ARCHITECTURE.md
- project_control/registry/ARTIFACT_REGISTRY.json
- project_control/registry/PATH_REGISTRY.json
- scripts/qa/verify_artifact_routing.py
- project_control/piece_history/PIECE-012.md

SOURCE_FACTS_USED:
- SOURCE-007 / USER_DIRECTIVE: separate user-visible material from internal state/runtime/verification and use deterministic folder ownership.
- ANSWERED Q-0002 confirms this organization sequence is authorized.
- VERIFIED_REPOSITORY_FACT: current control records are still flat under project_control/ and must remain usable until a dedicated migration piece.

ASSUMPTIONS:
- User-facing files are projections and never independent sources of truth.
- Current flat control files remain canonical until Piece 013 performs an atomic ownership-folder migration.

KNOWN_UNKNOWNS:
- Automatic projection generation is intentionally deferred to Piece 015.
- Godot runtime/parser behavior remains unexecuted.

ACCEPTANCE_CRITERIA:
- Four planes and their ownership rules are explicit.
- User-facing docs explicitly identify themselves as non-authoritative projections.
- Artifact registry has unique artifact IDs and canonical paths.
- Path registry defines precedence so scripts/qa/** routes to VERIFICATION before general scripts/** routes to GAME_RUNTIME.
- Routing verifier fails on duplicate canonical paths, missing active registered files, runtime artifacts inside user/control areas, or authoritative user projections.
- Current flat control records are represented truthfully as current paths with planned Piece 013 destinations.
- Existing gameplay files remain unchanged.
- Cumulative static suite passes with the new routing validator.

TESTS_REQUIRED:
- python scripts/qa/verify_artifact_routing.py
- python scripts/qa/verify_structure.py
- python scripts/qa/verify_all.py

REGRESSION_GATES:
- No gameplay file changes.
- Existing eight static tests remain present/passing.
- Existing five QA validators remain passing.
- New routing validator passes.
- Runtime gate remains unexecuted.

STARTING_COMMIT: 5fc00575de3150513068184eaea5c735c3f1841f
ENDING_COMMIT: PENDING_COMMIT_READBACK

RESULT: Piece 012 started from registered SOURCE-007 authority; implementation pending.

FAILURES_FOUND:
- None yet inside Piece 012 scope.

FIXES_APPLIED:
- N/A

FINAL_STATUS: IN_PROGRESS
