# EVOLVE ALIGNMENT — Shooter RPG

Status: STANDALONE GAME / FIRST-PERSON 115 HFOV / WALL-JUMP + MOBILE TOUCH HEADLESS VERIFIED / ANDROID DEBUG APK VERIFIED / PHONE TEST NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Operating law

Shooter RPG is a new standalone game. Repository ancestry does not imply design inheritance.

Development loop:
`READ CURRENT SHOOTER STATE → VERIFY → ONE BOUNDED PIECE → IMPLEMENT → TEST → RECORD → CONTINUE`.

Independent runtime root: `shooter_game/`.

## Audience / tone authority

Internal creative target: **21+ mature**.

Authority: `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`.

This is not an official ratings-board/storefront classification.

## Perspective authority

Shooter RPG is **FIRST-PERSON**.

Authority: `SHOOTER_RPG_PERSPECTIVE_DECISION_002.md`.

Current camera rules:
- target horizontal FOV = `115°`;
- controller converts horizontal target to Godot vertical FOV for the current aspect ratio;
- `Player → CameraYaw → CameraPitch → Camera3D`;
- no third-person spring arm;
- first-person body mesh hidden in graybox;
- shared mouse/touch look contract.

Any older third-person or over-the-shoulder wording is superseded for perspective/camera behavior.

## Movement authority

Authority: `SHOOTER_RPG_MOVEMENT_TECHNIQUES_001.md`.

Implemented foundation:
- camera-relative movement;
- gravity;
- ground jump;
- air steering;
- wall jump using wall normal;
- short steering-lock window after wall jump;
- desktop Space jump;
- mobile JUMP button;
- Shift reserved for future dodge.

Current wall-jump values are prototype tuning, not final balance.

## Remaining gameplay foundation

`SHOOTER_RPG_FOUNDATION_DESIGN_001.md` still controls non-camera foundation unless explicitly superseded:
- single-player offline-first;
- real-time shooting in later combat slice;
- semi-automatic carbine first;
- valid reticle/hit geometry is authoritative;
- physical cover;
- compact connected zones;
- bounded Vigor / Handling / Mobility progression;
- pixel-styled real 3D;
- Android landscape-first;
- Godot 4.7.2-stable.

## Mobile touch implementation

Implemented under `shooter_game/`:
- dynamic left-side movement touch region;
- right-side drag-to-look;
- safe-area-aware root;
- JUMP button;
- reserved AIM/FIRE/DODGE buttons;
- shared semantic input actions rather than duplicate movement logic.

AIM/FIRE/DODGE gameplay mechanics remain unimplemented.

## Android device-build evidence

Android debug export now exists and is verified as a build artifact.

APK source SHA:
`bb1231d3b7942aa3d6b8391998a9ffef3229be8f`

Workflow:
`Shooter RPG Android Device APK`

Run:
`35059066037` — **SUCCESS**

Job:
`104675333172` — **SUCCESS**

Verified build steps:
- Android SDK/JDK setup;
- Godot 4.7.2 + export templates;
- Shooter RPG static gates;
- Godot import/parse;
- scaffold smoke;
- first-person camera/movement smoke;
- mobile-touch smoke;
- Android debug APK export;
- APK ZIP-integrity check;
- metadata inspection;
- artifact upload.

APK:
- file: `ShooterRPG-AndroidDevice001-debug.apk`;
- package: `com.jbobcoder.shooterrpg`;
- version: `0.0.1-device-probe` / code `1`;
- min SDK reported by APK: `24`;
- target SDK reported by APK: `36`;
- size: `57,580,078` bytes;
- SHA-256: `b78a706184ecd87ce190f9348a96943ea9df54a86ab0ebaa246bb68609b348ef`.

GitHub artifact:
- ID `10431432477`;
- name `ShooterRPG-AndroidDevice001-debug`.

Drive backup ZIP:
- ID `1JIBdDjOm65jRmCGcCmz8ENI_0sgrXccF`.

## Verification boundary

`SHOOTER_RPG_STANDALONE_IDENTITY_RECORDED = YES`
`SHOOTER_RPG_MATURE_21_PLUS_TARGET_RECORDED = YES`
`SHOOTER_RPG_FIRST_PERSON_RECORDED = YES`
`SHOOTER_RPG_TARGET_HFOV_115 = YES`
`SHOOTER_RPG_WALL_JUMP_IMPLEMENTED = YES`
`SHOOTER_RPG_MOBILE_TOUCH_IMPLEMENTED = YES`
`SHOOTER_RPG_STATIC_VERIFIED = YES`
`SHOOTER_RPG_HEADLESS_VERIFIED = YES`
`SHOOTER_RPG_ANDROID_BUILD_VERIFIED = YES`
`SHOOTER_RPG_APK_INTEGRITY_VERIFIED = YES`
`SHOOTER_RPG_PHONE_RUNTIME_VERIFIED = NO`
`SHOOTER_RPG_VISUAL_QUALITY_VERIFIED = NO`
`SHOOTER_RPG_PERFORMANCE_VERIFIED = NO`

Build/headless success does not prove real-phone ergonomics, wall-jump feel, 115-HFOV comfort, visual quality or frame pacing.

## Exact next bounded piece

`SHOOTER_RPG_ANDROID_CONTROL_FEEL_GATE_001`

Boundary:
1. install the verified debug APK on a real Android phone;
2. verify clean launch and landscape orientation;
3. verify left movement + right look simultaneously;
4. verify ground jump and wall jump;
5. verify 115 horizontal FOV on the real display;
6. inspect safe-area/button overlap;
7. observe obvious frame-pacing/performance problems;
8. record exact phone/device evidence;
9. tune only evidence-backed control/camera values;
10. do not begin full firearm mechanics until this gate is usable.

NEXT THING: `SHOOTER_RPG_ANDROID_CONTROL_FEEL_GATE_001`.
