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
- Found QA-009-01 during review: hard-coded current runtime-gate assertions would become stale after a future legitimate runtime verification. Replaced them with relational MASTER_STATE/QUALITY_BASELINE consistency checks.
- Reconstructed static suite passes 12/12; committed QA orchestrator/state validator readback confirmed at 94688bda38135ffbf43bc001c81a1ecabc180989; Godot runtime remains unexecuted.
- No gameplay files changed.
