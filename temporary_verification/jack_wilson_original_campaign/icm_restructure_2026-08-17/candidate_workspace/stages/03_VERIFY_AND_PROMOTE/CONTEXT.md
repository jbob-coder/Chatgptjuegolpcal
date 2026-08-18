# 03_VERIFY_AND_PROMOTE — make approved files authoritative

One job: validate approved candidates, promote them to their exact Google Drive shelves, and prove the readback matches.

## Inputs
- Working: approved Stage 2 candidate bundle.
- Reference: repository `governance/PERMANENT_STORAGE_AND_VERIFICATION_POLICY.md`.
- Working: current Drive target metadata for only the approved destination paths.

## Process
1. Validate syntax, IDs, references, chronology, duplication, size, and source-content boundary.
2. Confirm every replacement has rollback/supersession evidence.
3. Upload/move only approved files to their exact Drive shelf.
4. Read back names, parents, sizes, and contents/hashes as applicable.
5. Record promotion result under validation/batch history.

## Outputs
- Drive promotion record and final verification report.

## Human check
Confirm the Drive readback is authoritative and that no unapproved file moved or changed.
