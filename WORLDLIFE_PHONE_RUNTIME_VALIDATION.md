# WorldLife RPG — Phone Runtime Validation

Status: ACTIVE / PHONE EVIDENCE PENDING
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

Observed build gates passed: source/bootstrap SHA reconstruction, exact v0.5.8 compile-source overlay SHA, signing-key SHA, Java 17, API/build-tools 37, Gradle 9.3.1, `:game-core:test`, `:app:assembleDebug`, APK ZIP integrity, `apksigner`, package/version checks, artifact upload.

`PHONE_RUNTIME_VERIFIED`: NO.

`VISUAL_PARITY_VERIFIED`: NO.

The workflow removes one invalid explicit Compose `weight` import and may generate 1×1 fallback PNGs for required visual resources absent from GitHub transport. Functional runtime observations are valid; final art/texture quality is not represented by this APK.

## Evidence rules

For each test item record one of:

- `PASS` — directly observed working on the phone.
- `FAIL` — directly observed defect.
- `PARTIAL` — usable but materially wrong/incomplete.
- `NOT_TESTED` — no observation yet.
- `NOT_APPLICABLE` — only if the test truly cannot apply.

Do not infer PASS from source, build success, or another feature working.

## Runtime checklist

| # | Test | Status | Evidence / notes |
|---|---|---|---|
| 1 | App launches | NOT_TESTED | |
| 2 | No black screen | NOT_TESTED | |
| 3 | Landscape orientation works | NOT_TESTED | |
| 4 | UI scale is usable/correct | NOT_TESTED | |
| 5 | Left joystick moves player | NOT_TESTED | |
| 6 | Right-side drag moves camera | NOT_TESTED | |
| 7 | Camera distance/angle is usable | NOT_TESTED | |
| 8 | Player scale looks believable | NOT_TESTED | |
| 9 | Building/street scale looks believable | NOT_TESTED | |
| 10 | Movement collision works | NOT_TESTED | |
| 11 | Map opens/functions | NOT_TESTED | |
| 12 | Fast travel works | NOT_TESTED | |
| 13 | NPC TALK works | NOT_TESTED | |
| 14 | Apartment ENTER works | NOT_TESTED | |
| 15 | Apartment renders | NOT_TESTED | |
| 16 | Apartment EXIT restores exact exterior point | NOT_TESTED | |
| 17 | Save/reload works | NOT_TESTED | |
| 18 | Cheat Panel opens/modifies state | NOT_TESTED | |
| 19 | Admin Panel opens/modifies state | NOT_TESTED | |
| 20 | No crashes/ANRs/missing controls/unusable touch areas | NOT_TESTED | |
| 21 | Screenshots/video/errors captured for defects | NOT_TESTED | |

## Defect ledger

Add confirmed runtime defects here before changing source.

| ID | Severity | Symptom | Reproduction | Evidence | Suspected owner | Root cause | Fix version | Retest |
|---|---|---|---|---|---|---|---|---|
| — | — | No phone defects recorded yet | — | — | — | — | — | — |

Severity definitions:

- `BLOCKER` — prevents installation/launch or prevents meaningful testing.
- `CRITICAL` — data-loss/corruption, persistent crash loop, unusable core control, or severe save/update failure.
- `HIGH` — major gameplay/system path broken with no reasonable workaround.
- `MEDIUM` — significant defect with a workaround or limited scope.
- `LOW` — cosmetic/minor usability issue that does not block core testing.

## Next action

Install the permanent Drive APK on the target Android phone and populate this ledger from observed results. Fix the highest-severity confirmed defect first. Do not begin unrelated v0.5.9 expansion before blocker/critical runtime state is known.
