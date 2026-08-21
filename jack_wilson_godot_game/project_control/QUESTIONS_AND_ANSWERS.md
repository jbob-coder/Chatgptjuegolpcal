# Questions and Answers

No implementation-blocking user question is open for PIECE-008.

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
Why this matters: The Piece 010 seal inserted these four systems and changed the roadmap while claiming a latest/current user separation directive, but no matching source record or decision exists.
Asked by: SOURCE_CONFLICT
Date: 2026-08-20
Related piece: PIECE-011
Related files: project_control/MASTER_STATE.md; project_control/ROADMAP.md; project_control/SOURCE_REGISTRY.md; project_control/DECISIONS.md
Evidence available: Commit e2c217b98b54ba985a5599bb151f2afacab25426 contains the insertion; SOURCE_REGISTRY has no separation directive and DECISIONS has no decision authorizing the reorder. The current user directive available to this session specifies the continuous-development loop but not those four systems.
Answer: UNKNOWN
Answer source: REPOSITORY
Confidence: UNKNOWN
Status: OPEN
Implementation impact: Do not implement the four systems as user-authorized work. Restore the evidence-backed gameplay roadmap after the mandatory repair; the unknown does not block gravity or other unrelated reversible gameplay work.
Resolved by commit: UNRESOLVED
Notes: If a future authoritative user instruction explicitly supplies these requirements, register that source and add a new roadmap decision instead of resurrecting the old unsupported assertion.
