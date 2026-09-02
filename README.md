# WorldLife RPG

WorldLife RPG is an original Android life-simulation RPG built around a persistent simulated city rather than a menu-only life simulator. The player physically exists in Arclight City, moves through a third-person world, meets scheduled residents, performs location activities, makes life-event choices, enters persistent world states, and carries permanent consequences in one authoritative `GameState`.

The project may share the broad genre idea of life simulation with games such as BitLife, but it does **not** copy BitLife UI, event text, branding, assets, writing, or protected content.

## Current source state

- Source version: `0.5.6`
- Android application ID: `com.jackwilson.worldlife`
- `versionCode`: `21`
- Minimum Android SDK: `26`
- Compile / target SDK: `37`
- Java language target: `17`
- Kotlin: `2.4.10`
- Android Gradle Plugin: `9.1.1`
- SceneView: `4.33.0`
- Save schema: `4`
- Last fully Android-compiled/signature-verified APK: `0.4.0`
- Current Drive source folder: `https://drive.google.com/drive/folders/1PW57IwxUSfHddC5kUB3RsP0p047F8A6G`
- GitHub mirror branch: `worldlife-v056-drive-mirror` (created only after Drive round-trip verification)

`0.5.6` is a documentation/continuity hardening source release built on the v0.5.5 gameplay state. It does **not** claim a new Android runtime build. Do not describe v0.5.6 as APK-verified or phone-tested until a free local Android toolchain actually builds and runs it.

## Start here

For substantial work, read in this order:

1. `README.md` — project orientation and current state.
2. `WORLDLIFE_PROJECT_HANDOFF.md` — exact continuation point, blockers, decisions, risks, next action.
3. `WORLDLIFE_DEVELOPMENT_REFERENCE.md` — how to work on the project without breaking authority, saves, storage policy, or verification discipline.
4. `WORLDLIFE_SYSTEMS_GUIDE.md` — how each implemented game system works and which file owns it.
5. Drive source `docs/ARCHITECTURE.md` — module boundaries and mutation/persistence flow.
6. Drive source `docs/WORLD_LAYOUT_MASTER_PLAN.md` — save-stable exterior scale and future city expansion seams.
7. Drive source `docs/INTERIOR_SYSTEM_DESIGN.md` — interior topology, transition model, and first runtime apartment target.
8. Drive source `project_control/PROJECT_STATE.md` — chronological implementation record and current source facts.
9. Drive source `project_control/DRIVE_PRIMARY_WORKFLOW.md` — storage, packaging, cost, and mirror rules.

Repository/Drive files outrank chat memory if they conflict.

## Product direction

WorldLife is intentionally being built in layers so later depth does not require a rewrite.

```text
PLAYER
→ identity
→ traits
→ skills
→ education
→ jobs
→ health
→ possessions
→ property
→ vehicles
→ debt
→ investments
→ reputation
→ legal/criminal state
→ family

NPC
→ stable identity
→ age/personality
→ home
→ occupation
→ money
→ needs/goals
→ relationships
→ memories
→ schedule
→ independent decisions

WORLD
→ countries
→ cities
→ districts
→ streamed sectors
→ buildings
→ interiors
→ homes/businesses/schools/hospitals/police
→ jobs/economy/crime/laws/weather/institutions/world events
```

The design priority is **simulation authority first, content volume second**. Large event libraries, a huge city, and many interiors are deliberately deferred until persistence, movement, calendar, discovery, NPC schedules, activities, interiors, and save migration are reliable.

## What is implemented

### Persistent life simulation

- New character creation at age 18.
- Deterministic/seedable RNG with persisted RNG state.
- Life events with multiple choices and permanent consequences.
- Health, happiness, intelligence, charisma, fitness, money, and reputation.
- World economy, public safety, and opportunity values.
- Journal/history entries with stable canonical IDs.
- Save repair and schema migration through schema 4.
- Deterministic seven-day calendar and year rollover.

### Social simulation

Six save-stable residents currently exist:

- Maya Ortiz — `npc_maya_ortiz`
- Theo Park — `npc_theo_park`
- Priya Shah — `npc_priya_shah`
- Marcus Reed — `npc_marcus_reed`
- Lena Brooks — `npc_lena_brooks`
- Elena Ruiz — `npc_elena_ruiz`

Implemented behavior:

- stable NPC and relationship IDs;
- closeness and trust;
- weekday/weekend schedules;
- deterministic physical presence by date/time/location;
- contextual `TALK` interactions;
- relationship/stat/time/journal consequences;
- engine-owned daily interaction limits;
- save-safe social migration.

### Exterior open world

The current playable exterior is the **Arclight Core Slice**, not the final city.

- Simulation grid: `60 × 40` cells.
- Exterior scale: `4.0 m` per save cell.
- Physical core: approximately `240 m × 160 m`.
- Four save-stable core districts/sectors.
- Human-scale two-lane roads and sidewalks.
- Third-person over-the-shoulder camera.
- Left virtual movement stick.
- Right-side drag camera look.
- Eight-direction movement.
- Diagonal corner-cut protection.
- Shared engine/renderer collision authority.
- Collision-aware camera shortening.
- Discovery-gated destination presentation.
- Engine-authoritative fast-travel quotes, fares, duration, affordability, and lock reasons.

### Daily activity authority

Location activities and NPC conversations share one deterministic daily-use model.

The engine owns:

- usage count;
- daily limit;
- date ownership;
- lock reason;
- midnight/year cleanup;
- corrupted/duplicate record repair.

Compose only presents the quote/status returned by the engine.

### World layout authority

`WorldLayoutCatalog` declares the current Arclight Core Slice as a permanent save-stable foundation. Future city growth must stream or attach new sectors; existing coordinates must not be rescaled simply to make the city larger.

See Drive source `docs/WORLD_LAYOUT_MASTER_PLAN.md` and `docs/arclight_core_layout.svg`.

### Interior foundation

`InteriorCatalog` defines metre-scale topology for nine named interiors. Civic Plaza is explicitly exterior-only.

Current runtime state:

- Save schema 4 includes optional `InteriorSessionState`.
- Only `interior_player_home` is runtime-enabled.
- `GameEngine.interiorEntryQuote()` owns entry validity.
- `EnterInterior` creates a persisted session at the apartment entry room.
- `ExitInterior` returns to the exact save-stable exterior portal coordinate.
- Exterior movement, fast travel, exterior activities, NPC TALK, and annual advancement are blocked while inside.
- Repair drops unsupported sessions and repairs invalid room IDs to the entry room.

**Still pending:** the Android/SceneView apartment renderer and interior free-roam movement. That remains the next bounded gameplay piece.

## Architecture at a glance

```text
Touch / UI input
      ↓
Jetpack Compose / SceneView
      ↓ actions only
GameViewModel
      ↓
AndroidGameRepository
      ↓ DataStore.updateData transaction
GameEngine (:game-core)
      ↓ authoritative mutation
GameState
      ↓
GameSaveJsonCodec / DataStore<GameSave>
      ↓
persisted local save
```

Core rule: **the UI is not a second game engine**.

`GameState` is the persistent truth. `GameEngine` owns gameplay mutation. Engine quote APIs own legality/lock reasons. Compose renders snapshots and dispatches actions.

See `WORLDLIFE_SYSTEMS_GUIDE.md` and the Drive source `docs/ARCHITECTURE.md`.

## Save/update compatibility rules

- Keep `applicationId = com.jackwilson.worldlife` stable.
- Keep stable entity IDs stable; do not reuse an old ID for a different entity.
- Persistent fields require backward-compatible decoding/repair or an explicit migration.
- Existing Arclight Core exterior coordinates are save-stable.
- Interior portal return coordinates are save-stable.
- Keep one durable release-signing lineage before valuable phone saves depend on in-place updates.
- The included `app/dev-signing.jks` in the Drive source is a **development identity only**. It is not a production secret/signing strategy and is intentionally excluded from GitHub pointer/reference mirrors.
- Clearing app storage or uninstalling can remove local saves unless Android backup/device transfer restores them.

## Storage and cost policy

Google Drive is the authoritative external project store.

GitHub version branches named `worldlife-v*-drive-mirror` are lightweight pointer/history mirrors. This `worldlife-reference-docs` branch is a small human-readable documentation mirror for convenience; Drive remains authoritative.

Do not use without explicit authorization:

- GitHub Actions;
- paid runners;
- Codespaces;
- Git LFS;
- paid build services;
- metered APIs;
- paid asset packs.

Working safety ceiling for a destination with a 100 MiB limit:

`90 MiB = 94,371,840 bytes` per file.

## Verification language

Use these terms precisely:

- **IMPLEMENTED** — source exists.
- **COMPILED** — the relevant compiler actually ran successfully.
- **TESTED** — behavioral tests actually ran successfully.
- **RUNTIME VERIFIED** — behavior was inspected on a real Android runtime/emulator/device.
- **APK VERIFIED** — APK was built, integrity/signature checked, and required runtime gates passed.

Do not upgrade a claim because a static check passed.

Current v0.5.5 gameplay baseline before this documentation refresh was verified with:

- pure Kotlin core compile;
- 45 repository tests;
- dedicated interior-session harness;
- schema-4 serializer type/compile check with local API stubs;
- six Android XML parse checks;
- static source verification;
- zero workflow files in source;
- Drive archive/checksum round trip.

v0.5.6 preserves that gameplay source and has passed the corresponding source/core continuity checks; a current APK build is still blocked by the missing complete local Android toolchain.

## Build and phone test

Normal free/local build gates:

```bash
./gradlew :game-core:test
./gradlew :app:assembleDebug
./gradlew :app:lintDebug
```

The current source archive does not contain a Gradle wrapper, so a compatible local Gradle installation must generate it first. Do not substitute a paid cloud build without explicit approval.

The corrected build/phone guide is stored in the v0.5.6 Drive source as `docs/BUILD_AND_PHONE_TEST.md`.

## Next bounded gameplay piece

**Player apartment runtime scene.**

Acceptance target:

1. Wire the existing `GameViewModel.enterInterior()` / `exitInterior()` methods into the active game UI.
2. Show ENTER only when `GameEngine.interiorEntryQuote(game).canEnter`.
3. When `game.interiorSession != null`, switch presentation from exterior Arclight to the player-apartment scene.
4. Build geometry from `InteriorCatalog.INTERIOR_PLAYER_HOME` rather than unrelated hard-coded dimensions.
5. Preserve third-person camera conventions indoors.
6. Exit through the authoritative portal and restore the exact Mercer exterior position.
7. Save/load while inside must restore safely.
8. Do not runtime-enable the other eight interiors until this first loop is compiled and runtime-verified.

## Version continuity

- `0.4.0` — last fully Android-compiled/signature-verified APK baseline.
- `0.4.6` — shared exterior collision/camera authority.
- `0.4.7` — scheduled NPC TALK.
- `0.4.8` — six-resident social migration.
- `0.4.9` — journal/save repair hardening.
- `0.5.0` — weekly calendar and year rollover.
- `0.5.1` — engine-authoritative fast travel.
- `0.5.2` — discovery feedback and hidden undiscovered markers.
- `0.5.3` — engine-owned daily activity limits.
- `0.5.4` — save-stable world-layout and interior-topology foundation.
- `0.5.5` — schema-4 interior-session authority and durable handoff.
- `0.5.6` — documentation/continuity integrity refresh; no intended gameplay behavior change.
