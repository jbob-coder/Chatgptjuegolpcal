# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / PACKS 001–004 VERIFIED / THIRD-PERSON TARGETING BRIDGE NEXT
Last reconciled: 2026-09-21
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: continue the Android monster-hunting RPG as a third-person pixel-styled real-3D game, preserving verified exploration/render/domain behavior while connecting the live physical Mudcrest to a current third-person body-part targeting presentation.

CURRENT_STATE: `pixel-rpg` is the active authority. Pack 001 world composition, Pack 002 hunter/Mudcrest readability, Pack 003 HUD alignment, and Pack 004 enterable smith are integrated and Android-build verified. The smith now satisfies the first important-building EXTERIOR → REAL ENTRANCE → INTERIOR pattern. The live Mudcrest remains observation-only in the Pixel RPG prototype; older Hunt-01 domain systems exist but their old presentation trigger assumes legacy Region-01 coordinates and forces first-person, so it must not be wired directly into the current prototype.

LAST_VERIFIED_STATE: source `47ade9413fe24f15453ee6fb0135b270b2d3ce8d` passed workflow `35566025131`, job `106227900327`.

COMPLETED_WORK:
- third-person direct movement + independent right-side look;
- 800×360 real-3D SubViewport with nearest upscale and SpringArm camera;
- Android safe-area HUD;
- Pack 001 compact settlement/gate/market/smith/trail composition;
- Pack 002 upgraded existing hunter and reusable Mudcrest visual mapped to nine anatomy groups;
- Pack 003 top-center Settings, upper-right physical-world minimap, Bag deferred/absent;
- Pack 004 reusable enterable smith with 6.6×6.4 m footprint, 1.8 m × 2.4 m doorway, segmented collision, interior station geometry and roof visibility handling;
- Pack 004 bounded smith USE interaction without claiming full crafting;
- Packs 002–004 runtime gates and deterministic combat/anatomy/status regressions green;
- Android debug export and 2 GB package gate green.

IN_PROGRESS: current-world monster-hunting presentation bridge.

NEXT_ACTION: `PIXEL_RPG_COMBAT_BRIDGE_001_THIRD_PERSON_TARGETING_PREVIEW`.

Next-slice boundary:
- preserve current third-person camera and live actor transforms;
- do not invoke the obsolete forced-first-person Region-01 encounter trigger;
- add a current-world ENGAGE/target-acquisition state near the live Mudcrest;
- expose current Mudcrest visual target groups in a touch-safe body-part targeting panel;
- map each selectable target to the actual Pack 002 visual node;
- exclude targeting UI from right-side camera-look capture;
- do not spend AP/Stamina or apply damage yet;
- keep deterministic combat/anatomy domain files unchanged;
- add an explicit targeting-bridge runtime gate before Android export.

BLOCKERS: none for the targeting-preview slice. Full combat-domain adaptation to the current map requires a later coordinate/presentation adapter because legacy tactical runtime data uses old absolute Region-01 coordinates.

OPEN_QUESTIONS:
- final third-person camera distance/FOV after phone testing;
- final internal pixel resolution;
- final third-person combat camera/lock-on behavior;
- target-device sustained performance;
- installed-footprint verification;
- persistent Settings storage;
- full smith NPC/crafting/economy;
- safe adaptation strategy for legacy absolute tactical-node coordinates.

IMPORTANT_DECISIONS:
- Pixel RPG is the active game;
- Monster Choice RPG: ABANDONED — DO NOT USE;
- WorldLife RPG: ABANDONED — DO NOT USE;
- Shooter RPG: ABANDONED — DO NOT USE;
- mandatory first-person combat is superseded;
- important buildings progress toward EXTERIOR → REAL ENTRANCE → INTERIOR;
- deterministic combat/anatomy code remains authority where compatible, but obsolete presentation/coordinates are not authority;
- Bag/inventory remains deferred;
- player-required footprint cap remains `2,000,000,000` bytes;
- CI success does not establish phone visual/performance acceptance.

TESTS_RUN / TEST_RESULTS:
- workflow `35566025131`: SUCCESS;
- job `106227900327`: SUCCESS;
- Godot `4.7.2.stable` parse/import: PASS;
- AppShell smoke: PASS;
- prototype scene smoke: PASS;
- Pack 002 gate: `24/24` PASS;
- Pack 003 gate: `19/19` PASS;
- Pack 004 gate: `19/19` PASS;
- preserved deterministic domain suites: PASS;
- Android export: PASS;
- measured APK: `58,006,217` bytes;
- 2 GB package gate: PASS.

PIXEL_RPG_VERIFIED_SOURCE: `47ade9413fe24f15453ee6fb0135b270b2d3ce8d`.

PIXEL_RPG_ARTIFACTS:
- APK `10623673945`, archive bytes `57,489,727`, digest `sha256:723fdff70f19a442a365e97f260953507b348b563e8727ac56dbd6c7b10e2ca0`;
- evidence `10623923310`, digest `sha256:7f51d216c21247ad4064e9826872bc8265c68a23eeef9599f822de38f2647076`.

ASSUMPTIONS: no phone feel, visual acceptance, sustained performance or installed-footprint claims are promoted from CI.

UNKNOWNS: phone feel, final pixel density, final targeting UX, full current-map combat bridge, production art, sustained performance and installed footprint remain unverified.

READ_FIRST_NEXT_SLICE:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. `PIXEL_RPG_VISUAL_DIRECTION.md`;
6. `docs/70_handoff/PIXEL_RPG_WORLD_PACK_004_ENTERABLE_SMITH_VERTICAL_SLICE_2026-09-21.md`;
7. `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
8. `game/assets/monsters/mudcrest_visual.tscn`;
9. `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd`;
10. `.github/workflows/pixel-rpg-prototype-android.yml`.
