# Changelog

## 2026-08-20 — Piece 007
- Detected REG-0001 in the cumulative static test suite.
- Repaired the stale Piece 003 mouse-look prohibition without changing gameplay code.
- Added scripts/qa/verify_all.py.
- Sealed Piece 007 after GitHub committed-content readback.

## 2026-08-20 — Piece 008
- Added the persistent continuation core required for cross-session recovery.
- Added a project-control core verifier and increased the cumulative static suite from 6 to 7 verifiers.
- During GitHub readback, rejected the first verifier design because it hard-coded transient Piece 007/008/009 state and would fail on normal advancement.
- Replaced those transient assertions with state-relative consistency checks and reran the reconstructed suite at 7/7 PASS.
- No gameplay files changed.

## 2026-08-20 — Piece 009
- Added preflight, structure, project-state, current-piece, and regression-baseline validators.
- Expanded verify_all.py to orchestrate five QA validators plus seven existing static tests.
- Added machine-readable minimum quality metrics to QUALITY_BASELINE.md.
- Found QA-009-01 during review and replaced transient runtime-gate assertions with relational consistency checks.
- Reconstructed static suite passed 12/12; Godot runtime remained unexecuted.
- No gameplay files changed.

## 2026-08-20 — Piece 010
- Established the incremental Godot 4.7 documentation authority baseline from official versioned sources.
- Added a versioned implementation-reference log for CharacterBody3D, Input, InputMap, captured mouse motion, and planned 3D gravity.
- Added a documentation baseline verifier and taught structure validation that the two Godot reference records are mandatory.
- Reconstructed static suite passed 13/13 and committed documentation/verifier readback was completed at 4c64bcbaabf2eaff5f23d3e94212175644a1263f.
- Piece 010 sealed COMPLETE.

## 2026-08-20 — Piece 011 (static verified; commit pending)
- Detected REG-0002: Piece 010 falsely recorded that the live controller used event.relative; live and Piece 006 historical reads show event.screen_relative.
- Stopped repository-organization work before commit.
- Repaired the Godot guide/reference log and added a live-code cross-check to the documentation verifier.
- Repaired stale verified-commit baseline and stale ISSUE-003/ISSUE-004 records.
- Added a project-state guard requiring MASTER_STATE and QUALITY_BASELINE verified-commit pointers to agree.
- Reconstructed cumulative static suite passes 13/13 after the repair candidate.
- No gameplay code changes are in scope.
