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
Source/v0.5.5: https://drive.google.com/drive/folders/1aLeCHULCtZuzU5cQQqxFKM8JmZ1GmQ7d
Assets/v0.4.3: https://drive.google.com/drive/folders/1FV0Ji5cVqIOIqK9v0i3z7OawL9bqRu4P
Builds root: https://drive.google.com/drive/folders/1zhdPquR_ue_WCtkzErgAYfrkTA9FTcU7

## v0.5.5 change
- Rewrites the project README against the actual current six-NPC, weekly-calendar, discovery, activity, world-layout, and interior architecture.
- Adds `docs/WORLDLIFE_PROJECT_HANDOFF.md` as durable continuity state.
- Bumps save schema to 4 with optional `InteriorSessionState`.
- Adds engine-authoritative apartment enter/exit transitions and `InteriorEntryQuote`.
- Only `interior_player_home` is runtime-enabled; the other eight interior definitions remain topology authority.
- Blocks exterior world actions while an interior session is active.
- Repairs invalid room IDs and drops unknown/runtime-disabled interior sessions.

## Verification state
- Static source verification: PASS.
- Pure Kotlin game-core compile: PASS.
- Repository tests: PASS (45 tests).
- Dedicated v0.5.5 interior-session harness: PASS.
- Save serializer schema-4 Kotlin/type compile using local API stubs: PASS.
- Android XML parse: PASS (6 files).
- No `.github/workflows` files in source.
- Android/SceneView APK compile for v0.5.5 remains pending a free local Android toolchain.
- Last fully Android-compiled/signature-verified APK: v0.4.0.
