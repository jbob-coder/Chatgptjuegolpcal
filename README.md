# WorldLife RPG

WorldLife RPG is an original Android life-simulation RPG built around a persistent simulated city rather than a menu-only life simulator. The player physically exists in Arclight City, moves through a third-person world, meets scheduled residents, performs location activities, makes life-event choices, enters persistent world states, and carries permanent consequences in one authoritative `GameState`.

The project may share the broad genre idea of life simulation with games such as BitLife, but it does **not** copy BitLife UI, event text, branding, assets, writing, or protected content.

## Current source state

- Source version: `0.5.7`
- Android application ID: `com.jackwilson.worldlife`
- `versionCode`: `22`
- Minimum Android SDK: `26`
- Compile / target SDK: `37`
- Java language target: `17`
- Kotlin: `2.4.10`
- Android Gradle Plugin: `9.1.1`
- SceneView: `4.33.0`
- Save schema: `4`
- Last fully Android-compiled/signature-verified APK: `0.4.0`
- Current Drive source folder: `https://drive.google.com/drive/folders/1ZFD7TQl5rxco8kAPQuzgMcAdaPdjoQ-T`
- Strict GitHub mirror: `worldlife-v057-drive-mirror`

`0.5.7` adds the first Android/SceneView player-apartment presentation slice on top of the verified schema-4 interior-session authority. It is source/core/static verified only until a free local Android toolchain actually compiles and runs it. Do not describe v0.5.7 as APK-verified or phone-tested before that runtime gate.

## Start here

For substantial work, read the authoritative Drive copies in this order:

1. `README.md` — project orientation and current state.
2. `WORLDLIFE_PROJECT_HANDOFF.md` — exact continuation point, blockers, decisions, risks, next action.
3. `WORLDLIFE_DEVELOPMENT_REFERENCE.md` — how to work on the project without breaking authority, saves, storage policy, or verification discipline.
4. `WORLDLIFE_SYSTEMS_GUIDE.md` — how each implemented game system works and which file owns it.
5. `ARCHITECTURE.md` — module boundaries and mutation/persistence flow.
6. `WORLD_LAYOUT_MASTER_PLAN.md` — save-stable exterior scale and future city expansion seams.
7. `WORLD_ART_BIBLE.md` — world skin, district identities, materials, scale growth, interiors, asset quality, and performance rules.
8. `ANIMATION_RUNTIME_PLAN.md` — animation authority, locomotion, NPC/object motion, and performance plan.

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

**Still pending:** real Android/SceneView compile/runtime verification and engine-authoritative interior local movement/collision. The UI intentionally does not fake an indoor movement authority.

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

## Storage/cost policy

Google Drive is authoritative. GitHub version branches are pointer/history mirrors; this reference branch exists only for convenient reading.

Do not use without explicit authorization: GitHub Actions, paid runners, Codespaces, Git LFS, paid build services, metered APIs, or paid asset packs.

Per-file working safety ceiling: `90 MiB = 94,371,840 bytes`.

## v0.5.7 verification

Observed gates:
- v0.5.6 input SHA rechecked: PASS.
- Production game-core byte-identical to v0.5.6: PASS, 11 files / 0 changed.
- Pure Kotlin core compilation: PASS.
- Repository tests: PASS, 45 tests.
- Apartment renderer Kotlin/type check against local Compose/SceneView API-shaped stubs: PASS.
- UI authority structure: PASS.
- Schema-4 serializer Kotlin/type check with local API-shaped stubs: PASS.
- Android XML parse: PASS, 6 files.
- Static source verifier: PASS, 58 required files.
- Final source manifest: PASS, 203 tracked files.
- Cost/policy audit: PASS, 0 workflows / 0 files over 90 MiB.
- Drive archive readback: PASS.
- Android/SceneView APK compile/runtime: **NOT EXECUTED**.

Frozen archive: 1,566,683 bytes; SHA-256 `454269095114963f18f446efc4e3eb4cb0f36a002a9ebd90d114c83e7e210366`.

## Next bounded gameplay piece

**Engine-authoritative apartment free-roam movement and collision.**

Then: runtime-verify apartment → generalize interiors → implement stable sector streaming → add first attached `120 m × 80 m` exterior expansion sector without moving/rescaling the original Arclight Core.

## Version continuity

- `0.4.0` — last fully Android-compiled/signature-verified APK baseline.
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
