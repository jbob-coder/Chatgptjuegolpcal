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
Source/v0.5.6: https://drive.google.com/drive/folders/1PW57IwxUSfHddC5kUB3RsP0p047F8A6G
Assets/v0.4.3: https://drive.google.com/drive/folders/1FV0Ji5cVqIOIqK9v0i3z7OawL9bqRu4P
Builds root: https://drive.google.com/drive/folders/1zhdPquR_ue_WCtkzErgAYfrkTA9FTcU7

## v0.5.6 change
- Documentation/continuity hardening only; gameplay behavior intentionally inherited from v0.5.5.
- Adds authoritative development reference and systems/how-it-works guide.
- Rewrites stale architecture documentation to schema-4/six-NPC/interior-session reality.
- Corrects build guide to the actual AGP 9.1.1 source pin.
- Keeps the player-apartment runtime scene as the next bounded gameplay implementation.

## Verification state
- Static source verification: PASS.
- Pure Kotlin game-core compile: PASS.
- Repository tests: PASS (45 tests).
- Dedicated v0.5.5 interior-session harness: PASS.
- Save serializer schema-4 Kotlin/type compile using local API stubs: PASS.
- Android XML parse: PASS (6 files).
- No `.github/workflows` files in source.
- Android/SceneView APK compile for v0.5.6 remains pending a free local Android toolchain.
- Last fully Android-compiled/signature-verified APK: v0.4.0.
