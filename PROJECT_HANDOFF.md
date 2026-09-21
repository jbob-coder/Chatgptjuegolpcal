# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / COMBAT BRIDGE 001 VERIFIED / DOMAIN BOOTSTRAP NEXT
Last reconciled: 2026-09-21
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: continue the Android monster-hunting RPG as a third-person pixel-styled real-3D game, preserving verified exploration/render/domain behavior while connecting the live physical Mudcrest to current deterministic combat state without resurrecting obsolete first-person/Region-01 presentation assumptions.

CURRENT_STATE: Packs 001–004 and Combat Bridge 001 are integrated and Android-build verified. Current Pixel RPG has third-person exploration, enterable smith, Settings/minimap HUD, current-world Mudcrest OBSERVE/ENGAGE, touch-safe body-part targeting, exact Measured Cut target-group mapping and visual target locking. Bridge 001 does not start combat resources/damage yet. The old tactical graph begins roughly 54 m from its legacy monster center, so it cannot be blindly offset into the current compact 8 m ENGAGE presentation.

LAST_VERIFIED_STATE: source `977d4004625631d077856b5a49246fbf08313b64` passed workflow `35566594002`, job `106229556552`.

COMPLETED_WORK:
- third-person direct movement + independent right-side look;
- 800×360 real-3D SubViewport, nearest upscale, SpringArm camera;
- Android safe-area HUD;
- Pack 001 world composition;
- Pack 002 hunter/Mudcrest visual readability and anatomy-node mapping;
- Pack 003 Settings/minimap HUD alignment;
- Pack 004 enterable smith with real doorway/interior/collision/roof handling;
- Bridge 001 OBSERVE → ENGAGE → third-person target acquisition;
- eight selected-part target groups map to live Mudcrest visual nodes;
- target highlight/lock, touch exclusion and post-ENGAGE locomotion lock;
- no first-person or legacy-coordinate presentation entered Bridge 001;
- all prior/runtime/domain gates remain green;
- Android debug export and 2 GB package gate remain green.

IN_PROGRESS: current-world deterministic combat-domain bootstrap.

NEXT_ACTION: `PIXEL_RPG_COMBAT_BRIDGE_002_DOMAIN_BOOTSTRAP_NO_ATTACK`.

Next-slice boundary:
- preserve current third-person camera and Bridge 001 targeting;
- keep gameplay-domain source files unchanged;
- add minimal current-World compatibility for transient-control handoff;
- add collidable domain monster body alias `monster_r01_m01_0001` at the live Mudcrest position;
- after LOCK TARGET, expose explicit START COMBAT DOMAIN;
- instantiate current CombatTurnShellRuntime + MudcrestAnatomyRuntime only;
- keep actor transforms unchanged;
- expose initialized turn/resources/anatomy through current Pixel RPG UI;
- do not instantiate legacy tactical movement or hunter attack runtime;
- do not spend AP/Stamina or apply damage;
- add a dedicated runtime gate before Android export.

BLOCKERS: none for domain bootstrap. Actual tactical movement/attack integration is intentionally later because legacy spatial content is not scale-compatible with the current compact world.

OPEN_QUESTIONS:
- current Pixel RPG tactical graph dimensions/topology;
- third-person combat camera/lock-on behavior;
- how to adapt Measured Cut legality from legacy body-envelope geometry to current-world tactical positioning;
- final phone camera feel/internal pixel resolution;
- sustained performance/installed footprint;
- persistent Settings;
- full smith systems.

IMPORTANT_DECISIONS:
- Pixel RPG is active;
- Monster Choice RPG: ABANDONED — DO NOT USE;
- WorldLife RPG: ABANDONED — DO NOT USE;
- Shooter RPG: ABANDONED — DO NOT USE;
- old forced-first-person/legacy absolute presentation is superseded;
- deterministic turn/anatomy logic may be introduced separately from obsolete spatial presentation;
- no blind legacy tactical-graph offset into current compact world;
- Bag remains deferred;
- footprint cap remains `2,000,000,000` bytes.

TESTS_RUN / TEST_RESULTS:
- workflow `35566594002`: SUCCESS;
- job `106229556552`: SUCCESS;
- Godot `4.7.2.stable` parse/import: PASS;
- AppShell/prototype smokes: PASS;
- Pack 002: `24/24` PASS;
- Pack 003: `19/19` PASS;
- Pack 004: `19/19` PASS;
- Bridge 001: `32/32` PASS;
- deterministic domain suites: PASS;
- Android export: PASS;
- measured APK: `58,018,736` bytes;
- package gate: PASS.

PIXEL_RPG_VERIFIED_SOURCE: `977d4004625631d077856b5a49246fbf08313b64`.

PIXEL_RPG_ARTIFACTS:
- APK `10624343272`, archive bytes `57,502,072`, digest `sha256:105eb8ccaa40e1e863d0697d80a59b505a1613f94d3677c824d4a2fa84f9512d`;
- evidence `10623919419`, digest `sha256:cd464d72dcef1b7bc97ce8184900cbde65c9241efc6c9e056bdb815d1b488e1f`.

READ_FIRST_NEXT_SLICE:
1. `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. `START_HERE_NEW_CHAT.md`;
4. `DOCUMENTATION_INDEX.md`;
5. `PIXEL_RPG_VISUAL_DIRECTION.md`;
6. `docs/70_handoff/PIXEL_RPG_COMBAT_BRIDGE_001_THIRD_PERSON_TARGETING_PREVIEW_2026-09-21.md`;
7. `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
8. `game/scripts/gameplay/combat/hunt01_combat_turn_shell_runtime.gd`;
9. `game/scripts/gameplay/monsters/monster_01/hunt01_mudcrest_anatomy_runtime.gd`;
10. `.github/workflows/pixel-rpg-prototype-android.yml`.
