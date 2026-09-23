# PROJECT HANDOFF — Pixel RPG

Status: PIXEL RPG ACTIVE / FIRST-PERSON + STARTING AREA ASSET PACK 005 GATE WARDEN BUILD-VERIFIED / DEVICE VERIFICATION PENDING
Last reconciled: 2026-09-23  
Branch: `pixel-rpg`

CURRENT_OBJECTIVE: continue from verified Starting Area Asset Pack 005. Next bounded slice is `PIXEL_RPG_STARTING_AREA_ASSET_PACK_006_SETTLEMENT_BUILDING_DETAILS`: improve only the two generic settlement building shells with reusable presentation-only facade/roof/detail assets while preserving their current collision bodies, positions, sizes, first-person controls, smith, targeting/combat and state ownership.

CREATOR_AUTHORITY: FIRST-PERSON exploration is authoritative. Older third-person statements are STALE / SUPERSEDED for current presentation; historical third-person builds remain historical evidence only.

## Latest verified checkpoint — Starting Area Asset Pack 005 Gate Warden Visual

- source SHA: `7c27495eec5ddc53d42d596bbe1c3a48dad799a8`;
- workflow run: `35926969130` — SUCCESS;
- job: `107404261711` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.12-starting-area-assets-005-gate-warden`;
- APK: `PixelRPG-starting-area-assets-005-gate-warden-debug.apk`;
- APK size: `58,189,449` bytes;
- APK SHA-256: `cb215fc88ddb76f15f0fae6edb34243d220b9b387e56063019d67fa0437e9699`;
- APK artifact ID: `10779836686`;
- APK artifact digest: `855c1657bb5f714d60d127474ae3963da8b6123a148c31548513799a5ee68d5f`;
- build-evidence artifact ID: `10779642325`;
- build-evidence digest: `ee47cd37f6e7ebf242024bb41a06aa8b3244b602673097aaeee5acfd8a7a6df4`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35926969130_starting-area-assets-005-gate-warden/`
- folder ID: `13M9eiLedJQ5es3NGJd6XdmckLmdrWooJ`;
- APK ID: `1GFItfyM2yala4xYQaifqLyX8aQxtgQOb`;
- BuildIdentity JSON ID: `1C5j-RovCh_c9RXqcEvuOk2Fvu05gXQzj`;
- BuildIdentity Markdown ID: `10ARaoO7Sb2C944U_BumGYDHIvoQDpw_S`;
- raw CI evidence ID: `18wSmXn6u3EDzQ9aj2NQEGkd_mbFP5dMy`;
- canonical device checklist ID: `1pdPQexPApcqv681dGR6AtiQfxlqO2nsQ`.
- Note: Drive contains a second same-named checklist from concurrent archival activity; it was not deleted.

Implemented and verified:
- reusable `gate_warden_visual_01.tscn`;
- visual is presentation-only and adds no NPC collision/AI authority;
- `GateWarden` anchor remains exactly `Vector3(-2.6, 0.0, -6.2)`;
- TALK button/prompt and existing tracks/north-gate field-note result remain unchanged;
- first-person camera, Pack 004 smith, Mudcrest anchor, targeting/combat bootstrap and State Ownership 001 remain preserved;
- all prior asset/runtime/domain gates, Android export and package-size ceiling passed.

Physical-device visual acceptance, touch feel, sustained performance/heat and installed footprint remain NOT VERIFIED.

## Latest verified checkpoint — Starting Area Asset Pack 004 Host Environment Reuse

- source SHA: `8d896285c04b3a55da5836b4e38d55684788ab1e`;
- workflow run: `35926481868` — SUCCESS;
- job: `107402676378` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.11-starting-area-assets-004-host-environment`;
- APK: `PixelRPG-starting-area-assets-004-host-environment-debug.apk`;
- APK size: `58,176,659` bytes;
- APK SHA-256: `55e67fbca0ebc1956b05074a956e8baaf707bcfe0350e37aab635aaae707f12f`;
- APK artifact ID: `10779695702`;
- APK artifact digest: `0eae02f2bb571cbc890c7a911ae9f5f46da27e439549037da90fcc5d01a237eb`;
- build-evidence artifact ID: `10778982480`;
- build-evidence digest: `17bdd7971311185157b14b24365d0a928c12ee327c3f400bba547c50338e2367`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35926481868_starting-area-assets-004-host-environment/`
- folder ID: `1AgOfPLPerQ-lWeMDQczJgAhdQQlOerr5`;
- APK ID: `1krztuQZnmioc2a_e8gFwWAT6JR-yn8cI`;
- BuildIdentity JSON ID: `1qsGypUWP_CFg7SwHWKbm1Kdjlm-WgyAK`;
- BuildIdentity Markdown ID: `1eWw8OL2bo4K63-qXN2UYZfJWvMapCt5D`;
- raw CI evidence ID: `11a_fWLfY3aLOfAOY9y5S-JclmQ5BY2fi`;
- canonical device checklist ID: `1dnZsFBehlj0FxAaw4mhQXXcXy-hHW3iB`.

Implemented and verified:
- the ten host-built trail trees now instantiate the reusable `trail_pine_01.tscn` visual while keeping their exact world positions;
- `TrailRockL` keeps its `StaticBody3D`, collision layer/mask and exact `2.4 × 1.5 × 2.0` `BoxShape3D`, while its visible mesh is replaced by `trail_rock_visual_01.tscn`;
- first-person camera, Pack 004 smith, Mudcrest anchor, targeting/combat bootstrap and State Ownership 001 remain preserved;
- all prior runtime gates, deterministic combat/anatomy/status regressions, Android export and package-size ceiling passed.

Physical-device install, visual acceptance, touch feel, sustained FPS/heat and installed footprint remain NOT VERIFIED.

## Latest verified checkpoint — Starting Area Asset Pack 003 Environment Dressing

- source SHA: `3b36ec42556d5603dc02ee1b07080c10670c2648`;
- workflow run: `35925800678` — SUCCESS;
- job: `107400485383` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.10-starting-area-assets-003-environment`;
- APK: `PixelRPG-starting-area-assets-003-environment-debug.apk`;
- APK size: `58,159,506` bytes;
- APK SHA-256: `cfbeb649b1f7cc62279aef647c15cba924501f1a0edf4398242a66c19b0897b7`;
- APK artifact ID: `10778896861`;
- APK artifact digest: `c0ad67e554be95efa43cb8d2be1b8296d05be9b1e9cf130e7a631fc6b0ad904e`;
- build-evidence artifact ID: `10779325700`;
- build-evidence digest: `fd9a27fa2a2c1313495885a49d1e3e0fde4705ed1b7cb5f3b4392b12a40c8274`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35925800678_starting-area-assets-003-environment/`
- folder ID: `1MroMvgM8a0j0bK1VvRH-6yehMqkYblnh`;
- APK ID: `17Bq6x2mzuFlLssUIdvSRWCChINe-DUpq`;
- BuildIdentity JSON ID: `1JnFgmM0VA9B9Cp7DQskNGVYjRlMrkqNE`;
- BuildIdentity Markdown ID: `1gArFsYoKXecWHGrzSUM_rSvmz02aoGQ8`;
- raw CI evidence ID: `1m6gKgn11Y28ji5f6LeBLJMy8QjbheYXu`;
- device checklist ID: `1E-TJJCBb5kqd-OhFk49PR4tB-X_lU5g8`.

Implemented:
- reusable fence asset scene;
- reusable banner-post asset scene;
- reusable vegetation-cluster asset scene;
- reusable rock-cluster asset scene;
- existing WorldPack001 builder names/caller transforms preserved;
- assets remain presentation-only with no new gameplay collision.

Verified:
- import/parse and app/prototype smoke;
- first-person and HUD gates;
- Pack 004 smith physics/interaction and Smith Visual Pack 002;
- Combat Bridge 001/002;
- State Ownership 001;
- world-base decomposition parity;
- Starting Area Asset Packs 001/002/003;
- deterministic combat/anatomy/status regressions;
- Android export and package-size ceiling.

Physical-device visual acceptance, touch feel, sustained performance/heat and installed footprint remain NOT VERIFIED.

## Latest verified checkpoint — Starting Area Asset Pack 002 Smith Visual

- source SHA: `efd16b123ac41c2bcb1faf081e11dcb9f808f510`;
- workflow run: `35925218965` — SUCCESS;
- job: `107398569689` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- version: `0.9-starting-area-assets-002-smith`;
- APK: `PixelRPG-starting-area-assets-002-smith-debug.apk`;
- APK size: `58,129,579` bytes;
- APK SHA-256: `f037aa4a0f945d500b8dbfd91a1ce4437884ddbc604f7c83a5aef8271088d498`;
- APK artifact ID: `10779151178`;
- APK artifact digest: `b31c3bc97e13d2b0e79506394fdb5c4ab4afcf107db4f8c2236db573e26e929f`;
- build-evidence artifact ID: `10778454296`;
- build-evidence digest: `7cde1fa37fb76def892f746de2d8d572e78f6c915d8f7310c50324e5ba66fe2e`.

Google Drive immutable folder:
`Pixel RPG/Builds/First Person/2026-09-23_run-35925218965_starting-area-assets-002-smith/`
- folder ID: `1Ql4bDhi1_mAbF714IhwKo4NNGs-Y4uIf`;
- APK ID: `1iVq0udFb7e3mNCO5o5GqZhITdVwtObES`;
- BuildIdentity JSON ID: `1HfaM_mCTK5iFf4LODQ99BsYZ_fZdkk8h`;
- BuildIdentity Markdown ID: `1jVQLtb6NLppR2Eprh39kxlKSv8cONFGC`;
- raw CI evidence ID: `16ddWis1BIHdxZ9bB_JCceECkpaDReUyk`;
- device checklist ID: `1pE_7nwDa8i6gds-Tjc-IluX9_TKGKOCn`.

Implemented:
- reusable forge detail scene;
- reusable anvil/workstation detail scene;
- reusable bench/tool detail scene;
- reusable smith frontage detail scene;
- Pack 004 keeps its proven structural, collision, doorway, anchor and roof nodes;
- new details are presentation-only under `SmithVisualDetails`.

Verified:
- import/parse and app/prototype smoke;
- original Pack 004 doorway/physics/interaction gate;
- new Asset Pack 002 smith visual gate;
- first-person, Packs 001/002/003, Combat Bridge 001/002, State Ownership 001 and world-base decomposition parity;
- deterministic combat/anatomy/status regressions;
- Android export and package-size ceiling.

Physical-device install, visual acceptance, touch feel, sustained performance/heat and installed footprint remain NOT VERIFIED.


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

HISTORICAL STATE OWNERSHIP BUILD-VERIFIED SOURCE:
- source SHA: `9b84000ca343dff0d4baa86accb024b9ebac4fb8`;
- workflow run: `35917375696` — SUCCESS;
- job: `107372326343` — SUCCESS;
- Godot: `4.7.2.stable.official.ed1daf0bf`;
- APK: `PixelRPG-state-ownership-001-debug.apk`;
- APK size: `58,052,621` bytes;
- APK SHA-256: `531498c45c6d2293d5d38d646ca277ca7d0968b43caedb390ed3d3806578c532`;
- APK artifact ID: `10775601339`;
- build-evidence artifact ID: `10775168943`.

HISTORICAL STATE OWNERSHIP GOOGLE DRIVE BUILD:
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

NEXT_ACTION: `PIXEL_RPG_STARTING_AREA_ASSET_PACK_006_SETTLEMENT_BUILDING_DETAILS` — add reusable presentation-only detail layers to the two generic settlement building shells while keeping their existing colliders/positions/sizes authoritative.
