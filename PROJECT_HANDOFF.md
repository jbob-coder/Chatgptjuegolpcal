# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / PROTOTYPE 001 PIXEL-CAMERA-HUD POLISH ANDROID BUILD VERIFIED / WORLD COMPOSITION NEXT
Last reconciled: 2026-09-16
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: continue the Android monster-hunting RPG as a third-person pixel-styled 3D game, improving the proven compact slice toward the selected reference before broader mechanics/content expansion.

CURRENT_STATE: `pixel-rpg` is the active authority. The first prototype now boots through the app shell, renders the world through an 800×360 low-resolution 3D SubViewport with nearest upscaling, supports third-person movement/look, uses SpringArm camera collision, applies responsive safe-area HUD positioning, contains one NPC interaction and one monster observation proxy, and exports successfully to Android in CI.

LAST_VERIFIED_STATE: source `88d19d733a579e326d7bdf3ebd8e002ef413d86a` passed Pixel RPG workflow `35062722630`, job `104686283219`.

COMPLETED_WORK:
- established active branch `pixel-rpg` and Pixel RPG authority;
- recovered away from the later standalone first-person Shooter rewrite;
- saved/renamed visual references in Google Drive;
- removed obsolete Shooter visual authority/handoff files from Pixel RPG;
- built third-person player controller with left-stick movement and independent right-side look;
- built compact settlement gate/street and physical trail;
- added Gate Warden interaction and distant monster observation proxy;
- added Diamond Watch prototype panel and journal/objective feedback;
- implemented low-resolution 800×360 3D render viewport with nearest stretch for deliberate pixel presentation;
- applied per-vertex/nearest material treatment to prototype primitive materials;
- replaced direct trailing camera with SpringArm collision/occlusion handling;
- added responsive safe-area HUD positioning logic;
- kept selected deterministic combat-domain regressions green;
- verified Android debug export and 2 GB package ceiling;
- restricted Pixel RPG Android CI triggers to `game/**` and its workflow file so documentation-only updates no longer run expensive full Android exports.

IN_PROGRESS: visual/world composition improvement. The current environment is still prototype geometry and has not received phone visual-quality acceptance.

NEXT_ACTION: `PIXEL_RPG_PROTOTYPE_002_WORLD_COMPOSITION`.

Next-slice boundary:
- preserve current controller/camera/pixel-render/HUD behavior;
- improve building/gate/street silhouettes toward the saved reference using reusable lightweight forms;
- add compact market/service cues, fencing/signage and environmental layering;
- improve settlement-to-trail transition and distant monster framing;
- no unrelated gameplay-system expansion;
- preserve current interactions/domain regressions;
- rerun parse/smoke/Android export/package gate.

BLOCKERS: no blocker for the next implementation slice. Physical deletion of `shooter-rpg` is not supported by the currently exposed GitHub connector actions. It remains non-authoritative and should be deleted through GitHub UI/CLI. Extra non-authoritative refs accidentally created during attempted connector cleanup should also be removed externally: `pixel-rpg-temp-guard`, `pixel-rpg-authority`, `pixel-rpg-working`, `pixel-rpg-docs`, `pixel-rpg-notes`, `pixel-rpg-final`. Only `pixel-rpg` is active.

OPEN_QUESTIONS:
- final third-person camera distance/FOV/pitch after phone testing;
- whether 800×360 is the final internal 3D pixel resolution;
- exact body-part targeting UX in third person;
- target-device sustained performance;
- installed-footprint verification;
- final canon names for concept-image placeholders.

IMPORTANT_DECISIONS:
- Pixel RPG is the active game;
- standalone first-person Shooter RPG is not part of Pixel RPG;
- `PIXEL_RPG_VISUAL_DIRECTION.md` supersedes conflicting visual/camera presentation guidance;
- concept-image names/text are placeholders;
- normal exploration is physical, compact and meaningful rather than menu teleportation;
- reusable deterministic monster-hunting domain logic remains preserved where compatible;
- total player-required footprint cap remains 2,000,000,000 bytes;
- documentation-only changes do not need full Android CI;
- build success does not equal phone, sustained-performance or visual-quality acceptance.

KNOWN_RISKS:
- current geometry is functional but still too graybox-like to judge against the selected concept image;
- pixel styling can still look synthetic if final assets/UI do not share pixel density/value language;
- camera behavior needs real phone feel testing;
- current visual slice has not yet exercised actual body-part combat in third person;
- stale older docs can still contain superseded presentation language.

FILES_CHANGED / CREATED FOR CURRENT PIXEL PROTOTYPE:
- `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
- `game/scenes/prototypes/pixel_rpg_prototype_001.tscn`;
- `game/scripts/app_shell.gd`;
- `game/project.godot`;
- `game/export_presets.cfg`;
- `.github/workflows/pixel-rpg-prototype-android.yml`;
- Pixel RPG front-door/design/handoff documentation.

TESTS_RUN / TEST_RESULTS — CURRENT POLISHED SOURCE:
- workflow `35062722630`: SUCCESS;
- job `104686283219`: SUCCESS;
- Godot 4.7.2 import/parse: PASS;
- AppShell smoke: PASS;
- prototype scene smoke: PASS;
- selected deterministic combat-domain regressions: PASS;
- Android debug export: PASS;
- 2,000,000,000-byte package ceiling: PASS;
- APK artifact upload: PASS;
- build-evidence upload: PASS.

PIXEL_RPG_VERIFIED_SOURCE: `88d19d733a579e326d7bdf3ebd8e002ef413d86a`.

PIXEL_RPG_ARTIFACTS:
- APK artifact `10432264323`, name `PixelRPG-prototype-001-debug`;
- evidence artifact `10433305640`, name `PixelRPG-prototype-001-build-evidence`.

HISTORICAL_MONSTER_HUNTING_BASELINE:
- source `01a19b2811cfc5e3f9c0edb0e9264bc997161c7c`;
- workflow `34880096112` SUCCESS;
- job `104096962757` SUCCESS;
- artifact `10362706279`.

EXTERNAL_REFERENCES:
- original PNG Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- JPEG Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

ASSUMPTIONS: none about phone feel, visual acceptance, sustained performance or installed footprint are promoted from CI.

UNKNOWNS: phone feel, final pixel density, visual acceptance, targeting UX and sustained performance remain unverified.

READ_FIRST_NEXT_SLICE:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. `PIXEL_RPG_VISUAL_DIRECTION.md`;
6. newest Pixel RPG handoff;
7. `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
8. `game/scenes/prototypes/pixel_rpg_prototype_001.tscn`;
9. `.github/workflows/pixel-rpg-prototype-android.yml`.
