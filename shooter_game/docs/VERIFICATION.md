# Shooter RPG — Verification Record

Status: FIRST-PERSON 115 HFOV / WALL-JUMP + MOBILE TOUCH HEADLESS VERIFIED / ANDROID DEBUG APK VERIFIED / PHONE TEST NEXT
Last reconciled: 2026-09-16

## Runtime/headless verification

Verified runtime source SHA:
`393ff872f2623f98f07c6216d6d29dc5ed64e5fb`

Workflow:
`.github/workflows/shooter-rpg-graybox-runtime.yml`

Run:
`35056976187`

Job:
`104669095724`

Result: **SUCCESS**.

Successful runtime checks:
- scaffold static preflight;
- first-person player-camera/movement static preflight;
- mobile-touch static preflight;
- Godot 4.7.2 version/download gate;
- project import/parse;
- scaffold headless smoke;
- first-person camera/movement headless smoke;
- mobile-touch headless smoke.

Observed markers include:
- `SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=11 version=0.0.0-scaffold.001`;
- `SHOOTER_RPG_PLAYER_CAMERA_STATIC_PASS perspective=first_person hfov=115 wall_jump=yes`;
- `SHOOTER_RPG_MOBILE_TOUCH_STATIC_PASS move_look_jump=yes`;
- `SHOOTER_RPG_SCAFFOLD_SMOKE_PASS actions=11`;
- `SHOOTER_RPG_PLAYER_CAMERA_SMOKE_PASS perspective=first_person hfov=115 wall_jump=yes`;
- `SHOOTER_RPG_MOBILE_TOUCH_SMOKE_PASS move_look_jump=yes`.

## Android build verification

Verified APK source SHA:
`bb1231d3b7942aa3d6b8391998a9ffef3229be8f`

Workflow:
`.github/workflows/shooter-rpg-android-device.yml`

Workflow name:
`Shooter RPG Android Device APK`

Run:
`35059066037`

Job:
`104675333172`

Result: **SUCCESS**.

Successful Android steps:
- runner Android SDK discovery;
- Android SDK export tools installation;
- JDK 17 setup;
- Godot 4.7.2 + export templates setup;
- debug keystore generation/configuration;
- Shooter RPG static gates;
- Godot import/parse;
- all current headless smokes;
- Android debug APK export;
- APK ZIP integrity check;
- metadata inspection;
- artifact upload.

Android export static marker:
`SHOOTER_RPG_ANDROID_EXPORT_STATIC_PASS package=com.jbobcoder.shooterrpg arches=armv7+arm64`.

## APK identity

File:
`ShooterRPG-AndroidDevice001-debug.apk`

Package:
`com.jbobcoder.shooterrpg`

Version:
`0.0.1-device-probe` / version code `1`

APK-reported SDK range:
- min SDK: `24`;
- target SDK: `36`.

Architectures configured:
- `armeabi-v7a`;
- `arm64-v8a`.

APK size:
`57,580,078` bytes.

APK SHA-256:
`b78a706184ecd87ce190f9348a96943ea9df54a86ab0ebaa246bb68609b348ef`.

GitHub artifact:
- ID `10431432477`;
- name `ShooterRPG-AndroidDevice001-debug`;
- uploaded successfully from run `35059066037`.

Drive backup ZIP:
- file `ShooterRPG-AndroidDevice001-debug.zip`;
- Drive ID `1JIBdDjOm65jRmCGcCmz8ENI_0sgrXccF`.

## What this proves

Current evidence proves that:
- Godot 4.7.2 can parse/import the current Shooter RPG project;
- the first-person 115-HFOV movement layer and mobile input layer instantiate under headless tests;
- the project can export a non-empty debug-signed Android APK;
- the APK archive is structurally readable as ZIP/APK;
- build evidence and artifact upload complete successfully.

## What this does NOT prove

CI/build success does not prove:
- APK installs successfully on the user's specific phone;
- the app launches correctly on that phone/GPU;
- wall jump feels good under real play;
- 115 horizontal FOV is comfortable on the target screen;
- touch sensitivity is correct;
- move/look/jump are ergonomically reachable simultaneously;
- safe-area placement is visually correct on the real device;
- sustained frame pacing/performance;
- final pixel visual quality;
- camera comfort/accessibility.

## Next verification gate

`SHOOTER_RPG_ANDROID_CONTROL_FEEL_GATE_001`:
- install the exact verified APK on real Android hardware;
- verify launch and landscape orientation;
- test move + look simultaneously;
- test ground jump + wall jump;
- inspect safe areas/control overlap;
- evaluate 115 HFOV;
- observe frame pacing/performance;
- record only evidence-backed tuning changes.
