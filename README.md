# WorldLife RPG — Google Drive Primary Mirror

This branch is a billing-safe pointer/history mirror. Google Drive is the authoritative project store.

## Rules
- Do not run GitHub Actions from this mirror.
- The mirror intentionally contains no `.github/workflows` directory.
- Source archives, Markdown continuity files, binary art assets, APKs, and checksums are stored in Google Drive first.
- GitHub is used only for lightweight history/pointer mirroring after Drive round-trip verification.
- Do not use Git LFS, paid runners, Codespaces, paid APIs, or metered services.
- Working file ceiling for a destination with a 100 MiB limit: 90 MiB = 94,371,840 bytes.

## Drive authority
Root: https://drive.google.com/drive/folders/1hsdyIqh_t231jqiq8O-kgBTEs8F8N8AE
Source/v0.5.7: https://drive.google.com/drive/folders/1ZFD7TQl5rxco8kAPQuzgMcAdaPdjoQ-T
Assets/v0.4.3: https://drive.google.com/drive/folders/1FV0Ji5cVqIOIqK9v0i3z7OawL9bqRu4P
Builds root: https://drive.google.com/drive/folders/1zhdPquR_ue_WCtkzErgAYfrkTA9FTcU7

## v0.5.7 change
- First Android/SceneView player-apartment presentation slice built from the existing schema-4 `InteriorSessionState` and `InteriorCatalog` dimensions.
- Exterior home interaction now presents engine-quoted ENTER; active interior state switches presentation to `InteriorWorldScreen`; EXIT dispatches the existing engine action.
- Apartment visual shell includes catalog-sized room zones, human-scale furniture massing, residential materials/lighting, right-side camera look, and cosmetic idle/breathing motion.
- Interior joystick/free-roam is intentionally withheld until `:game-core` owns local position/collision.
- Adds `WORLD_ART_BIBLE.md` and `ANIMATION_RUNTIME_PLAN.md`; updates the world-layout expansion sequence toward streamed sectors without rescaling old saves.

## Verification state
- v0.5.6 input SHA rechecked: PASS.
- Production game-core byte-identical to v0.5.6: PASS (11 Kotlin files, 0 changed).
- Pure Kotlin game-core compile: PASS.
- Repository tests: PASS (45 tests).
- Apartment renderer Kotlin/type check using local Compose/SceneView API-shaped stubs: PASS.
- Save serializer schema-4 Kotlin/type check using local stubs: PASS.
- Android XML parse: PASS (6 files).
- Static source verification: PASS (58 required files before final freeze).
- Cost/policy audit: PASS; 0 workflow files, 0 files above 90 MiB.
- Android/SceneView APK compile/runtime for v0.5.7: NOT EXECUTED; free full Android toolchain is still unavailable here.
- Last fully Android-compiled/signature-verified APK: v0.4.0.
