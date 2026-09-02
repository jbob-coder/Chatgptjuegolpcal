# WorldLife RPG — Project Handoff / Continuity Record

This file is the durable human-readable continuation point for WorldLife RPG. It is designed so a future development session can resume from repository/Drive facts instead of relying on chat memory.

## CURRENT_OBJECTIVE

Build WorldLife into a landscape-first third-person Android life RPG in which the player's choices, physical movement, time, NPC relationships, locations, economy, opportunities, and future events all exist in one persistent simulation.

Immediate objective: establish the first real interior runtime slice using the player apartment without destabilizing the existing exterior/save simulation.

## VERIFIED_STATE

Current source version: `0.5.6`

Android identity/toolchain target:

- applicationId: `com.jackwilson.worldlife`
- versionCode: `21`
- versionName: `0.5.6`
- min SDK: `26`
- compile/target SDK: `37`
- Kotlin: `2.4.10`
- AGP: `9.1.1`
- SceneView: `4.33.0`
- save schema: `4`

Last fully Android-compiled/signature-verified APK: `0.4.0`.

v0.5.6 is not yet Android/SceneView APK-verified. Gameplay behavior is intentionally inherited from the verified v0.5.5 source/core state; v0.5.6 is a documentation/continuity integrity refresh.

## AUTHORITY

1. Google Drive source archive/checksum is authoritative after round-trip verification.
2. Human-readable project files in that source archive are authoritative for architecture and state.
3. GitHub branches named `worldlife-v*-drive-mirror` are pointer/history mirrors only.
4. Chat memory/summaries are navigation aids, not authoritative project state.

## COST / TOOLING CONSTRAINTS

- Do not use GitHub Actions unless explicitly re-authorized.
- Do not use paid runners, Codespaces, Git LFS, paid build services, paid APIs, or paid asset packs without explicit approval.
- Prefer free local Android/Gradle tooling.
- Google Drive first; GitHub pointer mirror second.
- Per-file safety ceiling: `94,371,840` bytes (90 MiB) when targeting a 100 MiB service limit.

## COMPLETED

### Simulation foundation

- Seedable deterministic RNG.
- Stable `GameState` authority.
- Age/year advancement.
- Life events and permanent choice effects.
- Stats, money, reputation, relationships, world conditions.
- Journal/history with stable canonical IDs.
- Save repair and schema migration.

### World/exploration

- Arclight Core Slice: 60×40 save-stable grid / approximately 240m×160m rendered world.
- Four stable core districts/sectors.
- Engine/renderer shared collision.
- Eight-direction movement.
- Diagonal corner protection.
- Human-scale roads/sidewalks/buildings.
- Over-the-shoulder third-person camera.
- Left movement joystick and right-screen camera look.
- Map travel authority via `TravelQuote`/`TravelBlockReason`.
- Exploration discovery feedback and discovery-gated destination markers.
- World layout expansion seams defined without rescaling old saves.

### Time/calendar

- Deterministic seven-day calendar.
- Weekday/weekend NPC schedules.
- Day/year rollover.
- Movement, travel, activities, and TALK share calendar advancement.

### NPC/social

Current stable residents:

- `npc_maya_ortiz`
- `npc_theo_park`
- `npc_priya_shah`
- `npc_marcus_reed`
- `npc_lena_brooks`
- `npc_elena_ruiz`

Completed behavior:

- stable NPC/relationship IDs;
- save-safe social migration;
- closeness/trust;
- weekday/weekend physical schedules;
- deterministic contextual TALK;
- relationship/stat/time/journal effects;
- daily-use limits;
- explicit lock reasons.

### Activity authority

- Location actions and NPC TALK share daily-use ledger.
- Engine owns usage, limits, block reasons, rollover cleanup, and repair.
- UI consumes engine quotes rather than independently deciding validity.

### Interior design foundation

`InteriorCatalog` defines nine landmark interiors and portal/room topology. Civic Plaza is intentionally exterior-only.

v0.5.5 established:

- save schema 4;
- `InteriorSessionState`;
- `InteriorEntryQuote` and explicit entry block reasons;
- player apartment as the only runtime-enabled interior ID;
- engine `EnterInterior` and `ExitInterior` actions;
- exact portal return position;
- interior-session repair/migration;
- blocking of exterior-only actions while an interior session is active.

## IN_PROGRESS

The persisted simulation can now represent “player is inside the apartment,” but Android rendering has not yet switched to a playable interior SceneView.

The next implementation must connect the already-verified core session to Android presentation without adding a second interior authority in UI code.

## NEXT_ACTION

Implement the player-apartment runtime scene as one bounded piece:

1. Add `enterInterior()` / `exitInterior()` callbacks to the active game UI wiring.
2. At the exterior home location, show ENTER only when `GameEngine.interiorEntryQuote(game).canEnter`.
3. When `game.interiorSession != null`, render the apartment instead of the exterior district.
4. Build geometry from `InteriorCatalog.INTERIOR_PLAYER_HOME` dimensions and room definitions.
5. Preserve third-person camera conventions.
6. Add room/free-movement authority only after the basic enter/render/exit/save loop works.
7. Test save/load while inside.
8. Do not enable the other eight interiors until the apartment is runtime-verified.

## BLOCKERS

### Android build/runtime blocker

The current execution environment lacks a complete free Android SDK/Gradle toolchain. Therefore:

- pure Kotlin `:game-core` code can be compiler-tested;
- Android XML can be parsed;
- Android source can receive structural/static checks;
- a real current APK/SceneView runtime cannot be honestly claimed until built in a proper Android environment.

### No paid fallback

Do not solve the above by silently using a paid runner/build service.

## DECISIONS

### D-001 — GameState authority

`GameState` remains the single persistent simulation authority. Compose renders it and sends actions.

### D-002 — Stable IDs

Stable IDs for characters, locations, interiors, events, relationships, and world entities are compatibility contracts.

### D-003 — Existing world scale is permanent

The current Arclight Core coordinates/scale are save-stable. Future city growth streams/attaches new sectors instead of rescaling old coordinates.

### D-004 — Drive primary

Google Drive is primary development storage. GitHub is a lightweight history/pointer mirror after Drive verification.

### D-005 — One runtime interior first

Only the player apartment becomes runtime-active initially. Building every interior simultaneously would multiply rendering, collision, navigation, persistence, and QA risk before the first loop is verified.

### D-006 — Schema bump for interior state

Interior presence is persistent, so it belongs in save schema 4 rather than transient Compose state.

## RISKS

### R-001 — UI/core authority drift

Risk: UI may decide an interior, travel, activity, or TALK action is legal differently from the engine.

Mitigation: use engine quote/action APIs; UI must not duplicate rules.

### R-002 — Interior save trap

Risk: save loads inside a removed/renamed room/interior.

Mitigation: `GameEngine.repair()` drops unsupported interiors and repairs invalid room IDs to the catalog entry room.

### R-003 — Signing lineage

Risk: a differently signed APK cannot update an installed APK in-place.

Mitigation: keep one durable signing key lineage before real phone saves are treated as permanent.

### R-004 — Android source uncompiled

Risk: source-level Compose/SceneView edits may contain dependency/API problems not detected by core tests.

Mitigation: do not call source APK-verified until real Android compile/runtime succeeds.

### R-005 — World overexpansion

Risk: adding a huge city before streaming/nav/performance architecture is proven creates technical debt and device performance failures.

Mitigation: Arclight Core stays the stable test slice; expand through sectors/corridors after systems are proven.

## FILES_CHANGED IN v0.5.6

Documentation/control edits expected in this pass:

- `README.md`
- `docs/ARCHITECTURE.md`
- `docs/BUILD_AND_PHONE_TEST.md`
- `docs/WORLDLIFE_DEVELOPMENT_REFERENCE.md`
- `docs/WORLDLIFE_SYSTEMS_GUIDE.md`
- `docs/WORLDLIFE_PROJECT_HANDOFF.md`
- `project_control/PROJECT_STATE.md`
- `project_control/DRIVE_PRIMARY_WORKFLOW.md`
- `scripts/verify_static.py`
- `app/build.gradle.kts`
- `app/src/main/java/com/jackwilson/worldlife/BuildConfig.kt`

No intended gameplay/core behavior change from v0.5.5.

## TESTS_RUN / REQUIRED GATES

For v0.5.6 freeze, run at minimum:

- verify the v0.5.5 authoritative input archive SHA and source manifest before editing;
- pure Kotlin game-core compilation;
- all v0.5.5 repository/core compatibility tests (45 tests);
- byte-compare behavioral source against v0.5.5 to prove documentation-only scope;
- serializer type/compile check with local API stubs;
- Android XML parse;
- `scripts/verify_static.py`;
- source manifest verification;
- ZIP integrity check;
- Drive upload/download SHA round-trip.

## RESULTS

Observed for the v0.5.6 freeze:

- v0.5.5 authoritative Drive archive recovery: PASS; SHA `81aa8c277c53b62109cebcffb54c1db27f4055c513244105291e0bdddc804673`.
- v0.5.5 embedded source manifest verification: PASS, `169` entries.
- v0.5.6 behavioral-source comparison against v0.5.5: PASS, `45` gameplay/app behavior files compared with no changes; only documentation, version metadata, and static-verifier scope are intentionally changed.
- v0.5.6 pure Kotlin game-core compile: PASS.
- repository `GameEngineTest` reflection execution: PASS, `45` tests.
- schema-4 `GameSaveSerializer` Kotlin/type compile with local DataStore/JSON API stubs: PASS.
- Android XML parsing: PASS, `6` files.
- `scripts/verify_static.py`: PASS, `55` required files checked.
- documentation stale-state audit: PASS for current version/schema/toolchain markers after rewrite.
- document path audit: PASS, `22` project-relative references checked.
- source manifest verification: PASS, `182` tracked entries.
- policy audit: PASS; `0` workflow files, `0` files over `94,371,840` bytes; largest file remains `street_crosswalk.png`, `186,092` bytes.
- source ZIP integrity: PASS.
- Drive upload/download SHA round trip: PASS, SHA `b124e760a6e22fd4b4949a4aaa191078174d9d8b2bd224e977b893cbdb301863`, `1,537,579` bytes.
- strict GitHub `worldlife-v056-drive-mirror`: created only after Drive verification and contains exactly `README.md` + `MIRROR_POINTER.json`.
- Android/SceneView APK compile/runtime: NOT EXECUTED; current environment still lacks the complete free Android toolchain.
- v0.5.6 Drive folder: `https://drive.google.com/drive/folders/1PW57IwxUSfHddC5kUB3RsP0p047F8A6G`.

Do not upgrade the Android runtime status based on this documentation release.

## GRAPHIFY-STYLE PROJECT MAP

```text
WorldLifeRPG
  → has_authority → GameState
  → stores_primary_in → GoogleDrive
  → mirrors_history_to → GitHub

GameState
  → contains → PlayerState
  → contains → WorldState
  → contains → OpenWorldState
  → contains → Relationships
  → contains → DailyActivityUsage
  → contains → Journal
  → contains → InteriorSessionState

GameEngine
  → mutates_authoritatively → GameState
  → validates → TravelQuote
  → validates → LocationActionQuote
  → validates → NpcInteractionQuote
  → validates → InteriorEntryQuote

OpenWorldGeometry
  → verifies → ExteriorMovement
  → shared_by → Engine
  → shared_by → Renderer

WorldLayoutCatalog
  → defines → ArclightCoreSlice
  → plans → FutureStreamedSectors

InteriorCatalog
  → defines → LandmarkRoomGraphs
  → defines → ExteriorReturnPortals
  → runtime_enables_first → PlayerApartment

GameSaveJsonCodec
  → persists → GameState
  → migrates → Schema4

GameEngineTest
  → verifies → Determinism
  → verifies → TravelAuthority
  → verifies → DailyActivityAuthority
  → verifies → WorldLayout
  → verifies → InteriorSessionTransitions
```

## VERSION CONTINUITY SUMMARY

- `0.4.0` — last fully Android-compiled/signature-verified APK baseline.
- `0.4.6` — shared exterior collision/camera repair.
- `0.4.7` — scheduled NPC TALK.
- `0.4.8` — six-resident social migration.
- `0.4.9` — journal/save repair hardening.
- `0.5.0` — weekly calendar and year rollover.
- `0.5.1` — engine-authoritative fast travel.
- `0.5.2` — discovery feedback and hidden undiscovered markers.
- `0.5.3` — engine-owned daily activity limits.
- `0.5.4` — save-stable world-layout + interior topology foundation.
- `0.5.5` — schema-4 interior-session authority + durable README/handoff documentation.
- `0.5.6` — documentation/continuity integrity refresh; no intended gameplay behavior change.

## RESUME RULE

When another session says “continue,” first load the latest complete Drive source archive, verify its checksum, read README, this handoff, `WORLDLIFE_DEVELOPMENT_REFERENCE.md`, `WORLDLIFE_SYSTEMS_GUIDE.md`, and the Drive source `project_control/PROJECT_STATE.md`, then inspect current code before editing. If a newer Drive folder has only a checksum or partial files but its mirror pointer identifies an archive ID, recover that archive explicitly before deciding which version is authoritative.
