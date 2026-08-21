# Known Unknowns

## U-0001
UNKNOWN_ID: U-0001
DESCRIPTION: Exact authoritative source dimensions of ROOM_JACK_START_01.
WHY UNKNOWN: Active repository data explicitly says exact_source_dimensions_known=false; external source was not read in this session.
RELATED SOURCE: SOURCE-003
IMPACT: Exact geometry cannot be claimed as canon.
SAFE REVERSIBLE FALLBACK: Use the current 4.2 × 3.6 × 2.7 m gameplay shell while preserving reversible/non-canon classification.
BLOCKS PROGRESS: NO
RESOLUTION NEEDED FROM: authoritative source verification
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
