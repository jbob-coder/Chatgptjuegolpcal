# PROJECT HANDOFF — Shooter RPG

Status: STANDALONE GAME / FIRST-PERSON 115 HFOV / WALL-JUMP + MOBILE TOUCH HEADLESS VERIFIED / INTERNAL 21+ MATURE TARGET
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

CURRENT_OBJECTIVE: build Shooter RPG as an independent first-person pixel shooter RPG in bounded executable slices. The current foundation now includes 115-degree horizontal FOV, ground/wall jump movement and mobile move/look input. The next required gate is real Android/device control-feel verification before firearm behavior is layered on top.

CURRENT_STATE: all Shooter RPG runtime work lives under `shooter_game/`. The active camera is first-person: `Player → CameraYaw → CameraPitch → Camera3D`. The controller maintains a 115-degree horizontal FOV by converting it to Godot vertical FOV for the current aspect ratio. Movement includes gravity, ground jump, air control and wall jump. Mobile controls include left-side movement, right-side drag-to-look, safe-area handling and a dedicated JUMP button. AIM/FIRE/DODGE buttons are still semantic reservations, not implemented combat mechanics.

LAST_VERIFIED_STATE:
- verified runtime source SHA: `393ff872f2623f98f07c6216d6d29dc5ed64e5fb`;
- GitHub Actions run `35056976187`: SUCCESS;
- job `104669095724`: SUCCESS;
- Godot 4.7.2 download/version: SUCCESS;
- project import/parse: SUCCESS;
- scaffold smoke: SUCCESS;
- first-person camera/movement smoke: SUCCESS;
- mobile touch smoke: SUCCESS.

COMPLETED_WORK:
- standalone/no-inheritance identity recorded;
- internal 21+ mature content standard recorded;
- first-person perspective authority recorded in `SHOOTER_RPG_PERSPECTIVE_DECISION_002.md`;
- 115 horizontal FOV implemented with aspect-aware conversion;
- third-person spring arm removed from active graybox;
- ground jump implemented;
- wall jump implemented using current wall normal;
- short wall-jump steering-lock implemented;
- semantic `jump` action added to project contract;
- desktop Space jump / Shift dodge reservation;
- mobile JUMP button added;
- left mobile movement region and right drag-look input added;
- safe-area-aware mobile root added;
- mobile touch and player-camera static/headless tests added;
- reproducible Godot 4.7.2 runtime workflow passed.

IN_PROGRESS: documentation reconciliation and promotion of this verified slice into the active `shooter-rpg` branch.

NEXT_ACTION: `SHOOTER_RPG_ANDROID_CONTROL_FEEL_GATE_001`.

NEXT SLICE BOUNDARY:
- export current graybox to Android;
- install on real phone;
- verify launch and landscape orientation;
- verify simultaneous move + look;
- verify ground jump + wall jump;
- evaluate 115 HFOV on the actual phone aspect ratio;
- inspect control overlap / safe areas;
- record device/runtime evidence;
- tune only demonstrated control/camera problems;
- do not start full firearm mechanics until this gate is usable.

BLOCKERS: no source-level blocker. Real mobile feel, FOV comfort, wall-jump feel, Android packaging and performance still require device evidence.

IMPORTANT_DECISIONS:
- Shooter RPG is standalone;
- internal 21+ mature creative target, not an official rating;
- first-person perspective supersedes earlier third-person wording;
- target horizontal FOV = 115 degrees;
- technique-driven traversal includes wall jump;
- mobile scheme = left movement + right look + contextual right-side action controls;
- real-time shooting will be added after control-feel gate;
- valid reticle/hit geometry will not be invalidated by hidden RPG miss rolls;
- physical cover;
- compact connected world;
- semi-auto carbine first;
- bounded RPG progression;
- pixel-styled real 3D;
- Android landscape-first;
- Godot 4.7.2-stable.

KNOWN_RISKS:
- 115 HFOV may feel too distorted or too visually dense on some phone aspect ratios despite being mathematically correct;
- wall jump could enable level-boundary exploits if geometry is not designed for it;
- touch look and action buttons can compete for right-thumb input;
- movement speed/air control may need phone-specific tuning;
- pixel readability and performance remain unverified on device.

TESTS RUN / RESULTS:
- scaffold static preflight: PASS;
- player-camera static preflight: PASS;
- mobile-touch static preflight: PASS;
- Godot 4.7.2 import/parse: PASS;
- scaffold headless smoke: PASS;
- first-person camera/movement headless smoke: PASS;
- mobile touch headless smoke: PASS;
- Android export: NOT EXECUTED;
- phone runtime: NOT EXECUTED;
- visual quality/performance: NOT VERIFIED.

READ_FIRST_NEXT_SLICE:
1. `SHOOTER_RPG_PROJECT_IDENTITY.md`;
2. `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`;
3. `SHOOTER_RPG_PERSPECTIVE_DECISION_002.md`;
4. `SHOOTER_RPG_MOVEMENT_TECHNIQUES_001.md`;
5. `EVOLVE_ALIGNMENT.md`;
6. `PROJECT_HANDOFF.md`;
7. `shooter_game/docs/ARCHITECTURE.md`;
8. `shooter_game/docs/VERIFICATION.md`;
9. `shooter_game/scripts/player/player_controller.gd`;
10. current mobile input files and tests.
