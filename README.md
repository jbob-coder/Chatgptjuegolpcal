# WorldLife RPG — Google Drive Primary Mirror

Google Drive is authoritative. This branch is a lightweight history/pointer export only.

- Version: 0.4.7
- Drive source folder: https://drive.google.com/drive/folders/1lQlrKNSWL8MghaFni9tOSTWk0gy00F6r
- Drive source ZIP: https://drive.google.com/file/d/1Dpjjn30575sWhxzZV4obRvdE_CJgz7qG/view?usp=drivesdk
- SHA-256: 92174724f6a512ca049df4c431358c465eabf0fda864d357219253e149fcb85d
- Size: 1,433,148 bytes
- GitHub Actions: forbidden for routine project development unless the user explicitly re-authorizes them.
- `.github/workflows`: intentionally absent.
- Git LFS / paid runners / Codespaces / metered services: not used.
- Project transfer ceiling: 90 MiB = 94,371,840 bytes per file.

v0.4.7 adds engine-authoritative scheduled NPC TALK interactions for Maya Ortiz and Theo Park. The existing single contextual action control changes to TALK when the scheduled NPC is physically present at the player's current location; interactions advance world time, append monotonic journal entries, and update relationship/stat state deterministically. All v0.4.6 geometry/collision/save-repair behavior remains intact.
