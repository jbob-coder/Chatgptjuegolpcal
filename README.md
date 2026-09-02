# WorldLife RPG

> **CURRENT HANDOFF:** read `START_HERE_NEW_CHAT.md` first. Current frozen source is v0.5.8. GitHub Actions run `33596655227` successfully built and verified the functional v0.5.8 test APK. Phone runtime and final visual parity are still unverified.

WorldLife RPG is an original Android life-simulation RPG built around a persistent simulated city rather than a menu-only life simulator. The player physically exists in Arclight City, moves through a third-person world, meets scheduled residents, performs location activities, makes life-event choices, enters persistent world states, and carries permanent consequences in one authoritative `GameState`.

The project may share the broad genre idea of life simulation with games such as BitLife, but it does **not** copy BitLife UI, event text, branding, assets, writing, or protected content.

## Current source state

- Source version: `0.5.8`
- Android application ID: `com.jackwilson.worldlife`
- versionCode: `23`
- versionName: `0.5.8`
- Minimum Android SDK: `26`
- Compile / target SDK: `37`
- Java: `17`
- Kotlin: `2.4.10`
- Android Gradle Plugin: `9.1.1`
- SceneView: `4.33.0`
- Save schema: `4`
- Frozen Drive source folder: `https://drive.google.com/drive/folders/1WABizspRFJxOURbTpqbPdIAda2Uv00Qp`
- Frozen source archive: `https://drive.google.com/file/d/1znBTrYTlX3Cmr6whiO7KY9sbVJMFEtVz/view?usp=drivesdk`
- Frozen source SHA-256: `478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822`
- Frozen source size observed in Drive: `1,593,116` bytes

The Drive v0.5.8 source is frozen history and must not be edited in place. Future source changes must create a new rollback-safe version derived from it.

## Start here

For consequential work, read in this order:

1. `START_HERE_NEW_CHAT.md`
2. `README.md`
3. `WORLDLIFE_PROJECT_HANDOFF.md`
4. `WORLDLIFE_DEVELOPMENT_REFERENCE.md`
5. `WORLDLIFE_SYSTEMS_GUIDE.md`
6. `WORLDLIFE_EVOLVE_ALIGNMENT.md`
7. `WORLDLIFE_CHAT_OPERATING_PROTOCOL.md`
8. `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md` while phone stabilization is active
9. Drive-authoritative source/docs as needed
10. actual source/tests before implementation

GitHub/Drive evidence outranks conversation memory when they conflict. If required reference files disagree, resolve the conflict from higher-authority evidence and repair the stale files before unrelated work.

## Normal Chat development model

WorldLife can be developed rigorously from normal Chat by using:

- **Chat** — reasoning/orchestration;
- **Google Drive** — frozen source and permanent APK authority;
- **GitHub** — readable continuity/history/source/build transport;
- **Markdown** — durable project state and edit maps;
- **GitHub Actions** — explicitly authorized Android builds/tests when needed.

See `WORLDLIFE_CHAT_OPERATING_PROTOCOL.md`.

Required loop:

`READ STATE → VERIFY STATE → DEFINE ONE SMALL PIECE → INSPECT OWNERSHIP → IMPLEMENT → TEST → REGRESSION CHECK → UPDATE AFFECTED DOCS → SAVE/COMMIT → READ BACK → MARK STATUS → NEXT PIECE`

Do not claim terminal/build/runtime work that did not actually execute.

## Verification vocabulary

Use these status gates precisely:

- `IMPLEMENTED` — source exists.
- `STATIC_VERIFIED` — structural/static checks passed.
- `COMPILED` — relevant compiler/build step actually succeeded.
- `TESTED` — stated tests actually executed and passed.
- `APK_BUILD_VERIFIED` — APK build, ZIP integrity, signing, package/version gates passed.
- `PHONE_RUNTIME_VERIFIED` — behavior was actually observed on the target runtime/device.
- `VISUAL_PARITY_VERIFIED` — build uses intended authoritative visual assets and quality was checked.

Do not collapse these into one generic “verified” claim.

## v0.5.8 functional APK build

Successful build branch:
`worldlife-v058-apk-test`

Successful build commit:
`5726bab2d671e1af1260e5c524a5feb775c72abf`

Workflow:
`.github/workflows/worldlife-v058-apk.yml`

GitHub Actions run:
`33596655227`

Run conclusion:
`success`

Observed successful gates:

- historical Android bootstrap reconstruction/SHA gates;
- exact v0.5.8 compile-source overlay/SHA gates;
- stable development signing-key SHA gate;
- Java 17;
- Android API 37/build-tools 37.0.0;
- Gradle 9.3.1;
- `:game-core:test`;
- `:app:assembleDebug`;
- APK ZIP integrity;
- `apksigner` verification;
- package/version checks;
- artifact upload.

Verified APK:

- file: `WorldLifeRPG-v0.5.8-GitHub-test.apk`
- size: `44,012,114` bytes
- SHA-256: `e1e10e6910d2bcc1a1ca87bfc9946727f1307c9a008020dfc03d12aa58ad7c0f`
- signer certificate SHA-256: `6411aaa0d35d51bf48eaf56ee6cabfea3aeafff2774436bc1b9399fea08761c9`
- package: `com.jackwilson.worldlife`
- versionCode: `23`
- versionName: `0.5.8`
- minSdk: `26`
- targetSdk: `37`
- compileSdk: `37`

Permanent Drive APK:
`https://drive.google.com/file/d/1CE5wmIVNcbnVy8XvWpt6SBLrAlHO01P0/view?usp=drivesdk`

Permanent build folder:
`https://drive.google.com/drive/folders/1hsEGq_IMRSXPqJ6rs-JkENoE6nkb6NxB`

Drive checksum file:
`https://drive.google.com/file/d/1Gabr8Uglxq8w3Xv4YGNvAihE_qdmBQkD/view?usp=drivesdk`

Drive readback confirms the same APK SHA-256.

Current status:

- `APK_BUILD_VERIFIED = YES`
- `PHONE_RUNTIME_VERIFIED = NO`
- `VISUAL_PARITY_VERIFIED = NO`

### Test-build qualification

The workflow reconstructs exact v0.5.8 compile source but applies one bounded compatibility correction:

- removes the invalid explicit `androidx.compose.foundation.layout.weight` import from `AdminToolsScreen.kt`.

The workflow may also create tiny 1×1 fallback PNGs for required visual resources absent from GitHub build transport.

Therefore this APK is appropriate for functional runtime testing but not final visual-quality judgment.

## Implemented foundation

### Persistent simulation

- deterministic `GameState`;
- seedable/persisted RNG;
- life events/permanent consequences;
- health, happiness, intelligence, charisma, fitness;
- money/reputation;
- economy/public safety/opportunity;
- journal/history with stable IDs;
- save repair/migration through schema 4;
- deterministic seven-day calendar/year rollover.

### Social simulation

Stable residents:

- Maya Ortiz — `npc_maya_ortiz`
- Theo Park — `npc_theo_park`
- Priya Shah — `npc_priya_shah`
- Marcus Reed — `npc_marcus_reed`
- Lena Brooks — `npc_lena_brooks`
- Elena Ruiz — `npc_elena_ruiz`

Implemented behavior:

- stable NPC/relationship IDs;
- closeness/trust;
- weekday/weekend schedules;
- deterministic physical presence;
- contextual TALK;
- relationship/stat/time/journal effects;
- daily interaction limits;
- save-safe migration.

### Exterior world

Current save-stable Arclight Core:

- `60 × 40` simulation cells;
- `4.0 m` per cell;
- approximately `240 m × 160 m`;
- four stable districts/sectors;
- human-scale roads/sidewalks/buildings;
- third-person over-the-shoulder camera;
- left movement joystick/right drag camera;
- eight-direction movement;
- diagonal corner-cut blocking;
- shared engine/renderer collision;
- discovery-gated travel;
- engine-owned travel fares/duration/lock reasons.

Existing coordinates are permanent compatibility state. Grow the city with attached streamed sectors rather than rescaling old saves. Current planning target for an expansion sector is approximately `120 m × 80 m`.

### Interior foundation

- `InteriorCatalog` defines metre-scale topology for nine named interiors;
- only `interior_player_home` is runtime-enabled;
- schema 4 persists `InteriorSessionState`;
- `GameEngine.interiorEntryQuote()` owns entry legality;
- ENTER/EXIT are engine actions;
- exterior actions are blocked while inside;
- first apartment SceneView presentation exists;
- apartment footprint is authoritative `8 m × 7 m`;
- room zones/furniture massing/camera look/cosmetic idle exist;
- exact exterior portal return is preserved.

Still pending: engine-authoritative interior local movement/collision and phone runtime verification.

### Cheat/Admin foundation

v0.5.8 adds a creator/debug mutation path separate from normal gameplay actions:

- `AdminCommand` in `:game-core`;
- `GameEngine.applyAdminCommand()` validation/mutation/repair;
- `AndroidGameRepository.dispatchAdmin()` persistence;
- `GameViewModel.applyAdminCommand()` bridge;
- Cheat Panel quick controls;
- Admin Panel exact player/world/calendar/relationship/event/RNG/teleport/state inspection controls.

Advanced NPC/event/choice/quest/world/district/sector/building/interior/room/item/property/vehicle/job/education/economy/legal/family/material/visual/animation builders remain future goals until actually implemented and tested.

## Architecture

```text
Touch / UI input
      ↓
Jetpack Compose / SceneView
      ↓ actions / admin commands
GameViewModel
      ↓
AndroidGameRepository
      ↓ DataStore transaction
GameEngine (:game-core)
      ↓ authoritative mutation / repair
GameState
      ↓
GameSaveJsonCodec / DataStore<GameSave>
```

Core rule: **the UI is not a second game engine**.

## Current exact milestone

**Phone runtime validation of the successful v0.5.8 functional test APK.**

Use `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md` to record direct phone observations for:

- launch/black screen;
- landscape/UI scale;
- joystick/right-side camera;
- camera/player/world scale;
- collision;
- map/fast travel;
- NPC TALK;
- apartment ENTER/render/EXIT exact return;
- save/reload;
- Cheat Panel;
- Admin Panel;
- crashes/ANRs/missing controls/touch dead zones.

Record confirmed defects before editing source. Rank them `BLOCKER`, `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`, then fix the highest-severity root cause first.

## Development order after runtime stabilization

1. engine-authoritative apartment free-roam/collision;
2. indoor walk/run presentation and interaction animation;
3. restore/use exact authoritative visual resources in a visual-parity APK;
4. improve character models/rigging/NPC animation;
5. improve district materials/props/signs/vegetation/furniture/environmental density;
6. implement the first streamed exterior expansion sector;
7. continue incremental creator-grade Admin Panel tools.

## Storage/build policy

- Google Drive: authoritative frozen source and permanent APKs.
- GitHub: readable continuity/history/source/build transport.
- GitHub Actions: explicitly authorized for WorldLife APK builds.
- Do not use the failed private-Drive-download runner workflow.
- Reuse SHA-gated reconstruction before changing build infrastructure.
- Keep successful APKs in Drive because GitHub artifacts expire.
- Do not use unrelated paid services/runners/Codespaces/Git LFS/paid APIs/assets without explicit approval.
- per-file working ceiling: `90 MiB = 94,371,840 bytes`.

## Continuity/rollback

Reference branch:
`worldlife-reference-docs`

Backup of the pre-Chat-protocol reference state:

- branch: `worldlife-reference-docs-pre-chat-protocol-v058`
- commit: `0697bfafe73ec82d0adaa1c77897d7c8d76c4f21`

This documentation reconciliation does not alter the frozen v0.5.8 source archive.

## Version continuity

- `0.4.0` — earlier fully Android-compiled/signature-verified baseline.
- `0.4.6` — shared exterior collision/camera authority.
- `0.4.7` — scheduled NPC TALK.
- `0.4.8` — six-resident social migration.
- `0.4.9` — journal/save repair hardening.
- `0.5.0` — weekly calendar/year rollover.
- `0.5.1` — engine-authoritative fast travel.
- `0.5.2` — discovery feedback/hidden markers.
- `0.5.3` — engine-owned daily activity limits.
- `0.5.4` — save-stable world-layout/interior topology.
- `0.5.5` — schema-4 interior-session authority.
- `0.5.6` — documentation/continuity integrity refresh.
- `0.5.7` — first apartment SceneView presentation slice.
- `0.5.8` — Cheat/Admin Panel foundation, documentation/editing system, and later successful GitHub functional APK build verification.
