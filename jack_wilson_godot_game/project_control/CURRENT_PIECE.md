# Current Piece

PIECE_ID: PIECE-013
TITLE: Asterline spatial-authority bridge
STATUS: STATIC_VERIFIED
PURPOSE: Bridge the already materialized Asterline city and nine-block start area into the isolated Godot game root with explicit folder ownership, pinned source identity, dimensions, coordinate authority, and fail-closed no-overlap checks—without duplicating the large source corpus or fabricating Godot geometry.

IN_SCOPE:
- Register the newest user directive to continue from the start block outward to a full city without overlap.
- Verify and pin the active Drive Batch040–043 city atlas, readiness index, composite index, construction guard, spatial docs, and start-area materialization.
- Create readable docs/world folder/file, full-city, start-ring, and placement-rule maps.
- Create compact data/world/asterline runtime projections for the full city skeleton, complete nine-block ring, and construction guard.
- Include all 7 ward polygons, 28 neighborhood polygons, 5 water features, 14 trunk routes, 9 start blocks, 36 start-ring building/parcel envelopes, protected residence interior, and 24 start-area public objects.
- Add deterministic routing/artifact ownership and a standard-library containment/collision/source-pin validator.
- Reorder the roadmap from the starting room and block outward to full-city streaming while preserving deferred authorized organization work.

OUT_OF_SCOPE:
- Copying the approximately 1.16 GB authoritative Drive corpus into GitHub.
- Selecting or implementing the source-to-Godot axis transform or floating-origin policy.
- Generating Godot terrain, roads, buildings, utilities, interiors, meshes, collision shapes, or navigation.
- Changing ROOM_JACK_START_01 dimensions or their reversible reconstruction provenance.
- Revealing private neighbor-room contents.
- Advancing campaign time, occupancy, schedules, locks, damage, or player knowledge.
- Godot runtime/parser claims.

FILES_ALLOWED_TO_CHANGE:
- README.md
- docs/user/CURRENT_STATUS.md
- docs/world/*
- data/world/asterline/*
- scripts/qa/verify_city_spatial_bridge.py
- scripts/qa/verify_all.py
- scripts/qa/regression_guard.py
- scripts/qa/verify_structure.py
- project_control/ARCHITECTURE.md
- project_control/registry/*
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
- project_control/piece_history/PIECE-013.md

FILES_EXPECTED_TO_CREATE:
- docs/world/README.md
- docs/world/ASTERLINE_CITY_SPATIAL_AUTHORITY.md
- docs/world/START_AREA_AND_NINE_BLOCK_RING.md
- docs/world/SPATIAL_PLACEMENT_AND_NO_OVERLAP.md
- data/world/asterline/city_spatial_manifest.json
- data/world/asterline/start_area_manifest.json
- data/world/asterline/spatial_construction_guard.json
- scripts/qa/verify_city_spatial_bridge.py
- project_control/piece_history/PIECE-013.md

SOURCE_FACTS_USED:
- SOURCE-008 / USER_DIRECTIVE: continue the world from the ready terrain/start point through surrounding blocks to a full city; record folders, positions, dimensions, inside/outside space, theme, and anti-overlap rules; proceed without asking.
- SOURCE-009 / AUTHORITATIVE_SOURCE: active Asterline Batch043 atlas/guard/readiness/composite records define 290.08 km², 7 wards, 28 neighborhoods, 7,000 blocks, 23,480 building shells, physical ROW/easements/strata/utilities, and zero true 3D building collisions.
- SOURCE-010 / AUTHORITATIVE_SOURCE: START_AREA_FULL_MATERIALIZATION_V1 defines the exact nine-block ring, 36 building/parcel envelopes, protected start residence and interior, pickup curb, and public realm.
- SOURCE-011 / AUTHORITATIVE_SOURCE: active spatial Markdown records define folder authority, reserved space, physical transport, and the mandatory no-overlap/change workflow.
- VERIFIED_REPOSITORY_FACT: Piece 012 already provides deterministic USER_SURFACE / CONTROL_PLANE / GAME_RUNTIME / VERIFICATION routing.

ASSUMPTIONS:
- The active Drive source is the city authority; GitHub manifests are pinned compact projections and must not become a divergent second city.
- Source coordinates remain [east, north, up] until Piece 014 establishes a tested Godot transform.
- Semantic SHA-256 values fingerprint normalized parsed JSON content, not raw Drive byte streams.
- No geometry is free merely because it appears visually empty.

KNOWN_UNKNOWNS:
- Exact source-to-Godot axis transform and floating-origin/chunk-origin policy.
- Whether a future Drive revision will intentionally supersede any pinned file; pin drift must fail closed until reconciled.
- Godot parser/runtime behavior remains unexecuted.
- Original-source exact Jack-room dimensions remain unknown even though the active materialization preserves the reversible 4.2 × 3.6 × 2.7 m reconstruction.

ACCEPTANCE_CRITERIA:
- docs/world explains what belongs in each folder and where city, start-ring, and placement information lives.
- Full-city manifest pins file identity/modified time/size/semantic fingerprint and embeds city bounds, theme, 7 wards, 28 neighborhoods, water, routes, and integrity counts.
- Start manifest contains nine unique non-overlapping block polygons, 36 unique non-overlapping building footprints within owning blocks/parcels, exact elevations/exteriors, protected residence spaces within envelope, and 24 public objects.
- Guard mirrors the active placement precedence, twelve mandatory checks, and fail-closed rule.
- Existing reversible room provenance remains false-for-exact-source and reversible.
- Source Y cannot be silently treated as Godot Y; geometry claims remain false.
- Routing and artifact registries give every new file one deterministic owner.
- Cumulative suite passes with 7 QA validators plus 8 existing static tests.
- No gameplay scene, GDScript, existing room data, or campaign state changes.

TESTS_REQUIRED:
- python scripts/qa/verify_city_spatial_bridge.py
- python scripts/qa/verify_artifact_routing.py
- python scripts/qa/verify_structure.py
- python scripts/qa/verify_all.py
- git diff --check
- exact GitHub branch/tree/blob readback after commit

REGRESSION_GATES:
- Eight existing static gameplay/control tests remain passing.
- Six previous QA validators remain passing.
- New city-spatial validator passes without weakening prior checks.
- No existing gameplay/runtime file changes outside new data/world projections.
- Runtime gate remains RUNTIME_GATE_NOT_EXECUTED.
- Source pins, stable IDs, private neighbor boundary, and reversible room provenance remain intact.

STARTING_COMMIT: 7a70f8a7b01baa00f86d29df8f22a1989beabd65
ENDING_COMMIT: PENDING_COMMIT_READBACK

RESULT: Source projections, documentation, routing, containment/collision guard, and source pins are locally static-verified 15/15 with a clean whitespace gate; completion still requires GitHub commit and exact readback.

FAILURES_FOUND:
- QA-013-01: The first city-spatial verifier run used 290.081 km² as the expected sum of rounded ward records; the authoritative ward values actually sum to 290.079 km² while the city boundary reports 290.08 km².
- QA-013-02 / REG-0004: A local section-sorting cleanup matched no ledger sections and temporarily reduced DECISIONS.md and SOURCE_REGISTRY.md to their headings before commit.
- QA-013-03: The first combined suite/whitespace gate passed all 15 static checks but `git diff --check` rejected one extra terminal blank line in each restored ledger.

FIXES_APPLIED:
- Corrected the verifier to the exact published ward-record sum and documented the 0.001 km² rounding relationship without altering source geometry.
- Stopped feature work, restored both ledgers from the exact sealed 7a70 GitHub baseline, reapplied D-0010/D-0011 and SOURCE-008–SOURCE-011 explicitly in ID order, and strengthened structure QA so truncated/duplicate authority ledgers fail.
- Removed only the two extra terminal blank lines and reran the whitespace gate; no record content changed.

FINAL_STATUS: STATIC_VERIFIED
