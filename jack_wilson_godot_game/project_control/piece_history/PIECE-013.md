# Piece 013 — Asterline spatial-authority bridge

STATUS: STATIC_VERIFIED_PENDING_GITHUB_READBACK
STARTING_COMMIT: 7a70f8a7b01baa00f86d29df8f22a1989beabd65
IMPLEMENTATION_COMMIT: PENDING
RUNTIME_GATE: RUNTIME_GATE_NOT_EXECUTED

Purpose:
- Make the existing Asterline full-city authority usable by the isolated Godot project without creating a second map or copying the entire large corpus.
- Record where files and physical spaces belong before future geometry is generated.
- Reserve the start room, residence, center block, surrounding ring, and full city through pinned dimensions and fail-closed ownership rules.

Source verification:
- Active city folder: `1b7VixGIloOqeont21zmo7QepuSOa4Id1`.
- Active Batch043 spatial-integrity folder: `1Qul4Sd58bjRryEnXzIy0FmIe8_GXb1m6`.
- Master atlas, composite index, readiness index, construction guard, five active spatial docs, and full start-area materialization were read directly.
- Compact source pins store Drive ID, modified time, byte size, and normalized semantic SHA-256.

Implemented candidate:
- Four readable `docs/world/` maps/contracts.
- Full-city compact runtime manifest: boundary, 7 wards, 28 neighborhoods, 5 water features, 14 trunk routes, theme, counts, and Batch043 integrity state.
- Complete start-ring compact manifest: 9 block polygons, 36 parcel/building envelopes, all elevations/exteriors, protected two-floor residence layout, pickup curb, and 24 public objects.
- Fail-closed runtime construction-guard projection.
- Deterministic `docs/world/**` and `data/world/**` routing plus artifact ownership.
- Static verifier for pins, identity/counts, geometry containment/non-overlap, interior fit, private boundary, source-axis safety, routing, and required docs.

Failures and repairs:
- QA-013-01 corrected the rounded ward-record sum from an assumed 290.081 km² to the exact published 290.079 km²; the city boundary remains 290.08 km².
- REG-0004 repaired a pre-commit local ledger truncation from the exact sealed GitHub baseline and added a unique-history-count structure gate.
- QA-013-03 removed two terminal blank lines after the 15 static checks passed but `git diff --check` correctly rejected the formatting.

Scope guard:
- No existing scene, GDScript, room data, campaign state, or private neighbor contents changed.
- No Godot coordinate transform, terrain, mesh, collision, navigation, loader, or runtime result is claimed.
- Large authoritative payloads remain in Drive.

Verification:
- `python scripts/qa/verify_city_spatial_bridge.py` passed after QA-013-01 repair.
- Full cumulative verification: 7 QA validators + 8 static tests = 15/15 PASS.
- `git diff --check`: PASS after QA-013-03 repair.
- GitHub commit/readback remains pending.
