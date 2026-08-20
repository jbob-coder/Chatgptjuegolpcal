# Piece 008 — Persistent continuation core

STATUS: COMPLETE
STARTING_COMMIT: dc18e83165f319b1770c03484eb1d200b6e5d8a0
FIRST_IMPLEMENTATION_ATTEMPT: 31ed70f66c922b4b3c6aa939fcabd20b9d2012d4
FINAL_IMPLEMENTATION_COMMIT: 2707ca1dd4794b29210594e1524d647e6d936c77
RUNTIME_GATE: RUNTIME_GATE_NOT_EXECUTED

Purpose: establish durable repository-backed continuation records so a future session can reconstruct project state without relying on conversational memory.

Changes:
- Added MASTER_STATE, ROADMAP, DECISIONS, QUESTIONS_AND_ANSWERS, SOURCE_REGISTRY, KNOWN_UNKNOWNS, ISSUES, and CHANGELOG records.
- Added tests/verify_project_control_core.py.
- Preserved room-geometry provenance and Godot runtime uncertainty explicitly.
- Did not add gameplay behavior.

Failure found during readback:
- QA-008-01: the first verifier hard-coded transient current/previous/next piece IDs and STATIC_VERIFIED status. It would become invalid when Piece 009 started.

Repair:
- The verifier now derives current piece ID and status from CURRENT_PIECE.md, cross-checks them against MASTER_STATE.md and ROADMAP.md, and validates the next piece relationally.
- Fixed invariants remain explicit for repository, root, branch, pointer-only source classification, reversible room uncertainty, and runtime-gate honesty.

Verification:
- Before Piece 008: 6/6 reconstructed static verifiers passed.
- After Piece 008 and the state-relative repair: 7/7 reconstructed static verifiers passed; verify_all.py emitted VERIFY_ALL_STATIC_OK.
- GitHub readback confirmed the corrected verifier and Piece 008 record at 2707ca1dd4794b29210594e1524d647e6d936c77.

Limitations:
- The environment has no Godot executable, so no parser/runtime pass is claimed.
- The execution container cannot clone GitHub directly because github.com DNS resolution is unavailable; static tests use a connector-fetched reconstructed snapshot.
