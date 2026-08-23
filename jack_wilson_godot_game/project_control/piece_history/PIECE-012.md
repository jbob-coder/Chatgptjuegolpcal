# Piece 012 — User surface and four-plane routing contract

STATUS: STATIC_VERIFIED_PENDING_GITHUB_READBACK
STARTING_COMMIT: 5fc00575de3150513068184eaea5c735c3f1841f
LIVE_HEAD_OBSERVED_BEFORE_FINAL_IMPLEMENTATION: ce08a2d2d6628f7392d4c86c3bf13b561b7910e4
IMPLEMENTATION_COMMIT: PENDING
RUNTIME_GATE: RUNTIME_GATE_NOT_EXECUTED

Purpose:
- Give every game-root artifact a deterministic primary owner.
- Keep user-facing summaries non-authoritative.
- Preserve current flat control paths until a dedicated atomic migration.
- Prevent runtime, control, user, and verification files from drifting into one another.

Implemented:
- `project_control/registry/PATH_REGISTRY.json` with specific-before-general FIRST_MATCH_WINS routing.
- `project_control/registry/ARTIFACT_REGISTRY.json` with unique IDs, current canonical paths, and Piece 013 destinations.
- `scripts/qa/verify_artifact_routing.py` plus cumulative-runner integration.
- Regression-guard validator inventory updated after QA-012-01 exposed the stale five-validator list.
- Required structure checks for `docs/user/` and `project_control/registry/`.
- Root README folder/authority map.
- Historical preservation plus current resolution of the former clone/DNS limitation.

Scope guard:
- No `.gd`, `.tscn`, runtime `.json` data, or gameplay geometry was changed.
- Control files remain at flat compatibility paths.
- Action/resource graph and automatic projections remain deferred.

Verification candidate:
- `python scripts/qa/verify_artifact_routing.py`
- `python scripts/qa/verify_structure.py`
- `python scripts/qa/verify_all.py`
- Git diff scope review

Commit/readback:
- Pending authenticated GitHub commit and exact readback.
