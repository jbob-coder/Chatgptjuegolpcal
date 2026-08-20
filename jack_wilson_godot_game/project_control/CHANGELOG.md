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
