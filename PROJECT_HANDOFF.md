# PROJECT HANDOFF — Shooter RPG

Status: STANDALONE GAME / FOUNDATION 001 LOCKED / PLAYER-CAMERA GRAYBOX 001 HEADLESS VERIFIED / INTERNAL 21+ MATURE TARGET / MOBILE TOUCH INPUT NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

CURRENT_OBJECTIVE: build Shooter RPG as an independent third-person pixel shooter RPG in bounded executable slices. The scaffold and first player-camera graybox now pass real Godot 4.7.2 headless verification. The next piece is mobile touch input plumbing without adding shooting behavior yet.

CURRENT_STATE: all Shooter RPG runtime work lives under `shooter_game/`. The project owns its own Godot config, boot path, semantic actions, project contract, tests and docs. Player-Camera Graybox 001 provides a `CharacterBody3D` player with gravity/camera-relative movement and a yaw/pitch/spring-arm camera. The project also has an internal 21+ mature creative standard in `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`.

LAST_VERIFIED_STATE:
- verified source SHA: `9d17874fd1c6f30ddff8cb9e870af33e3f297925`;
- GitHub Actions run `35056360247`: SUCCESS;
- job `104667287029`: SUCCESS;
- Godot 4.7.2 version/download gate: SUCCESS;
- project import/parse: SUCCESS;
- scaffold headless smoke: SUCCESS;
- player-camera headless smoke: SUCCESS.

COMPLETED_WORK:
- standalone/no-inheritance identity recorded;
- visual references saved to Drive;
- Foundation Design 001 locked;
- internal 21+ mature content standard recorded;
- Godot 4.7.2 standalone root created under `shooter_game/`;
- Scaffold 001 statically/headlessly verified;
- Player-Camera Graybox 001 statically/headlessly verified;
- graybox has CharacterBody3D locomotion, gravity, camera-relative movement, third-person yaw/pitch/spring-arm composition and desktop debug input;
- dedicated Shooter RPG runtime workflow added for reproducible Godot verification.

IN_PROGRESS: documentation reconciliation after the successful runtime gate.

NEXT_ACTION: `SHOOTER_RPG_MOBILE_TOUCH_INPUT_001`.

NEXT SLICE BOUNDARY:
- one mobile-input adapter under `shooter_game/`;
- left virtual joystick for movement intent;
- right-side drag surface for camera/look intent;
- simultaneous movement + look structurally supported;
- safe-area-aware landscape UI;
- preserve desktop debug input;
- reserve contextual action-button zones without implementing firearm/reload/dodge mechanics;
- static/headless tests;
- no phone ergonomics claim before device evidence.

BLOCKERS: none for implementation. Phone feel and actual touch ergonomics remain unverified until device testing.

IMPORTANT DECISIONS:
- standalone Shooter RPG, not related to previous games by default;
- internal 21+ mature creative target, not an official rating;
- any future romantic/sexual participant must be canonically 21+;
- single-player offline-first;
- third-person over-shoulder;
- real-time shooting in its later bounded slice;
- correct aim will not be invalidated by invisible RPG miss rolls;
- physical cover;
- compact connected world;
- semi-auto carbine first;
- bounded Vigor / Handling / Mobility progression;
- pixel-styled real 3D;
- Android landscape-first;
- Godot 4.7.2-stable;
- no old-game build evidence counts for Shooter RPG.

KNOWN RISKS:
- touch controls becoming cluttered or fighting camera input;
- overlapping touch regions consuming one another;
- safe-area/aspect-ratio errors;
- camera feel still unverified interactively;
- pixel treatment and performance remain unverified;
- adding combat before touch input is stable would multiply debugging variables.

TESTS RUN / RESULTS:
- scaffold static preflight: PASS;
- player-camera static preflight: PASS;
- Godot project import/parse: PASS via run `35056360247`;
- scaffold headless smoke: PASS;
- player-camera headless smoke: PASS;
- Android export: NOT EXECUTED;
- phone runtime: NOT EXECUTED;
- visual quality/performance: NOT VERIFIED.

EXTERNAL REFERENCE:
- original PNG Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- working JPEG Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

READ_FIRST_NEXT_SLICE:
1. `SHOOTER_RPG_PROJECT_IDENTITY.md`;
2. `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`;
3. `EVOLVE_ALIGNMENT.md`;
4. `PROJECT_HANDOFF.md`;
5. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
6. `shooter_game/docs/ARCHITECTURE.md`;
7. `shooter_game/docs/VERIFICATION.md`;
8. `shooter_game/scripts/player/player_controller.gd`;
9. `shooter_game/scripts/input/debug_input_bindings.gd`;
10. current graybox scene/tests.
