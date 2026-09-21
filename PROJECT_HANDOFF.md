# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / VISUAL PACK 002 INTEGRATED / GODOT + ANDROID BUILD VERIFIED / HUD ALIGNMENT NEXT
Last reconciled: 2026-09-21
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: continue the Android monster-hunting RPG as a third-person pixel-styled real-3D game, improving the compact verified slice toward the selected visual reference without rewriting proven controller, camera, world-composition or deterministic monster-hunting domain behavior.

CURRENT_STATE: `pixel-rpg` is the active authority. World Composition Pack 001 remains integrated. Visual Pack 002 now improves the existing hunter silhouette/equipment readability and replaces the generic distant monster primitive with a reusable Mudcrest visual mapped to the current authoritative anatomy groups. The existing controller, SpringArm camera, 800×360 nearest-upscaled render path, safe-area HUD, Gate Warden interaction, monster observation interaction and deterministic combat/anatomy/status rules remain intact.

LAST_VERIFIED_STATE: source `43258bcad09040ece4b520fdbfa7dcd9a718c942` passed Pixel RPG workflow `35564826300`, job `106224465180`.

COMPLETED_WORK:
- active Pixel RPG authority established on `pixel-rpg`;
- abandoned Monster Choice RPG, WorldLife RPG and Shooter RPG excluded from authority;
- third-person player controller with left-stick movement and independent right-side look;
- 800×360 low-resolution 3D SubViewport with nearest stretch;
- SpringArm camera collision/occlusion handling;
- responsive safe-area HUD logic;
- compact settlement/street/gate/trail prototype;
- Gate Warden interaction and distant monster observation;
- WORLD COMPOSITION PACK 001 integrated with gate, smith/service landmark, market stall, clutter, lanterns, banner, signpost, fences, vegetation and trail rock composition;
- VISUAL PACK 002 upgraded the existing hunter rather than replacing its identity;
- hunter now has clearer low-poly silhouette, arms, bracers, boots, belt, bounded field equipment and clearer poleblade profile;
- reusable `game/assets/monsters/mudcrest_visual.tscn` added;
- Mudcrest visual exposes `HEAD`, `HORN_CREST`, `FORELEG_L/R`, `HINDLEG_L/R`, `DORSAL_PLATES`, `TAIL` and `GENERAL_TORSO`;
- generic distant monster capsule/cylinder proxy removed from the presentation script;
- Pack 002 runtime verification gate added to CI;
- deterministic combat/anatomy/status regressions preserved;
- Android debug export and 2 GB package gate remain green.

IN_PROGRESS: visual/UI progression. Pack 002 is source/build verified, but phone visual acceptance remains open.

NEXT_ACTION: `PIXEL_RPG_VISUAL_PACK_003_HUD_LAYOUT_ALIGNMENT`.

Next-slice boundary:
- preserve controller, camera, 800×360 render architecture, Pack 001 world composition and Pack 002 hunter/Mudcrest visuals;
- preserve objective/status upper-left;
- preserve joystick lower-left;
- preserve contextual action controls on the right;
- add Settings control at top center;
- add compact minimap/navigation presentation at upper-right grounded in the current physical world;
- keep Bag/inventory control deferred and absent;
- retain safe-area handling;
- do not add unrelated gameplay systems;
- add an explicit UI/runtime verification gate before Android export.

BLOCKERS: none for the next bounded UI slice.

OPEN_QUESTIONS:
- final third-person camera distance/FOV/pitch after phone testing;
- whether 800×360 is the final internal 3D pixel resolution;
- exact body-part targeting UX in third person;
- target-device sustained performance;
- installed-footprint verification;
- final production art/animation;
- final canon names for any remaining placeholders.

IMPORTANT_DECISIONS:
- Pixel RPG is the active game;
- Monster Choice RPG: ABANDONED — DO NOT USE;
- WorldLife RPG: ABANDONED — DO NOT USE;
- Shooter RPG: ABANDONED — DO NOT USE;
- `PIXEL_RPG_VISUAL_DIRECTION.md` owns presentation decisions unless superseded by newer explicit Pixel RPG direction;
- world/presentation assets remain modular and gameplay authority remains outside visual assets;
- normal exploration remains physical and compact;
- deterministic monster-hunting domain logic remains preserved where compatible;
- total player-required footprint cap remains `2,000,000,000` bytes;
- build success does not equal phone, sustained-performance or visual-quality acceptance.

KNOWN_RISKS:
- hunter and Mudcrest are improved prototype visuals, not final production art;
- phone readability and camera feel remain unverified;
- current visual slice has not yet exercised actual body-part combat presentation in third person;
- Settings/minimap layout has not yet been implemented;
- several legacy documents still contain older Unnamed Hunt/first-person language and must not outrank current Pixel RPG authorities.

FILES_CHANGED FOR PACK 002:
- `game/assets/characters/hunter_visual.tscn`;
- `game/assets/monsters/mudcrest_visual.tscn`;
- `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
- `game/tests/pixel_rpg_visual_pack_002_runtime_test.gd`;
- `.github/workflows/pixel-rpg-prototype-android.yml`.

TESTS_RUN / TEST_RESULTS:
- workflow `35564826300`: SUCCESS;
- job `106224465180`: SUCCESS;
- Godot `4.7.2.stable` import/parse: PASS;
- Pixel RPG AppShell smoke: PASS;
- Pixel RPG prototype scene smoke: PASS;
- Pack 002 runtime gate: `24/24` PASS;
- preserved deterministic combat/anatomy/status domain tests: PASS;
- Android debug export: PASS;
- measured APK bytes: `57,980,948`;
- package ceiling `2,000,000,000` bytes: PASS;
- APK artifact upload: PASS;
- build-evidence upload: PASS.

PIXEL_RPG_VERIFIED_SOURCE: `43258bcad09040ece4b520fdbfa7dcd9a718c942`.

PIXEL_RPG_ARTIFACTS:
- APK artifact `10623901334`, name `PixelRPG-prototype-001-debug`;
- APK artifact archive size `57,469,012` bytes;
- APK artifact digest `sha256:8b7dd72dc43e54b96c12f45dadc125363851bf8caa293ab8625e5b815c20558a`;
- evidence artifact `10623886474`, name `PixelRPG-prototype-001-build-evidence`;
- evidence digest `sha256:cc38b5f11322546e71320d996a6a60927f1be60d61ff1810b22a83f128711358`.

PACK_001_DRIVE:
- folder `PIXEL_RPG_WORLD_COMPOSITION_PACK_001` — ID `1kYy8c73QHwBqkfvJGsZzWk35nZQh8PZy`;
- ZIP `PIXEL_RPG_WORLD_COMPOSITION_PACK_001.zip` — ID `19igUb95rRPJcbCFeEhP15uKHjLDmElWF`.

EXTERNAL_REFERENCES:
- original Pixel RPG visual-reference PNG Drive ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- JPEG working reference Drive ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

ASSUMPTIONS: none about phone feel, visual acceptance, sustained performance or installed footprint are promoted from CI.

UNKNOWNS: phone feel, final pixel density, visual acceptance, body-part targeting UX, final production art and sustained performance remain unverified.

READ_FIRST_NEXT_SLICE:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. `PIXEL_RPG_VISUAL_DIRECTION.md`;
6. `docs/70_handoff/PIXEL_RPG_VISUAL_PACK_002_HUNTER_MONSTER_READABILITY_2026-09-21.md`;
7. `game/scenes/prototypes/pixel_rpg_prototype_001.tscn`;
8. `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
9. `.github/workflows/pixel-rpg-prototype-android.yml`.
