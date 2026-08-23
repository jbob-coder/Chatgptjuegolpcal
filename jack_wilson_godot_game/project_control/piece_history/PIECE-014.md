# Piece 014 — Source-to-Godot coordinate transform and floating-origin contract

STATUS: STATIC_VERIFIED
STARTING_COMMIT: d816448c3fb9dee56254d95190909ae8ab62048a
IMPLEMENTATION_COMMIT: PENDING_COMMIT_READBACK
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
- GitHub commit and exact readback remain pending.
