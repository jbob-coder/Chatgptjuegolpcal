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
Impact: Static tests are executed on a connector-fetched reconstructed snapshot rather than a network clone.
Required action: Continue authoritative reads/writes through the authenticated GitHub connector; preserve this limitation in evidence.

## ISSUE-003 — Remaining mandatory Godot documentation infrastructure incomplete
Status: OPEN
Severity: PROJECT_CONTROL
Evidence: Piece 009 adds the required preflight/structure/state/current-piece/regression QA validators. The required Godot master tool guide and implementation reference log are still absent.
Impact: Automated static governance is present, but important Godot implementation work still lacks the mandated repository-side documentation baseline.
Required action: PIECE-010.

## ISSUE-004 — Captured mouse look uses content-scaled relative motion
Status: OPEN_NON_BLOCKING
Severity: QUALITY
Evidence: VERIFIED_REPOSITORY_FACT — scripts/player_controller.gd uses event.relative. VERIFIED_GODOT_DOCUMENTATION — Godot 4.7 InputEventMouseMotion documentation recommends screen_relative for mouse aiming with Input.MOUSE_MODE_CAPTURED because relative is content-scale adjusted.
Impact: Mouse sensitivity may vary with stretch/content-scale configuration. No runtime failure is claimed.
Required action: Dedicated Piece 017 migration/test unless superseded by newer authoritative evidence.
