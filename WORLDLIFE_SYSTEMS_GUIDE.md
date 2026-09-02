# WorldLife RPG — Systems Guide

Current reference: `0.5.8`.
Last reconciled: 2026-09-02.

Frozen source authority:
`https://drive.google.com/drive/folders/1WABizspRFJxOURbTpqbPdIAda2Uv00Qp`

## Authority map

- `GameState` — persistent simulation truth.
- `GameEngine` — authoritative gameplay actions, admin commands, repair, quotes, time advancement.
- `AdminCommand` — explicit creator/debug mutation vocabulary, separate from normal gameplay actions.
- `OpenWorldCatalog` / geometry — exterior locations, schedules, collision/travel support.
- `WorldCalendar` — deterministic weekday/year behavior.
- `WorldLayoutCatalog` — save-stable Arclight Core and expansion seams.
- `InteriorCatalog` — metre-scale room/portal topology.
- `InteriorSessionState` — persisted fact that the player is inside a runtime-enabled interior.
- `GameSaveJsonCodec` / DataStore — Android persistence/migration.
- Compose/SceneView — presentation and input dispatch only.

Core rule: presentation must not silently become a second gameplay engine.

## Persistent simulation loop

Input/action → repository/DataStore transaction → `GameEngine` validates/mutates authoritative state → repair/invariants → persisted `GameState` → UI renders the resulting snapshot.

Deterministic RNG, journal/history, player stats, money/reputation, world metrics, relationships, daily limits, calendar/year rollover and save migration all participate in the same persistent model.

## Exterior loop

Move → engine validates geometry → time advances → discovery/location changes → SceneView presents state.

Fast travel, location actions and NPC TALK use engine quote/action APIs rather than duplicating legality in UI.

Current save-stable exterior:

- `60 × 40` simulation cells;
- `4.0 m` per cell;
- approximately `240 m × 160 m`;
- four Arclight Core districts/sectors;
- eight-direction movement;
- diagonal corner-cut rejection;
- human-scale roads/sidewalks/buildings;
- third-person camera;
- left movement joystick/right drag camera.

Future growth attaches streamed sectors; old coordinates are not rescaled.

## Social loop

Six stable residents have weekday/weekend location schedules, relationships, contextual TALK effects, daily-use limits and save-safe migration.

Stable resident IDs:

- `npc_maya_ortiz`
- `npc_theo_park`
- `npc_priya_shah`
- `npc_marcus_reed`
- `npc_lena_brooks`
- `npc_elena_ruiz`

City-wide schedules may remain simulated as data while only nearby bodies are rendered.

## Interior loop

Current authority/presentation path:

Exterior home → `GameEngine.interiorEntryQuote()` → ENTER action → persisted `InteriorSessionState` → Android renders `InteriorWorldScreen` → EXIT action → exact exterior portal.

The first apartment uses the authoritative `8 m × 7 m` catalog footprint, room zones, human-scale furniture massing, residential materials/lighting, right-side camera look and cosmetic idle/breathing presentation.

Interior local player position/collision/free-roam is still missing from core. The UI therefore must not fake gameplay-relevant indoor movement.

Required future order after phone stabilization:

`core local position → bounds/collision → room detection → save/repair/tests → left-stick movement → locomotion presentation → interactions/animations`

## Cheat/Admin loop

v0.5.8 establishes a creator/debug mutation path:

System UI → Cheat/Admin command → `GameViewModel.applyAdminCommand()` → `AndroidGameRepository.dispatchAdmin()` → `GameEngine.applyAdminCommand()` → repaired/persisted `GameState` → UI re-renders observed state.

Current foundation includes quick player-stat/money/revive/discovery/relationship/activity-limit controls plus deeper calendar/world/teleport/event/RNG/state-inspection editing.

Admin edits do not become ordinary player life-journal actions.

Advanced creator builders — NPC/event/choice/quest/world/district/sector/building/interior/room/item/property/vehicle/job/education/economy/legal/family/material/visual/animation/import-export tools — remain goals until implemented and tested.

## World-scale loop

The current Arclight Core is permanent save-stable space. Future growth uses attached streamed sectors, approximately `120 m × 80 m` as the current planning target, with one expensive active high-detail area, lower-detail neighboring proxies and bounded NPC/physics/render budgets.

## Visual/animation loop

Animation represents authoritative simulation state; it does not invent it. Cosmetic breathing/idle/camera motion may remain presentation-only.

Planned progression:

procedural idle/breathing → core-owned indoor locomotion → walk/run → TALK gestures → doors/furniture → reusable rigged humanoid → modular characters → visibility/distance-based NPC animation budgets.

## Build/runtime status

The v0.5.8 functional Android test APK was successfully built by GitHub Actions run `33596655227` from branch `worldlife-v058-apk-test`, commit `5726bab2d671e1af1260e5c524a5feb775c72abf`.

`APK_BUILD_VERIFIED`: YES.

Passed gates include core tests, Android assemble, APK ZIP integrity, signature, package/version and artifact upload.

`PHONE_RUNTIME_VERIFIED`: NO.

`VISUAL_PARITY_VERIFIED`: NO.

The workflow applies one explicit compatibility correction by removing the invalid explicit Compose `weight` import and may create 1×1 fallback PNGs for missing build-transport visuals. Functional testing is valid; final art-quality judgment is not.

## Current runtime-validation loop

Use `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md`.

Phone observation → record evidence → classify severity → inspect owning source → bounded root-cause repair → test/build → phone retest → update durable state.

Do not convert build success into assumed runtime PASS values.

## Current next milestone

Phone runtime validation of the v0.5.8 functional test APK.

After runtime stabilization, resume engine-authoritative apartment free-roam/collision, then indoor locomotion/interaction presentation, visual-parity build work and later streamed-sector expansion.
