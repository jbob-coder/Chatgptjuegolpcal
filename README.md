# WorldLife RPG

> **CURRENT HANDOFF — READ FIRST:** `START_HERE_NEW_CHAT.md` is the current runtime/build handoff as of 2026-09-02. It supersedes older v0.5.7 runtime-status wording preserved later in this README. Current frozen source is v0.5.8, and a GitHub-built v0.5.8 functional test APK has successfully passed core tests, Android compilation, APK integrity, package/version, and signature verification. Permanent test APK: https://drive.google.com/file/d/1CE5wmIVNcbnVy8XvWpt6SBLrAlHO01P0/view?usp=drivesdk

WorldLife RPG is an original Android life-simulation RPG built around a persistent simulated city rather than a menu-only life simulator. The player physically exists in Arclight City, moves through a third-person world, meets scheduled residents, performs location activities, makes life-event choices, enters persistent world states, and carries permanent consequences in one authoritative `GameState`.

The project may share the broad genre idea of life simulation with games such as BitLife, but it does **not** copy BitLife UI, event text, branding, assets, writing, or protected content.

## Current source state

- Source version: `0.5.8`
- Android application ID: `com.jackwilson.worldlife`
- `versionCode`: `23`
- Minimum Android SDK: `26`
- Compile / target SDK: `37`
- Java language target: `17`
- Kotlin: `2.4.10`
- Android Gradle Plugin: `9.1.1`
- SceneView: `4.33.0`
- Save schema: `4`
- Frozen Drive source folder: `https://drive.google.com/drive/folders/1WABizspRFJxOURbTpqbPdIAda2Uv00Qp`
- Frozen source SHA-256: `478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822`
- Successful GitHub APK test branch: `worldlife-v058-apk-test`
- Successful build commit: `5726bab2d671e1af1260e5c524a5feb775c72abf`
- Successful GitHub Actions run: `33596655227`
- Verified test APK SHA-256: `e1e10e6910d2bcc1a1ca87bfc9946727f1307c9a008020dfc03d12aa58ad7c0f`
- Verified test APK size: `44,012,114` bytes
- Permanent Drive test APK: `https://drive.google.com/file/d/1CE5wmIVNcbnVy8XvWpt6SBLrAlHO01P0/view?usp=drivesdk`

`0.5.8` adds the Cheat/Admin Panel foundation and durable project-editing/admin-goal documentation on top of the v0.5.7 apartment presentation slice. The GitHub functional test APK is Android-compiled and signature-verified, but phone runtime/playability remains pending user installation and testing. Its workflow may create tiny fallback PNG resources when authoritative art is absent from GitHub transport, so do not judge final visual fidelity from that test APK.

## Start here

For substantial work, read in this order:

1. `START_HERE_NEW_CHAT.md` — exact current runtime/build state and immediate next action.
2. `README.md` — project orientation.
3. `WORLDLIFE_PROJECT_HANDOFF.md` — continuation point, blockers, decisions and risks.
4. `WORLDLIFE_DEVELOPMENT_REFERENCE.md` — safe development workflow.
5. `WORLDLIFE_SYSTEMS_GUIDE.md` — system ownership and behavior.
6. `WORLDLIFE_EVOLVE_ALIGNMENT.md` — EVOLVE operating/continuity rules.
7. Inspect the Drive-authoritative v0.5.8 source/manifest for factual source claims.
8. For build work, inspect `.github/workflows/worldlife-v058-apk.yml` on `worldlife-v058-apk-test` and successful run `33596655227` before changing anything.

Google Drive/repository files outrank chat memory when they conflict.

## Product direction

```text
PLAYER
→ identity → traits → skills → education → jobs → health
→ possessions → property → vehicles → debt → investments
→ reputation → legal/criminal state → family

NPC
→ stable identity → age/personality → home → occupation → money
→ needs/goals → relationships → memories → schedule → independent decisions

WORLD
→ countries → cities → districts → streamed sectors → buildings → interiors
→ homes/businesses/schools/hospitals/police
→ jobs/economy/crime/laws/weather/institutions/world events
```

The design priority is **simulation authority first, content volume second**.

## Implemented foundation

### Persistent simulation
- New character creation at age 18.
- Seedable deterministic RNG with persisted state.
- Life events and permanent consequences.
- Health, happiness, intelligence, charisma, fitness, money, reputation.
- Economy, public safety, opportunity.
- Stable journal/history IDs.
- Save repair/migration through schema 4.
- Deterministic seven-day calendar/year rollover.

### Social simulation
Six stable residents: Maya Ortiz, Theo Park, Priya Shah, Marcus Reed, Lena Brooks, Elena Ruiz.

Implemented: stable IDs, closeness/trust, weekday/weekend schedules, physical presence, contextual TALK, multi-system consequences, daily limits, save-safe social migration.

### Exterior world
The current playable exterior is the **Arclight Core Slice**:
- `60 × 40` save cells;
- `4.0 m` per cell;
- approximately `240 m × 160 m`;
- four save-stable sectors;
- human-scale roads/sidewalks;
- third-person over-the-shoulder camera;
- left movement joystick/right drag camera;
- eight-direction movement and diagonal corner blocking;
- shared engine/renderer collision;
- discovery-gated travel;
- engine-owned travel fares/duration/lock reasons.

Future city growth attaches streamed sectors. Existing coordinates are permanent and must not be rescaled.

### Interior foundation and v0.5.7 presentation
- `InteriorCatalog` defines metre-scale topology for nine named interiors.
- Only `interior_player_home` is runtime-enabled.
- Schema 4 persists `InteriorSessionState`.
- `GameEngine.interiorEntryQuote()` owns entry legality.
- ENTER/EXIT are engine actions and exterior actions are blocked while inside.
- v0.5.7 switches Android presentation to `InteriorWorldScreen` when the session is active.
- The first apartment uses the authoritative `8 m × 7 m` catalog footprint, room zones, furniture massing, residential materials/lighting, third-person camera look, and cosmetic idle/breathing motion.

**Still pending:** engine-authoritative interior local movement/collision and phone runtime validation of the v0.5.8 test APK.

### v0.5.8 Cheat/Admin foundation
- System overlay exposes separate Cheat Panel and Admin Panel surfaces.
- Admin mutations are separated from normal gameplay mutations through an explicit admin-command path.
- Current quick tools include money/stats/revive/location discovery/relationships/activity-limit controls.
- Deeper admin controls include exact state editing, calendar/world metrics, teleportation, event forcing/clearing, per-NPC relationship editing, RNG control and state inspection.
- Long-term goal: make the Admin Panel the primary creator/debug/scenario/content-authoring interface, including NPC/event/world/interior/property/job/economy/material/animation tools, validation and import/export.

## Visual direction

WorldLife targets **grounded stylized realism with human scale**, not photorealism at any cost. Priority order is believable proportions, readable materials/lighting, district identity, useful environmental density, animation/state coherence, then high-frequency detail.

District visual identities:
- Civic Center — maintained stone/plaster civic core.
- Mercer — warmer lived-in brick/plaster residential/commercial streets.
- Northline — education/services corridor with institutional/newer materials and pedestrian amenities.
- Harbor Ward — industrial waterfront metal/concrete, utility equipment, heavier wear, cooler accents.

Full visual rules live in the authoritative Drive `WORLD_ART_BIBLE.md`.

## Animation direction

Animation represents authoritative state; it does not invent it. Exterior position, schedules, interactions, and interior-session state remain simulation-owned. Cosmetic breathing/idle/camera motion may remain presentation-only.

Planned sequence: apartment cosmetic idle → core-owned indoor position/collision → indoor walk/run presentation → interaction/door/furniture motion → modular rigged character system → visibility/distance-based NPC animation budgets.

Full rules live in `ANIMATION_RUNTIME_PLAN.md` on Drive.

## Architecture

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
```

Core rule: **the UI is not a second game engine**.

## Storage/build policy

Google Drive is authoritative for frozen source snapshots and durable APK copies. GitHub reference/version branches provide readable history and build transport.

The user explicitly authorized GitHub Actions for WorldLife APK building. For future APK builds, use the successful SHA-gated GitHub reconstruction pattern unless a cleaner exact-source transport is implemented and verified. Do not use the failed private-Drive-download approach: GitHub runners previously received Google wrapper/access responses instead of the archive.

Per-file working safety ceiling: `90 MiB = 94,371,840 bytes`.

## v0.5.8 GitHub test-build verification

Observed in successful run `33596655227`:
- source/bootstrap SHA gates: PASS.
- exact v0.5.8 compile overlay SHA gates: PASS.
- stable dev-signing key SHA gate: PASS.
- Gradle `:game-core:test`: PASS.
- Android `:app:assembleDebug`: PASS.
- APK ZIP integrity: PASS.
- APK signature v2: PASS, one signer.
- package: `com.jackwilson.worldlife`.
- versionCode `23`, versionName `0.5.8`.
- compile/target SDK `37`, min SDK `26`.
- APK size: `44,012,114` bytes.
- APK SHA-256: `e1e10e6910d2bcc1a1ca87bfc9946727f1307c9a008020dfc03d12aa58ad7c0f`.
- Drive readback of test APK: PASS at same size/SHA.
- Phone runtime/playability: **NOT YET VERIFIED**.

## Next bounded piece

**Phone runtime validation of the v0.5.8 GitHub test APK.** Install it, test launch/black-screen behavior, controls, scaling, save/load, apartment ENTER/EXIT, Cheat/Admin Panel, NPC TALK, map/travel and crashes. Record observed runtime defects before unrelated expansion.

After runtime stabilization: engine-authoritative apartment free-roam/collision → character animation → final visual-resource parity build → streamed sector expansion.

## Version continuity

- `0.4.0` — earlier fully Android-compiled/signature-verified baseline.
- `0.4.6` — shared exterior collision/camera authority.
- `0.4.7` — scheduled NPC TALK.
- `0.4.8` — six-resident social migration.
- `0.4.9` — journal/save repair hardening.
- `0.5.0` — weekly calendar and year rollover.
- `0.5.1` — engine-authoritative fast travel.
- `0.5.2` — discovery feedback/hidden undiscovered markers.
- `0.5.3` — engine-owned daily activity limits.
- `0.5.4` — save-stable world-layout/interior topology.
- `0.5.5` — schema-4 interior-session authority/handoff.
- `0.5.6` — documentation/continuity integrity refresh.
- `0.5.7` — first apartment SceneView presentation slice + visual/animation/world-scale standards.
- `0.5.8` — Cheat/Admin Panel foundation + systematic editing/admin-goal documentation + successful GitHub functional test APK build.
