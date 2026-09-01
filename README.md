# WorldLife RPG — Google Drive Primary Mirror

Billing-safe pointer/history mirror. Google Drive is authoritative.

## Cost / storage rules
- No GitHub Actions from this branch; no `.github/workflows` directory.
- No Git LFS, paid runners, Codespaces, paid APIs, or metered services.
- Source archives, art, APKs, checksums, and signing material remain in Google Drive.
- Working ceiling when a destination has a 100 MiB limit: 90 MiB = 94,371,840 bytes.

## Authoritative Drive state
- Project root: https://drive.google.com/drive/folders/1hsdyIqh_t231jqiq8O-kgBTEs8F8N8AE
- Source/v0.5.0: https://drive.google.com/drive/folders/1ORs5tBPEgG9YjEyvy3xCIJpGWjsHGtGM
- Source archive: https://drive.google.com/file/d/16wo1LFKLeeiuWV1CXS6QNI3yH6DXQTNU/view?usp=drivesdk
- Assets/v0.4.3 masters: https://drive.google.com/drive/folders/1FV0Ji5cVqIOIqK9v0i3z7OawL9bqRu4P
- Builds: https://drive.google.com/drive/folders/1zhdPquR_ue_WCtkzErgAYfrkTA9FTcU7

## v0.5.0
- Deterministic seven-day WorldCalendar across fixed 365-day simulation years.
- Weekday/weekend NPC schedules use the same year/day/time in rendering and TALK validation.
- HUD exposes weekday, day-of-year, and simulation year.
- Open-world clock advances simulation year when Day 365 rolls to Day 1.
- Movement, travel, location interaction, and NPC TALK all share the same calendar-advancing clock path.

## Verification
- Static source: PASS.
- Core Kotlin compile: PASS.
- Inherited world regression: PASS, 532 checks (1,893 walkable / 507 blocked / 512 corner cases).
- Seven-day × 24-hour NPC schedule: PASS, 168 states.
- Weekend TALK authority: PASS.
- Six NPC TALK effects: PASS.
- v0.4.9 journal repair compatibility: PASS.
- Year rollover: PASS.
- Clock rollover through movement/travel/location interaction/NPC TALK: PASS.
- Android XML parse: PASS (6 files).
- Save serializer Kotlin/type compile with local API stubs: PASS.
- Source manifest: 112 files tracked, PASS.
- Drive round-trip archive: 1,456,249 bytes, SHA-256 88682b8366bbf8d618177b2db17d2f7bf5adb49c93f13b4b20e63c912cfdd2dd, ZIP integrity PASS.
- Android/SceneView APK compile remains pending a free local Android toolchain. Last fully Android-compiled/signature-verified APK: v0.4.0.
