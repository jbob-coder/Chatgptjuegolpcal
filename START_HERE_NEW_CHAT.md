# WorldLife RPG — START HERE FOR A NEW CHAT

Last verified: 2026-09-02

## Purpose
This is the first file a new ChatGPT session should read before changing WorldLife RPG. Do not reconstruct project state from chat memory when GitHub/Drive evidence is available.

## Repository and authority
- GitHub repository: `jbob-coder/Chatgptjuegolpcal`
- Human-readable reference branch: `worldlife-reference-docs`
- Successful APK test-build branch: `worldlife-v058-apk-test`
- Frozen source authority: Google Drive WorldLife v0.5.8 folder
  - https://drive.google.com/drive/folders/1WABizspRFJxOURbTpqbPdIAda2Uv00Qp
- Frozen v0.5.8 source archive SHA-256: `478d99cd5cafbc350910ad5820d47d6ac656d80332c1cc6ddc85d9cdecef8822`
- Google Drive remains authoritative for project source snapshots. GitHub is used for readable references, build transport, verification, and explicitly authorized APK builds.

## Mandatory read order before changing anything
1. `START_HERE_NEW_CHAT.md` — this file.
2. `README.md` on `worldlife-reference-docs`.
3. `WORLDLIFE_PROJECT_HANDOFF.md`.
4. `WORLDLIFE_DEVELOPMENT_REFERENCE.md`.
5. `WORLDLIFE_SYSTEMS_GUIDE.md`.
6. `WORLDLIFE_EVOLVE_ALIGNMENT.md`.
7. Inspect the current frozen v0.5.8 source/manifest in Drive when factual source detail is required.
8. For APK/build work, inspect `.github/workflows/worldlife-v058-apk.yml` on branch `worldlife-v058-apk-test`, commit `5726bab2d671e1af1260e5c524a5feb775c72abf`.
9. Inspect GitHub Actions run `33596655227` and its build job/logs before changing build tooling.

## Current verified APK build status
GitHub Actions run `33596655227` completed successfully on 2026-09-02.

Workflow: `WorldLife v0.5.8 GitHub Verified Test Build`
Branch: `worldlife-v058-apk-test`
Commit: `5726bab2d671e1af1260e5c524a5feb775c72abf`

Observed successful gates:
- exact historical bootstrap transport SHA verification: PASS
- v0.5.8 compile-source overlay SHA verification: PASS
  - overlay base64 SHA-256: `546a5952419b2e08206d55d705123723172f6bc3a447689826490b481c34a6db`
  - decoded xz SHA-256: `07fa2bec32888b67deb8fa614f2a315580c048ad47ba70ceaf22f77f62e4b68d`
- stable dev-signing key SHA verification: PASS
  - `01255abe5faa7d346562fe3e83f0352bbe03e3ba3b55244ff767a7a91d642f35`
- Java 17: PASS
- Android API 37 / build-tools 37.0.0: PASS
- Gradle 9.3.1: PASS
- `:game-core:test`: PASS
- `:app:assembleDebug`: PASS
- APK ZIP integrity: PASS
- APK signature verification: PASS using v2 scheme, one signer
- package ID: `com.jackwilson.worldlife`
- versionCode: `23`
- versionName: `0.5.8`
- min SDK: 26
- target SDK: 37
- compile SDK: 37

APK file:
- `WorldLifeRPG-v0.5.8-GitHub-test.apk`
- size: `44,012,114` bytes
- SHA-256: `e1e10e6910d2bcc1a1ca87bfc9946727f1307c9a008020dfc03d12aa58ad7c0f`
- signer certificate SHA-256: `6411aaa0d35d51bf48eaf56ee6cabfea3aeafff2774436bc1b9399fea08761c9`

Permanent Drive test-build folder:
- https://drive.google.com/drive/folders/1hsEGq_IMRSXPqJ6rs-JkENoE6nkb6NxB

Permanent Drive APK:
- https://drive.google.com/file/d/1CE5wmIVNcbnVy8XvWpt6SBLrAlHO01P0/view?usp=drivesdk

Drive checksum file:
- https://drive.google.com/file/d/1Gabr8Uglxq8w3Xv4YGNvAihE_qdmBQkD/view?usp=drivesdk

Drive readback was verified at exactly 44,012,114 bytes with the same APK SHA-256 above.

GitHub artifact fallback (expires after retention window):
- Run: https://github.com/jbob-coder/Chatgptjuegolpcal/actions/runs/33596655227
- Artifact ID: `9833682838`
- Artifact name: `WorldLifeRPG-v0.5.8-GitHub-test`
- Artifact ZIP digest: `sha256:73102780b285e224fd59aef39e337009281ec4d4580a60cfe35dbd81670e27a7`

## Important qualification about this APK
This is a verified **functional GitHub test APK**, not the final visual-parity release APK.

The workflow reconstructed exact v0.5.8 compile source but applies one build compatibility patch:
- removes the invalid explicit `androidx.compose.foundation.layout.weight` import from `AdminToolsScreen.kt`.

The workflow also creates tiny 1x1 fallback PNGs for any required visual resources missing from the GitHub build transport. Therefore use this APK to test:
- app launch / black-screen regression
- landscape layout and scale
- save/load
- movement/collision
- map/fast travel
- apartment ENTER/EXIT presentation
- Cheat Panel
- Admin Panel
- NPC TALK
- calendar/time systems
- updater/system screens
- crashes, ANRs, broken controls, wrong scaling and functional UI defects

Do NOT judge final texture/art fidelity from this APK. Final visual parity requires rebuilding with the authoritative Drive runtime art/assets.

## What the next chat should do first
1. Confirm this file and the reference docs were read.
2. Confirm GitHub run `33596655227` is successful instead of rebuilding blindly.
3. Give the user the permanent Drive APK link if they have not installed it yet.
4. Ask for/inspect the user's phone-test results only after installation: launch result, screenshots/video, crashes, black screens, touch/camera/joystick behavior, interior behavior, Cheat/Admin Panel behavior, and scale problems.
5. Treat phone observations as runtime evidence. Do not silently edit around unverified guesses.
6. Record every confirmed phone defect in the handoff/current-state docs before starting unrelated expansion.
7. Fix the highest-severity runtime defect first, one bounded piece at a time.
8. Preserve stable IDs/save compatibility unless an explicit migration is implemented and tested.
9. After runtime stabilization, continue the planned quality expansion: authoritative apartment free-roam, interior collision/room detection, character animation, world visual replacement, then sector streaming/world-scale expansion.
10. Update README/docs/handoff whenever implementation truth changes, following EVOLVE.

## Build workflow rules for future APKs
- The user explicitly authorized GitHub Actions for APK building in this project.
- Do not go back to the old private-Drive-download workflow; GitHub runners cannot directly access the private frozen Drive ZIP and previously received Google wrapper/access responses instead of the archive.
- Reuse the successful GitHub-only reconstruction pattern unless a cleaner exact-source transport is deliberately implemented and verified.
- Keep SHA gates before extraction/compilation.
- Run core tests before Android build.
- Require `:app:assembleDebug` success.
- Require `unzip -t`, `apksigner verify`, and `aapt dump badging` checks.
- Record APK SHA-256 and size.
- Copy successful APKs to the Drive Builds folder because GitHub artifacts expire.
- Do not call a build runtime-verified until the user actually installs/plays it on the phone.

## Current next milestone
The immediate milestone is **PHONE RUNTIME VALIDATION OF v0.5.8**.

After that, create the next source version only from the Drive-authoritative v0.5.8 state plus verified runtime fixes. Do not branch future gameplay work from the test-build compatibility output as though its fallback art were authoritative.
