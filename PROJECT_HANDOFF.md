# PROJECT HANDOFF — Shooter RPG

Status: STANDALONE GAME / FOUNDATION DESIGN 001 LOCKED / PROJECT SCAFFOLD 001 STATIC VERIFIED / INTERNAL 21+ MATURE TARGET RECORDED / PLAYER-CAMERA GRAYBOX NEXT
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

CURRENT_OBJECTIVE: build Shooter RPG as an independent third-person pixel shooter RPG, proving the foundation in small executable slices. The standalone Godot project scaffold exists; the next bounded piece is the first player/camera graybox.

CURRENT_STATE: Shooter RPG is isolated from previous games by explicit authority. Foundation Design 001 is locked. A new independent runtime root exists at `shooter_game/` with its own Godot project, semantic input actions, boot scene, project contract, tests, docs and version marker. The project now also has an explicit internal 21+ mature audience/tone authority. No combat, enemy AI, progression, save system or final pixel pipeline is implemented yet.

LAST_VERIFIED_STATE: Scaffold 001 static preflight executed successfully. Godot headless/runtime/build/device verification remains unexecuted.

COMPLETED_WORK:
- created and isolated branch/project identity for Shooter RPG;
- saved original PNG and working JPEG visual references to Google Drive;
- locked `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
- recorded `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md` as the internal 21+ creative target;
- selected third-person over-shoulder real-time shooter presentation;
- selected semi-automatic carbine as first weapon;
- selected deterministic reticle-based hit behavior;
- selected compact connected-zone structure;
- selected placeholder ranged Sentry Automaton first enemy;
- selected shallow Vigor / Handling / Mobility progression;
- selected low-resolution 3D pixel world rendering with separate readable UI;
- independently selected Godot 4.7.2-stable;
- created `shooter_game/project.godot`;
- created minimal `shooter_game/scenes/boot/boot.tscn` and boot script;
- created project identity/input contract;
- reserved ten semantic first-slice input actions;
- created `shooter_game/tests/scaffold_static_preflight.py` and Godot headless smoke;
- created runtime-local README/architecture/verification docs;
- added generated-file `.gitignore` and version marker `0.0.0-scaffold.001`.

IN_PROGRESS: close Scaffold 001 documentation and promote the verified scaffold into the active `shooter-rpg` branch.

NEXT_ACTION: `SHOOTER_RPG_PLAYER_CAMERA_GRAYBOX_001`.

NEXT SLICE BOUNDARY:
- one tiny graybox 3D test scene;
- one `CharacterBody3D` player;
- gravity + camera-relative horizontal locomotion;
- third-person camera pivot + spring-arm/boom collision handling;
- desktop keyboard/mouse debug bindings using existing semantic actions;
- provisional camera/movement tuning values clearly isolated;
- no shooting, enemy AI, RPG progression, mobile joystick UI or final pixel-render pipeline yet.

BLOCKERS: no design blocker. Runtime verification quality is limited until Godot 4.7.2 can actually be executed in an available environment.

OPEN_QUESTIONS THAT MAY AFFECT LATER SLICES:
- final camera FOV/distance/pitch/shoulder offset;
- exact movement/dodge values;
- exact carbine recoil/spread/damage/reload values;
- enemy detection/fire timing;
- final low-resolution world viewport dimensions across phone aspect ratios;
- final Android package ID;
- final setting/location/enemy names;
- final target-phone performance budget;
- exact mature-content intensity for blood/gore/dialogue after the core loop is proven.

IMPORTANT_DECISIONS:
- single-player offline-first foundation;
- internal 21+ mature creative target, not an official ratings-board claim;
- strong violence/blood/injury/harsh language/adult themes are allowed when useful to the game;
- any future romantic/sexual participant must be canonically at least 21;
- mature content is not required to block or complicate the first technical slice;
- third-person over-shoulder camera;
- physical world traversal;
- real-time shooting;
- good aim is not invalidated by invisible RPG accuracy dice;
- physical cover instead of sticky cover;
- one semi-auto carbine first;
- one ranged Sentry Automaton first;
- RPG growth remains bounded so shooter skill remains relevant;
- compact connected world, not massive open world;
- no inherited prior-game runtime/build evidence;
- Godot 4.7.2-stable baseline;
- all runtime work lives under `shooter_game/`.

KNOWN_RISKS:
- overbuilding before control feel is proven;
- mobile aim/fire ergonomics becoming cluttered;
- pixel treatment looking like a filter rather than authored pixel 3D;
- low-resolution rendering reducing distant-threat readability;
- third-person camera collision/occlusion;
- RPG stat growth creating bullet-sponge balance;
- inherited repository files misleading future work;
- static verification catching structure but not engine parse/runtime behavior;
- mature presentation becoming gratuitous and harming readability if not kept subordinate to gameplay.

FILES CHANGED / CREATED IN SCAFFOLD 001 + MATURE-TONE RECORD:
- `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`;
- `shooter_game/project.godot`;
- `shooter_game/.gitignore`;
- `shooter_game/VERSION`;
- `shooter_game/README.md`;
- `shooter_game/scenes/boot/boot.tscn`;
- `shooter_game/scripts/boot/boot.gd`;
- `shooter_game/scripts/core/project_contract.gd`;
- `shooter_game/tests/scaffold_static_preflight.py`;
- `shooter_game/tests/scaffold_smoke.gd`;
- `shooter_game/docs/ARCHITECTURE.md`;
- `shooter_game/docs/VERIFICATION.md`;
- root continuity docs updated for current state.

TESTS_RUN / TEST_RESULTS:
- `python shooter_game/tests/scaffold_static_preflight.py` → PASS: `SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`.
- Godot 4.7.2 headless smoke → NOT EXECUTED.
- Android export → NOT EXECUTED.
- phone runtime → NOT EXECUTED.
- performance → NOT EXECUTED.

EXTERNAL_REFERENCE:
- original PNG Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- working JPEG Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

ASSUMPTIONS: selected pixel reference remains the visual anchor; working world/enemy names are replaceable and not final lore.

UNKNOWNS: engine parse/runtime of the newly written scaffold, phone feel, final visuals, performance and Android packaging remain unverified.

READ_FIRST_NEXT_SLICE:
1. `SHOOTER_RPG_PROJECT_IDENTITY.md`;
2. `SHOOTER_RPG_MATURE_CONTENT_STANDARD.md`;
3. `EVOLVE_ALIGNMENT.md`;
4. `PROJECT_HANDOFF.md`;
5. `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`;
6. `SHOOTER_RPG_VISUAL_DIRECTION.md`;
7. `shooter_game/README.md`;
8. `shooter_game/docs/ARCHITECTURE.md`;
9. `shooter_game/docs/VERIFICATION.md`;
10. exact files created for the player-camera graybox.
