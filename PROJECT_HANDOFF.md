# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / THIRD-PERSON PROTOTYPE ANDROID BUILD VERIFIED / PIXEL-CAMERA-HUD POLISH NEXT
Last reconciled: 2026-09-16
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: continue the Android monster-hunting RPG as a third-person pixel-styled 3D game, improving one small proven slice before broader migration.

CURRENT_STATE: `pixel-rpg` is the active authority. It was recovered to the last intended third-person pixel-RPG pivot before the later standalone first-person Shooter rewrite, then received dedicated Pixel RPG authority and a new third-person prototype. The prototype now boots through the production app shell, renders a compact settlement/trail slice, supports third-person movement/look, contains one NPC interaction and one monster observation proxy, and exports successfully to Android in CI.

LAST_VERIFIED_STATE: source `8d0c21018c396ec1943d0930a867273e4753ba6c` passed Pixel RPG workflow `35062091768`, job `104684371733`.

COMPLETED_WORK:
- established active branch `pixel-rpg`;
- recovered branch content to pre-standalone-shooter revision `7ac7e84a6b0e8249ea8c869cf96171b834b2363c`;
- created `PIXEL_RPG_VISUAL_DIRECTION.md` as presentation authority;
- saved and renamed canonical visual references in Google Drive;
- removed obsolete Shooter visual authority/handoff files from Pixel RPG;
- created `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
- created `game/scenes/prototypes/pixel_rpg_prototype_001.tscn`;
- routed `game/scripts/app_shell.gd` to the Pixel RPG prototype;
- renamed Godot project display identity to Pixel RPG;
- retargeted Android debug export metadata/path to Pixel RPG prototype;
- implemented third-person player-visible movement/camera shell;
- implemented mobile left-stick movement and independent right-side touch look;
- created compact settlement street/gate and physical trail;
- added one Gate Warden NPC interaction;
- added one distant monster proxy with observation interaction;
- added Diamond Watch prototype panel and journal/objective feedback;
- added `.github/workflows/pixel-rpg-prototype-android.yml`;
- fixed the Android SDK setup after the first workflow infrastructure-only failure;
- verified Godot 4.7.2 import/parse, AppShell smoke, prototype scene smoke, selected deterministic combat-domain tests, Android export and package-size ceiling.

IN_PROGRESS: post-build prototype polish. The current implementation is build-verified but not yet phone/visual/performance accepted.

NEXT_ACTION: `PIXEL_RPG_PROTOTYPE_001_PIXEL_RENDER_CAMERA_UI_POLISH`.

Next-slice boundary:
- intentional pixel render/upscale treatment;
- camera collision/occlusion around walls/gate;
- safe-area/anchor responsive HUD cleanup;
- no unrelated gameplay-system expansion;
- preserve direct movement/right-look behavior;
- preserve current NPC/monster interactions and deterministic domain tests;
- rerun parse/smoke/Android export/package gate.

BLOCKERS: no blocker for the next Pixel RPG slice. Physical deletion of the obsolete `shooter-rpg` Git ref is not available through the currently exposed GitHub connector actions. It is non-authoritative and can be deleted through GitHub UI/CLI. During attempted connector cleanup, extra non-authoritative helper refs were also created and should be deleted with the same external cleanup: `pixel-rpg-temp-guard`, `pixel-rpg-authority`, `pixel-rpg-working`, `pixel-rpg-docs`, `pixel-rpg-notes`, `pixel-rpg-final`. Only `pixel-rpg` is active.

OPEN_QUESTIONS:
- final third-person camera distance/FOV/pitch after phone testing;
- internal pixel render resolution/pixel density;
- exact camera obstruction strategy;
- final third-person body-part targeting UX;
- target-device sustained performance;
- installed-footprint verification;
- final canon names for concept-image placeholders.

IMPORTANT_DECISIONS:
- Pixel RPG is the active game;
- standalone first-person Shooter RPG is not part of Pixel RPG;
- `PIXEL_RPG_VISUAL_DIRECTION.md` supersedes conflicting visual/camera presentation guidance;
- concept-image names/text are placeholders;
- working monster-hunting domain systems should be reused rather than discarded where compatible;
- normal exploration is physical, compact and meaningful rather than menu teleportation;
- total player-required footprint cap remains 2,000,000,000 bytes;
- build success does not equal phone, performance or visual-quality acceptance.

KNOWN_RISKS:
- pixel styling can look like a filter instead of authored pixel presentation if render/UI/assets are not aligned;
- camera can clip/occlude the player in dense settlement geometry;
- current HUD prototype contains fixed offsets that can fail across aspect ratios/safe areas;
- accidental re-import of standalone Shooter assumptions through stale docs;
- current visual slice uses prototype geometry and is not final art.

FILES_CHANGED / CREATED FOR PROTOTYPE 001:
- `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
- `game/scenes/prototypes/pixel_rpg_prototype_001.tscn`;
- `game/scripts/app_shell.gd`;
- `game/project.godot`;
- `game/export_presets.cfg`;
- `.github/workflows/pixel-rpg-prototype-android.yml`;
- Pixel RPG front-door/design/handoff documentation.

TESTS_RUN / TEST_RESULTS:
- workflow `35062091768`: SUCCESS;
- job `104684371733`: SUCCESS;
- Godot 4.7.2 import/parse: PASS;
- AppShell smoke: PASS;
- prototype scene smoke: PASS;
- selected deterministic combat-domain regressions: PASS;
- Android debug export: PASS;
- 2,000,000,000-byte package ceiling: PASS;
- APK artifact upload: PASS;
- build-evidence upload: PASS.

PIXEL_RPG_VERIFIED_SOURCE: `8d0c21018c396ec1943d0930a867273e4753ba6c`.

PIXEL_RPG_ARTIFACTS:
- APK artifact `10432014296`, name `PixelRPG-prototype-001-debug`;
- evidence artifact `10433105552`, name `PixelRPG-prototype-001-build-evidence`.

HISTORICAL_MONSTER_HUNTING_BASELINE:
- source `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`;
- workflow `34880096112` SUCCESS;
- job `104096962757` SUCCESS;
- artifact `10362706279`.

EXTERNAL_REFERENCES:
- original PNG Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- JPEG Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

ASSUMPTIONS: none about phone feel, visual acceptance, sustained performance or installed footprint are promoted from CI.

UNKNOWNS: phone feel, camera acceptance, pixel-render quality, targeting UX and sustained performance remain unverified.

READ_FIRST_NEXT_SLICE:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. `PIXEL_RPG_VISUAL_DIRECTION.md`;
6. newest Pixel RPG handoff;
7. `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
8. `game/scenes/prototypes/pixel_rpg_prototype_001.tscn`;
9. `game/project.godot`;
10. `.github/workflows/pixel-rpg-prototype-android.yml`.
