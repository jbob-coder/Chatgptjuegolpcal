# Current Piece

PIECE_ID: PIECE-025
TITLE: Nine-block terrain surface and seam contract
STATUS: IN_PROGRESS
PURPOSE: Turn the authoritative Asterline start-ring terrain data into one source-derived, construction-safe terrain package and standalone Godot world scene without modifying block, ROW, parcel, building, utility, easement, water, or protected-start ownership.

IN_SCOPE:
- Re-read the active Batch040/043 source hierarchy and the exact nine-block start-ring source.
- Extract the authoritative 100 m terrain samples required around the complete nine-block ring with a one-sample border.
- Record exact ring extents, source anchor, block polygons, elevations, surface/flood classes, and source fingerprints.
- Add folder-local README ownership maps for world data, world scenes, and world scripts so later construction cannot silently reuse assigned paths or spatial responsibilities.
- Add a full-city construction map describing every ward's exact source envelope, counts, elevation bands, theme, and expansion order without duplicating the large source corpus.
- Create a standalone source-driven start-ring terrain scene/script only if the construction guard and source data allow a non-overlapping terrain substrate contract.
- Add focused static verification and update routing/control records.
- Preserve Piece 016-024 work as deferred, not completed or deleted; SOURCE-008 makes the existing Piece 025 spatial chain the current priority.

OUT_OF_SCOPE:
- Changing any authoritative city, ward, block, parcel, building, ROW, water, utility, easement, room, or protected-anchor geometry.
- Treating centroid routes as physical roads.
- Creating road/ROW meshes, buildings, parcels, utilities, public-realm objects, interiors, navigation, NPCs, or semantic occupancy.
- Integrating the standalone terrain scene into `main.tscn` before start-residence/player source alignment is explicitly solved.
- Advancing world time, mutating campaign/save state, or changing Jack's room dimensions.
- Claiming Godot parser/runtime success without an executed Godot 4.7 runtime gate.

FILES_ALLOWED_TO_CHANGE:
- README.md
- docs/user/CURRENT_STATUS.md
- docs/world/README.md
- docs/world/ASTERLINE_CONSTRUCTION_MAP.md
- docs/world/START_RING_TERRAIN_CONTRACT.md
- data/world/asterline/README.md
- data/world/asterline/start_ring_terrain_manifest.json
- scenes/world/README.md
- scenes/world/start_ring_terrain.tscn
- scripts/world/README.md
- scripts/world/start_ring_terrain.gd
- scripts/qa/verify_start_ring_terrain.py
- scripts/qa/verify_structure.py
- tests/verify_start_ring_terrain_scene.py
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
- project_control/REGRESSION_LOG.md
- project_control/CHANGELOG.md
- project_control/piece_history/PIECE-025.md

FILES_EXPECTED_TO_CREATE:
- docs/world/ASTERLINE_CONSTRUCTION_MAP.md
- docs/world/START_RING_TERRAIN_CONTRACT.md
- data/world/asterline/README.md
- data/world/asterline/start_ring_terrain_manifest.json
- scenes/world/README.md
- scenes/world/start_ring_terrain.tscn
- scripts/world/README.md
- scripts/world/start_ring_terrain.gd
- scripts/qa/verify_start_ring_terrain.py
- tests/verify_start_ring_terrain_scene.py
- project_control/piece_history/PIECE-025.md

SOURCE_FACTS_USED:
- SOURCE-008: continue city construction from the starting block outward while documenting dimensions, folder ownership, theme, and no-overlap boundaries.
- SOURCE-009: the active 290.08 km² Batch043 city authority contains 7 wards, 7,000 blocks, 23,480 buildings, physical ROW/reservations, and a fail-closed full-XY/Z construction guard.
- SOURCE-010: the nine-block W03 Riverbend ring is fully materialized and contains the protected start anchors and 36 exact building shells.
- SOURCE-011: physical ROW comes from actual free space and must not be replaced by centroid-to-centroid route hints.
- SOURCE-012: absolute source ENU coordinates map reversibly into rebased Godot coordinates.
- Drive Batch040 `CITY_RUNTIME_SUPPORT_V1.json`: 28,999 source terrain samples at 100 m spacing; the start-ring sample envelope is W03 residential urban terrain.
- Drive Batch040 `CITY_ALL_WARD_SPATIAL_RECORDS_V1.jsonl`: 7,000 exact block records and 23,480 building shells are already mapped citywide.

ASSUMPTIONS:
- The current work may reprioritize Piece 025 ahead of Pieces 016-024 because SOURCE-008 explicitly prioritizes spatial city construction; deferred pieces remain valid future work.
- A terrain substrate may underlie later authorized surface layers only when the source/guard contract explicitly treats it as terrain rather than as competing ROW/building ownership.
- The standalone terrain scene will remain unreferenced by `main.tscn` until start-room/player world alignment is solved.
- Large authoritative Drive payloads remain source-of-truth; GitHub stores compact source-derived construction inputs and provenance.

KNOWN_UNKNOWNS:
- Godot 4.7 parser/runtime behavior for any new procedural terrain script.
- Exact runtime performance and collision cost on the user's target PC.
- Final material/shader asset choice for terrain surfaces.
- The correct integration transaction for moving the current origin-local start room/player shell into the source-anchored city scene.
- Whether later citywide terrain should use generated mesh cells, imported terrain assets, or a hybrid after profiling.

ACCEPTANCE_CRITERIA:
- Piece 015 is sealed to authenticated GitHub commit `71a35e95cc869022c0c90f52c330386f6504ba3f` before Piece 025 construction work is published.
- The start-ring terrain manifest is deterministically derived from pinned source files and contains no invented block or building geometry.
- Ring source AABB, all nine block IDs/polygons/elevations, source anchor, and terrain sample grid are explicit and internally consistent.
- Folder READMEs state what belongs where and prohibit overlapping authority or hand-placed source truth.
- The city construction map covers all seven wards and preserves exact source counts/themes/envelopes rather than inventing a second city map.
- Any standalone terrain scene is source-driven, not wired into `main.tscn`, and creates no road/building/utility/public-realm geometry.
- Static terrain/source/scene checks pass where executable; known ISSUE-007 remains explicit and no existing validator is weakened.
- Runtime status remains `RUNTIME_GATE_NOT_EXECUTED` unless Godot is actually run.

TESTS_REQUIRED:
- python scripts/qa/verify_start_ring_terrain.py
- python tests/verify_start_ring_terrain_scene.py
- python tests/verify_asterline_spatial_loader.py
- python tests/verify_asterline_coordinates.py
- python scripts/qa/verify_city_spatial_bridge.py
- python scripts/qa/verify_artifact_routing.py
- python scripts/qa/verify_structure.py
- python scripts/qa/verify_all.py
- git diff --check
- authenticated GitHub branch/commit/tree/blob readback after commit

REGRESSION_GATES:
- Existing start-room, player, campaign, city/source, coordinate, chunk-loader, and no-overlap authority remain unchanged.
- No source polygon, stable ID, source fingerprint, protected anchor, or room dimension is rewritten.
- No centroid logical route becomes physical road geometry.
- No new game-root file is left without deterministic route ownership.
- ISSUE-007 is not hidden by weakening local commit-object validation.
- No runtime success is inferred from static verification.

STARTING_COMMIT: 71a35e95cc869022c0c90f52c330386f6504ba3f
ENDING_COMMIT: PENDING_COMMIT_READBACK

RESULT: Piece 025 opened after authenticated Piece 015 readback. Source extraction, terrain construction contract, standalone scene work, and verification are in progress.

FAILURES_FOUND:
- None yet for Piece 025.

FIXES_APPLIED:
- Piece 015 commit/readback truth is being sealed before new geometry work.
- Pieces 016-024 are preserved but deferred behind the user-directed spatial construction chain.

FINAL_STATUS: IN_PROGRESS
