# WorldLife RPG — Project Handoff

Reference source: `0.5.7`. Google Drive is authoritative.

Authoritative folder: https://drive.google.com/drive/folders/1ZFD7TQl5rxco8kAPQuzgMcAdaPdjoQ-T
Full handoff: https://drive.google.com/file/d/1X0zdRxIj9ljAPPvRB86-l59qnnjcqfwB/view?usp=drivesdk

## CURRENT_OBJECTIVE

Build WorldLife into a landscape-first third-person Android life RPG where player movement, time, NPC schedules/relationships, locations, economy, interiors, and future world growth share one persistent simulation.

Immediate objective after v0.5.7: add engine-authoritative apartment-local player position/collision, then bind indoor locomotion to that authority.

## VERIFIED_STATE

- source: `0.5.7`, versionCode `22`
- applicationId: `com.jackwilson.worldlife`
- save schema: `4`
- SceneView: `4.33.0`
- six stable NPC residents
- Arclight Core: `60 × 40` cells at `4.0 m` per cell (~240 m × 160 m)
- first runtime-enabled interior: player apartment, `8 m × 7 m`
- v0.5.7 Android presentation switches to `InteriorWorldScreen` when `InteriorSessionState` is active
- last fully Android-compiled/signature-verified APK: `0.4.0`
- v0.5.7 Android APK/runtime: NOT EXECUTED

## COMPLETED IN v0.5.7

- exterior ENTER presentation driven by `GameEngine.interiorEntryQuote()`;
- interior/exterior rendering switch driven by persisted `interiorSession`;
- catalog-sized apartment shell/room zones/furniture massing;
- right-side third-person camera look indoors;
- cosmetic idle/breathing motion only;
- authoritative EXIT action preserved;
- no fake interior joystick/movement authority;
- `WORLD_ART_BIBLE.md`;
- `ANIMATION_RUNTIME_PLAN.md`;
- updated world-layout scale/streaming sequence.

## VERIFICATION

- v0.5.6 input SHA rechecked: PASS.
- Production game-core byte comparison: PASS, 11 files / 0 changed.
- Core compile: PASS.
- Repository tests: PASS, 45 tests.
- Apartment renderer Kotlin/type check with local Compose/SceneView API-shaped stubs: PASS.
- Serializer schema-4 type check: PASS.
- XML parse: PASS, 6 files.
- Static verifier: PASS, 58 required files.
- Source manifest: PASS, 203 tracked files.
- Policy audit: PASS, zero workflow files / zero files over 90 MiB.
- Drive round-trip: PASS; 1,566,683 bytes; SHA-256 `454269095114963f18f446efc4e3eb4cb0f36a002a9ebd90d114c83e7e210366`.
- Android/SceneView APK/runtime: NOT EXECUTED.

## NEXT_ACTION

1. Add core-owned interior local position.
2. Define walkable apartment bounds/partitions/furniture collision.
3. Derive room from geometry.
4. Add deterministic movement/repair/save tests.
5. Only then expose left-stick indoor movement and walk/run presentation.
6. Runtime-verify enter → roam → save/load → exit before enabling another interior.
7. After the interior pattern is proven, add stable sector-streaming authority and the first attached 120 m × 80 m expansion sector without rescaling the original world.

## AUTHORITY / COST RULES

- `GameState` + `GameEngine` own gameplay.
- Compose/SceneView presents state and sends actions.
- Stable IDs and existing Arclight coordinates are compatibility contracts.
- Google Drive first, GitHub pointer/docs second.
- No GitHub Actions, paid runners, Codespaces, Git LFS, paid APIs/build services/assets without explicit approval.
- Repository/Drive files outrank remembered chat summaries.

This GitHub file is a convenience summary. Use the linked Drive handoff for the complete current record.
