# Runtime Crash Diagnostics — v0.5.8.1 Candidate

Status: blocker-repair/diagnostic candidate, not phone-verified.

Purpose: address `RUNTIME-001` without clearing the player's save and make any remaining uncaught Java/Kotlin crash observable.

## Changes

1. Version advances from `0.5.8` / versionCode `23` to `0.5.8.1` / versionCode `24`.
2. Package remains `com.jackwilson.worldlife`.
3. Save schema remains `4`.
4. The same stable development signing key lineage is reused by the GitHub build workflow.
5. `WorldLifeApplication` installs `CrashDiagnostics` before `MainActivity` starts.
6. Uncaught Java/Kotlin crashes are synchronously persisted to app-private SharedPreferences.
7. On the next launch, `MainActivity` shows a native Android recovery screen before Compose/SceneView starts.
8. The player can copy the crash report without deleting DataStore/save data, then explicitly clear only the diagnostic and try the game again.
9. The GitHub build fallback PNG is corrected: the v0.5.8 test workflow used a 68-byte PNG whose IDAT CRC/zlib stream is invalid. v0.5.8.1 uses a validated 70-byte 1×1 PNG when an authoritative visual is absent from build transport.
10. Fallback visuals remain temporary functional-test assets; this patch does not claim visual parity.

## Why the fallback fix matters

Direct inspection of the permanent v0.5.8 APK found 18 fallback PNG resources used by `OpenWorldScreen`. All 18 fail strict PNG decoding because the shared fallback byte sequence has an invalid IDAT CRC and zlib checksum. The exterior world loads these resources through SceneView `ImageNode` and Compose `painterResource`, so corrupted fallback images are a strong startup/runtime crash candidate for an existing save that immediately opens the world.

This is a confirmed packaged-resource defect. It is still not called the sole root cause until v0.5.8.1 is phone-tested.

## Non-goals

- no gameplay expansion;
- no save-schema migration;
- no apartment free-roam;
- no final loading/intro UX;
- no visual-parity claim;
- no unrelated Admin/world expansion.
