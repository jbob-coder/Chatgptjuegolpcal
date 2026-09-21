# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / VISUAL PACK 003 HUD ALIGNMENT VERIFIED / ENTERABLE SMITH NEXT
Last reconciled: 2026-09-21
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: continue the Android monster-hunting RPG as a third-person pixel-styled real-3D game, preserving the verified controller/camera/render/domain stack while replacing remaining prototype-only world and interaction limitations with bounded playable slices.

CURRENT_STATE: `pixel-rpg` is the active authority. Pack 001 world composition, Pack 002 hunter/Mudcrest readability, and Pack 003 HUD alignment are integrated and Android-build verified. Runtime now has objective/status upper-left, functional Settings top-center, a physical-world minimap upper-right, joystick lower-left, contextual actions right, Diamond Watch below the minimap, and no Bag/inventory control. The current smith/service landmark is still a solid visual shell with one monolithic blocking collision box and is therefore the next important-building rule violation to remove.

LAST_VERIFIED_STATE: source `449a409cdf812c7b36cfbb42e2298acdf5a5b082` passed Pixel RPG workflow `35565414747`, job `106226140792`.

COMPLETED_WORK:
- active Pixel RPG authority established on `pixel-rpg`;
- Monster Choice RPG, WorldLife RPG and Shooter RPG excluded from authority;
- third-person direct movement + independent right-side camera look;
- 800×360 low-resolution real-3D SubViewport with nearest upscale;
- SpringArm camera collision/occlusion handling;
- Android safe-area HUD behavior;
- Pack 001 settlement/gate/market/smith/trail composition;
- Pack 002 upgraded existing hunter silhouette and reusable Mudcrest visual mapped to current anatomy groups;
- Pack 002 runtime/anatomy visual gate: `24/24` PASS;
- Pack 003 functional Settings panel with session camera sensitivity;
- Pack 003 minimap grounded in current prototype X/Z world bounds with live hunter marker;
- Pack 003 HUD touch exclusions prevent Settings/minimap/panels from becoming camera-look input;
- Bag/inventory remains intentionally absent;
- Pack 003 HUD runtime gate: `19/19` PASS;
- deterministic combat/anatomy/status regressions remain green;
- Android debug export and 2 GB package gate remain green.

IN_PROGRESS: physical-world progression. Phone visual acceptance remains open, but no blocker exists for the first enterable-building slice.

NEXT_ACTION: `PIXEL_RPG_WORLD_PACK_004_ENTERABLE_SMITH_VERTICAL_SLICE`.

Next-slice boundary:
- preserve Packs 001–003 and all current gameplay/domain authority;
- keep the smith near its current `6.6 m × 6.4 m` footprint;
- replace the fake solid shell/front with modular walls and a real doorway;
- replace monolithic `SmithCollision` with wall-aligned collision that leaves the doorway navigable;
- create a readable interior floor and first smith-use station;
- provide camera-readable roof handling while the hunter is inside;
- preserve street alignment, world scale and low-cost modular geometry;
- do not add the full crafting/economy stack yet;
- add a dedicated enterable-smith runtime gate before Android export.

BLOCKERS: none for the bounded smith slice.

OPEN_QUESTIONS:
- final third-person camera distance/FOV/pitch after phone testing;
- whether 800×360 is final internal pixel resolution;
- exact body-part targeting UX in third person;
- target-device sustained performance;
- installed-footprint verification;
- persistent settings storage;
- final production art/animation;
- broader settlement interior plan after the first smith slice proves the pattern.

IMPORTANT_DECISIONS:
- Pixel RPG is the active game;
- Monster Choice RPG: ABANDONED — DO NOT USE;
- WorldLife RPG: ABANDONED — DO NOT USE;
- Shooter RPG: ABANDONED — DO NOT USE;
- current live Pixel RPG source/runtime evidence outranks older docs;
- important buildings must progress toward EXTERIOR → REAL ENTRANCE → INTERIOR;
- world/presentation assets remain modular and gameplay authority stays outside visual-only resources;
- deterministic monster-hunting domain logic remains preserved;
- Bag/inventory remains deferred;
- player-required footprint cap remains `2,000,000,000` bytes;
- CI/build success does not establish phone acceptance or sustained performance.

KNOWN_RISKS:
- current smith is still a blocked shell until Pack 004 lands;
- current hunter/Mudcrest/HUD are verified prototypes, not final production art;
- phone readability and camera feel remain unverified;
- third-person body-part combat presentation is not yet integrated into this exploration slice;
- legacy Unnamed Hunt/first-person material still exists in the repository and is non-authoritative.

FILES_CHANGED FOR PACK 003:
- `game/scenes/prototypes/pixel_rpg_prototype_001.tscn`;
- `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
- `game/tests/pixel_rpg_visual_pack_003_hud_runtime_test.gd`;
- `.github/workflows/pixel-rpg-prototype-android.yml`.

TESTS_RUN / TEST_RESULTS:
- workflow `35565414747`: SUCCESS;
- job `106226140792`: SUCCESS;
- Godot `4.7.2.stable` import/parse: PASS;
- Pixel RPG AppShell smoke: PASS;
- Pixel RPG prototype scene smoke: PASS;
- Pack 002 gate: `24/24` PASS;
- Pack 003 HUD gate: `19/19` PASS;
- preserved deterministic combat/anatomy/status domain tests: PASS;
- Android debug export: PASS;
- measured APK bytes: `57,993,451`;
- package ceiling `2,000,000,000` bytes: PASS;
- artifact uploads: PASS.

PIXEL_RPG_VERIFIED_SOURCE: `449a409cdf812c7b36cfbb42e2298acdf5a5b082`.

PIXEL_RPG_ARTIFACTS:
- APK artifact `10624410805`, name `PixelRPG-prototype-001-debug`;
- APK artifact archive size `57,477,219` bytes;
- APK digest `sha256:3ded02d8d6abd02011adc70f1890e4ba056b5d25cb4bf58f23bfd3c3646b433f`;
- evidence artifact `10624027197`, name `PixelRPG-prototype-001-build-evidence`;
- evidence digest `sha256:ce767c151c32f5027c9617ca0ae4cd22b1222b3a1fa522662c5d932831f0e277`.

PACK_001_DRIVE:
- `PIXEL_RPG_WORLD_COMPOSITION_PACK_001` — `1kYy8c73QHwBqkfvJGsZzWk35nZQh8PZy`.

PACK_002_DRIVE:
- `PIXEL_RPG_VISUAL_PACK_002_HUNTER_MONSTER_READABILITY` — `11qypUCiewkkWd2HJkRcB1_a5bLIApdnS`;
- verified manifest — `1o7gkZJpChxwO_PKT-FnHghvUXeGeXKlr3pR9FRwGlDs`.

EXTERNAL_REFERENCES:
- original Pixel RPG visual reference PNG — `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- JPEG working reference — `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

ASSUMPTIONS: no phone feel, visual acceptance, sustained performance or installed-footprint claims are promoted from CI.

UNKNOWNS: phone feel, final pixel density, body-part targeting UX, final production art, sustained performance and installed footprint remain unverified.

READ_FIRST_NEXT_SLICE:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. `PIXEL_RPG_VISUAL_DIRECTION.md`;
6. `docs/70_handoff/PIXEL_RPG_VISUAL_PACK_003_HUD_LAYOUT_ALIGNMENT_2026-09-21.md`;
7. `game/scripts/presentation/pixel_rpg/world_pack_001.gd`;
8. `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
9. `.github/workflows/pixel-rpg-prototype-android.yml`.
