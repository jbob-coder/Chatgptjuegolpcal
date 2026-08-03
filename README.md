# Temporary Google Drive Audit Workspace

This public repository is used only for low-cost audit tooling, manifests, hashes, and reports for the Google Drive folder `Juego de chat gpt`.

Safety constraints:

- Google Drive remains the authoritative storage location.
- Do not upload `RESERVED_STORAGE_NOT_LORE_PART_*_108MiB.bin` files.
- Do not use Git LFS.
- Do not enable paid GitHub Actions, hosted runners, packages, or external paid services.
- Do not store secrets, tokens, personal credentials, or unrelated private material.
- Delete temporary audit data from GitHub after the corrected Drive copy is verified.
- Never delete a Drive file based only on matching name or size; require SHA-256 equality or a verified manifest decision.

The audit outputs belong under `audit/` and the reusable local tools under `tools/`.
