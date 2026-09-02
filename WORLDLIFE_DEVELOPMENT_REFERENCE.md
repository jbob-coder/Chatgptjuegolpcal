# WorldLife RPG — Development Reference

Purpose: durable working reference for anyone modifying WorldLife RPG. Read this before changing gameplay architecture, save data, world coordinates, Android build identity, or storage workflow.

Current reference version: `0.5.6`.

## 1. Authority order

When facts conflict, use this order:

1. Latest complete Google Drive source archive whose SHA-256 round trip was verified.
2. Files inside that archive: source code, `README.md`, `docs/`, `project_control/`, tests, verification logs.
3. GitHub `worldlife-v*-drive-mirror` branch pointer for locating the matching Drive archive.
4. Current conversation context.
5. Older chat summaries/memory.

Do not rebuild current state from memory when the source archive is available.

## 2. External storage topology

```text
Google Drive
  └─ WorldLife RPG root
      ├─ Source/vX.Y.Z
      │   ├─ source ZIP
      │   ├─ .sha256
      │   ├─ README.md
      │   └─ continuity/reference Markdown
      ├─ Assets
      └─ Builds

GitHub: jbob-coder/Chatgptjuegolpcal
  ├─ worldlife-vXYZ-drive-mirror
  │   ├─ README.md
  │   └─ MIRROR_POINTER.json
  └─ worldlife-reference-docs
      ├─ README.md
      ├─ WORLDLIFE_PROJECT_HANDOFF.md
      ├─ WORLDLIFE_DEVELOPMENT_REFERENCE.md
      ├─ WORLDLIFE_SYSTEMS_GUIDE.md
      └─ MIRROR_POINTER.json
```

Rules:

- Drive first, GitHub second.
- Version mirror branches contain no workflows, source ZIP, APK, signing material, or large art.
- `worldlife-reference-docs` is a convenience documentation mirror only; Drive remains authoritative.
- Never use GitHub Actions unless explicitly re-authorized.
- Do not treat `main` as the WorldLife source branch; `main` also contains unrelated/older project material.

## 3. Repository/module map

### Root

- `settings.gradle.kts` — module registration (`:app`, `:game-core`).
- `build.gradle.kts` — pinned Android/Kotlin plugin versions.
- `gradle.properties` — JVM/cache/AndroidX settings.
- `README.md` — current project orientation.
- `SOURCE_MANIFEST.sha256` — frozen source integrity manifest.
- `scripts/verify_static.py` — structural/project-contract gate.

### `:game-core`

Path: `game-core/src/main/kotlin/com/jackwilson/worldlife/core/`

Pure Kotlin/JVM authoritative simulation layer.

Important files:

- `GameModels.kt` — `GameSave`, `GameState`, player/world/NPC/relationship/journal models, `GameAction`.
- `GameEngine.kt` — gameplay mutation boundary, quotes, repair, calendar advancement, interior transitions.
- `GameCatalog.kt` — stable IDs, social catalog, city, life-event catalog.
- `DeterministicRng.kt` — seedable simulation RNG.
- `OpenWorldModels.kt` — position, locations, travel/activity/NPC quotes and block reasons.
- `OpenWorldCatalog.kt` — districts, locations, actions, NPC schedule/presence definitions, discovery.
- `OpenWorldGeometry.kt` — deterministic exterior solid geometry and movement validity.
- `WorldCalendar.kt` — deterministic weekday mapping.
- `WorldLayoutCatalog.kt` — save-stable Arclight Core sector/corridor/expansion planning authority.
- `InteriorModels.kt` — interior topology/session/entry quote models.
- `InteriorCatalog.kt` — stable interior definitions, room graphs, portals, runtime-enabled interior set.

Tests:

- `game-core/src/test/kotlin/com/jackwilson/worldlife/core/GameEngineTest.kt`

### `:app`

Android presentation/persistence/update layer.

- `MainActivity.kt` — Android entry point.
- `data/GameDataStore.kt` — DataStore binding/file name.
- `data/GameSaveSerializer.kt` — JSON encode/decode and save-schema tolerance.
- `data/AndroidGameRepository.kt` — DataStore transactions and dispatch boundary.
- `data/WorldLifeUpdater.kt` — release lookup, APK download, SHA verification, package-installer handoff.
- `ui/GameViewModel.kt` — UI-to-repository action methods.
- `ui/WorldLifeApp.kt` — app/screen/overlay composition and updater dialogs.
- `ui/OpenWorldScreen.kt` — exterior third-person SceneView + mobile controls + map/context presentation.
- `ui/UpdateViewModel.kt` — update UI state machine.
- `ui/theme/Theme.kt` — Compose theme.

## 4. Non-negotiable architecture contracts

### A. `GameState` is authoritative

A durable game fact belongs in `GameState` or a catalog referenced by stable ID. Do not create a parallel mutable truth inside Compose.

### B. `GameEngine` owns mutation

Normal path:

```text
UI input
→ GameViewModel method
→ repository.dispatch(GameAction)
→ DataStore.updateData
→ GameEngine.reduce(oldState, action)
→ repaired/persisted new GameState
→ Flow emits snapshot
→ UI renders snapshot
```

### C. Quote APIs own legality

The UI may display reasons but must not independently reproduce rules already represented by:

- `GameEngine.travelQuote()`
- `GameEngine.locationActionQuote()`
- `GameEngine.npcInteractionQuote()`
- `GameEngine.interiorEntryQuote()`

If a new system has multiple block conditions, prefer a core quote/result model over duplicated boolean logic in Compose.

### D. `:game-core` stays Android-free

Never import `android.*`, `androidx.*`, Compose, lifecycle, DataStore, SceneView, or platform networking into `:game-core`.

### E. Stable IDs are compatibility contracts

Do not casually rename/reuse:

- player/city IDs;
- NPC IDs;
- relationship IDs;
- district/location IDs;
- event/choice IDs;
- activity IDs;
- interior/room/portal IDs;
- journal canonical ID sequence.

Renaming requires migration/tombstone handling and tests.

## 5. Current authoritative persistent state

Save schema: `4`.

`GameState` currently persists:

```text
player
stats
money
reputation
isAlive
rngState
currentEventId
world
openWorld
npcs
relationships
dailyActivityUsage
journal
nextJournalSequence
interiorSession?
```

DataStore file name remains `worldlife_game_state_v1.json`. The file name is not the schema number; schema version is stored inside `GameSave`.

## 6. Save-change protocol

Before adding a persistent field:

1. Decide whether the field is truly durable simulation state.
2. Add it to the core model with a reversible/defaultable representation when possible.
3. Decide whether the wire meaning requires a schema bump.
4. Update serializer encode.
5. Update tolerant decode for older schemas.
6. Update `GameEngine.repair()` if references/values can become invalid.
7. Add old-save migration/repair tests.
8. Update README, architecture, handoff, project state, systems guide.
9. Run full regression before freezing.

Never let missing new fields cause old saves to fail before repair unless the incompatibility is deliberate and documented.

## 7. World-coordinate contract

Exterior:

- grid = `60 × 40`;
- save coordinate = integer cell;
- render scale = `4.0 m` per cell;
- current core = approximately `240 m × 160 m`;
- existing coordinates are permanent compatibility state.

Do **not** increase city size by changing `TILE_METERS` or rescaling old coordinates.

Future growth attaches/streams sectors using `WorldLayoutCatalog` seams.

Interior:

- local units = metres;
- room topology uses stable IDs and metre rectangles;
- exterior return position is catalog-authoritative.

## 8. Current gameplay authority matrix

| System | Authority | UI responsibility |
|---|---|---|
| player/world stats | `GameState` + `GameEngine` | display |
| life events | `EventCatalog` + `GameEngine` | present choices |
| RNG | `DeterministicRng` + persisted `rngState` | none |
| movement legality | `OpenWorldGeometry` + `GameEngine` | send direction/animate |
| discovery | `OpenWorldCatalog.discoverNear` | show discovered feedback/markers |
| fast travel | `GameEngine.travelQuote/travelTo` | show quote, dispatch action |
| daily location activity | `locationActionQuote/interactAtLocation` | show quote, dispatch action |
| NPC presence/TALK | schedule + `npcInteractionQuote/interactWithNpc` | render/prompt, dispatch action |
| calendar | `advanceGameClock` + `WorldCalendar` | display date/time |
| journal IDs | `GameEngine.journalId` + repaired sequence | display entries |
| interior entry | `interiorEntryQuote/EnterInterior` | show ENTER, dispatch |
| interior session | `GameState.interiorSession` | choose exterior/interior renderer |
| save JSON | `GameSaveJsonCodec` | none |
| updater | Android `WorldLifeUpdater` | show update state/install flow |

## 9. How to add common content safely

### Add a new NPC

1. Add stable NPC + relationship IDs in `StableIds`.
2. Add default mutable records in `SocialCatalog`.
3. Add schedule/presence data in `OpenWorldCatalog`.
4. Add interaction definition/ID if interactable.
5. Ensure `repair()` appends new records without overwriting existing relationship progress.
6. Test schedule conflicts across 7×24 states.
7. Test TALK presence, daily limits, journal/time effects.

### Add a new exterior location

1. Add stable location ID.
2. Add `WorldLocationDefinition` with save coordinate.
3. Verify coordinate is walkable/reachable.
4. If it has an activity, give the action a stable ID and daily limit.
5. If enterable, add an `InteriorCatalog` definition/portal or explicitly document exterior-only.
6. Update layout docs and static validation.

### Add a new activity

1. Define it in core with stable ID, time, effects, journal text, daily limit.
2. Ensure quote returns explicit block reason.
3. Ensure use is recorded in `dailyActivityUsage`.
4. Test same-day limit and next-day reset.
5. UI consumes the quote; do not reproduce the limit locally.

### Add a new interior

Do not runtime-enable several at once.

1. Define stable interior/room/portal IDs.
2. Validate room topology and exterior portal.
3. Make entry eligibility core-authoritative.
4. Add save/repair behavior.
5. Build one renderer/movement slice.
6. Test enter → save → reload → exit.
7. Only then consider enabling the next interior.

### Add a life event

1. Stable event and choice IDs.
2. Explicit min/max age and weight.
3. Effects use existing engine effect model.
4. Journal text is original.
5. Validate IDs unique.
6. Remember: changing event ordering/weights/RNG call count can alter deterministic histories.

## 10. Determinism rules

The default seed is part of the regression contract. RNG cursor is persisted in `GameState`.

Changes that can alter deterministic history:

- RNG algorithm;
- event ordering;
- event weights;
- number/order of random calls;
- conditional random calls;
- repair logic that mutates RNG state.

Treat these as compatibility changes, not cosmetic refactors.

## 11. Verification workflow

Minimum workflow for a nontrivial source change:

```text
READ authoritative Drive state
→ VERIFY archive SHA/manifest
→ choose one bounded piece
→ implement
→ compile relevant pure Kotlin code
→ run repository tests
→ run dedicated behavior harness if needed
→ run serializer/API stub compile if persistence changed
→ parse Android XML
→ run scripts/verify_static.py
→ inspect diff/state docs
→ regenerate SOURCE_MANIFEST.sha256
→ package source ZIP
→ ZIP integrity check
→ upload ZIP + checksum to Drive
→ download from Drive
→ verify byte/SHA round trip
→ create GitHub pointer mirror
→ verify mirror contains no workflows
```

For Android UI/SceneView changes, source checks are not enough. A real Android compile/runtime gate remains required before claiming success.

## 12. Status vocabulary

- `IMPLEMENTED`: code/content exists.
- `COMPILED`: compiler actually ran successfully.
- `TESTED`: automated or dedicated behavior tests ran successfully.
- `RUNTIME_VERIFIED`: actual Android runtime behavior was inspected.
- `APK_VERIFIED`: built APK passed integrity/signature and required runtime checks.

Do not collapse these categories.

## 13. Build/toolchain baseline

Source pins:

- AGP `9.1.1`;
- Kotlin `2.4.10`;
- Java target `17`;
- compile/target SDK `37`;
- min SDK `26`;
- SceneView `4.33.0`.

The source archive currently has no Gradle wrapper. A compatible local Gradle installation must create/use one before normal Android build commands can run.

The current sandbox cannot honestly produce the v0.5.x APK because it lacks the full local Android SDK/Gradle toolchain.

## 14. Signing/update rules

`applicationId` must remain `com.jackwilson.worldlife` for in-place update compatibility.

The project currently includes `app/dev-signing.jks` and hard-coded development credentials. Treat this as a disposable **development signing identity**, not a secure production release key. Do not publish it as the long-term release key.

Before valuable phone saves depend on direct APK updates:

- generate/select a durable release key;
- keep passwords/secrets outside source;
- back the key up securely;
- use the same release lineage for every future direct-install APK.

## 15. Cost/storage rules

- Google Drive is primary.
- GitHub version branches are pointer/history only.
- `worldlife-reference-docs` may mirror current small Markdown files only after Drive freeze.
- No GitHub Actions unless explicitly re-authorized.
- No paid runners/Codespaces/Git LFS/paid build services/metered APIs/paid assets without approval.
- 90 MiB (`94,371,840` bytes) per-file safety ceiling for a 100 MiB destination.
- Split larger artifacts and include exact reconstruction/checksum instructions.

## 16. Current blockers

- No complete free Android SDK/Gradle runtime in the current execution environment.
- v0.5.x Compose/SceneView changes therefore remain source-level until a real Android build is run.
- Player-apartment core session exists, but Android interior rendering/free-roam is not yet wired.

## 17. Next bounded implementation

Player apartment runtime scene only.

Do not simultaneously enable all interiors, add complex NPC interior schedules, or expand the city. First prove:

`ENTER → persisted interior session → apartment render → save/reload indoors → EXIT → exact exterior portal`.

## 18. Graphify-style map

```text
WorldLifeRPG
  → stores_primary_in → GoogleDrive
  → mirrors_history_to → GitHub
  → has_authority → GameState

GameState
  → mutated_by → GameEngine
  → persisted_by → GameSaveJsonCodec/DataStore
  → contains → PlayerState
  → contains → WorldState
  → contains → OpenWorldState
  → contains → Relationships
  → contains → DailyActivityUsage
  → contains → Journal
  → optionally_contains → InteriorSessionState

GameEngine
  → validates → TravelQuote
  → validates → LocationActionQuote
  → validates → NpcInteractionQuote
  → validates → InteriorEntryQuote
  → advances → WorldCalendar
  → repairs → SaveState

OpenWorldGeometry
  → validates → ExteriorMovement
  → shared_with → Renderer

WorldLayoutCatalog
  → defines → ArclightCoreSlice
  → preserves → SaveStableCoordinates
  → plans → StreamedExpansion

InteriorCatalog
  → defines → RoomGraphs
  → defines → ExteriorReturnPortals
  → runtime_enables → PlayerApartment

GameEngineTest
  → verifies → Determinism
  → verifies → SaveRepair
  → verifies → Travel
  → verifies → DailyActivities
  → verifies → NPCSchedules
  → verifies → WorldLayout
  → verifies → InteriorSession
```

## 19. Resume checklist

When the instruction is simply “continue”:

1. Find the highest complete `worldlife-v*-drive-mirror` branch on GitHub.
2. Read `MIRROR_POINTER.json`.
3. Download the referenced Drive archive/checksum.
4. Verify archive SHA before extraction.
5. Verify `SOURCE_MANIFEST.sha256` after extraction.
6. Read README + handoff + project state + this development reference.
7. Inspect real code for the current objective.
8. Do one bounded piece.
9. Do not silently use a paid build path.
