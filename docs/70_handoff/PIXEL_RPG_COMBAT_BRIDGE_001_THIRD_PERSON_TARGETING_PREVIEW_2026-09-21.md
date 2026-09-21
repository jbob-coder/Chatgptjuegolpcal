# Pixel RPG — Combat Bridge 001 Third-Person Targeting Preview — 2026-09-21

Status: IMPLEMENTED / GODOT PARSE VERIFIED / CURRENT-WORLD TARGETING GATE VERIFIED / PACKS 002–004 PRESERVED / DOMAIN REGRESSIONS VERIFIED / ANDROID BUILD VERIFIED / PHONE ACCEPTANCE OPEN
Branch: `pixel-rpg`

## Bounded piece

`PIXEL_RPG_COMBAT_BRIDGE_001_THIRD_PERSON_TARGETING_PREVIEW`

## Verified source

`977d4004625631d077856b5a49246fbf08313b64`

Workflow `35566594002`: SUCCESS.  
Job `106229556552`: SUCCESS.

## What Bridge 001 changed

Current Pixel RPG now has a third-person target-acquisition state around the live Mudcrest:
- `OBSERVE` remains available inside 15 m;
- `ENGAGE` appears inside 8 m;
- ENGAGE opens a touch-safe target panel without switching cameras or moving actors;
- locomotion locks only after explicit ENGAGE;
- third-person right-side camera look remains available outside the targeting panel;
- exiting targeting restores the exploration joystick.

Selectable groups follow the current Measured Cut attack authority exactly:
- `HEAD`;
- `HORN_CREST`;
- `FORELEG_L`;
- `FORELEG_R`;
- `HINDLEG_L`;
- `HINDLEG_R`;
- `DORSAL_PLATES`;
- `TAIL`.

`GENERAL_TORSO` remains the anatomy/body fallback and is not falsely exposed as a selected-part Measured Cut target.

Each selector entry maps to the actual Pack 002 Mudcrest visual node. Selection applies a presentation-only highlight; LOCK TARGET records the selected visual target only.

## Explicit non-goals preserved

Bridge 001 does NOT:
- invoke the old forced-first-person encounter trigger;
- use old Region-01 absolute encounter coordinates;
- instantiate `CombatTurnShellRuntime`;
- instantiate `MudcrestAnatomyRuntime`;
- spend AP or Stamina;
- apply damage;
- move/teleport the Mudcrest;
- claim full combat integration.

## Runtime files

Modified:
- `game/scenes/prototypes/pixel_rpg_prototype_001.tscn`;
- `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
- `.github/workflows/pixel-rpg-prototype-android.yml`.

Added:
- `game/tests/pixel_rpg_combat_bridge_001_targeting_preview_test.gd`.

No file under `game/scripts/gameplay/` changed.

## Verification evidence

PASS:
- Godot `4.7.2.stable` import/parse;
- AppShell smoke;
- prototype scene smoke;
- Pack 002 runtime gate: `24/24`;
- Pack 003 HUD gate: `19/19`;
- Pack 004 enterable-smith gate: `19/19`;
- Combat Bridge 001 targeting gate: `32/32`;
- all preserved deterministic combat/anatomy/status domain suites;
- Android debug export;
- package-size ceiling;
- artifact uploads.

Bridge gate verifies:
- current-world OBSERVE/ENGAGE thresholds;
- third-person camera stays authoritative;
- no legacy FirstPersonCamera exists;
- Hunter and Mudcrest transforms are unchanged by ENGAGE;
- exact target-group metadata/order;
- visual-node mapping;
- target highlight/clear behavior;
- target lock state;
- no combat/anatomy runtime starts;
- targeting touch exclusion from camera look;
- right-side look remains available outside controls;
- camera can rotate during targeting;
- locomotion locks after ENGAGE;
- exit restores exploration controls.

Measured exported APK:
`58,018,736` bytes.

Package ceiling:
`2,000,000,000` bytes.

Artifacts:
- APK `10624343272` — `PixelRPG-prototype-001-debug`;
  - artifact archive bytes: `57,502,072`;
  - digest: `sha256:105eb8ccaa40e1e863d0697d80a59b505a1613f94d3677c824d4a2fa84f9512d`;
- evidence `10623919419` — `PixelRPG-prototype-001-build-evidence`;
  - artifact archive bytes: `28,344`;
  - digest: `sha256:cd464d72dcef1b7bc97ce8184900cbde65c9241efc6c9e056bdb815d1b488e1f`.

## Compatibility finding after verification

The legacy Hunt-01 authored tactical graph is not merely translated from the current compact world:
- legacy N01 is `(-70, 4, -238)`;
- legacy Mudcrest body-force center is `(-18, 4, -252)`;
- N01 begins roughly 54 m from that center;
- the current Pixel RPG ENGAGE preview begins inside 8 m.

Therefore blindly offsetting the old graph into the compact Pixel RPG world would preserve old IDs but not current physical scale/readability. Direct reuse would be misleading.

The current deterministic turn shell/anatomy logic can still be introduced separately from old tactical movement/attack positioning.

## Next bounded package

`PIXEL_RPG_COMBAT_BRIDGE_002_DOMAIN_BOOTSTRAP_NO_ATTACK`

Boundary:
- preserve Bridge 001 third-person targeting;
- add a minimal current-World compatibility script for transient-control handoff only;
- add a collidable domain monster body alias with current authoritative ID `monster_r01_m01_0001` at the live Mudcrest position while keeping the Pack 002 visual untouched;
- after LOCK TARGET, expose an explicit START COMBAT DOMAIN action;
- instantiate and initialize current `Hunt01CombatTurnShellRuntime` and `Hunt01MudcrestAnatomyRuntime` against the live Pixel RPG World;
- keep the Hunter and Mudcrest visual transforms unchanged;
- keep the third-person camera current;
- do not instantiate legacy tactical movement or hunter attack runtimes yet;
- do not spend AP/Stamina or apply damage in this slice;
- expose the initialized turn/resource/anatomy state through the current Pixel RPG targeting UI;
- preserve all gameplay-domain source files unchanged;
- add a dedicated runtime gate before Android export.

## Abandoned authority exclusions

- Monster Choice RPG: ABANDONED — DO NOT USE.
- WorldLife RPG: ABANDONED — DO NOT USE.
- Shooter RPG: ABANDONED — DO NOT USE.
