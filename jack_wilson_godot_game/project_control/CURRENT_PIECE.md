# Current Piece

PIECE_ID: PIECE-014
TITLE: Source-to-Godot coordinate transform and floating-origin contract
STATUS: STATIC_VERIFIED
PURPOSE: Define the one reversible, tested conversion from authoritative Asterline `[east, north, up]` coordinates to Godot-local X/Y/Z and the precision-safe origin policy that every future loader, terrain, building, road, utility, interior anchor, save, and streaming system must follow.

IN_SCOPE:
- Verify Godot 4.7 axis, Vector3, large-world precision, origin-shifting, `floori()`, `Vector2i`, and static-function documentation.
- Create a versioned machine-readable coordinate/origin contract.
- Add one stateless GDScript conversion/cell/rebase-decision utility without scene integration.
- Document forward/inverse formulas, coordinate layers, start-area example, negative-coordinate rule, and future all-participant rebase transaction.
- Update full-city/start-ring manifests to point to the defined contract while preserving `geometry_created_by_this_manifest=false`.
- Add deterministic static tests for matrix handedness, inverse/distance preservation, direction mapping, negative cells, start-ring footprint round trips, GDScript tokens, and scope boundary.
- Register every new file and update continuation/technical records.

OUT_OF_SCOPE:
- Loading a Drive or GitHub source payload at runtime.
- Integrating `AsterlineCoordinates` into `main.tscn` or any gameplay scene.
- Creating terrain, road, building, interior, collision, navigation, LOD, or streaming geometry.
- Executing a live origin rebase or claiming multi-system rebasing works.
- Requiring or producing a custom double-precision Godot build.
- Changing source atlas coordinates, stable IDs, room dimensions, campaign state, or private neighbor contents.
- Godot parser/runtime claims.

FILES_ALLOWED_TO_CHANGE:
- README.md
- docs/user/CURRENT_STATUS.md
- docs/world/README.md
- docs/world/ASTERLINE_TO_GODOT_COORDINATES.md
- docs/godot/GODOT_4_7_MASTER_TOOL_AND_FEATURE_GUIDE.md
- docs/godot/GODOT_IMPLEMENTATION_REFERENCE_LOG.md
- data/world/asterline/city_spatial_manifest.json
- data/world/asterline/start_area_manifest.json
- data/world/asterline/coordinate_transform.json
- scripts/world/asterline_coordinates.gd
- scripts/qa/verify_city_spatial_bridge.py
- scripts/qa/verify_structure.py
- tests/verify_asterline_coordinates.py
- project_control/ARCHITECTURE.md
- project_control/registry/ARTIFACT_REGISTRY.json
- project_control/MASTER_STATE.md
- project_control/CURRENT_PIECE.md
- project_control/ROADMAP.md
- project_control/QUALITY_BASELINE.md
- project_control/DECISIONS.md
- project_control/QUESTIONS_AND_ANSWERS.md
- project_control/SOURCE_REGISTRY.md
- project_control/KNOWN_UNKNOWNS.md
- project_control/ISSUES.md
- project_control/CHANGELOG.md
- project_control/piece_history/PIECE-014.md

FILES_EXPECTED_TO_CREATE:
- data/world/asterline/coordinate_transform.json
- scripts/world/asterline_coordinates.gd
- docs/world/ASTERLINE_TO_GODOT_COORDINATES.md
- tests/verify_asterline_coordinates.py
- project_control/piece_history/PIECE-014.md

SOURCE_FACTS_USED:
- SOURCE-009 / AUTHORITATIVE_SOURCE: Asterline absolute coordinates use `[east_m, north_m, up_m]` in `ASTERLINE_LOCAL_METRIC_V1` across a 290.08 km² city.
- SOURCE-010 / AUTHORITATIVE_SOURCE: start-block/residence points provide exact source-coordinate examples for the transform.
- SOURCE-012 / VERIFIED_GODOT_DOCUMENTATION: Godot is +X right, +Y up, -Z global forward; default Vector3 precision degrades away from origin; origin shifting is supported as an alternative to double precision; `floori()` floors negative values; `Vector2i` and static GDScript functions support deterministic helpers.
- VERIFIED_REPOSITORY_FACT: Piece 013 manifests forbid direct source-Y to Godot-Y mapping and contain complete start-ring polygons for round-trip testing.

ASSUMPTIONS:
- Godot global -Z represents Asterline north so +X remains east and +Y remains up.
- A conservative 1,600 m horizontal threshold below Godot's documented 2,048 m lower first-person guidance is sufficient until runtime profiling proves a stricter bound is required.
- A 100 m source cell aligns with the authoritative terrain-cell scale and remains a reversible anchoring choice.
- Source altitude anchor is zero in the cell contract; building-local interiors remain building-local and use their building source anchor when instantiated.

KNOWN_UNKNOWNS:
- Godot 4.7 parser/runtime result for the GDScript utility.
- Runtime behavior of a future transaction moving physics, navigation, particles, audio, AI, and other loaded subsystems together.
- Whether later profiling will require a lower rebase threshold or a double-precision build.
- Exact streaming/chunk loader API, which belongs to Piece 015.

ACCEPTANCE_CRITERIA:
- The machine contract defines forward/inverse formulas, matrix, determinant +1, units, source/Godot persistence roles, cell selection, threshold, rebase invariants, and runtime gate.
- East maps to +X, north to -Z, and up to +Y; inverse conversion round-trips all tested points and preserves distances.
- Negative source coordinates select cells with mathematical floor rather than truncation.
- Every start-ring block/building footprint point round-trips under the contract.
- City and start manifests point to one contract/utility and still claim no created geometry.
- GDScript utility exactly implements contract formulas and is not integrated into the main scene.
- Readable docs explain coordinate layers, start anchor, and why local coordinates cannot be persisted alone.
- New files have deterministic artifact/path ownership.
- Cumulative suite passes with 7 QA validators plus 9 static tests and no prior regression.

TESTS_REQUIRED:
- python tests/verify_asterline_coordinates.py
- python scripts/qa/verify_city_spatial_bridge.py
- python scripts/qa/verify_artifact_routing.py
- python scripts/qa/verify_structure.py
- python scripts/qa/verify_all.py
- git diff --check
- exact GitHub branch/tree/blob readback after commit

REGRESSION_GATES:
- Eight previous static gameplay/control tests remain passing.
- Seven existing QA validators remain passing.
- Piece 013 city/start geometry counts, containment, non-overlap, source pins, private boundary, and no-geometry claim remain intact.
- `scenes/main.tscn` and all existing gameplay code remain unchanged.
- Runtime gate remains RUNTIME_GATE_NOT_EXECUTED.

STARTING_COMMIT: d816448c3fb9dee56254d95190909ae8ab62048a
ENDING_COMMIT: PENDING_COMMIT_READBACK

RESULT: Coordinate/origin contract, GDScript utility, documentation, manifest pointers, artifact routing, and exhaustive start-ring round trips pass the cumulative 16/16 static suite; commit/readback is pending.

FAILURES_FOUND:
- None yet in Piece 014.

FIXES_APPLIED:
- None yet in Piece 014.

FINAL_STATUS: STATIC_VERIFIED
