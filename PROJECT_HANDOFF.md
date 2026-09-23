# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / FIRST-PERSON + STARTING AREA ASSET PACK 001 BUILD-VERIFIED / DEVICE VERIFICATION PENDING
Last reconciled: 2026-09-23  
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: continue from the verified Starting Area Asset Pack 001 checkpoint. Next bounded slice is `PIXEL_RPG_STARTING_AREA_ASSET_PACK_002_SMITH_VISUAL`: upgrade only the enterable smith presentation while preserving its doorway, roof-visibility nodes, UseAnchor, collisions, first-person camera, targeting/combat and state ownership.

CREATOR_AUTHORITY: FIRST-PERSON exploration is authoritative. Older third-person statements are STALE / SUPERSEDED for current presentation; historical third-person builds remain historical evidence only.

## Latest verified checkpoint — Starting Area Asset Pack 001

- source SHA: `51b7262264f3460842021f0a9edf874413d301ae`;
- workflow run: `35924324641` — SUCCESS;
- job: `107395641354` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.8-starting-area-assets-001`;
- APK: `PixelRPG-starting-area-assets-001-debug.apk`;
- APK size: `58,099,610` bytes;
- APK SHA-256: `f1320e91d1a0163e74f8ca0924be9dd741a33c1f2bde3110d1b187a598baf6fa`;
- APK artifact ID: `10777838822`;
- APK artifact digest: `40d17d92ef8eec4baf287b6dca5bb3bb5d2194ac7738cb7925cb03242fdae6eb`;
- build-evidence artifact ID: `10777694345`;
- build-evidence artifact digest: `c785004b82d847bbca5a8145fa56d459fe831cf7c6124e929de2e15ee21f56dd`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35924324641_starting-area-assets-001/`
- folder ID: `10uXMDW0Jy13ExHyI86oxbuoNaYHGdzGI`;
- APK ID: `1wTTuw7NAfyB92eFv0COIj8btLg-_iwz8`;
- BuildIdentity JSON ID: `1gz_bTBWwz_T2hBcCvY73CGtexCbbX8zc`;
- BuildIdentity Markdown ID: `1g6BLUFATiYb9xSG0LcdGKyMqRv8unPLz`;
- raw CI evidence ID: `1wzSVCxClGP1Z1ie851X4uUe1RcrQ4cPC`;
- device checklist ID: `1fgNcnQqr0bjae9jEMOiJcfLRcNbh_jXV`.

Implemented in this checkpoint:
- reusable `settlement_gate_01.tscn`;
- reusable `market_stall_01.tscn`;
- reusable `service_clutter_01.tscn`;
- reusable `signpost_01.tscn`;
- reusable `lantern_post_01.tscn`;
- `WorldPack001` now instantiates those assets behind the existing builder API;
- existing world placement/collision ownership remains in the host;
- first-person camera, smith, targeting, combat bootstrap and state ownership were not moved.

Verification:
- import/parse PASS;
- AppShell/prototype smoke PASS;
- first-person gate PASS;
- Visual Pack 002/003 PASS;
- enterable smith gate PASS;
- Combat Bridge 001/002 PASS;
- State Ownership 001 PASS;
- world-base decomposition parity PASS;
- Starting Area Asset Pack 001 gate PASS;
- deterministic combat/anatomy/status regression set PASS;
- Android debug export and package-size ceiling PASS.

Physical phone install, touch feel, visual acceptance, sustained FPS/heat and installed footprint remain NOT VERIFIED.


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
- folder ID: `1PODIl1OXJ5Rpz5CqjmueEfau-HLXasci`;
- APK ID: `1PGcW_okc1owdvuKxZuMNboICcRBoYKOd`;
- BuildIdentity JSON: `18YieqdZBvYhzGshzBpFV2IJRQx_kZIu8`;
- BuildIdentity Markdown: `1XLkjc9ZtIKMXpLvTrx6C7uzJaQ15YYJU`;
- raw CI evidence ZIP: `1xnZswS624jJ4DzsJh3KlfQFJn3Lb7sub`;
- device checklist: `1PjOBSiRyfhsqEn_a3eVkdw_jibWZ7bVF`.

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

NEXT_ACTION: `PIXEL_RPG_STARTING_AREA_ASSET_PACK_002_SMITH_VISUAL` — replace/upgrade only smith visual internals while preserving `WorldPack004EnterableSmith` interaction/collision contracts and all verified first-person/combat/state behavior.
