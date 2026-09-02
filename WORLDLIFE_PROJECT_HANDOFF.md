# WorldLife RPG — Project Handoff / Continuity Record

Last reconciled: 2026-09-02.
Frozen source authority: `WorldLife RPG v0.5.8` in Google Drive.

## CURRENT_OBJECTIVE

Validate the already-successful v0.5.8 functional test APK on the target Android phone before starting unrelated v0.5.9 gameplay expansion.

The purpose of this milestone is to convert build/static confidence into real runtime evidence for launch, controls, scale, persistence, apartment presentation, Cheat/Admin tooling, NPC interaction, travel, and Android compatibility.

After runtime stabilization, the next major gameplay implementation is engine-authoritative apartment free-roam/collision.

## CURRENT_STATE

- Source version: `0.5.8`
- applicationId: `com.jackwilson.worldlife`
- versionCode: `23`
- versionName: `0.5.8`
- save schema: `4`
- minSdk: `26`
- compileSdk / targetSdk: `37`
- Kotlin: `2.4.10`
- AGP: `9.1.1`
- SceneView: `4.33.0`
- frozen source folder: `https://drive.google.com/drive/folders/1WABizspRFJxOURbTpqbPdIAda2Uv00Qp`
- frozen source archive: `https://drive.google.com/file/d/1znBTrYTlX3Cmr6whiO7KY9sbVJMFEtVz/view?usp=drivesdk`
- frozen source SHA-256: `478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822`
- source archive size observed in Drive: `1,593,116` bytes

The frozen v0.5.8 source must not be edited in place.

## LAST_VERIFIED_STATE

### Source/core/static verification inherited from the v0.5.8 freeze

- Pure Kotlin `:game-core` compilation: PASS.
- Repository core tests: PASS, `53` total.
- New admin-command regression tests: PASS, `8`.
- AdminToolsScreen API-shaped stub compile/type gate: PASS.
- GameSave serializer type gate: PASS.
- Android XML parse: PASS, `6` files.
- Static contract verifier: PASS, `65` required files.
- Billing/storage policy audit: PASS.
- Frozen source Drive checksum file confirms SHA-256 `478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822`.

### GitHub Android build verification

Successful branch: `worldlife-v058-apk-test`.

Successful commit: `5726bab2d671e1af1260e5c524a5feb775c72abf`.

Workflow: `.github/workflows/worldlife-v058-apk.yml`.

GitHub Actions run: `33596655227`.

Run conclusion: `success`.

Observed successful job gates:

- checkout/test branch: PASS;
- historical Android bootstrap reconstruction + SHA gates: PASS;
- exact v0.5.8 compile-source overlay + SHA gates: PASS;
- stable development signing-key SHA gate: PASS;
- compatibility patch removing invalid explicit Compose `weight` import: PASS;
- required fallback test visuals creation step: PASS;
- Java 17: PASS;
- Android API 37/build-tools 37.0.0: PASS;
- Gradle 9.3.1: PASS;
- `:game-core:test`: PASS;
- `:app:assembleDebug`: PASS;
- APK ZIP integrity/signature/package/version verification: PASS;
- artifact upload: PASS.

## APK_STATUS

`APK_BUILD_VERIFIED`: YES.

APK: `WorldLifeRPG-v0.5.8-GitHub-test.apk`.

- size: `44,012,114` bytes
- SHA-256: `e1e10e6910d2bcc1a1ca87bfc9946727f1307c9a008020dfc03d12aa58ad7c0f`
- signer certificate SHA-256: `6411aaa0d35d51bf48eaf56ee6cabfea3aeafff2774436bc1b9399fea08761c9`
- package: `com.jackwilson.worldlife`
- versionCode: `23`
- versionName: `0.5.8`

Permanent Drive build folder:
`https://drive.google.com/drive/folders/1hsEGq_IMRSXPqJ6rs-JkENoE6nkb6NxB`

Permanent Drive APK:
`https://drive.google.com/file/d/1CE5wmIVNcbnVy8XvWpt6SBLrAlHO01P0/view?usp=drivesdk`

Permanent checksum file:
`https://drive.google.com/file/d/1Gabr8Uglxq8w3Xv4YGNvAihE_qdmBQkD/view?usp=drivesdk`

Drive checksum readback confirms the same APK SHA-256.

`PHONE_RUNTIME_VERIFIED`: NO.

`VISUAL_PARITY_VERIFIED`: NO.

Important qualification: the GitHub workflow reconstructs the exact v0.5.8 compile source but removes one invalid explicit `androidx.compose.foundation.layout.weight` import and can generate 1×1 fallback PNGs for required resources missing from GitHub transport. Use this APK for functional runtime testing, not final art-quality judgment.

## COMPLETED_WORK

### Simulation/world foundation

- deterministic `GameState` and RNG;
- save migration/repair and journal history;
- player stats, money, reputation, economy/public safety/opportunity;
- deterministic week/calendar/year rollover;
- six stable scheduled residents;
- relationships and NPC TALK;
- activity daily limits;
- discovery;
- engine-authoritative fast travel;
- shared exterior collision and diagonal corner prevention;
- third-person camera/map/four Arclight districts;
- save-stable world layout/streaming seams.

### Interior foundation

- `InteriorCatalog` with metre-scale topology;
- schema-4 `InteriorSessionState`;
- authoritative ENTER/EXIT legality and exact exterior return point;
- first apartment SceneView presentation using the authoritative `8 m × 7 m` footprint;
- no fake presentation-only indoor movement authority.

### Creator/admin foundation

- `AdminCommand` separated from normal `GameAction`;
- engine-owned validated admin mutations;
- DataStore persistence path;
- Cheat Panel quick tools;
- Admin Panel exact state/calendar/world/relationship/event/RNG/teleport inspection and editing foundation;
- advanced builders remain goals, not implemented claims.

### Continuity/build work

- v0.5.8 frozen in Drive and checksum recorded;
- v0.5.8 GitHub functional APK build succeeded;
- permanent APK copied to Drive;
- Chat operating protocol and phone runtime evidence ledger added to the reference branch;
- rollback branch created before reference-doc reconciliation: `worldlife-reference-docs-pre-chat-protocol-v058` at `0697bfafe73ec82d0adaa1c77897d7c8d76c4f21`.

## IN_PROGRESS

Phone runtime validation only.

No v0.5.9 gameplay source change is currently authorized by evidence as the next piece.

## NEXT_ACTION

Install the permanent Drive APK and populate `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md` from direct phone observations.

Test, in order of practical value:

1. launch / black screen;
2. landscape and UI scale;
3. joystick and right-side camera drag;
4. player/building/street scale;
5. collision;
6. map and fast travel;
7. NPC TALK;
8. apartment ENTER/render/EXIT exact return;
9. save/reload;
10. Cheat Panel;
11. Admin Panel;
12. crashes, ANRs, missing/unusable touch areas.

Record screenshots/video/error text for failures.

Then classify confirmed defects as `BLOCKER`, `CRITICAL`, `HIGH`, `MEDIUM`, or `LOW` and repair the highest-severity root cause first, one bounded change at a time.

## BLOCKERS

No known build blocker remains for the functional test APK.

Current evidence blocker: real phone behavior has not yet been observed.

Final visual-parity verification is intentionally blocked until authoritative runtime art/assets are restored into a build; fallback test PNGs are not final visuals.

## IMPORTANT_DECISIONS

- `GameState` remains persistent simulation authority.
- `GameEngine` owns legality/mutation; Compose/SceneView presents state and dispatches actions.
- Admin mutations stay separate from normal gameplay actions.
- Stable IDs and existing Arclight Core coordinates remain compatibility contracts.
- Frozen v0.5.8 Drive source is immutable history.
- GitHub reference docs may be updated to reflect newer verified build/runtime evidence without pretending the frozen source changed.
- GitHub Actions are explicitly authorized for WorldLife APK builds; unrelated paid services remain unauthorized.
- The proven SHA-gated `worldlife-v058-apk-test` build pattern must be inspected/reused rather than replaced blindly.
- Phone observations are authoritative for runtime behavior of the tested APK.
- Existing 60×40 cells at 4.0 m/cell are not to be stretched to enlarge the city; growth uses attached streamed sectors.
- Interior movement must become engine-authoritative before the UI exposes functional apartment locomotion.

## KNOWN_RISKS

- Stale reference documents can cause a new Chat to regress to v0.5.7-era assumptions.
- The build compatibility patch means the test-build source is not byte-identical to the frozen source at `AdminToolsScreen.kt`; the correction is explicit and bounded.
- Fallback PNGs can be mistaken for final visual quality.
- Signing lineage must remain stable if phone saves are expected to survive in-place updates.
- Runtime fixes can accidentally become UI-only workarounds instead of fixing authoritative state/logic.
- Expanding world/content before runtime stabilization would increase blast radius and debugging ambiguity.

## FILES_BRANCHES_THAT_MATTER

Reference/continuity branch:
- `worldlife-reference-docs`
- `START_HERE_NEW_CHAT.md`
- `README.md`
- `WORLDLIFE_PROJECT_HANDOFF.md`
- `WORLDLIFE_DEVELOPMENT_REFERENCE.md`
- `WORLDLIFE_SYSTEMS_GUIDE.md`
- `WORLDLIFE_EVOLVE_ALIGNMENT.md`
- `WORLDLIFE_CHAT_OPERATING_PROTOCOL.md`
- `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md`
- `MIRROR_POINTER.json`

Build evidence:
- branch `worldlife-v058-apk-test`
- commit `5726bab2d671e1af1260e5c524a5feb775c72abf`
- `.github/workflows/worldlife-v058-apk.yml`
- run `33596655227`

Source authority:
- Drive v0.5.8 folder/archive/checksum above.

## TESTS_ALREADY_RUN

Source freeze: 53 core tests plus static/type/XML/policy/manifest/package gates recorded in the v0.5.8 authority docs.

GitHub build run `33596655227`: core test step and Android assemble/signature/package/version gates all completed successfully.

Phone runtime test: not yet executed/recorded.

## SOURCE_AUTHORITY

Google Drive frozen v0.5.8 source outranks conversation memory and GitHub build transport for source facts.

GitHub build/run evidence governs claims about what the GitHub workflow actually built and verified.

Direct phone evidence governs claims about runtime behavior on the tested device.

## ASSUMPTIONS

None required to start the next milestone beyond using the permanent Drive APK whose checksum matches the verified build artifact.

## UNKNOWNS

- whether the APK launches correctly on the target phone;
- black-screen status;
- actual orientation/scale/control behavior;
- device-specific SceneView rendering behavior;
- save/reload behavior on device;
- apartment runtime presentation behavior;
- Cheat/Admin runtime usability;
- crashes/ANRs/touch dead zones;
- final visual parity, because this test APK may use fallback visual files.
