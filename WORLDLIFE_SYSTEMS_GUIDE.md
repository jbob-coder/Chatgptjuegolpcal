# WorldLife RPG — How the Game Works

This document explains the implemented runtime/simulation systems and the authority path behind each one. It is a technical behavior guide, not a design wish list.

Reference source version: `0.5.6` (gameplay behavior inherited from v0.5.5 unless otherwise noted).

## 1. One persistent simulation

The central idea is that WorldLife is not a collection of disconnected screens. Player stats, physical world position, time, NPC relationships, discovery, activity limits, journal history, current life event, and interior state live together in one `GameState`.

When an action happens, the engine produces a new complete state. DataStore persists that result. The UI then renders the new snapshot.

```text
input
→ action
→ GameEngine
→ new GameState
→ DataStore
→ UI snapshot
```

This is why UI code must not independently change money, relationships, clocks, discovery, or legality.

## 2. Starting a life

`GameEngine.newGame(name, seed)` creates the initial state.

Current baseline:

- age: `18`;
- year: `2026`;
- city: Arclight City;
- home position: Mercer District player apartment exterior;
- money: `$1,500`;
- initial player stats are defined in `GameEngine.newGame`;
- six NPC/relationship defaults come from `SocialCatalog`;
- deterministic RNG state begins from the supplied/default seed;
- journal begins with `journal_000001`;
- daily activity ledger is empty;
- no interior session is active.

The player name is trimmed, capped at 28 characters, and falls back to the default if blank.

## 3. Persistence and save loading

Android DataStore file:

`worldlife_game_state_v1.json`

The filename is historical and stays stable. Wire compatibility is controlled by `GameSave.schemaVersion`, currently `4`.

Read path:

```text
DataStore
→ GameSaveSerializer.readFrom
→ GameSaveJsonCodec.decode
→ GameSave(schema=current)
→ AndroidGameRepository.gameState
→ GameEngine.repair
→ UI Flow
```

Repair protects valid progress while fixing known invalid state:

- clamps stats/relationships;
- drops invalid pending event references;
- appends newly introduced social catalog records without overwriting existing relationship progress;
- relocates exterior position if it became solid;
- repairs journal sequence past the highest canonical ID;
- removes stale/unknown daily activity usage;
- repairs or drops invalid interior sessions.

## 4. Actions and mutation

`GameAction` currently includes:

- `AdvanceYear`
- `Choose(choiceId)`
- `Move(direction)`
- `TravelTo(locationId)`
- `InteractAtLocation`
- `InteractWithNpc(npcId)`
- `EnterInterior`
- `ExitInterior`

`GameEngine.reduce()` routes each action to the matching engine method.

The Android repository executes that reduction inside DataStore `updateData`, making each action a persistence transaction rather than a transient UI-only change.

## 5. Exterior movement

World save grid:

- width: `60`;
- height: `40`;
- one save step = `4.0 m` rendered distance;
- one accepted grid movement step advances world time by one minute.

Directions include all eight compass directions.

Movement acceptance:

1. Player must be alive.
2. Player must not be inside an interior session.
3. `OpenWorldGeometry.canMove` must allow the target.
4. Diagonal movement cannot cut through a blocked cardinal corner.
5. Accepted movement updates position/district/location/discovery/step count.
6. `advanceGameClock` advances date/time.

The renderer and engine use the same procedural building/landmark geometry model so visual solids and movement solids do not intentionally diverge.

## 6. Discovery

Discovery is driven by physical proximity after movement.

`OpenWorldCatalog.discoverNear(position, currentIds)` returns the updated stable list of discovered location IDs.

Presentation rules:

- undiscovered destinations do not appear as artificial grey map dots;
- discovered destinations may show world-space markers/map entries;
- discovery feedback is a presentation effect derived from the authoritative discovered-ID change.

Discovery controls fast-travel eligibility.

## 7. Fast travel

Fast travel is core-authoritative.

Before dispatching/processing travel, use:

`GameEngine.travelQuote(state, locationId)`

Quote contains:

- destination definition;
- distance;
- fare;
- travel duration;
- `TravelBlockReason?`;
- `canTravel`.

Block reasons:

- invalid destination;
- player unavailable;
- inside interior;
- destination undiscovered;
- destination is current location;
- insufficient funds.

`GameEngine.travelTo` gets the same quote and no-ops if travel is blocked. Successful travel:

- deducts fare;
- moves to destination coordinate;
- updates district/current location;
- advances step count by distance;
- writes a journal entry;
- advances game clock by quoted travel minutes.

Compose does not calculate its own fare or discovery legality.

## 8. Calendar/time

`OpenWorldState` owns minute-of-day and day-of-year; `WorldState` owns year.

`GameEngine.advanceGameClock` is the common time path for:

- walking;
- fast travel;
- location activities;
- NPC conversations.

When Day 365 crosses midnight, `world.year` increments and day-of-year wraps to 1.

`WorldCalendar` derives deterministic weekday from `(year, dayOfYear)` using the project’s fixed 365-day simulation-year model.

Weekday affects NPC schedules.

## 9. Location activities

A location can define `WorldLocationActionDefinition`:

- stable action ID;
- title;
- time cost;
- `GameEffect`;
- journal text;
- daily limit.

Use:

`GameEngine.locationActionQuote(state)`

Possible activity block reasons include:

- player unavailable;
- inside interior;
- pending life event;
- no activity;
- insufficient funds;
- daily limit reached.

Successful use:

1. applies effect;
2. records a dated `DailyActivityUsage` entry;
3. appends journal history;
4. increments journal sequence;
5. advances time;
6. enforces life-end rules.

## 10. Daily activity ledger

`GameState.dailyActivityUsage` is authoritative for both location actions and NPC TALK limits.

Each record stores:

- activity ID;
- year;
- day-of-year;
- uses.

The engine:

- checks uses before action;
- records successful use;
- removes old-day records on clock rollover;
- clears/normalizes when advancing year;
- repairs duplicates/unknown/stale records on save load.

This prevents UI restarts from bypassing limits.

## 11. NPC schedules

The six NPCs have stable IDs and deterministic schedules in `OpenWorldCatalog`.

Presence depends on:

- minute-of-day;
- year;
- day-of-year;
- weekday/weekend status.

`npcPresences(...)` is used by presentation and interaction authority.

The important consistency rule is:

**rendered NPC presence and TALK validation must use the same date/time/location inputs.**

## 12. NPC TALK

Use:

`GameEngine.npcInteractionQuote(state, npcId)`

Quote includes:

- interaction definition;
- current presence;
- uses today;
- block reason;
- `canUse`.

Typical blocks:

- player unavailable;
- inside interior;
- pending event;
- NPC not present;
- daily limit reached.

Successful TALK can affect:

- closeness;
- trust;
- player stats;
- time;
- daily usage;
- journal.

The engine rejects attempts to talk to an NPC who is not actually scheduled at the current location/time.

## 13. Relationships

Each `RelationshipState` links a stable relationship ID to a stable NPC ID.

Current values:

- closeness `0..100`;
- trust `0..100`.

Effects clamp values into valid range.

Save repair adds newly introduced catalog relationships only when missing, preserving existing user progress for already-known NPCs.

## 14. Life events and yearly advancement

`EventCatalog` contains authored `LifeEventDefinition`s with stable event/choice IDs, age eligibility, weight, text, and effects.

`AdvanceYear` is rejected when:

- player is dead;
- a life event choice is pending;
- an interior session is active.

Successful yearly advancement:

- increments age/year;
- updates world conditions through deterministic RNG;
- can apply age-related health effects;
- calculates deterministic annual income with RNG variation;
- clears daily activity usage;
- chooses the next eligible weighted event;
- persists the next RNG cursor.

`Choose(choiceId)` applies the selected event consequence and writes history.

## 15. Journal

Journal entries are permanent history records.

Canonical IDs:

`journal_000001`, `journal_000002`, ...

`nextJournalSequence` is persisted.

Repair scans existing canonical IDs and ensures the next sequence cannot move backward and create duplicates. Noncanonical imported/legacy IDs are retained but do not take over the canonical counter.

## 16. World layout

`WorldLayoutCatalog` defines the current physical core and future seams.

The current 60×40 world is explicitly a **core slice**, not an entire metropolis.

Future expansion must:

- preserve current save coordinates;
- preserve core scale;
- attach/stream sectors rather than stretch old geometry;
- respect major corridor seams;
- keep old location IDs/positions compatible.

See the Drive source `docs/WORLD_LAYOUT_MASTER_PLAN.md`.

## 17. Interiors

`InteriorCatalog` contains nine topology definitions. Civic Plaza has no interior.

Each interior defines:

- stable interior ID;
- exterior location ID;
- archetype/access mode;
- width/depth/floors;
- stable room list;
- room connectivity;
- portal;
- interior spawn;
- exact exterior return position.

Runtime-enabled set currently contains only:

`interior_player_home`

### Entry

`GameEngine.interiorEntryQuote(state)` returns:

- current exterior location;
- matching interior if defined;
- `InteriorEntryBlockReason?`;
- `canEnter`.

Entry can be blocked because:

- player unavailable;
- pending event;
- already inside;
- not at a location;
- no interior exists;
- topology exists but runtime is not enabled.

`EnterInterior` creates `InteriorSessionState(interiorId, entryRoomId)`.

### While inside

Current schema persists interior ID + current room ID.

Exterior-only actions are rejected while the session exists:

- exterior movement;
- fast travel;
- exterior activities;
- NPC TALK;
- annual advancement.

### Exit

`ExitInterior` uses the catalog portal and returns to the exact exterior save coordinate.

### Repair

Invalid interior session handling:

- unknown interior → session dropped;
- runtime-disabled interior → session dropped;
- exterior location mismatch → session dropped;
- unknown room in otherwise valid session → repaired to entry room.

### Still missing

The Android UI does not yet switch to a rendered apartment scene when `interiorSession != null`. Free-roam interior local position/facing also remains intentionally deferred.

## 18. Exterior rendering

`OpenWorldScreen.kt` owns presentation, not game authority.

It currently handles:

- SceneView world render;
- ground/roads/sidewalks/buildings/landmarks;
- generated world-space art decals;
- player/NPC procedural presentation;
- follow camera;
- camera obstruction shortening;
- left joystick;
- right-half look drag;
- sprint timing;
- map overlay;
- discovery banner;
- contextual action/TALK prompt;
- compact action-RPG HUD.

World-space coordinates must be derived from the same core grid/geometry assumptions as engine movement.

## 19. Android UI overlays

`WorldLifeApp.kt` keeps the 3D world as the primary screen and opens compact in-world overlays for:

- Hunter Status / life event choices;
- People;
- Journal;
- System/update/reset.

Overlay state such as which panel is open is presentation state and may use Compose `rememberSaveable`; it is not authoritative simulation data.

## 20. Updater

`WorldLifeUpdater` checks the latest GitHub release using tags beginning with `worldlife-v`.

Expected APK asset name:

`WorldLifeRPG.apk`

Update flow:

1. query latest release;
2. compare semantic version against current `BuildConfig.VERSION_NAME`;
3. find `WorldLifeRPG.apk`;
4. require GitHub asset SHA-256 digest;
5. download into app cache;
6. hash downloaded APK;
7. delete/fail if digest mismatches;
8. request Android “install unknown apps” permission if required;
9. hand APK to Android Package Installer through `FileProvider`.

Android still decides whether the APK signature/version is compatible with the installed app.

The updater does **not** mean future APKs can be installed silently. Android requires user/security confirmation.

## 21. Backup/update persistence

Manifest enables backup. Backup/data-extraction rules include the DataStore directory for cloud backup and device transfer where Android supports it.

An in-place APK update using the same application ID and compatible signing lineage should preserve app data. Clearing storage/uninstalling can delete local data unless restored by Android backup.

## 22. Assets

High-resolution generated masters live in Drive. Runtime crops in `drawable-nodpi` provide:

- road/sidewalk/crosswalk;
- walls/doors/windows;
- trees/benches/hydrants;
- joystick;
- action buttons.

Procedural geometry provides structural mass; image assets provide reusable visual detail.

Do not overwrite the source masters when optimizing APK derivatives.

## 23. Current next loop

The core can now persist “player is inside apartment.” The Android presentation cannot yet render/play that session.

Next runtime loop to prove:

```text
approach apartment door
→ engine quote says enter allowed
→ UI dispatches EnterInterior
→ GameState persists interiorSession
→ UI renders apartment from InteriorCatalog
→ save/close/reopen restores apartment
→ exit dispatches ExitInterior
→ exact exterior portal restored
```

Do not expand to all interiors before this works end-to-end on Android.
