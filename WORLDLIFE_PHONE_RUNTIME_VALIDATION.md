# WorldLife RPG — Phone Runtime Validation

Status: ACTIVE / BLOCKER OBSERVED
Last reconciled: 2026-09-02.
Test target: `WorldLifeRPG-v0.5.8-GitHub-test.apk`.

## Tested-build identity

- Source version represented: `0.5.8`
- Android package: `com.jackwilson.worldlife`
- versionCode: `23`
- versionName: `0.5.8`
- GitHub Actions run: `33596655227`
- Build commit: `5726bab2d671e1af1260e5c524a5feb775c72abf`
- APK size: `44,012,114` bytes
- APK SHA-256: `e1e10e6910d2bcc1a1ca87bfc9946727f1307c9a008020dfc03d12aa58ad7c0f`
- Signer certificate SHA-256: `6411aaa0d35d51bf48eaf56ee6cabfea3aeafff2774436bc1b9399fea08761c9`
- Permanent Drive APK: `https://drive.google.com/file/d/1CE5wmIVNcbnVy8XvWpt6SBLrAlHO01P0/view?usp=drivesdk`

## Build qualification

`APK_BUILD_VERIFIED`: YES.

Observed GitHub build gates passed: source/bootstrap SHA reconstruction, exact v0.5.8 compile-source overlay SHA, signing-key SHA, Java 17, API/build-tools 37, Gradle 9.3.1, `:game-core:test`, `:app:assembleDebug`, APK ZIP integrity, `apksigner`, package/version checks, artifact upload.

A later direct Drive readback independently reconfirmed:

- APK size: `44,012,114` bytes
- APK SHA-256: `e1e10e6910d2bcc1a1ca87bfc9946727f1307c9a008020dfc03d12aa58ad7c0f`
- APK ZIP integrity: PASS via `unzip -t`

`PHONE_RUNTIME_VERIFIED`: NO.

`VISUAL_PARITY_VERIFIED`: NO.

Direct APK inspection confirms this build contains 1×1 fallback PNGs for all 19 workflow-checked action/joystick/street visual resources. They are each 68 bytes in the APK, while the frozen Drive source contains real resource files ranging from 12,468 to 186,092 bytes. Therefore this APK is definitively functional-test-only for those visuals.

Full pre-runtime evidence: `WORLDLIFE_PRE_RUNTIME_AUDIT_V058.md`.

## Direct phone evidence received

The user reported that Android displayed a message indicating the app had a bug and requested clearing cache.

This is direct runtime evidence of an abnormal Android-level failure. The exact Android exception/stack trace has not yet been captured, so the root cause remains `UNKNOWN`.

Important data-safety rule: do not clear app storage/data as a diagnostic step because that can delete the DataStore save. Clearing cache is less destructive but is not assumed to repair the root cause.

## Evidence rules

For each phone test item record one of:

- `PASS` — directly observed working on the phone.
- `FAIL` — directly observed defect.
- `PARTIAL` — usable but materially wrong/incomplete.
- `NOT_TESTED` — no observation yet.
- `NOT_APPLICABLE` — only if the test truly cannot apply.

Do not infer PASS from source, build success, another feature working, or the static pre-runtime audit.

## Runtime checklist

| # | Test | Status | Evidence / notes |
|---|---|---|---|
| 1 | App launches | PARTIAL | Android reported an app bug/cache-clear prompt; exact point in launch sequence not yet isolated. |
| 2 | No black screen | NOT_TESTED | |
| 3 | Landscape orientation works | NOT_TESTED | |
| 4 | UI scale is usable/correct | NOT_TESTED | |
| 5 | Left joystick moves player | NOT_TESTED | APK joystick artwork is fallback; test touch behavior, not final icon quality. |
| 6 | Right-side drag moves camera | NOT_TESTED | |
| 7 | Camera distance/angle is usable | NOT_TESTED | |
| 8 | Player scale looks believable | NOT_TESTED | Judge geometry/scale, not fallback texture fidelity. |
| 9 | Building/street scale looks believable | NOT_TESTED | Judge geometry/scale, not fallback street textures. |
| 10 | Movement collision works | NOT_TESTED | |
| 11 | Map opens/functions | NOT_TESTED | Map action icon is fallback; test function. |
| 12 | Fast travel works | NOT_TESTED | |
| 13 | NPC TALK works | NOT_TESTED | |
| 14 | Apartment ENTER works | NOT_TESTED | |
| 15 | Apartment renders | NOT_TESTED | |
| 16 | Apartment EXIT restores exact exterior point | NOT_TESTED | |
| 17 | Save/reload works | NOT_TESTED | Do not erase app storage/data while investigating RUNTIME-001. |
| 18 | Cheat Panel opens/modifies state | NOT_TESTED | |
| 19 | Admin Panel opens/modifies state | NOT_TESTED | |
| 20 | No crashes/ANRs/missing controls/unusable touch areas | FAIL | `RUNTIME-001`: Android reported app bug and requested clearing cache. |
| 21 | Screenshots/video/errors captured for defects | PARTIAL | User supplied the Android symptom verbally; exact dialog screenshot/stack trace not yet available. |
| 22 | Camera recenter points behind/with current facing direction | NOT_TESTED | STATIC-001 predicts mirrored recenter for six non-N/S directions; verify after blocker is cleared. |

## Pre-runtime static findings

### STATIC-001 — camera recenter direction mismatch

Status: `STATIC_CONFIRMED / PHONE_NOT_TESTED`.

`OpenWorldScreen.kt` contains two inconsistent yaw conventions. Its movement/camera math and `facingYaw()` convention use EAST = 90° and WEST = -90°/270°, but the recenter callback assigns EAST = 270° and WEST = 90°. The same horizontal mirroring affects NE, SE, SW and NW; only NORTH and SOUTH match.

Expected device symptom: after moving/facing in one of the six affected directions and pressing recenter, the camera should rotate to the horizontally mirrored heading instead of aligning with the facing direction.

Do not mark runtime FAIL until observed on phone.

## Confirmed runtime defect ledger

| ID | Severity | Symptom | Reproduction | Evidence | Suspected owner | Root cause | Fix version | Retest |
|---|---|---|---|---|---|---|---|---|
| RUNTIME-001 | BLOCKER (provisional) | Android reports WorldLife has a bug and requests clearing cache. | Launch/use the v0.5.8 functional test APK; exact trigger within the launch sequence not yet isolated. | Direct user phone report. | Android startup/runtime path; deterministic core is not yet implicated. | UNKNOWN — stack trace required. | v0.5.8.1 diagnostic candidate in progress | PENDING |

Severity remains provisional until the exact point of failure is known. It is treated as BLOCKER because it currently prevents reliable continuation of the phone-validation sequence.

## Current repair strategy

Do not guess at the root cause or delete the player's save.

Create a rollback-safe `0.5.8.1` diagnostic build that preserves:

- package `com.jackwilson.worldlife`;
- stable signing lineage;
- save schema `4`;
- frozen v0.5.8 source as immutable history.

The diagnostic patch installs an uncaught-exception recorder before activity startup. If Android terminates WorldLife, the next launch shows a native recovery dialog before Compose/SceneView and allows the exact crash diagnostic to be copied. This is an observability repair, not a claim that the unknown root cause is fixed.

## Next action

Build and verify the v0.5.8.1 diagnostic APK, install it over v0.5.8 without clearing app storage/data, reproduce the failure, then copy the crash diagnostic on the next launch. Use that stack trace to identify and fix the actual highest-severity root cause before unrelated gameplay expansion.