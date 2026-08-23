# Piece 012 — User surface and four-plane routing contract

STATUS: COMPLETE
STARTING_COMMIT: 5fc00575de3150513068184eaea5c735c3f1841f
LIVE_HEAD_OBSERVED_BEFORE_FINAL_IMPLEMENTATION: ce08a2d2d6628f7392d4c86c3bf13b561b7910e4
IMPLEMENTATION_COMMIT: b7e3a31523603e8ff203ab13762821c221a4ced1
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
- Post-readback QA initially rejected the new verified-commit pointer because the connector-written commit object was absent from the older local clone. The exact object was restored from authenticated metadata plus the matching staged tree; no validator was weakened.

Scope guard:
- No `.gd`, `.tscn`, runtime `.json` data, or gameplay geometry was changed.
- Control files remain at flat compatibility paths.
- Action/resource graph and automatic projections remain deferred.

Verification:
- `python scripts/qa/verify_artifact_routing.py`
- `python scripts/qa/verify_structure.py`
- `python scripts/qa/verify_all.py`
- Git diff scope review

Commit/readback:
- Live `main` resolved to `b7e3a31523603e8ff203ab13762821c221a4ced1`.
- Recursive tree `33ea7f68d445552959e4da99b35c775b3da2b185` was complete (`truncated=false`).
- All 16 intended file blobs matched their locally verified Git blob identities; mismatches: 0.
- Final unchanged cumulative suite after local evidence repair: 14/14 PASS.
