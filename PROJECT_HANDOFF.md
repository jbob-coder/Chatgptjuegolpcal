# PROJECT HANDOFF — Shooter RPG

Status: STANDALONE GAME / FOUNDATION 001 LOCKED / SCAFFOLD 001 STATIC VERIFIED / PLAYER-CAMERA GRAYBOX 001 STATIC VERIFIED / ENGINE RUNTIME GATE NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

CURRENT_OBJECTIVE: prove the independent third-person Shooter RPG foundation in small layers. Scaffold 001 and the first player-camera graybox are now statically verified; the next required layer is real Godot 4.7.2 parse/headless/runtime validation before adding mobile touch or shooting.

CURRENT_STATE: all Shooter RPG runtime work lives under `shooter_game/`. The project owns its own Godot config, boot path, semantic actions, project contract, tests and documentation. Player-Camera Graybox 001 adds one `CharacterBody3D` player with gravity/camera-relative movement, a yaw/pitch/spring-arm third-person camera rig, simple collision geometry and desktop-only debug mappings. No previous-game runtime code is an implementation dependency.

LAST_VERIFIED_STATE:
- static scaffold preflight PASS;
- player-camera static preflight PASS;
- Godot/headless/Android/phone/performance verification NOT EXECUTED.

COMPLETED_WORK:
- recorded standalone/no-inheritance identity;
- saved original PNG + working JPEG visual references to Drive;
- locked `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
- selected Godot 4.7.2-stable and independent `shooter_game/` root;
- created Scaffold 001 project/config/input/boot/test/docs ownership;
- created Player-Camera Graybox 001 scene;
- created player controller with gravity, camera-relative movement and tunable acceleration/speed;
- created third-person camera yaw/pitch + `SpringArm3D` + `Camera3D` hierarchy;
- excluded the player collider from spring-arm collision;
- created desktop debug input mappings without changing the semantic input contract;
- routed boot into the active graybox;
- created `player_camera_static_preflight.py`;
- created prepared `player_camera_smoke.gd` for later Godot execution;
- corrected graybox scene resource `load_steps` after read-back review.

IN_PROGRESS: close documentation for Graybox 001 and fast-forward it into `shooter-rpg` after final diff review.

NEXT_ACTION: `SHOOTER_RPG_GRAYBOX_RUNTIME_GATE_001`.

RUNTIME GATE BOUNDARY:
- Godot 4.7.2 parse/import/startup;
- execute scaffold and player-camera headless smokes;
- fix only same-layer parse/resource/runtime ownership defects;
- optionally inspect desktop movement/camera behavior if graphical runtime is available;
- do not add mobile touch, shooting, enemy AI or RPG progression until the gate passes.

BLOCKERS: the current execution environment does not contain Godot 4.7.2. Attempts to obtain the official Linux editor binary were blocked by the environment's network/download restrictions. This blocks real engine verification here, not the design/source record.

OPEN_QUESTIONS FOR LATER PROTOTYPE TUNING:
- final camera FOV/distance/pitch/shoulder offset;
- movement/dodge values;
- carbine recoil/spread/damage/reload;
- enemy timing;
- internal pixel render resolution;
- exact touch layout;
- final Android package ID and target-device budgets.

IMPORTANT_DECISIONS:
- single-player offline-first;
- third-person over-shoulder;
- real-time shooting later;
- visibly correct aim must not be invalidated by hidden RPG miss rolls;
- physical cover, no sticky-cover foundation;
- compact connected world;
- semi-auto carbine first;
- placeholder Sentry Automaton first hostile;
- bounded Vigor / Handling / Mobility progression;
- pixel-styled real 3D;
- Android landscape-first;
- old-game runtime/build evidence never counts as Shooter RPG verification.

FILES ADDED/CHANGED IN PLAYER-CAMERA GRAYBOX 001:
- `shooter_game/scripts/input/debug_input_bindings.gd`;
- `shooter_game/scripts/player/player_controller.gd`;
- `shooter_game/scenes/graybox/player_camera_graybox.tscn`;
- `shooter_game/scenes/boot/boot.tscn`;
- `shooter_game/scripts/boot/boot.gd`;
- `shooter_game/tests/player_camera_static_preflight.py`;
- `shooter_game/tests/player_camera_smoke.gd`;
- `shooter_game/tests/scaffold_static_preflight.py`;
- `shooter_game/README.md`;
- `shooter_game/docs/ARCHITECTURE.md`;
- `shooter_game/docs/VERIFICATION.md`;
- root continuity docs.

TESTS_RUN / RESULTS:
- `python shooter_game/tests/scaffold_static_preflight.py` → PASS, `SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`;
- `python shooter_game/tests/player_camera_static_preflight.py` → PASS, `SHOOTER_RPG_PLAYER_CAMERA_STATIC_PASS`;
- `godot --headless ... scaffold_smoke.gd` → NOT EXECUTED;
- `godot --headless ... player_camera_smoke.gd` → NOT EXECUTED;
- Android/phone/performance → NOT EXECUTED.

KNOWN_RISKS:
- GDScript/scene parse remains unproven until engine execution;
- third-person camera collision/feel is not statically verifiable;
- stacking more runtime layers before this gate could multiply defects;
- pixel treatment and touch controls remain completely unverified.

READ_FIRST_NEXT_SLICE:
1. `SHOOTER_RPG_PROJECT_IDENTITY.md`;
2. `EVOLVE_ALIGNMENT.md`;
3. `PROJECT_HANDOFF.md`;
4. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
5. `shooter_game/README.md`;
6. `shooter_game/docs/ARCHITECTURE.md`;
7. `shooter_game/docs/VERIFICATION.md`;
8. `shooter_game/scripts/player/player_controller.gd`;
9. `shooter_game/scenes/graybox/player_camera_graybox.tscn`;
10. both Godot smoke tests.
