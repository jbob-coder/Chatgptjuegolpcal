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
