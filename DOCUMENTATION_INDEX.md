# Shooter RPG — Documentation Index

Status: ACTIVE / FIRST-PERSON 115 HFOV / WALL-JUMP + MOBILE TOUCH HEADLESS VERIFIED
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Mandatory read order

1. `SHOOTER_RPG_PROJECT_IDENTITY.md`
2. `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`
3. `SHOOTER_RPG_PERSPECTIVE_DECISION_002.md`
4. `SHOOTER_RPG_MOVEMENT_TECHNIQUES_001.md`
5. `README.md`
6. `EVOLVE_ALIGNMENT.md`
7. `PROJECT_HANDOFF.md`
8. `START_HERE_NEW_CHAT.md`
9. this index
10. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`
11. `SHOOTER_RPG_VISUAL_DIRECTION.md`
12. `VISUAL_REFERENCE_ASSETS.md`
13. `shooter_game/README.md`
14. `shooter_game/docs/ARCHITECTURE.md`
15. `shooter_game/docs/VERIFICATION.md`
16. exact Shooter RPG source/tests for the current bounded piece

## Authority / supersession rule

Shooter RPG is a standalone project.

For camera/perspective, `SHOOTER_RPG_PERSPECTIVE_DECISION_002.md` supersedes the third-person wording in Foundation Design 001.

For movement-technique direction, `SHOOTER_RPG_MOVEMENT_TECHNIQUES_001.md` supersedes any earlier assumption that movement is limited to simple locomotion.

Foundation Design 001 remains active for non-superseded gameplay principles such as single-player offline-first, real-time shooting direction, physical cover, compact connected spaces, bounded RPG progression and pixel-styled real 3D.

## Current implementation truth

Current runtime root: `shooter_game/`.

Implemented and headless verified:
- first-person camera;
- 115-degree horizontal FOV target with aspect-aware conversion;
- camera-relative movement;
- gravity;
- ground jump;
- wall jump;
- mobile left-side movement;
- mobile right-side drag look;
- mobile JUMP semantic button;
- 11-action input contract;
- Godot 4.7.2 parse/import and smoke tests.

Latest verified runtime source SHA:
`393ff872f2623f98f07c6216d6d29dc5ed64e5fb`.

Workflow run:
`35056976187` — SUCCESS.

## Current verification limits

Not yet verified:
- Android export/install;
- real-phone ergonomics;
- wall-jump feel;
- 115-HFOV comfort;
- visual quality;
- performance/frame pacing.

## Exact continuation

`SHOOTER_RPG_ANDROID_CONTROL_FEEL_GATE_001`.

Export/install the current first-person graybox on Android and validate move + look + jump/wall jump + FOV + safe areas before layering firearm behavior.
