# Piece 015 — Pinned spatial source loader and chunk index

STATUS: COMPLETE
STARTING_COMMIT: 1452610082d2f2e4c2ac5708a384d52e22534757
IMPLEMENTATION_COMMIT: 71a35e95cc869022c0c90f52c330386f6504ba3f
RUNTIME_GATE: RUNTIME_GATE_NOT_EXECUTED

Purpose:
- Make the compact Asterline city/start/coordinate/guard authority queryable as one read-only fail-closed bundle.
- Define complete-city and start-detail request boundaries from exact source polygons rather than inventing a second grid.
- Prevent legal coarse/detail metadata overlap from becoming duplicate physical geometry.

Official Godot 4.7 evidence:
- `FileAccess.open(path, FileAccess.READ)` opens read-only and returns null on failure; `get_open_error()` reports the failure.
- `get_as_text()` reads UTF-8; instance `JSON.parse()` returns an Error with line/message diagnostics.
- Static `JSON.parse_string()` lacks diagnostic error handling.
- JSON objects become Dictionary values; `get()`, `has()`, and `has_all()` support safe validation.

Implemented:
- Five-file pinned bundle: city, start ring, coordinate contract, construction guard, and chunk index.
- Seven ward-coarse chunks reproducing all ward polygons/counts/neighborhood memberships.
- Nine start-block detail chunks reproducing all block polygons, vertical envelopes, 36 building memberships, and protected start anchors.
- Start-ring load group anchored at source cell `[16,-12]`.
- Read-only GDScript loader with schema/ID/fingerprint/nested-record/geometry guards, structured failures, stable-ID lookup, and AABB-plus-exact-polygon source-point queries.
- Exhaustive source re-derivation test and deterministic artifact routing.

Scope guard:
- No scene/autoload references the loader.
- No FileAccess write/store operation exists.
- No terrain, mesh, Node3D, collision, navigation, NPC, utility, interior, thread, cache, LOD, or unload behavior was implemented.
- All index/manifest geometry-created flags remain false.

Verification:
- Focused loader/index, coordinate, city bridge, routing, structure, current-piece, regression, JSON, Python compilation, and whitespace gates passed before the implementation commit.
- QA-015-01 hardened malformed nested source-contract/AABB handling before commit.
- Candidate accumulated runner: 16/17 pass; only `verify_project_state.py` fails at ISSUE-007's missing connector-written local commit object.
- No validator was weakened and no 17/17 local result is claimed.
- Authenticated GitHub `main` readback on 2026-08-23 resolved to implementation commit `71a35e95cc869022c0c90f52c330386f6504ba3f`, message `Add Piece 015 pinned spatial loader and chunk index`, parent `1452610082d2f2e4c2ac5708a384d52e22534757`, and tree `7e5f7cef0873c6ffc6061f84eee7f7a4b3b5b884`.
- Current committed `project.godot`, chunk/source files, loader/index documentation, and Piece 015 history were read back through the authenticated GitHub connector.
- Runtime/parser execution remains unverified because the Godot executable is unavailable in this environment.
