# Piece 014 — Source-to-Godot coordinate transform and floating-origin contract

STATUS: COMPLETE
STARTING_COMMIT: d816448c3fb9dee56254d95190909ae8ab62048a
IMPLEMENTATION_COMMIT: 231355040900182ce2e8fac65110681cc041b547
RUNTIME_GATE: RUNTIME_GATE_NOT_EXECUTED

Purpose:
- Give every future Asterline runtime subsystem one reversible coordinate conversion instead of allowing independent axis swaps.
- Keep a 290.08 km² source city precise by deriving small Godot-local coordinates from authoritative absolute source coordinates.
- Define the rebase transaction boundary before any loader or terrain geometry is implemented.

Official Godot 4.7 evidence:
- +X is right/east, +Y is up, and global forward is -Z.
- Default `Vector3` precision decreases away from origin; official first-person guidance starts at a 2,048 m lower range boundary.
- Origin shifting is a documented alternative to double-precision builds.
- `floori()` rounds negative values toward negative infinity; `Vector2i`, named classes, and static functions support deterministic cell utilities.

Implemented candidate:
- Versioned JSON contract for `[E,N,U] → [E-E0,U-U0,-(N-N0)]` and its inverse.
- Determinant +1 / unit-scale / distance-preserving invariants.
- 100 m floor-based source cells and a 1,600 m horizontal rebase-request threshold.
- Stateless `AsterlineCoordinates` GDScript utility with conversion, inverse, cell, anchor, distance, threshold, and rebase-delta functions.
- Readable coordinate-layer, start-anchor, persistence, and future all-participant rebase rules.
- Exhaustive static round trips for every start-ring block/building footprint point.

Scope guard:
- No scene references the utility.
- No loader, geometry, collision, navigation, LOD, or runtime rebase was added.
- Absolute source coordinates and stable IDs remain authoritative.
- No custom Godot build or runtime/parser pass is claimed.

Verification:
- `python tests/verify_asterline_coordinates.py`: PASS.
- `python scripts/qa/verify_city_spatial_bridge.py`: PASS.
- Full cumulative verification: 7 QA validators + 9 static tests = 16/16 PASS.
- `git diff --check`: PASS.
- Live `main` and commit resolved to `231355040900182ce2e8fac65110681cc041b547`.
- Recursive tree `d79d414980d2b07c522981c275ac384c747e8241` was complete (`truncated=false`, 649 entries).
- All 26 intended file blobs matched their locally verified Git blob identities; mismatches: 0.
- QA-014-01 / ISSUE-007: the environment rejected the post-commit local fetch, so the strict local object-existence gate cannot rerun in this stale clone. The validator remains unchanged; remote connector evidence proves the commit/tree/blob state.
- Seal-state rerun preserved 15 passing executable checks and failed only `verify_project_state.py` at the explicitly recorded missing local commit object; `git diff --check` still passed. This is not represented as a 16/16 seal-state run.
