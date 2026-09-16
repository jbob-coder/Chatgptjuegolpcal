# PROJECT HANDOFF — Shooter RPG

Status: STANDALONE GAME / FIRST-PERSON 115 HFOV / WALL-JUMP + MOBILE TOUCH HEADLESS VERIFIED / ANDROID DEBUG APK VERIFIED / PHONE TEST NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

CURRENT_OBJECTIVE: prove the current first-person Shooter RPG foundation on real Android hardware before adding full firearm behavior. The Android debug APK is now built and verified; the unresolved gate is real-phone control feel, launch behavior, FOV comfort and frame pacing.

CURRENT_STATE: all Shooter RPG runtime work lives under `shooter_game/`. Active camera is first-person: `Player → CameraYaw → CameraPitch → Camera3D`. The controller maintains a 115-degree horizontal FOV by converting it to Godot vertical FOV for the current aspect ratio. Movement includes gravity, ground jump, air control and wall jump. Mobile controls provide left-side movement, right-side drag-to-look, safe-area handling and a dedicated JUMP button. AIM/FIRE/DODGE buttons remain semantic reservations, not implemented combat mechanics.

LAST_VERIFIED_RUNTIME_STATE:
- runtime/headless source SHA `393ff872f2623f98f07c6216d6d29dc5ed64e5fb`;
- runtime workflow run `35056976187`: SUCCESS;
- Godot 4.7.2 import/parse: PASS;
- scaffold smoke: PASS;
- first-person camera/movement smoke: PASS;
- mobile touch smoke: PASS.

LAST_VERIFIED_ANDROID_BUILD_STATE:
- APK source SHA `bb1231d3b7942aa3d6b8391998a9ffef3229be8f`;
- workflow `Shooter RPG Android Device APK`;
- run `35059066037`: SUCCESS;
- job `104675333172`: SUCCESS;
- Android debug export: PASS;
- APK ZIP integrity: PASS;
- package metadata inspection: PASS;
- GitHub artifact upload: PASS.

APK EVIDENCE:
- file `ShooterRPG-AndroidDevice001-debug.apk`;
- package `com.jbobcoder.shooterrpg`;
- version `0.0.1-device-probe` / code `1`;
- min SDK `24`;
- target SDK `36`;
- size `57,580,078` bytes;
- SHA-256 `b78a706184ecd87ce190f9348a96943ea9df54a86ab0ebaa246bb68609b348ef`;
- GitHub artifact ID `10431432477`;
- Drive backup ZIP ID `1JIBdDjOm65jRmCGcCmz8ENI_0sgrXccF`.

COMPLETED_WORK:
- standalone/no-inheritance identity recorded;
- internal 21+ mature content standard recorded;
- first-person perspective authority recorded;
- 115 horizontal FOV implemented with aspect-aware conversion;
- third-person spring arm removed from active graybox;
- ground jump implemented;
- wall jump implemented using current wall normal;
- short wall-jump steering lock implemented;
- semantic `jump` action added;
- desktop Space jump / Shift dodge reservation;
- mobile JUMP button added;
- left mobile movement region and right drag-look input added;
- safe-area-aware mobile root added;
- Godot 4.7.2 static/headless gates passed;
- Android export preset created;
- landscape Android/frame-pacing settings added;
- Android export static preflight added;
- reproducible Android APK workflow added and fixed after two CI/tooling failures;
- final Android build run succeeded;
- verified APK extracted from the artifact and backed up to Drive as ZIP.

IN_PROGRESS: promotion of the verified Android-build slice into active `shooter-rpg` and real-device installation/testing by the user.

NEXT_ACTION: `SHOOTER_RPG_ANDROID_CONTROL_FEEL_GATE_001`.

NEXT SLICE BOUNDARY:
- install exact verified APK on real Android phone;
- verify launch and landscape orientation;
- verify simultaneous move + look;
- verify ground jump + wall jump;
- evaluate 115 HFOV on the real phone;
- inspect control overlap and safe areas;
- observe obvious frame pacing/performance problems;
- record device/runtime evidence;
- tune only demonstrated control/camera issues;
- do not start full firearm mechanics until the control foundation is usable.

BLOCKERS: no build/source blocker. Real mobile feel and actual phone runtime remain unverified because CI cannot substitute for device evidence.

IMPORTANT_DECISIONS:
- Shooter RPG is standalone;
- internal 21+ mature creative target, not an official rating;
- first-person perspective supersedes earlier third-person wording;
- target horizontal FOV = 115 degrees;
- technique-driven traversal includes wall jump;
- mobile scheme = left movement + right look + contextual right-side action controls;
- Android test APK is debug-signed and intended only for direct testing;
- real-time shooting comes after control-feel gate;
- valid reticle/hit geometry will not be invalidated by hidden RPG miss rolls;
- physical cover;
- compact connected world;
- semi-auto carbine first;
- bounded RPG progression;
- pixel-styled real 3D;
- Android landscape-first;
- Godot 4.7.2-stable.

KNOWN_RISKS:
- APK can build successfully but still fail on a specific GPU/device/runtime;
- 115 HFOV may be uncomfortable on some aspect ratios;
- wall jump may enable boundary exploits;
- right-side look and action buttons can compete for touch ownership;
- movement speed/air control may need phone-specific tuning;
- pixel readability and sustained performance remain unverified on device.

TESTS RUN / RESULTS:
- scaffold static preflight: PASS;
- player-camera static preflight: PASS;
- mobile-touch static preflight: PASS;
- Android-export static preflight: PASS;
- Godot 4.7.2 import/parse: PASS;
- scaffold headless smoke: PASS;
- first-person camera/movement headless smoke: PASS;
- mobile-touch headless smoke: PASS;
- Android debug export: PASS;
- APK ZIP integrity: PASS;
- Android package metadata inspection: PASS;
- APK artifact upload: PASS;
- phone install/runtime: NOT YET VERIFIED;
- visual-quality/performance acceptance: NOT YET VERIFIED.

READ_FIRST_NEXT_SLICE:
1. `SHOOTER_RPG_PROJECT_IDENTITY.md`;
2. `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`;
3. `SHOOTER_RPG_PERSPECTIVE_DECISION_002.md`;
4. `SHOOTER_RPG_MOVEMENT_TECHNIQUES_001.md`;
5. `EVOLVE_ALIGNMENT.md`;
6. `PROJECT_HANDOFF.md`;
7. `shooter_game/docs/VERIFICATION.md`;
8. `shooter_game/export_presets.cfg`;
9. `shooter_game/scripts/player/player_controller.gd`;
10. current mobile input files/tests and `.github/workflows/shooter-rpg-android-device.yml`.
