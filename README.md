# WorldLife RPG — Google Drive Primary Mirror

Google Drive is authoritative. This branch is a billing-safe pointer/history mirror only.

## Cost/storage rules
- No `.github/workflows` directory and no GitHub Actions builds.
- No source archive, APK, signing key, or binary art duplication in this mirror.
- No Git LFS, paid runners, Codespaces, paid APIs, or metered services.
- Working-file ceiling for a 100 MiB destination: 90 MiB = 94,371,840 bytes.

## Drive authority
- Source/v0.5.3: https://drive.google.com/drive/folders/1EMzo6mQ9R_Ze8ypI3Kf8cvDBRJLcjK9M
- Archive: https://drive.google.com/file/d/1rS7-PTlapNqlEk1Q3CG-AyZqNsv2OWsJ/view?usp=drivesdk
- Assets/v0.4.3: https://drive.google.com/drive/folders/1FV0Ji5cVqIOIqK9v0i3z7OawL9bqRu4P

## v0.5.3
- Save schema 3 adds authoritative date-scoped `dailyActivityUsage`.
- Location activities and NPC TALK share deterministic daily limits.
- Work/social actions default to once/day; home/meal/study/gym have explicit controlled repeat limits.
- Pending events block location actions consistently with NPC TALK.
- Midnight/year rollover prunes previous-day usage; annual age advancement clears the ledger.
- Repair drops unknown/stale records, merges duplicates, and clamps counts to catalog limits.
- Landscape prompts display use counts and explicit lock reasons.

## Verification
- Repository tests: PASS (41 methods through local kotlin-test runner).
- Dedicated daily-activity harness: PASS.
- Prior world regression: PASS (532 checks; 1,893 walkable / 507 blocked / 512 corner cases).
- Weekly/social/journal/year/travel/discovery compatibility: PASS.
- Serializer source compile-check with local DataStore/JSON API stubs: PASS.
- Static/UI/XML checks: PASS.
- Android/SceneView APK compile remains pending a free local Android toolchain. Last fully APK-verified build: v0.4.0.
