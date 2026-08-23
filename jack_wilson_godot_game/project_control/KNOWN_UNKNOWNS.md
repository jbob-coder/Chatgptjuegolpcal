# Known Unknowns

## U-0001
UNKNOWN_ID: U-0001
DESCRIPTION: Exact authoritative source dimensions of ROOM_JACK_START_01.
WHY UNKNOWN: Active repository data says exact_source_dimensions_known=false. SOURCE-010 was read and explicitly preserves the already-promoted gameplay reconstruction rather than establishing an original-source measurement.
RELATED SOURCE: SOURCE-003; SOURCE-010
IMPACT: Exact geometry cannot be claimed as canon.
SAFE REVERSIBLE FALLBACK: Use the current 4.2 × 3.6 × 2.7 m gameplay shell while preserving reversible/non-canon classification.
BLOCKS PROGRESS: NO
RESOLUTION NEEDED FROM: an original source that explicitly fixes exact dimensions; current active city materialization does not
STATUS: OPEN

## U-0002
UNKNOWN_ID: U-0002
DESCRIPTION: Exact furniture placement in ROOM_JACK_START_01.
WHY UNKNOWN: Current data explicitly leaves placement unresolved.
RELATED SOURCE: data/locations/room_jack_start_01.json
IMPACT: Furniture geometry should not be implemented as source fact.
SAFE REVERSIBLE FALLBACK: Defer furniture until a dedicated reversible layout piece or authoritative evidence exists.
BLOCKS PROGRESS: NO
RESOLUTION NEEDED FROM: authoritative source or dedicated reversible design decision
STATUS: OPEN

## U-0003
UNKNOWN_ID: U-0003
DESCRIPTION: Godot 4.7.x parser/runtime result for the current project.
WHY UNKNOWN: No Godot executable is available in the active execution environment.
RELATED SOURCE: project.godot
IMPACT: Static verification cannot be promoted to runtime verification.
SAFE REVERSIBLE FALLBACK: Continue only safe static work and retain RUNTIME_GATE_NOT_EXECUTED.
BLOCKS PROGRESS: NO for static infrastructure; YES for any claim of runtime verification
RESOLUTION NEEDED FROM: environment with Godot 4.7.x
STATUS: OPEN

## U-0004
UNKNOWN_ID: U-0004
DESCRIPTION: Recovery-hint campaign values CHAR_JACK_WILSON, level 1/cap 20, year 2670 CE, T-14, and ABILITY_STEAL have not yet been verified against active authoritative project records in this game root.
WHY UNKNOWN: These values are present in the user's recovery hint but the current game root has no verified character/campaign record containing them.
RELATED SOURCE: SOURCE-001
IMPACT: Do not implement them as repository source facts until verification is performed.
SAFE REVERSIBLE FALLBACK: Keep gameplay work independent of those values until a dedicated source-verification/data-contract piece.
BLOCKS PROGRESS: NO for current infrastructure and room/player mechanics
RESOLUTION NEEDED FROM: authoritative campaign/source record or newer user-confirmed project record
STATUS: OPEN

## U-0005
UNKNOWN_ID: U-0005
DESCRIPTION: Authority for the four repository-organization systems temporarily inserted by the Piece 010 seal.
WHY UNKNOWN: The repository had not registered the separation directive when Piece 011 audited it.
RELATED SOURCE: Q-0002; SOURCE-007
IMPACT: Previously blocked treating the organization systems as user-authorized.
SAFE REVERSIBLE FALLBACK: N/A after resolution.
BLOCKS PROGRESS: NO
RESOLUTION NEEDED FROM: resolved by explicit current-conversation user directive registered as SOURCE-007.
STATUS: RESOLVED
RESOLUTION: User explicitly instructed the repository separation/routing/graph architecture and ordered its execution in GitHub. Q-0002 is ANSWERED/CONFIRMED.

## U-0006
UNKNOWN_ID: U-0006
DESCRIPTION: Exact source-to-Godot axis transform, floating-origin policy, and chunk-origin contract for ASTERLINE_LOCAL_METRIC_V1.
WHY UNKNOWN: The authoritative source uses X east, Y north, Z up, while Godot is Y-up; Piece 013 intentionally deferred conversion until official Godot evidence and deterministic tests existed.
RELATED SOURCE: SOURCE-009; SOURCE-012; D-0012; data/world/asterline/coordinate_transform.json
IMPACT: Resolved for static source conversion and future loader input. Physical world geometry still requires a loader and runtime verification.
SAFE REVERSIBLE FALLBACK: Absolute source coordinates remain authoritative, so the versioned transform/rebase policy can be replaced transactionally without rewriting source geometry.
BLOCKS PROGRESS: NO for Piece 015 source loading; YES for claims that runtime rebasing or scene integration already works
RESOLUTION NEEDED FROM: Godot 4.7 parser/runtime execution and future loaded-subsystem rebase tests
STATUS: RESOLVED_STATIC_RUNTIME_OPEN
RESOLUTION: Piece 014 defines `[E-E0,U-U0,-(N-N0)]`, inverse conversion, 100 m floor-based source cells, and a 1,600 m rebase request threshold. Static round-trip/distance/source-manifest tests pass; runtime remains open.

## U-0007
UNKNOWN_ID: U-0007
DESCRIPTION: Whether future Drive revisions will intentionally supersede one or more Piece 013 source pins.
WHY UNKNOWN: Drive files can receive later revisions after this snapshot.
RELATED SOURCE: SOURCE-009; SOURCE-010; SOURCE-011
IMPACT: A changed ID/modified time/size/semantic fingerprint cannot be silently treated as the same spatial authority.
SAFE REVERSIBLE FALLBACK: Fail closed, retain the committed pinned projection, re-read the changed source, classify the delta, and update manifests/docs/tests transactionally in a dedicated piece.
BLOCKS PROGRESS: NO while pins match; YES for publishing geometry from a mismatched source
RESOLUTION NEEDED FROM: source reconciliation when and only when a pin changes
STATUS: OPEN_CONDITIONAL

## U-0008
UNKNOWN_ID: U-0008
DESCRIPTION: Godot 4.7 parser/runtime behavior of `AsterlineSpatialLoader`, packaged `res://` JSON availability, and live exact-polygon queries.
WHY UNKNOWN: The current environment has no Godot executable. Python/static inspection cannot prove GDScript parsing, export packaging, FileAccess behavior, or Variant typing at runtime.
RELATED SOURCE: SOURCE-013; scripts/world/asterline_spatial_loader.gd; data/world/asterline/chunk_index.json
IMPACT: The loader/index may be used as a static contract and future implementation input, but cannot be described as engine-executed or production-streaming-ready.
SAFE REVERSIBLE FALLBACK: Keep loader absent from scenes/autoloads, retain fail-closed static validation, and add a Godot runtime fixture before first scene integration.
BLOCKS PROGRESS: NO for static chunk/index work; YES for runtime-loader claims and physical streaming integration
RESOLUTION NEEDED FROM: Godot 4.7 parser/runtime environment with packaged resource and point-query fixtures
STATUS: OPEN
