# EVOLVE ALIGNMENT — Shooter RPG

Status: STANDALONE GAME / FIRST-PERSON 115 HFOV / WALL-JUMP + MOBILE TOUCH HEADLESS VERIFIED / INTERNAL 21+ MATURE TARGET
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
- controller converts horizontal target to Godot vertical FOV for current aspect ratio;
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

## Verification boundary

`SHOOTER_RPG_STANDALONE_IDENTITY_RECORDED = YES`
`SHOOTER_RPG_MATURE_21_PLUS_TARGET_RECORDED = YES`
`SHOOTER_RPG_FIRST_PERSON_RECORDED = YES`
`SHOOTER_RPG_TARGET_HFOV_115 = YES`
`SHOOTER_RPG_WALL_JUMP_IMPLEMENTED = YES`
`SHOOTER_RPG_MOBILE_TOUCH_IMPLEMENTED = YES`
`SHOOTER_RPG_STATIC_VERIFIED = YES`
`SHOOTER_RPG_HEADLESS_VERIFIED = YES`
`SHOOTER_RPG_ANDROID_BUILD_VERIFIED = NO`
`SHOOTER_RPG_PHONE_RUNTIME_VERIFIED = NO`
`SHOOTER_RPG_VISUAL_QUALITY_VERIFIED = NO`
`SHOOTER_RPG_PERFORMANCE_VERIFIED = NO`

Most recent verified runtime evidence:
- source SHA `393ff872f2623f98f07c6216d6d29dc5ed64e5fb`;
- workflow `Shooter RPG Runtime Gate`;
- run `35056976187` — SUCCESS;
- job `104669095724` — SUCCESS;
- Godot 4.7.2 download/version — SUCCESS;
- project import/parse — SUCCESS;
- scaffold smoke — SUCCESS;
- first-person camera/movement smoke — SUCCESS;
- mobile touch smoke — SUCCESS.

Headless success does not prove real-phone ergonomics, wall-jump feel, 115-HFOV comfort, visual quality or frame pacing.

## Exact next bounded piece

`SHOOTER_RPG_ANDROID_CONTROL_FEEL_GATE_001`

Boundary:
1. do not add another large gameplay system first;
2. export the current Shooter RPG graybox to Android;
3. install on a real phone;
4. verify launch/orientation;
5. verify left movement + right look simultaneously;
6. verify ground jump and wall jump;
7. verify 115 horizontal FOV feels correct on the target aspect ratio;
8. inspect safe-area/button overlap;
9. measure obvious performance/frame-pacing problems;
10. tune only evidence-backed control/camera values before beginning firearm behavior.

NEXT THING: `SHOOTER_RPG_ANDROID_CONTROL_FEEL_GATE_001`.
