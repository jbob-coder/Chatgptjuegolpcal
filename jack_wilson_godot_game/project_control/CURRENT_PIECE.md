# Current Piece

PIECE_ID: PIECE-015
TITLE: Pinned spatial source loader and chunk index
STATUS: STATIC_VERIFIED
PURPOSE: Make the complete compact Asterline authority safely queryable as a read-only, five-file, fail-closed bundle with exact source-derived ward/start-block chunks before any terrain or world geometry is created.

IN_SCOPE:
- Verify Godot 4.7 FileAccess, JSON, Dictionary, and runtime-file-loading documentation.
- Create a source-derived chunk index with seven ward-coarse chunks and nine start-block detail chunks.
- Pin the index to city/start semantic source fingerprints, manifest IDs, coordinate contract, and construction guard.
- Add one read-only GDScript loader that publishes no partial bundle and returns structured failures.
- Add stable-ID lookup and source-point query helpers using AABB broad phase plus exact polygon narrow phase.
- Define detail-over-coarse metadata priority without authorizing duplicate geometry.
- Add exhaustive Python verification that re-derives all 16 chunks and 36 start-ring building memberships from the existing manifests.
- Register/document all new files and update continuation records.

OUT_OF_SCOPE:
- Integrating the loader into `main.tscn`, an Autoload, or any gameplay scene.
- Copying full Drive ward/interior payloads into GitHub.
- Threaded/background loading, caching, unloading, LOD/HLOD, or visibility policy.
- Creating terrain, roads, buildings, interiors, collision, navigation, utilities, NPCs, or world objects.
- Resolving runtime save/network overlays or live Drive synchronization.
- Changing source polygons, stable IDs, coordinate transform, construction guard, room dimensions, campaign state, or private neighbor contents.
- Godot parser/runtime claims.

FILES_ALLOWED_TO_CHANGE:
- README.md
- docs/user/CURRENT_STATUS.md
- docs/world/README.md
- docs/world/ASTERLINE_SPATIAL_LOADER_AND_CHUNKS.md
- docs/godot/GODOT_4_7_MASTER_TOOL_AND_FEATURE_GUIDE.md
- docs/godot/GODOT_IMPLEMENTATION_REFERENCE_LOG.md
- data/world/asterline/city_spatial_manifest.json
- data/world/asterline/start_area_manifest.json
- data/world/asterline/chunk_index.json
- scripts/world/asterline_spatial_loader.gd
- scripts/qa/verify_city_spatial_bridge.py
- scripts/qa/verify_structure.py
- tests/verify_asterline_spatial_loader.py
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
- project_control/piece_history/PIECE-015.md

FILES_EXPECTED_TO_CREATE:
- data/world/asterline/chunk_index.json
- scripts/world/asterline_spatial_loader.gd
- docs/world/ASTERLINE_SPATIAL_LOADER_AND_CHUNKS.md
- tests/verify_asterline_spatial_loader.py
- project_control/piece_history/PIECE-015.md

SOURCE_FACTS_USED:
- SOURCE-009: seven authoritative ward polygons represent all 7,000 blocks and 23,480 building shells; source coordinates remain `[east,north,up]`.
- SOURCE-010: nine exact start-ring block polygons contain 36 buildings and the protected start anchors.
- SOURCE-011: AABBs cannot replace full XY/Z ownership and additions fail closed.
- SOURCE-012: the versioned source-to-Godot transform and anchor policy already exist.
- SOURCE-013: FileAccess READ plus diagnostic instance JSON.parse and safe Dictionary access support a read-only fail-closed bundle.

ASSUMPTIONS:
- Ward chunks are coarse query/source-routing envelopes, not physical chunk geometry.
- Start-detail chunks legally overlap W03 only as a higher-resolution metadata layer.
- Exact source polygons, not their AABBs, decide final point containment.
- Stable chunk ID order is a deterministic same-layer boundary tie-break; it does not change ownership.
- Loading five compact files synchronously is acceptable for this bounded contract; threaded/loading performance belongs to a later measured piece.

KNOWN_UNKNOWNS:
- Godot parser/runtime behavior and exported `res://` availability for all five JSON files.
- Actual load/parse time and memory footprint in a target build.
- Future full ward/block payload fetch, cache, eviction, LOD, and background-thread architecture.
- Runtime interaction with live origin rebasing, navigation, physics, and multiplayer.

ACCEPTANCE_CRITERIA:
- Chunk index pins all four source contracts and exact city/start semantic fingerprints.
- Seven ward chunks exactly reproduce source polygons, AABBs, centroids, elevation bands, neighborhood membership, and 7,000/23,480 totals.
- Nine start chunks exactly reproduce block polygons, AABBs, centroids, vertical envelopes, 36 building memberships, and protected anchors.
- Chunk IDs are unique; detail priority is above coarse; AABB-only selection is forbidden; all geometry flags remain false.
- Loader opens exactly five `res://` JSON files with `FileAccess.READ`, diagnostic `JSON.parse()`, Dictionary/schema/ID/fingerprint/nested-record validation, and structured failures.
- Loader contains no write APIs, Node/mesh instantiation, or main-scene integration.
- New files have deterministic artifact/path ownership and readable folder documentation.
- Piece-specific content checks pass; the known stale-local-object ISSUE-007 remains explicit and no validator is weakened.

TESTS_REQUIRED:
- python tests/verify_asterline_spatial_loader.py
- python tests/verify_asterline_coordinates.py
- python scripts/qa/verify_city_spatial_bridge.py
- python scripts/qa/verify_artifact_routing.py
- python scripts/qa/verify_structure.py
- python scripts/qa/verify_all.py
- git diff --check
- exact GitHub branch/tree/blob readback after commit

REGRESSION_GATES:
- Nine previous static gameplay/control/world tests remain passing where executable.
- Seven QA validators remain unchanged and strict.
- Piece 013 containment/non-overlap/source-pin/private-boundary checks remain passing.
- Piece 014 transform/inverse/origin checks remain passing.
- Existing scene/player/room/campaign files remain unchanged.
- No runtime, geometry, threaded-loading, or partial-bundle claim is introduced.
- ISSUE-007 is not hidden by weakening local commit-existence validation.

STARTING_COMMIT: 1452610082d2f2e4c2ac5708a384d52e22534757
ENDING_COMMIT: PENDING_COMMIT_READBACK

RESULT: Exact 7-ward/9-start-block index, five-file read-only loader, diagnostics, exact-polygon queries, source re-derivation tests, documentation, and routing pass every content/structure gate. The accumulated runner passes 16 of 17 checks and fails only the previously recorded ISSUE-007 stale-local-commit object probe; commit/readback is pending.

FAILURES_FOUND:
- QA-015-01: First review found that malformed nested source-contract/AABB records could reach unchecked `.get()`/indexing paths and raise a runtime error instead of returning the promised structured fail-closed response.
- ISSUE-007 persists: the local clone lacks connector-written remote commits because the environment rejected fetch, so `verify_project_state.py` cannot pass its strict local commit-object probe. All other 16 Piece 015 candidate checks pass.

FIXES_APPLIED:
- Added schema checks; required nested contract keys/types; city/start fingerprint comparison; polygon-point, AABB, counts/runtime, and manifest-runtime validations before any query bundle can publish. Expanded the static regression test to require these guards.
- Kept the local commit-existence validator unchanged and reported the 16/17 result rather than claiming a full cumulative pass.

FINAL_STATUS: STATIC_VERIFIED
