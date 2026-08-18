# 01_SCOPE_CHANGE — define one bounded game change

One job: produce an auditable change plan before any active game file is replaced, moved, or deleted.

## Inputs
- Working: the user's current request.
- Reference: `../../_shared/ACTIVE_GAME_DIRECTIVE_2026-08-17.md`.
- Reference: `../../_shared/AUTHORITY_AND_STORAGE_POINTERS.md`.
- Reference: repository `governance/PERMANENT_STORAGE_AND_VERIFICATION_POLICY.md`.
- Working: only the specific Drive/GitHub game files needed to establish current state.
- Excluded: raw novel/story files, chapter-ending files, source-reconstruction extracts.

## Process
1. Inventory the affected paths without changing them.
2. Classify each affected artifact as catalog, contract, factory, product, or dead/historical candidate.
3. Separate confirmed state, superseded state, unknowns, and conflicts.
4. Write exact old path → proposed path/action and acceptance checks.

## Outputs
- One change plan in this stage's `output/` location.

## Human check
Verify the target tree, affected-file list, and no-source-load boundary. Edit/approve the plan before Stage 2.
