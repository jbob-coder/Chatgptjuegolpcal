# Issues

## ISSUE-001 — Godot runtime unavailable
Status: OPEN
Severity: GATE_LIMITATION
Evidence: No `godot4` or `godot` executable was found in the active execution environment on 2026-08-20.
Impact: Runtime/parser verification cannot be claimed.
Required action: Execute pending runtime gates in an environment containing the target Godot 4.7.x engine.

## ISSUE-002 — Local GitHub clone unavailable in execution container
Status: OPEN
Severity: TOOLING_LIMITATION
Evidence: `git clone` failed because the container could not resolve github.com.
Impact: Static tests are executed on connector-fetched reconstructed snapshot/state rather than a network clone.
Required action: Continue authoritative reads/writes through the authenticated GitHub connector; preserve this limitation in evidence.

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
