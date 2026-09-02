# WorldLife RPG — START HERE FOR A NEW CHAT

Last reconciled: 2026-09-02.

## Purpose

This is the first file a new ChatGPT session must read before changing WorldLife RPG. Reconstruct the project from GitHub/Drive evidence, not conversation memory or older WorldLife branches.

Normal Chat development uses GitHub + Google Drive + durable Markdown as the project brain. Follow `WORLDLIFE_CHAT_OPERATING_PROTOCOL.md` for the exact workflow.

## Current source authority

- Project: `WorldLife RPG`
- Frozen source version: `0.5.8`
- Android package: `com.jackwilson.worldlife`
- versionCode: `23`
- save schema: `4`
- human-readable reference branch: `worldlife-reference-docs`
- frozen source authority: Google Drive
- frozen source folder: `https://drive.google.com/drive/folders/1WABizspRFJxOURbTpqbPdIAda2Uv00Qp`
- frozen source archive: `https://drive.google.com/file/d/1znBTrYTlX3Cmr6whiO7KY9sbVJMFEtVz/view?usp=drivesdk`
- frozen source SHA-256: `478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822`
- frozen source archive size observed in Drive: `1,593,116` bytes

The frozen Drive v0.5.8 source is immutable history. Do not edit it in place. Future source work must create a new rollback-safe version derived from v0.5.8 plus bounded verified changes.

## Mandatory read order before consequential work

Read these files in this exact order:

1. `START_HERE_NEW_CHAT.md` — this file.
2. `README.md` — project orientation/current source/build state.
3. `WORLDLIFE_PROJECT_HANDOFF.md` — structured current objective/state/verification/blockers/risks/next action.
4. `WORLDLIFE_DEVELOPMENT_REFERENCE.md` — safe architecture/edit/build/runtime workflow.
5. `WORLDLIFE_SYSTEMS_GUIDE.md` — system ownership and behavior.
6. `WORLDLIFE_EVOLVE_ALIGNMENT.md` — EVOLVE continuity/verification rules.
7. `WORLDLIFE_CHAT_OPERATING_PROTOCOL.md` — normal-Chat GitHub/Drive execution protocol.
8. `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md` — active phone evidence/defect ledger while runtime stabilization is in progress.
9. Inspect the Drive-authoritative v0.5.8 source/selected documents when a factual source claim matters.
10. Inspect real source/tests before implementation.
11. For build work, inspect `.github/workflows/worldlife-v058-apk.yml` on `worldlife-v058-apk-test` and successful run `33596655227` before changing build infrastructure.

If required documents conflict, stop unrelated implementation, resolve the conflict from higher-authority evidence, repair the stale files, read back the saved state, then continue.

## Successful v0.5.8 functional APK build

Build branch:
`worldlife-v058-apk-test`

Build commit:
`5726bab2d671e1af1260e5c524a5feb775c72abf`

Workflow:
`.github/workflows/worldlife-v058-apk.yml`

GitHub Actions run:
`33596655227`

Run conclusion:
`success`

Observed successful gates:

- historical Android bootstrap reconstruction SHA verification: PASS;
- exact v0.5.8 compile-source overlay SHA verification: PASS;
- stable development signing-key SHA verification: PASS;
- Java 17: PASS;
- Android API 37 / build-tools 37.0.0: PASS;
- Gradle 9.3.1: PASS;
- `:game-core:test`: PASS;
- `:app:assembleDebug`: PASS;
- APK ZIP integrity: PASS;
- APK signature verification: PASS;
- package/version verification: PASS;
- artifact upload: PASS.

The GitHub workflow applies one explicit compatibility correction:

- removes the invalid explicit `androidx.compose.foundation.layout.weight` import from `AdminToolsScreen.kt`.

It can also generate tiny 1×1 fallback PNGs for required visual resources missing from GitHub build transport.

## Verified APK identity

APK:
`WorldLifeRPG-v0.5.8-GitHub-test.apk`

- size: `44,012,114` bytes
- SHA-256: `e1e10e6910d2bcc1a1ca87bfc9946727f1307c9a008020dfc03d12aa58ad7c0f`
- signer certificate SHA-256: `6411aaa0d35d51bf48eaf56ee6cabfea3aeafff2774436bc1b9399fea08761c9`
- package: `com.jackwilson.worldlife`
- versionCode: `23`
- versionName: `0.5.8`
- minSdk: `26`
- targetSdk: `37`
- compileSdk: `37`

Permanent Drive build folder:
`https://drive.google.com/drive/folders/1hsEGq_IMRSXPqJ6rs-JkENoE6nkb6NxB`

Permanent Drive APK:
`https://drive.google.com/file/d/1CE5wmIVNcbnVy8XvWpt6SBLrAlHO01P0/view?usp=drivesdk`

Permanent Drive checksum file:
`https://drive.google.com/file/d/1Gabr8Uglxq8w3Xv4YGNvAihE_qdmBQkD/view?usp=drivesdk`

Drive checksum readback confirms the same APK SHA-256.

GitHub artifact fallback:

- artifact ID: `9833682838`
- artifact name: `WorldLifeRPG-v0.5.8-GitHub-test`
- artifact ZIP digest: `sha256:73102780b285e224fd59aef39e337009281ec4d4580a60cfe35dbd81670e27a7`
- GitHub artifacts expire; the Drive copy is the durable build artifact.

## Verification status — do not collapse gates

`APK_BUILD_VERIFIED`: YES.

`PHONE_RUNTIME_VERIFIED`: NO.

`VISUAL_PARITY_VERIFIED`: NO.

This APK is valid for functional Android testing: launch/black-screen regression, orientation, controls, movement/collision, map/travel, NPC TALK, calendar/time, apartment ENTER/render/EXIT, save/load, Cheat Panel, Admin Panel, updater/system screens, touch areas, crashes and ANRs.

Do not use it to judge final art/texture fidelity because fallback test visuals may be present.

## Current implemented foundation

Already established; do not rebuild from scratch:

- deterministic `GameState` and stable RNG;
- save migration/repair and journal history;
- player stats/money/reputation/world metrics;
- deterministic week/calendar/year rollover;
- six stable scheduled residents;
- relationships and contextual NPC TALK;
- engine-owned activity daily limits;
- discovery;
- engine-authoritative fast travel;
- shared exterior collision and diagonal corner prevention;
- third-person camera and map;
- four Arclight Core districts;
- save-stable world layout seams;
- schema-4 `InteriorSessionState`;
- apartment ENTER/EXIT authority;
- apartment SceneView presentation;
- Cheat Panel;
- Admin Panel foundation and explicit `AdminCommand` path;
- updater infrastructure;
- project documentation/editing/reference system.

## World/interior direction

Exterior core is permanently save-stable:

- `60 × 40` simulation cells;
- `4.0 m` per cell;
- approximately `240 m × 160 m`.

Do not stretch/rescale old coordinates to enlarge the city. Future growth uses attached streamed sectors (current planning target approximately `120 m × 80 m`) plus lower-detail neighbors/skyline proxies and bounded active NPC/physics/render budgets.

Current apartment authoritative footprint: `8 m × 7 m`.

After phone stabilization, apartment free-roam must be implemented in this order:

`core-owned indoor local position → boundaries/collision → room detection → save persistence/repair/tests → left-stick locomotion → walk/run presentation → interactions → object/door/furniture animation`

Do not implement visual-only gameplay movement the core does not know about.

## Admin Panel direction

The Admin Panel is intended to become the primary creator/debug/scenario-authoring interface, but advanced builders remain goals until implemented/tested.

Future areas include NPC/event/choice/quest/world/district/sector/building/interior/room/item/property/vehicle/job/education/economy/legal/family/material/visual/animation tools, stable ID generation, validation, import/export, scenario presets, undo/redo and state inspection.

Expand from validated engine-authoritative commands/content definitions, not UI-only state mutation.

## Current exact next milestone

**PHONE RUNTIME VALIDATION OF v0.5.8.**

Use `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md` and populate it only from direct device observations.

Required observations include:

1. app launch;
2. black-screen status;
3. landscape;
4. UI scale;
5. left joystick;
6. right-side camera drag;
7. camera distance/angle;
8. player scale;
9. building/street scale;
10. collision;
11. map;
12. fast travel;
13. NPC TALK;
14. apartment ENTER;
15. apartment render;
16. EXIT exact exterior restoration;
17. save/reload;
18. Cheat Panel;
19. Admin Panel;
20. crashes/ANRs/missing controls/unusable touch areas;
21. screenshot/video/error evidence for failures.

Treat direct phone observations as authoritative runtime evidence for this tested APK.

Record confirmed defects and rank them:
`BLOCKER → CRITICAL → HIGH → MEDIUM → LOW`.

Fix the highest-severity root cause first, one bounded piece at a time.

## Development order after phone stabilization

1. engine-authoritative apartment free-roam/collision;
2. indoor walk/run presentation and animations;
3. restore/build exact authoritative visual resources into a visual-parity APK;
4. upgrade character models/rigging/NPC animation;
5. improve materials/props/signs/vegetation/furniture/environmental density;
6. implement first streamed exterior expansion sector;
7. continue incremental Admin Panel creator tools.

## Build/storage rules

- Google Drive remains authoritative for frozen source and durable APK copies.
- GitHub Actions are explicitly authorized for WorldLife APK builds.
- Do not return to the failed private-Drive-download runner workflow.
- Reuse the successful SHA-gated GitHub reconstruction pattern unless a cleaner exact-source transport is deliberately implemented and verified.
- Keep SHA gates before extraction/compilation.
- Run core tests before Android build.
- Require Android assemble, ZIP integrity, signature, package/version checks.
- Record APK SHA-256/size.
- Copy successful APKs to Drive because GitHub artifacts expire.
- Do not use unrelated paid services/runners/Codespaces/Git LFS/paid APIs/assets without explicit authorization.
- working per-file safety ceiling: `90 MiB = 94,371,840 bytes`.

## Reference-doc rollback

Before the 2026-09-02 Chat continuity reconciliation, the old reference branch state was preserved at:

- backup branch: `worldlife-reference-docs-pre-chat-protocol-v058`
- commit: `0697bfafe73ec82d0adaa1c77897d7c8d76c4f21`

The frozen v0.5.8 Drive source was not changed by this documentation repair.
