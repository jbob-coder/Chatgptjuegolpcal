# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / FIRST-PERSON + COMBAT BRIDGE 002 + STATE OWNERSHIP 001 BUILD-VERIFIED / DEVICE VERIFICATION PENDING  
Last reconciled: 2026-09-23  
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: continue Pixel RPG from the verified first-person/current-world combat baseline with explicit state ownership boundaries. State Ownership Contract 001 is complete and build-verified. Next is the first mechanical God-script decomposition sub-slice, world-base extraction only.

CREATOR_AUTHORITY: FIRST-PERSON exploration is authoritative. Older third-person statements are STALE / SUPERSEDED for current presentation; historical third-person builds remain historical evidence only.

CURRENT VERIFIED PLAYABLE/PRESENTATION BASELINE:
- existing Hunter CharacterBody3D/controller and collision;
- direct left-stick movement + independent right-side look;
- active Camera3D directly under eye-height CameraPitch;
- third-person Hunter visual hidden in normal exploration;
- legacy SpringArm retained inert for compatibility/audit only;
- first-person FOV 70° and pitch clamp -78°..+78°;
- 800×360 low-resolution 3D SubViewport + nearest scaling;
- current world/environment, interactions, enterable smith and HUD;
- Bridge 001 OBSERVE/ENGAGE/body-part targeting;
- Bridge 002 explicit START COMBAT DOMAIN no-attack bootstrap;
- deterministic turn/anatomy/status foundations preserved.

STATE OWNERSHIP 001:
- executable schema: `pixel_rpg.state_ownership.v1`;
- code: `game/scripts/state/pixel_rpg_state_ownership_contract.gd`;
- technical contract: `docs/50_technical/persistence/PIXEL_RPG_STATE_OWNERSHIP_CONTRACT.md`;
- current world transforms are world-runtime ownership;
- combat round/resources are CombatTurnShellRuntime ownership;
- Mudcrest anatomy integrity/dedupe is MudcrestAnatomyRuntime ownership;
- input/camera/targeting/context/bootstrap latches are transient control/orchestration only;
- HUD/highlights/derived display are presentation only;
- broad persistence remains unimplemented;
- future durable state is split across bounded owner namespaces, not a giant singleton.

LATEST BUILD-VERIFIED SOURCE:
- source SHA: `9b84000ca343dff0d4baa86accb024b9ebac4fb8`;
- workflow run: `35917375696` — SUCCESS;
- job: `107372326343` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- APK: `PixelRPG-state-ownership-001-debug.apk`;
- APK size: `58,052,621` bytes;
- APK SHA-256: `531498c45c6d2293d5d38d646ca277ca7d0968b43caedb390ed3d3806578c532`;
- APK artifact ID: `10775601339`;
- build-evidence artifact ID: `10775168943`.

GOOGLE DRIVE IMMUTABLE BUILD:
- path: `Pixel RPG/Builds/First Person/2026-09-23_run-35917375696_state-ownership-001/`;
- folder ID: `1qoO5FFzkUdnFm-ksFhUKPpU9ZlMbwMMf`;
- APK ID: `10VDC-3g2VqiDkfx8r_Kvs6HRiPcFWZvq`;
- BuildIdentity JSON: `1hnTyW3XsDr8ktNtL-NdI1li0LoeNipVw`;
- BuildIdentity Markdown: `1ZsKoqVLpMdUL8wstaKY15KXcz1muxps_`;
- raw CI evidence ZIP: `17t-ZHb0jRMrwicKy180i6oziduV-r9hb`;
- device checklist: `1RHN5Jes9IZfRjAywdhbpfTnufAM6fxJx`.

TEST_RESULTS:
- import/parse PASS;
- AppShell smoke PASS;
- prototype scene smoke PASS;
- first-person realignment `12/12` PASS;
- Visual Pack 002 `24/24` PASS;
- Visual Pack 003 HUD `19/19` PASS;
- World Pack 004 enterable smith `19/19` PASS;
- Combat Bridge 001 targeting `34/34` PASS;
- Combat Bridge 002 no-attack bootstrap `28/28` PASS;
- State Ownership Contract 001 `70/70` PASS;
- preserved deterministic turn shell `76/76` PASS;
- preserved Hunter attack `64/64` PASS;
- preserved Mudcrest anatomy `20/20` PASS;
- preserved status application `57/57` PASS;
- preserved status timing `40/40` PASS;
- Android debug export/signature verification PASS;
- package-size ceiling PASS.

APK_SIZE: no padding was added. The small package remains dominated by Godot Android runtime libraries; real production texture/audio/animation content is still limited.

TRUTH_BOUNDARY: CI/headless/build evidence is complete. Physical Android install, touch feel, visual acceptance, sustained FPS/heat and installed footprint remain NOT VERIFIED.

KNOWN COMPATIBILITY RISK: the verified legacy Hunt01 tactical movement/attack legality still references legacy Region-01 coordinates/body envelope. Do not wire it directly into the compact live Pixel RPG world or teleport the Hunter. A later combat slice needs an explicit current-world spatial adapter.

NEXT_ACTION: `PIXEL_RPG_PROTOTYPE_DECOMPOSITION_001_WORLD_BASE` — issue #6. Extract only world-base construction mechanically, preserve coordinates/behavior, keep current owners intact, and verify parity before any later controller/HUD extraction.
