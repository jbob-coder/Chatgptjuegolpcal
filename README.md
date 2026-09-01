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
Source/v0.5.4: https://drive.google.com/drive/folders/1bwCI75LV0o-BaJUCCbcYNagx5p-1oQEO
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

## Verification state
- Static source verification: PASS.
- Pure Kotlin game-core compile: PASS.
- Prior world regression: PASS (532 checks; 1,893 walkable / 507 blocked / 512 corner cases).
- Full 7-day × 24-hour social schedule matrix: PASS (168 states).
- Weekend TALK authority: PASS.
- All six NPC TALK effects: PASS.
- v0.4.9 journal repair compatibility: PASS.
- Year rollover harness: PASS.
- Clock-action rollover through movement, travel, location interaction, and NPC TALK: PASS.
- Android XML parse: PASS.
- Save serializer Kotlin/type compile using local API stubs: PASS.
- Android/SceneView APK compile for v0.5.4 remains pending a free local Android toolchain. Last fully Android-compiled/signature-verified APK: v0.4.0.

## v0.5.1 change
- Fast-travel authority moved into game-core via `TravelQuote`/`TravelBlockReason`.
- Engine rejects undiscovered destinations even if a caller bypasses the map UI.
- Map uses the engine quote for fare, duration, enablement, and lock feedback.
- No GitHub Actions workflow is present or required.

## v0.5.2 change
- Undiscovered destinations are no longer plotted as artificial grey map dots.
- Cyan world-space destination markers render only for discovered locations.
- Physical storefront/landmark structures remain naturally visible for exploration.
- A brief in-world DISCOVERED banner appears when engine movement adds a new location.

## v0.5.3 change
- Added schema-3 authoritative `dailyActivityUsage`.
- Location actions and NPC TALK share deterministic daily limits and engine-owned lock reasons.
- Pending life events block location actions consistently.
- Midnight/year rollover prunes usage; annual age advancement clears it.
- Repair drops stale/unknown records, merges duplicates, and clamps usage to current catalog limits.
- Landscape prompts show uses-today and explicit daily-limit lock feedback.

## v0.5.4 change
- Defines the existing 60x40 / 240m x 160m map as the save-stable Arclight Core Slice rather than the eventual full city.
- Adds four stable core-sector definitions and two macro corridor seams for future streamed expansion without rescaling existing saves.
- Adds `InteriorCatalog` with metre-scale room graphs and entrance/return portals for nine current landmarks.
- Civic Plaza is explicitly exterior-only so the world does not advertise a false door/interior.
- First runtime interior target is the player apartment.
- World/interior docs and a deterministic SVG core map are included in the Drive-authoritative source.
