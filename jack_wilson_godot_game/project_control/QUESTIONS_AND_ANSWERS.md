# Questions and Answers

## Q-0001
Question: Are the 4.2 × 3.6 × 2.7 m dimensions for ROOM_JACK_START_01 exact authoritative source measurements?
Why this matters: Geometry provenance must not be silently promoted from reversible gameplay reconstruction to canon.
Asked by: SOURCE_CONFLICT
Date: 2026-08-20
Related piece: PIECE-005 / future room-geometry pieces
Related files: data/locations/room_jack_start_01.json
Evidence available: The active data record explicitly sets exact_source_dimensions_known=false, geometry_authority=ORIGINAL_FILLER_GAMEPLAY_RECONSTRUCTION, and reversible=true.
Answer: No. In the current active project record they are reversible gameplay reconstruction values, not exact source measurements.
Answer source: REPOSITORY
Confidence: CONFIRMED
Status: ANSWERED
Implementation impact: Geometry may use these values reversibly, but documentation and tests must preserve their non-canon provenance.
Resolved by commit: 2afed0708a33105c046c5961336f93ede6aaedce
Notes: This answer does not assert what an unread external source may contain; it classifies only the active repository contract.

## Q-0002
Question: Was there an authoritative user directive requiring a user surface/four-plane routing contract, control-plane ownership migration, action/resource graph, and automatic user projections before gravity?
Why this matters: The Piece 010 seal inserted these systems before their source was registered, creating an authority gap.
Asked by: SOURCE_CONFLICT
Date: 2026-08-20
Related piece: PIECE-011 / PIECE-012 onward
Related files: project_control/MASTER_STATE.md; project_control/ROADMAP.md; project_control/SOURCE_REGISTRY.md; project_control/DECISIONS.md
Evidence available: SOURCE-007 records the user's explicit current-conversation directive to separate user-visible/internal/runtime/verification material, create deterministic folder ownership, use NODES=VERBS/ACTIONS and EDGES=NOUNS/RESOURCES, execute it in GitHub, solve problems, and continue.
Answer: Yes. The repository-organization work is explicitly user-authorized. The earlier UNKNOWN state was caused by failure to register the current conversation directive, not by absence of the directive.
Answer source: USER_ANSWER / SOURCE-007
Confidence: CONFIRMED
Status: ANSWERED
Implementation impact: Restore the bounded organization sequence before gravity: user surface/routing contract, ownership-folder migration, action/resource graph, then generated user projections. Preserve the prior UNKNOWN record through this superseding answer rather than deleting its history.
Resolved by commit: 4636b848dcb2bd8801c82f83c4a8a1d79ce31784
Notes: The organization directive does not authorize unrelated gameplay or canon changes.

## Q-0003
Question: Should the Godot project invent a new city map, or bridge and progressively realize the already active Asterline city atlas?
Why this matters: A second invented map would duplicate authority, break stable spatial IDs, and create uncontrolled overlap with already assigned blocks, parcels, buildings, ROW, utilities, water, and interiors.
Asked by: SOURCE_CONFLICT
Date: 2026-08-23
Related piece: PIECE-013 onward
Related files: docs/world/*; data/world/asterline/*; project_control/ROADMAP.md
Evidence available: SOURCE-008 orders continued full-city construction with dimension/no-overlap records. SOURCE-009–SOURCE-011 verify an active complete Asterline Batch040–043 atlas and a fail-closed construction guard. SOURCE-010 verifies the complete nine-block start ring.
Answer: Bridge the active Asterline atlas and build runtime realization outward from its protected start anchors. Do not invent, reroll, resize, or duplicate the city.
Answer source: USER_ANSWER plus SOURCE-009 / SOURCE-010 / SOURCE-011
Confidence: CONFIRMED
Status: ANSWERED
Implementation impact: GitHub stores compact pinned projections and runtime systems; large authoritative payloads remain in Drive. Every future geometry piece consumes the source manifests and guard.
Resolved by commit: e5eb014293e96ca08586603f7bdc46679c31aaa7
Notes: This answer authorizes integration and scaling, not bulk copying or unverified runtime claims.

## Q-0004
Question: What exact coordinate transform and origin policy must every future Asterline terrain, building, road, utility, and object use in Godot?
Why this matters: A wrong axis swap would turn northing into elevation, invert the city, or make independently streamed pieces disagree; a permanent city-scale origin would also expose first-person physics/rendering to avoidable single-precision drift.
Asked by: ASSISTANT / ENGINE_CONTRACT
Date: 2026-08-23
Related piece: PIECE-014 onward
Related files: data/world/asterline/coordinate_transform.json; scripts/world/asterline_coordinates.gd; docs/world/ASTERLINE_TO_GODOT_COORDINATES.md
Evidence available: SOURCE-009 defines `[east, north, up]`; SOURCE-012 verifies Godot +X right, +Y up, -Z forward, precision limits, origin shifting, and negative-coordinate flooring.
Answer: Source `[E,N,U]` maps to Godot local `[E-E0,U-U0,-(N-N0)]`. Select anchors on the 100 m source grid with mathematical floor, request rebasing above 1,600 m horizontal local distance, and persist absolute source coordinates plus stable IDs.
Answer source: SOURCE-009 / SOURCE-012 / D-0012
Confidence: HIGH_STATIC
Status: ANSWERED_RUNTIME_GATE_OPEN
Implementation impact: All future world loaders and geometry producers must consume the versioned contract; no scene is integrated until the loader piece. A rebase must move every participating loaded subsystem transactionally.
Resolved by commit: 231355040900182ce2e8fac65110681cc041b547
Notes: Static math and source-manifest round trips are verified; Godot parser/runtime and live rebasing remain unexecuted.

## Q-0005
Question: What are the first runtime query chunks, and how do they avoid overlapping or replacing the authoritative city geometry?
Why this matters: A second invented grid or AABB-only partition could assign space incorrectly, while W03 and the detailed start blocks legitimately overlap as different resolutions.
Asked by: ASSISTANT / ENGINE_CONTRACT
Date: 2026-08-23
Related piece: PIECE-015 onward
Related files: data/world/asterline/chunk_index.json; scripts/world/asterline_spatial_loader.gd; docs/world/ASTERLINE_SPATIAL_LOADER_AND_CHUNKS.md
Evidence available: SOURCE-009 defines seven ward polygons and complete-city counts; SOURCE-010 defines nine exact start blocks and 36 buildings; SOURCE-011 requires full XY/Z ownership; SOURCE-013 defines diagnostic read-only JSON loading.
Answer: Use seven ward-coarse metadata chunks and nine higher-priority start-block detail chunks, all copied exactly from pinned source polygons. AABBs reject obvious misses, exact polygons decide containment, and layer overlap is metadata refinement only—no layer creates geometry in Piece 015.
Answer source: SOURCE-009 / SOURCE-010 / SOURCE-011 / SOURCE-013 / D-0013
Confidence: HIGH_STATIC
Status: ANSWERED_RUNTIME_GATE_OPEN
Implementation impact: Future loaders may request stable chunk IDs and source points from this index, but physical construction still requires the coordinate contract and placement guard and may not instantiate duplicate coarse/detail geometry.
Resolved by commit: PENDING_PIECE_015_COMMIT_READBACK
Notes: Godot parser/runtime, threaded streaming, geometry creation, and unloading remain future gates.
