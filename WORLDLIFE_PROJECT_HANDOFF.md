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

### Fresh pre-runtime audit — 2026-09-02

Full record: `WORLDLIFE_PRE_RUNTIME_AUDIT_V058.md`.

The exact frozen Drive source archive was downloaded again and independently checked:

- source ZIP size: `1,593,116` bytes;
- source ZIP SHA-256: `478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822` — PASS;
- source ZIP extracted read-only: PASS;
- fresh `python3 scripts/verify_static.py`: PASS, `65` required files;
- fresh Kotlin/JVM 17 compilation of production `:game-core`: PASS;
- fresh bounded core smoke runner: PASS for new game → apartment ENTER/EXIT → Admin money mutation → exterior movement.

The permanent Drive APK was also downloaded again:

- size: `44,012,114` bytes — matches;
- SHA-256: `e1e10e6910d2bcc1a1ca87bfc9946727f1307c9a008020dfc03d12aa58ad7c0f` — matches;
- ZIP integrity: PASS.

This audit environment did not have `apksigner`/`aapt`; signature/package/version verification was not locally rerun and remains supported by successful GitHub Actions run `33596655227`.

Important new build evidence: direct APK inspection confirms **all 19 workflow-checked action/joystick/street resources in this test APK are 68-byte 1×1 fallback PNGs**. The frozen Drive source contains real versions ranging from 12,468 to 186,092 bytes. Therefore `VISUAL_PARITY_VERIFIED = NO` is confirmed for this APK, not merely precautionary.

Static source audit also identified `STATIC-001`: camera recenter uses a horizontally mirrored yaw for NE/E/SE/SW/W/NW while NORTH/SOUTH match the camera/facing convention. This is source-confirmed but **PHONE_NOT_TESTED**. The phone checklist now contains a dedicated recenter check.

No additional source-level launch blocker was identified in the scoped audit. This is not a phone PASS.

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

Important qualification: direct inspection now confirms this test APK contains fallback 1×1 resources for all 19 workflow-checked action/joystick/street visuals. Use this APK for functional runtime testing, touch behavior, geometry, collision, state/persistence and system behavior—not final icon/texture/material judgment.

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
- pre-runtime audit record added;
- rollback branch created before Chat continuity reconciliation: `worldlife-reference-docs-pre-chat-protocol-v058` at `0697bfafe73ec82d0adaa1c77897d7c8d76c4f21`;
- second rollback branch created before pre-runtime audit documentation: `worldlife-reference-docs-pre-runtime-audit-v058` at `46e2f28afbdbde3d72b438555d093458d31c73ef`.

## IN_PROGRESS

Phone runtime validation only.

No v0.5.9 gameplay source change is currently authorized by evidence as the next piece.

## NEXT_ACTION

Install the permanent Drive APK and populate `WORLDLIFE_PHONE_RUNTIME_VALIDATION.md` from direct phone observations.

Test, in order of practical value:

1. launch / black screen;
2. landscape and UI scale;
3. joystick and right-side camera drag;
4. camera recenter in all cardinal/diagonal directions;
5. player/building/street geometry scale;
6. collision;
7. map and fast travel;
8. NPC TALK;
9. apartment ENTER/render/EXIT exact return;
10. save/reload;
11. Cheat Panel;
12. Admin Panel;
13. crashes, ANRs, missing/unusable touch areas.

Record screenshots/video/error text for failures.

Then classify confirmed defects as `BLOCKER`, `CRITICAL`, `HIGH`, `MEDIUM`, or `LOW` and repair the highest-severity root cause first, one bounded change at a time.

## BLOCKERS

No known build blocker remains for the functional test APK.

Current evidence blocker: real phone behavior has not yet been observed.

Final visual-parity verification is intentionally blocked because the current APK is now confirmed to contain fallback action/joystick/street resources rather than the authoritative Drive versions.

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
- Source-confirmed findings such as `STATIC-001` may be recorded before phone testing, but they do not become `PHONE_RUNTIME_VERIFIED` evidence until observed on device.

## KNOWN_RISKS

- Stale reference documents can cause a new Chat to regress to older assumptions.
- The build compatibility patch means the test-build source is not byte-identical to the frozen source at `AdminToolsScreen.kt`; the correction is explicit and bounded.
- The current test APK definitely uses 1×1 fallback resources for all 19 workflow-checked action/joystick/street visuals; screenshots must not be mistaken for intended art quality.
- `STATIC-001` predicts mirrored camera recenter behavior for six directions; actual phone impact is not yet measured.
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
- `WORLDLIFE_PRE_RUNTIME_AUDIT_V058.md`
- `MIRROR_POINTER.json`

Build evidence:
- branch `worldlife-v058-apk-test`
- commit `5726bab2d671e1af1260e5c524a5feb775c72abf`
- `.github/workflows/worldlife-v058-apk.yml`
- run `33596655227`

Rollback references:
- `worldlife-reference-docs-pre-chat-protocol-v058` → `0697bfafe73ec82d0adaa1c77897d7c8d76c4f21`
- `worldlife-reference-docs-pre-runtime-audit-v058` → `46e2f28afbdbde3d72b438555d093458d31c73ef`

Source authority:
- Drive v0.5.8 folder/archive/checksum above.

## TESTS_ALREADY_RUN

Source freeze: 53 core tests plus static/type/XML/policy/manifest/package gates recorded in the v0.5.8 authority docs.

GitHub build run `33596655227`: core test step and Android assemble/signature/package/version gates all completed successfully.

Fresh pre-runtime audit:
- source ZIP SHA readback: PASS;
- `scripts/verify_static.py`: PASS;
- fresh game-core Kotlin/JVM 17 compile: PASS;
- bounded independent core smoke runner: PASS;
- permanent APK SHA/size readback: PASS;
- APK ZIP integrity: PASS;
- 19 fallback visual resources: VERIFIED PRESENT;
- camera recenter directional inconsistency: STATIC_CONFIRMED.

Phone runtime test: not yet executed/recorded.

## SOURCE_AUTHORITY

Google Drive frozen v0.5.8 source outranks conversation memory and GitHub build transport for source facts.

GitHub build/run evidence governs claims about what the GitHub workflow actually built and verified.

Direct inspection of the permanent APK governs claims about its packaged resources.

Direct phone evidence governs claims about runtime behavior on the tested device.

## ASSUMPTIONS

None required to start the next milestone beyond using the permanent Drive APK whose checksum matches the verified build artifact.

## UNKNOWNS

- whether the APK launches correctly on the target phone;
- black-screen status;
- actual orientation/scale/control behavior;
- actual impact of `STATIC-001` camera recenter on device;
- device-specific SceneView rendering behavior;
- save/reload behavior on device;
- apartment runtime presentation behavior;
- Cheat/Admin runtime usability;
- crashes/ANRs/touch dead zones;
- final visual parity, because this test APK is confirmed to use fallback action/joystick/street resources.
