# Source Registry

## SOURCE-001
SOURCE_ID: SOURCE-001
NAME: Continuous development / anti-hallucination / quality-guard directive
LOCATION: Current user instruction dated 2026-08-20
TYPE: USER_DIRECTIVE
AUTHORITY_LEVEL: 1
VERSION: 2026-08-20
DATE_ACCESSED: 2026-08-20
RELEVANT_SYSTEM: project governance, QA, continuity, source classification
FACTS EXTRACTED: Dedicated game root; main branch rule; one-piece loop; mandatory control records; runtime/static distinction; no hallucinated verification; no raw novel prose; Godot 4.7.x target.
LIMITATIONS: Does not by itself verify recovery-hint campaign values against newer authoritative project/source records.
RAW_SOURCE_READ: YES
DERIVED_ONLY: NO

## SOURCE-002
SOURCE_ID: SOURCE-002
NAME: Current GitHub repository implementation
LOCATION: jbob-coder/Chatgptjuegolpcal main, jack_wilson_godot_game/
TYPE: VERIFIED_REPOSITORY
AUTHORITY_LEVEL: 4
VERSION: observed through 5e0aac0d8857e5ce18889da3cd12dc83a248cc7e
DATE_ACCESSED: 2026-08-20
RELEVANT_SYSTEM: all currently implemented game and QA pieces
FACTS EXTRACTED: Pieces 001–006 gameplay/static implementation; Piece 007 QA repair; Piece 008 persistent continuation core; Piece 009 QA validators; current scenes/scripts/data/tests/project-control records; README status.
LIMITATIONS: Static repository inspection does not prove Godot runtime/parser behavior.
RAW_SOURCE_READ: YES
DERIVED_ONLY: NO

## SOURCE-003
SOURCE_ID: SOURCE-003
NAME: 239_START_LOCATION_BLUEPRINTS_V1.json pointer
LOCATION: Referenced by data/locations/room_jack_start_01.json; external Drive pointer retained in that record
TYPE: AUTHORITATIVE_SOURCE_POINTER
AUTHORITY_LEVEL: 2 when directly verified; currently pointer-only
VERSION: UNKNOWN
DATE_ACCESSED: 2026-08-20
RELEVANT_SYSTEM: ROOM_JACK_START_01 source provenance
FACTS EXTRACTED: None directly from the external source in this session.
LIMITATIONS: RAW SOURCE NOT READ in this session. The active repository record classifies its shell geometry as reversible gameplay reconstruction.
RAW_SOURCE_READ: NO
DERIVED_ONLY: YES

## SOURCE-004
SOURCE_ID: SOURCE-004
NAME: Official Godot 4.7 documentation
LOCATION: https://docs.godotengine.org/en/4.7/
TYPE: VERIFIED_GODOT_DOCUMENTATION
AUTHORITY_LEVEL: 5
VERSION: Godot 4.7
DATE_ACCESSED: 2026-08-20
RELEVANT_SYSTEM: engine version, CharacterBody3D, Input, InputMap, InputEventMouseMotion, ProjectSettings gravity
FACTS EXTRACTED: Version-specific API and behavioral facts recorded in docs/godot/GODOT_IMPLEMENTATION_REFERENCE_LOG.md.
LIMITATIONS: Documentation evidence does not prove this repository parses or runs in the engine.
RAW_SOURCE_READ: YES
DERIVED_ONLY: NO

## SOURCE-005
SOURCE_ID: SOURCE-005
NAME: Official Godot release policy
LOCATION: https://docs.godotengine.org/en/latest/about/release_policy.html
TYPE: VERIFIED_GODOT_DOCUMENTATION
AUTHORITY_LEVEL: 5
VERSION: accessed 2026-08-20
DATE_ACCESSED: 2026-08-20
RELEVANT_SYSTEM: target engine support status
FACTS EXTRACTED: Godot 4.7 is listed as a June 2026 supported release.
LIMITATIONS: Release policy is version-status evidence, not per-API implementation evidence.
RAW_SOURCE_READ: YES
DERIVED_ONLY: NO
