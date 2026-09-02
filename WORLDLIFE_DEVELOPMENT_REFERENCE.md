# WorldLife RPG — Development Reference

Current reference: `0.5.8`.
Last reconciled: 2026-09-02.

Frozen source authority:
`https://drive.google.com/drive/folders/1WABizspRFJxOURbTpqbPdIAda2Uv00Qp`

Frozen source SHA-256:
`478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822`

## Non-negotiable development rules

1. Inspect the latest checksum-verified Drive source before project-specific source edits.
2. Do not edit a frozen Drive source snapshot in place; create a new rollback-safe source version for future code changes.
3. `GameState` is persistent authority; `GameEngine` owns mutation, legality, repair and authoritative quotes.
4. Compose/SceneView renders state and dispatches actions/commands. Never create a second gameplay authority in UI code.
5. Keep `AdminCommand` separate from normal `GameAction`.
6. Preserve stable IDs, save migrations, application ID, signing lineage, and existing Arclight coordinates unless an explicit compatible migration is designed and tested.
7. Make one bounded/reversible piece at a time and add behavior tests where practical.
8. Distinguish `IMPLEMENTED`, `STATIC_VERIFIED`, `COMPILED`, `TESTED`, `APK_BUILD_VERIFIED`, `PHONE_RUNTIME_VERIFIED`, and `VISUAL_PARITY_VERIFIED`.
9. Never claim current phone/runtime behavior from source/static/build evidence alone.
10. Google Drive is primary for frozen source/permanent APKs. GitHub is readable reference/history/build transport.
11. GitHub Actions are explicitly authorized for WorldLife APK builds. Reuse the proven SHA-gated pattern unless a better exact-source path is deliberately implemented and verified.
12. Do not use unrelated paid runners, Codespaces, Git LFS, paid APIs/builds/assets without explicit approval.
13. Keep files below the 90 MiB (`94,371,840` byte) working ceiling when targeting a 100 MiB service limit.
14. If required reference docs conflict, resolve from higher-authority evidence and repair the stale docs before unrelated implementation.

## Current architecture boundary

```text
Compose + SceneView
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

The UI is not a second game engine.

## v0.5.8 current boundary

v0.5.8 contains:

- deterministic simulation/save foundation;
- exterior movement/collision/map/travel/TALK/calendar systems;
- schema-4 apartment session authority and SceneView apartment presentation;
- Cheat Panel;
- Admin Panel foundation;
- explicit `AdminCommand` mutation path;
- project documentation/editing-map system.

Apartment presentation exists, but engine-authoritative interior-local free-roam does not. Do **not** add a functioning indoor joystick by moving the avatar only in Compose. First add local interior position/collision/repair to `:game-core`, test it, then connect presentation.

That implementation is intentionally after the current phone-runtime stabilization milestone.

## Current build evidence

Successful APK build branch:
`worldlife-v058-apk-test`

Successful commit:
`5726bab2d671e1af1260e5c524a5feb775c72abf`

Workflow:
`.github/workflows/worldlife-v058-apk.yml`

Successful GitHub Actions run:
`33596655227`

The workflow passed core tests, Android assembly, APK ZIP integrity, signature, package/version and artifact upload gates.

The test APK is `APK_BUILD_VERIFIED` but not yet `PHONE_RUNTIME_VERIFIED` or `VISUAL_PARITY_VERIFIED`.

Build-specific qualification:

- removes the invalid explicit `androidx.compose.foundation.layout.weight` import from `AdminToolsScreen.kt`;
- can create tiny fallback PNGs when required runtime visuals are missing from GitHub build transport.

Do not change build infrastructure merely because older docs said Android compilation was unavailable. Inspect the successful workflow/run first.

## World scale rule

The existing `60 × 40` grid at `4.0 m/cell` is permanent save space (~240 m × 160 m). Grow the world by stable streamed sectors and lower-detail neighbor/skyline proxies. Never make the city larger by stretching old save coordinates.

Planned exterior expansion sector target is approximately `120 m × 80 m`, with bounded active rendering/physics/NPC budgets and stable seams.

## Interior development rule

Required implementation sequence after runtime stabilization:

`core-owned local indoor position → room/wall/partition/furniture/portal collision → room detection → persistence → repair → deterministic tests → left-stick indoor movement → walk/run presentation → object interaction → door/furniture animations`

Gameplay-relevant interior movement must remain engine-authoritative.

## Visual/animation rule

Visual skin and animation may improve presentation, but gameplay-relevant location, movement, schedule, interaction, collision, persistence and consequences remain engine-owned.

Animation represents authoritative state; it does not silently become another simulation engine.

## Cheat/Admin extension rule

When expanding the creator interface:

1. define stable/validated command semantics in `:game-core`;
2. mutate through `GameEngine.applyAdminCommand()`;
3. repair/validate state after mutation;
4. persist through the repository/DataStore path;
5. expose UI only after command behavior exists;
6. add deterministic regression tests;
7. label future builders as planned until implemented and tested.

Do not put arbitrary source/content mutations directly into Compose state.

## Phone-runtime defect workflow

Use `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md` as the evidence ledger.

For every failure:

1. record direct observation/reproduction;
2. classify severity (`BLOCKER`, `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`);
3. identify likely ownership without claiming root cause prematurely;
4. inspect the actual relevant source;
5. make the smallest root-cause fix;
6. run the required core/build gates;
7. create a new rollback-safe source version if source changed;
8. re-test the failing case and adjacent regressions;
9. update handoff/system docs whose truth changed.

## Normal Chat workflow

Read and follow `WORLDLIFE_CHAT_OPERATING_PROTOCOL.md`.

Normal Chat uses GitHub/Drive/Markdown as durable project memory. It must not claim a persistent local working tree or unexecuted terminal/build/test work. When execution is required, use an available verified execution path or explicitly record the gate as unexecuted.

## Documentation maintenance

Update only files whose truth changed, but do not knowingly leave contradictions in the mandatory new-chat read path.

At minimum:

- current runtime/build/next action → `START_HERE_NEW_CHAT.md`, `README.md`, `WORLDLIFE_PROJECT_HANDOFF.md`;
- architecture/ownership changes → this file and `WORLDLIFE_SYSTEMS_GUIDE.md`;
- workflow/continuity changes → `WORLDLIFE_EVOLVE_ALIGNMENT.md` and `WORLDLIFE_CHAT_OPERATING_PROTOCOL.md`;
- authority pointer/version changes → `MIRROR_POINTER.json`;
- phone observations → `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md` plus handoff.

After any GitHub documentation write, read it back from the target branch and verify the resulting branch state.

## Current next bounded piece

**Phone runtime validation of the already-built v0.5.8 functional test APK.**

Do not start unrelated v0.5.9 gameplay expansion until the runtime ledger has real evidence and any blocker/critical defects are handled or explicitly accepted.
