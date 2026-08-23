# Changelog

## 2026-08-23 — Piece 013 candidate
- Verified the active Asterline Batch040–043 Drive authority instead of inventing a second city.
- Added readable world folder, full-city, nine-block start-ring, and no-overlap maps under `docs/world/`.
- Added compact runtime projections under `data/world/asterline/`: full 7-ward/28-neighborhood city skeleton, 9 blocks with 36 building/parcel envelopes, protected residence interior, 24 public objects, and fail-closed construction guard.
- Pinned source IDs, modified times, sizes, and normalized semantic SHA-256 fingerprints while leaving the large source corpus in Drive.
- Added a global static validator for source pins, counts, stable IDs, polygon containment/non-overlap, interior envelope fit, private-neighbor protection, axis safety, routing, and documentation.
- First validation exposed QA-013-01: the rounded ward records sum to 290.079 km², not the initial expected 290.081 km²; corrected the expectation and documented its relationship to the 290.08 km² city boundary.
- REG-0004: a local ledger-sorting defect temporarily truncated the decision/source ledgers before commit; restored both from the sealed GitHub baseline, reapplied new entries explicitly, and added a truncation/duplicate-ID regression gate.
- QA-013-03: removed two terminal blank lines caught by `git diff --check` after the content suite had passed.
- No existing scene, GDScript, room data, campaign state, or Godot runtime claim changed.

## 2026-08-23 — Piece 012
- Added explicit USER_SURFACE, CONTROL_PLANE, GAME_RUNTIME, and VERIFICATION ownership.
- Added path and artifact registries with current paths and Piece 013 migration destinations.
- Added a first-match routing validator covering duplicate IDs/paths, missing registered artifacts, unrouted files, QA precedence, runtime-file leakage, and user-projection authority.
- Added required user-surface/registry structure gates and expanded cumulative QA from 5 to 6 validators.
- The first cumulative run exposed QA-012-01 (stale validator inventory in the regression guard); the inventory was repaired before advancement.
- Rebuilt the game-root README as a folder and authority map.
- Re-verified repository access and resolved the former clone/DNS limitation for the current environment.
- Published commit `b7e3a31523603e8ff203ab13762821c221a4ced1`; exact live branch/tree/readback matched all 16 intended Git blobs with zero mismatches.
- The first sealed-state rerun exposed a missing local commit object for the connector-written SHA; exact GitHub metadata and the matching staged tree restored the object, after which the unchanged cumulative suite passed 14/14.
- No gameplay files changed; Godot runtime remains unexecuted.

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
- Piece 010 sealed COMPLETE, but Piece 011 later corrected truth/authority defects introduced in Piece 010 records/seal.

## 2026-08-20 — Piece 011 (static verified; final repair commit/readback pending)
- Detected REG-0002: Piece 010 falsely recorded that the live controller used event.relative; live and Piece 006 historical reads show event.screen_relative.
- Concurrent repair commit 921fbaf8abc09e61d0b98fc4f286cef1ecb367ba corrected the Godot guide/reference log, live-code docs verifier, verified-commit relation, and stale ISSUE-003/ISSUE-004 records.
- Audit of that repair found REG-0003: Piece 010 seal and first repair still retained four repository-organization systems tied to an unregistered separation directive.
- Merged repair removes those unsupported systems from the active roadmap, registers Q-0002/U-0005, restores gravity as next, and adds a source-pointer QA guard.
- Reconstructed cumulative static suite passes 13/13 after the merged repair candidate.
- No gameplay code changes are in scope.
