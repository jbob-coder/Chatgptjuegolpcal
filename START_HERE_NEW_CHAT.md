# START HERE — Shooter RPG — New Chat Bootstrap

Status: ACTIVE / FIRST-PERSON 115 HFOV / WALL-JUMP + MOBILE TOUCH HEADLESS VERIFIED
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Project identity

Shooter RPG is a new standalone game.

Do not treat Unnamed Hunt RPG, WorldLife RPG, Hunt-01 or inherited files/code/build artifacts as Shooter RPG authority merely because this branch was created from older repository history.

## Mandatory bootstrap

1. Confirm repository `jbob-coder/Chatgptjuegolpcal` and branch `shooter-rpg`.
2. Fetch current branch HEAD and record it.
3. Read, in order:
   1. `SHOOTER_RPG_PROJECT_IDENTITY.md`;
   2. `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`;
   3. `SHOOTER_RPG_PERSPECTIVE_DECISION_002.md`;
   4. `SHOOTER_RPG_MOVEMENT_TECHNIQUES_001.md`;
   5. `README.md`;
   6. `EVOLVE_ALIGNMENT.md`;
   7. `PROJECT_HANDOFF.md`;
   8. `DOCUMENTATION_INDEX.md`;
   9. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
   10. `SHOOTER_RPG_VISUAL_DIRECTION.md`;
   11. `shooter_game/README.md`;
   12. `shooter_game/docs/ARCHITECTURE.md`;
   13. `shooter_game/docs/VERIFICATION.md`;
   14. current player/mobile input source and tests.
4. Treat `SHOOTER_RPG_PERSPECTIVE_DECISION_002.md` as superseding old third-person camera wording.
5. Treat `SHOOTER_RPG_MOVEMENT_TECHNIQUES_001.md` as current movement-technique authority.
6. Ignore inherited previous-game design/source unless a current Shooter RPG authority explicitly imports a specific piece.
7. Work one bounded piece at a time and record actual verification evidence.

## Current authority summary

Current explicit direction:
- standalone Shooter RPG;
- internal 21+ mature creative target;
- first-person perspective;
- target horizontal FOV = 115 degrees;
- camera-relative movement;
- ground jump;
- wall jump;
- mobile left-side movement;
- mobile right-side drag look;
- dedicated mobile JUMP action;
- pixel-styled real 3D;
- Android landscape-first;
- Godot 4.7.2-stable.

Foundation Design 001 remains active only where not superseded by newer Shooter RPG authorities.

## Current runtime evidence

Most recent verified runtime source SHA:
`393ff872f2623f98f07c6216d6d29dc5ed64e5fb`.

GitHub Actions:
- run `35056976187`;
- job `104669095724`;
- result: SUCCESS.

Verified in Godot 4.7.2 headless execution:
- project import/parse;
- scaffold smoke;
- first-person camera/movement smoke;
- mobile-touch smoke.

Static preflights also passed.

## Verification limits

Still unverified:
- Android export/install;
- real-phone input ergonomics;
- wall-jump feel;
- 115-HFOV comfort;
- visual-quality acceptance;
- performance/frame pacing.

## Current bounded piece

`SHOOTER_RPG_ANDROID_CONTROL_FEEL_GATE_001`.

Export/install the current graybox on Android and validate first-person move + look + ground jump + wall jump + 115 HFOV + safe-area layout. Tune only what real device evidence shows is wrong before implementing firearm behavior.
