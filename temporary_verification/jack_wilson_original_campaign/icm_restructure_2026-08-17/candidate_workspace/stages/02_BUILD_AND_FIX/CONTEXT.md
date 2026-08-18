# 02_BUILD_AND_FIX — produce verified candidates

One job: implement only the Stage-1-approved game changes in temporary GitHub verification.

## Inputs
- Working: approved Stage 1 change plan.
- Reference: `../../_shared/ACTIVE_GAME_DIRECTIVE_2026-08-17.md`.
- Reference: `../../_shared/AUTHORITY_AND_STORAGE_POINTERS.md`.
- Working: exact existing files named by the approved plan.
- Excluded: any source/novel material not already part of approved active-game data.

## Process
1. Copy the approved change-batch template.
2. Create replacements/supersession records; do not overwrite evidence blindly.
3. Keep IDs, references, save compatibility, and authority distinctions explicit.
4. Generate manifest, byte sizes, and SHA-256 for every candidate.
5. Read the GitHub candidate files back and compare them with the manifest.

## Outputs
- Candidate files plus manifest/checksums in temporary verification.

## Human check
Inspect the exact candidate diff and manifest. Approve only candidates that match the Stage 1 scope.
