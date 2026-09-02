# WorldLife RPG — Phone Runtime Validation

Status: ACTIVE / BLOCKER OBSERVED / REPAIR BUILD IN PROGRESS
Last reconciled: 2026-09-02.
Original test target: `WorldLifeRPG-v0.5.8-GitHub-test.apk`.
Repair candidate: `v0.5.8.1` / versionCode `24`.

## v0.5.8 tested-build identity

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

`APK_BUILD_VERIFIED` for v0.5.8: YES.

`PHONE_RUNTIME_VERIFIED`: NO.

`VISUAL_PARITY_VERIFIED`: NO.

The v0.5.8 build passed compile/sign/package gates, but later direct APK inspection discovered that all **18** workflow-generated fallback PNG resources are corrupted at the PNG IDAT level. Their shared 68-byte fallback has an invalid IDAT CRC and zlib checksum. Strict decoding fails for all 18.

This is now a confirmed packaged-resource defect and a strong candidate for the runtime failure below. Full evidence: `WORLDLIFE_PRE_RUNTIME_AUDIT_V058.md`.

## Direct phone evidence received

The user reported that Android displayed a message indicating the app had a bug and requested clearing cache.

This is direct runtime evidence of an abnormal Android-level failure. The exact exception/stack trace from v0.5.8 was not captured.

Data-safety rule: **do not clear app storage/data** as a diagnostic step because that can delete the DataStore save. Clearing cache is less destructive, but it is not treated as a root-cause fix.

## Runtime checklist

| # | Test | Status | Evidence / notes |
|---|---|---|---|
| 1 | App launches | PARTIAL | Android reported an app bug/cache-clear prompt; reliable launch not established. |
| 2 | No black screen | NOT_TESTED | |
| 3 | Landscape orientation works | NOT_TESTED | |
| 4 | UI scale is usable/correct | NOT_TESTED | |
| 5 | Left joystick moves player | NOT_TESTED | v0.5.8 joystick PNGs are corrupted fallbacks. |
| 6 | Right-side drag moves camera | NOT_TESTED | |
| 7 | Camera distance/angle is usable | NOT_TESTED | |
| 8 | Player scale looks believable | NOT_TESTED | |
| 9 | Building/street scale looks believable | NOT_TESTED | v0.5.8 street PNGs are corrupted fallbacks; judge after corrected build. |
| 10 | Movement collision works | NOT_TESTED | |
| 11 | Map opens/functions | NOT_TESTED | v0.5.8 map action PNG is a corrupted fallback. |
| 12 | Fast travel works | NOT_TESTED | |
| 13 | NPC TALK works | NOT_TESTED | |
| 14 | Apartment ENTER works | NOT_TESTED | |
| 15 | Apartment renders | NOT_TESTED | |
| 16 | Apartment EXIT restores exact exterior point | NOT_TESTED | |
| 17 | Save/reload works | NOT_TESTED | Do not erase app storage/data while investigating RUNTIME-001. |
| 18 | Cheat Panel opens/modifies state | NOT_TESTED | |
| 19 | Admin Panel opens/modifies state | NOT_TESTED | |
| 20 | No crashes/ANRs/missing controls/unusable touch areas | FAIL | `RUNTIME-001`: Android reported app bug and requested clearing cache. |
| 21 | Screenshots/video/errors captured for defects | PARTIAL | Direct symptom reported; no v0.5.8 stack trace. |
| 22 | Camera recenter aligns with facing | NOT_TESTED | `STATIC-001` remains source-confirmed but lower priority than launch blocker. |

## Confirmed/static defect evidence

### BUILD-001 — corrupted fallback PNG generator

Status: `CONFIRMED`.

The v0.5.8 workflow fallback Base64 produces a 68-byte PNG with:

- valid PNG signature;
- valid IHDR CRC;
- **invalid IDAT CRC**;
- **invalid IDAT zlib checksum**;
- strict decode failure.

All 18 workflow-checked fallback resources in the permanent v0.5.8 APK contain those bytes.

`OpenWorldScreen.kt` uses them through SceneView `ImageNode` and Compose `painterResource`, so corrupted image decoding can occur immediately when an existing/restored save opens the exterior world.

This is a strong root-cause candidate for `RUNTIME-001`, but the corrected build must be phone-tested before calling it the sole root cause.

### STATIC-001 — camera recenter direction mismatch

Status: `STATIC_CONFIRMED / PHONE_NOT_TESTED`.

Six non-north/south facing directions use a horizontally mirrored recenter yaw. Defer repair/retest until the launch blocker is cleared unless it becomes entangled with the same bounded source version.

## Confirmed runtime defect ledger

| ID | Severity | Symptom | Evidence | Suspected owner | Root cause | Fix version | Retest |
|---|---|---|---|---|---|---|---|
| RUNTIME-001 | BLOCKER (provisional) | Android reports WorldLife has a bug and requests clearing cache. | Direct user phone report. | Android exterior/startup presentation path. | `BUILD-001` corrupted fallback PNGs are the strongest current candidate; exact runtime exception not yet captured. | v0.5.8.1 candidate | PENDING |

## v0.5.8.1 bounded repair candidate

Branch:
`worldlife-v0581-startup-diagnostic`

Build workflow:
`.github/workflows/worldlife-v0581-startup-diagnostic.yml`

Current workflow run:
`33606981019`

Scope:

- versionName `0.5.8.1`;
- versionCode `24`;
- same package ID;
- save schema remains `4`;
- same development signing lineage;
- exact frozen v0.5.8 source reconstructed first;
- bounded patch files SHA-pinned before overlay;
- inherited invalid Compose `weight` import correction retained;
- corrupted fallback PNG is replaced with a validated 70-byte 1×1 PNG when a required visual is absent from build transport;
- generated PNG CRC and zlib streams are verified before build;
- packaged fallback PNGs are verified again after APK assembly;
- uncaught Java/Kotlin crashes are recorded before activity startup;
- after a recorded crash, the next launch shows a native diagnostic screen before Compose/SceneView so the report can be copied without clearing save data.

This build is still functional-test-only visually.

## Loading / intro product requirement

The user explicitly requested a real loading screen and game intro.

The current source has only a bare spinner loading state and basic name-entry new-game form. Those are placeholders, not finished UX.

The requirement is recorded in `WORLDLIFE_GOALS_BACKLOG.md` as:

- `GOAL-BOOT-001` — designed boot/loading experience;
- `GOAL-INTRO-001` — real first-run intro/onboarding.

They remain deferred until `RUNTIME-001` is stabilized so startup presentation changes do not obscure the blocker.

## Next action

Complete GitHub verification of v0.5.8.1. If it passes, install it **over** v0.5.8 without clearing app storage/data and retest launch first. If it still crashes and the diagnostic recorder catches a Java/Kotlin exception, reopen the app, copy the native crash report, and use that evidence for the next bounded root-cause repair.