# Issues

## ISSUE-001 — Godot runtime unavailable
Status: OPEN
Severity: GATE_LIMITATION
Evidence: No `godot4` or `godot` executable was found in the active execution environment on 2026-08-20.
Impact: Runtime/parser verification cannot be claimed.
Required action: Execute pending runtime gates in an environment containing the target Godot 4.7.x engine.

## ISSUE-002 — Local GitHub clone unavailable in execution container
Status: RESOLVED_ENVIRONMENT_CHANGED
Severity: TOOLING_LIMITATION
Historical evidence: A prior container could not resolve github.com, so earlier static tests used connector-fetched reconstructed state.
Resolution evidence: On 2026-08-23 a clean `git clone --branch main --single-branch` succeeded and resolved live main at ce08a2d2d6628f7392d4c86c3bf13b561b7910e4.
Current impact: Static tests and commit-object checks can run against a real clone. Authenticated remote writes still use the GitHub connector.
Resolved by: PIECE-012 / b7e3a31523603e8ff203ab13762821c221a4ced1

## ISSUE-003 — Mandatory Godot documentation infrastructure
Status: RESOLVED
Severity: PROJECT_CONTROL
Evidence: Piece 010 committed the required Godot master guide, implementation reference log, dedicated verifier, and structure requirement.
Impact: Required repository-side Godot documentation baseline is present.
Resolved by: PIECE-010 / 4c64bcbaabf2eaff5f23d3e94212175644a1263f

## ISSUE-004 — Captured mouse-look relative-motion claim
Status: RESOLVED_STALE_DOCUMENTATION
Severity: QUALITY
Evidence: Live/historical repository reads show scripts/player_controller.gd already uses event.screen_relative for both axes and tests/verify_mouse_look.py requires it. Piece 010 documentation incorrectly described the live code as event.relative.
Impact: No gameplay migration is required. The defect was documentation/repository-observation integrity, not the controller behavior.
Resolved by: PIECE-011 repair; documentation verifier now cross-checks the live controller.

## ISSUE-005 — Source-to-Godot city transform not yet defined
Status: RESOLVED_STATIC_RUNTIME_OPEN
Severity: GEOMETRY_GATE
Evidence: SOURCE-009 defines ASTERLINE_LOCAL_METRIC_V1 as X east/Y north/Z up. Piece 014 adds the versioned transform/origin contract, stateless GDScript utility, official Godot 4.7 evidence, and exhaustive static start-ring round trips.
Impact: Piece 015 may consume the transform in a pinned source loader. No runtime rebase or city geometry is claimed yet.
Required action: Execute the Godot parser/runtime gate when available and implement all-participant rebasing only in a later bounded loader/streaming piece.

## ISSUE-006 — External city source pin drift requires reconciliation
Status: OPEN_CONDITIONAL
Severity: SOURCE_INTEGRITY_GATE
Evidence: Piece 013 pins Drive file ID, modified time, byte size, and normalized semantic SHA-256 for its structured sources.
Impact: Any changed pin makes the committed projection stale; geometry publication must stop until the delta is classified.
Required action: Fail closed and run a dedicated source-reconciliation piece when a pin changes; do not auto-accept remote changes.
