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

## ISSUE-003 — Remaining mandatory QA/docs infrastructure incomplete
Status: OPEN
Severity: PROJECT_CONTROL
Evidence: scripts/qa currently has verify_all.py only; required structure/state/current-piece/regression scripts and Godot reference docs are not yet present.
Impact: Project continuity has a core record after PIECE-008, but automated governance coverage is still incomplete.
Required action: PIECE-009 and PIECE-010.
