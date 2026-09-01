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
Source/v0.5.1: https://drive.google.com/drive/folders/1WeQxTyV9CLIV_HV94yhnnDUZ4Fb0xM-P
Assets/v0.4.3: https://drive.google.com/drive/folders/1FV0Ji5cVqIOIqK9v0i3z7OawL9bqRu4P
Builds root: https://drive.google.com/drive/folders/1zhdPquR_ue_WCtkzErgAYfrkTA9FTcU7

## Inherited gameplay foundation
- 4.0 m simulation tiles, 6.4 m roads, 1.8 m sidewalks, human-scale third-person geometry.
- Generated road/facade/prop art is used directly in SceneView; editable masters remain in Drive.
- Shared engine/renderer collision, eight-direction movement, diagonal corner protection, map fast travel, camera obstruction shortening.
- Six scheduled residents with engine-authoritative contextual TALK interactions and save-safe social migration.
- v0.4.9 journal sequence recovery and tolerant legacy save decoding remain active.

## v0.5.0 change
- Added deterministic seven-day `WorldCalendar` carried across fixed 365-day simulation years.
- Weekday/weekend NPC schedules are authoritative in both rendering and TALK validation.
- HUD exposes weekday, day-of-year, and simulation year.
- Open-world clock rollover advances `world.year` when Day 365 crosses into Day 1.
- Movement, travel, location interaction, and NPC TALK all use the same calendar-advancing clock path.

## v0.5.1 change
- Fast-travel authority moved into game-core via `TravelQuote`/`TravelBlockReason`.
- Engine rejects undiscovered destinations even if a caller bypasses the map UI.
- Map uses the engine quote for fare, duration, enablement, and lock feedback.
- No GitHub Actions workflow is present or required.

## Verification state
- Static source verification: PASS.
- Pure Kotlin game-core compile: PASS.
- Prior world regression: PASS (532 checks; 1,893 walkable / 507 blocked / 512 corner cases).
- Full 7-day × 24-hour social schedule matrix: PASS (168 states).
- All six NPC TALK effects: PASS.
- v0.4.9 journal repair compatibility: PASS.
- Year rollover compatibility: PASS.
- v0.5.1 travel-authority harness: PASS.
- Android XML parse: PASS.
- Android/SceneView APK compile for v0.5.1 remains pending a free local Android toolchain. Last fully Android-compiled/signature-verified APK: v0.4.0.
