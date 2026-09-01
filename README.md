# WorldLife RPG — Google Drive Primary Mirror

This branch is a billing-safe pointer/history mirror. Google Drive is the authoritative project store.

## Rules
- Do not run GitHub Actions from this mirror.
- The mirror intentionally contains no `.github/workflows` directory.
- Source archives, binary art assets, APKs, and checksums are stored in Google Drive first.
- GitHub is used only for lightweight history/pointer mirroring after Drive round-trip verification.
- Do not use Git LFS, paid runners, Codespaces, paid APIs, or metered services.
- Working file ceiling for a destination with a 100 MiB limit: 90 MiB = 94,371,840 bytes.

## Drive authority
Root: https://drive.google.com/drive/folders/1hsdyIqh_t231jqiq8O-kgBTEs8F8N8AE
Source/v0.4.9: https://drive.google.com/drive/folders/1jWfT4hpTR6k1kwzOza15sVcHzVFPU9l0
Assets/v0.4.3: https://drive.google.com/drive/folders/1FV0Ji5cVqIOIqK9v0i3z7OawL9bqRu4P
Builds root: https://drive.google.com/drive/folders/1zhdPquR_ue_WCtkzErgAYfrkTA9FTcU7

## Inherited gameplay foundation
- 4.0 m simulation tiles, 6.4 m roads, 1.8 m sidewalks, human-scale third-person geometry.
- Generated road/facade/prop art is used directly in SceneView; editable masters remain in Drive.
- Shared engine/renderer collision, eight-direction movement, diagonal corner protection, map fast travel, camera obstruction shortening.
- Six scheduled residents with engine-authoritative contextual TALK interactions and save-safe social migration.

## v0.4.9 change
- Journal sequence recovery derives the next canonical sequence from existing `journal_######` IDs, preventing new duplicate journal IDs when legacy/corrupted counters are stale.
- Legacy decoder tolerates absent NPC, relationship, journal, and next-sequence fields so deterministic engine repair can migrate the save.

## Verification state
- Static source verification: PASS.
- Pure Kotlin game-core compile: PASS.
- Prior world regression: PASS (532 checks; 1,893 walkable / 507 blocked / 512 corner cases).
- Six-resident migration/schedule compatibility: PASS.
- All six NPC TALK effects: PASS.
- v0.4.9 journal repair harness: PASS.
- Save-decoder Kotlin/type compile using local API stubs: PASS.
- Drive round-trip SHA/ZIP verification: PASS after final archive replacement.
- Android/SceneView APK compile for v0.4.9 remains pending a free local Android toolchain. Last fully Android-compiled/signature-verified APK: v0.4.0.
