# Shooter RPG — Standalone New Game

Status: FIRST-PERSON / 115 HFOV / WALL-JUMP + MOBILE TOUCH FOUNDATION / ANDROID DEBUG APK VERIFIED / PHONE TEST NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Project identity

`Shooter RPG` is a new standalone game.

It is NOT a continuation, remake, visual branch or subsystem of Unnamed Hunt RPG, WorldLife RPG or any prior game in this repository.

Repository ancestry is not design inheritance.

Primary identity authority:
`SHOOTER_RPG_PROJECT_IDENTITY.md`.

## Audience / tone

Internal creative target: **21+ mature**.

Authority:
`SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`.

This is not an official ESRB/PEGI/store rating claim.

## Current perspective authority

Shooter RPG is **first-person**.

Authority:
`SHOOTER_RPG_PERSPECTIVE_DECISION_002.md`.

Current camera target:
- 115 degrees horizontal FOV;
- runtime aspect-aware conversion to Godot vertical FOV;
- first-person yaw/pitch camera;
- no third-person spring arm;
- hidden graybox player body mesh;
- future first-person weapon/arms view model belongs to a later slice.

Earlier third-person wording in Foundation Design 001 is superseded for perspective/camera behavior.

## Movement foundation

Authority:
`SHOOTER_RPG_MOVEMENT_TECHNIQUES_001.md`.

Implemented foundation:
- camera-relative movement;
- gravity;
- ground jump;
- air steering;
- wall jump;
- short wall-jump steering lock;
- mobile JUMP action;
- desktop `Space` jump;
- desktop `Shift` reserved for dodge.

Current wall-jump values are provisional and tunable.

## Mobile control foundation

Implemented:
- left-side dynamic movement touch region / joystick;
- right-side drag-to-look surface;
- safe-area-aware control root;
- semantic action buttons including JUMP, AIM, FIRE and DODGE reservation;
- shared look contract for mouse and touch;
- simultaneous movement/look structure.

AIM/FIRE/DODGE gameplay behavior is still reserved, not implemented as combat mechanics.

## Current runtime root

All active Shooter RPG runtime work lives under:
`shooter_game/`.

Engine baseline:
`Godot 4.7.2-stable`.

## Verification

Runtime/headless gate: **PASS**.

Android build gate: **PASS**.

Verified Android build source SHA:
`bb1231d3b7942aa3d6b8391998a9ffef3229be8f`.

GitHub Actions Android build run:
`35059066037`.

Verified in that build:
- Android SDK/JDK setup;
- Godot 4.7.2 + export templates;
- Shooter RPG static gates;
- Godot project import/parse;
- scaffold headless smoke;
- first-person camera/movement headless smoke;
- mobile-touch headless smoke;
- Android debug APK export;
- APK ZIP-integrity check;
- metadata inspection;
- artifact upload.

APK evidence:
- `ShooterRPG-AndroidDevice001-debug.apk`;
- package `com.jbobcoder.shooterrpg`;
- version `0.0.1-device-probe`;
- min SDK `24`;
- target SDK `36`;
- size `57,580,078` bytes;
- SHA-256 `b78a706184ecd87ce190f9348a96943ea9df54a86ab0ebaa246bb68609b348ef`;
- GitHub artifact ID `10431432477`;
- Drive backup ZIP ID `1JIBdDjOm65jRmCGcCmz8ENI_0sgrXccF`.

Still NOT verified:
- installation on the user's Android phone;
- real-phone touch feel;
- wall-jump feel under human play;
- 115-HFOV comfort on the target phone;
- visual-quality acceptance;
- sustained performance/frame pacing.

## Gameplay foundation still planned

Foundation Design 001 still provides the non-camera gameplay direction unless superseded later:
- single-player offline-first;
- real-time shooter;
- semi-automatic carbine first;
- valid reticle/hit geometry should not be invalidated by hidden RPG random misses;
- physical environmental cover;
- compact connected spaces;
- bounded RPG progression;
- pixel-styled real 3D world;
- Android landscape-first.

## Current next bounded piece

`SHOOTER_RPG_ANDROID_CONTROL_FEEL_GATE_001`.

Install the verified APK on real Android hardware and check launch/orientation, simultaneous move + look, jump/wall-jump, 115 HFOV, touch overlap and frame pacing. Tune only what real device evidence shows is wrong before full firearm behavior is added.
