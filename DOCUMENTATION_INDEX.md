# Pixel RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / FIRST-PERSON + BRIDGE 002 + BUILDIDENTITY V1 CREATOR AUTHORITY
Last reconciled: 2026-09-23
Branch: `pixel-rpg`

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. this index
5. `PIXEL_RPG_VISUAL_DIRECTION.md`
6. newest relevant Pixel RPG handoff under `docs/70_handoff/`
7. root `README.md`
8. `game/README.md`
9. exact owning package/source/data/tests/static gates/workflow.

Fetch live branch HEAD before reading and re-check it afterward. Keep documentation HEAD distinct from the last source SHA actually proven by build evidence.

## Current visual/presentation authority

`PIXEL_RPG_VISUAL_DIRECTION.md` owns:
- first-person eye-height exploration camera;
- pixel-styled 3D presentation;
- Android left-stick + independent right-look control layout without turning the game into a firearm shooter;
- physical exploration through compact connected spaces;
- same-world monster combat without legacy camera/coordinate resurrection;
- safe-area responsive HUD target;
- bounded, expandable world scope.

Conflicting older third-person, aerial/isometric-primary, smooth illustrated-realism, and standalone Shooter RPG passages are subordinate for current presentation decisions. Historical evidence remains historical.

## Visual reference authority

Google Drive:
- `Pixel RPG - Visual Reference ORIGINAL.png` — ID `1IcZDQAEPUVpSpvJsvaVZsLqAA0RJmaxp`;
- `Pixel RPG - Visual Reference.jpg` — ID `1NYHm1Y_CPQOb22ZQsF9e45T5uFV3Mh_b`.

The image is a direction/composition reference. Visible names, quest text, counts and labels are placeholders unless separately approved.

## Current Pixel RPG implementation map

Prototype presentation:
- scene: `game/scenes/prototypes/pixel_rpg_prototype_001.tscn`;
- controller/world script: `game/scripts/presentation/pixel_rpg/pixel_rpg_prototype_001.gd`;
- app entry: `game/scripts/app_shell.gd`;
- project config: `game/project.godot`;
- Android export: `game/export_presets.cfg`;
- CI: `.github/workflows/pixel-rpg-prototype-android.yml`.

Implemented presentation layer includes:
- 800×360 low-resolution 3D SubViewport + nearest stretch;
- per-vertex/nearest primitive material treatment;
- legacy SpringArm chase camera exists in older evidence; creator-authoritative current work bypasses it for active first-person camera;
- responsive safe-area HUD positioning;
- settlement gate/street/trail prototype;
- Gate Warden interaction;
- distant monster observation proxy;
- Diamond Watch prototype panel.

Current state/persistence ownership authority:
- `game/scripts/state/pixel_rpg_state_ownership_contract.gd`;
- `docs/50_technical/persistence/PIXEL_RPG_STATE_OWNERSHIP_CONTRACT.md`.

Existing reusable monster-hunting runtime remains primarily under `game/`:
- generic combat/status/outcome under `game/scripts/gameplay/combat/`;
- encounter logic under `game/scripts/gameplay/encounter/`;
- Monster-01 anatomy/content under `game/scripts/gameplay/monsters/monster_01/`;
- tracking under `game/scripts/gameplay/tracking/`;
- tests under `game/tests/` and `tests/quality/hunt01/`.

## Shooter separation

The later standalone first-person Shooter RPG is not Pixel RPG authority. Its `shooter_game/` runtime, first-person 115° camera, firearm-first progression, wall-jump implementation and shooter APK evidence must not be merged into Pixel RPG unless the user explicitly chooses a specific reusable element later.

The `shooter-rpg` ref is still physically present because the connected GitHub actions do not expose branch deletion. It is non-authoritative.

## Storage authority

Hard player-required installed/runtime footprint: ≤ `2,000,000,000` bytes.

Required runtime downloads count. Development-only repo/source/CI files do not. APK/AAB size is package evidence only.

## First-person checkpoint — current exact build-verified baseline

Source: `0a6e54ecdbc1c81043b6db5dd0f35e429cbb4ee9`.
Workflow `35910688037`: SUCCESS.
Job `107349457171`: SUCCESS.
Godot: `4.7.2.stable.official.ed1daf0bf`.

APK: `PixelRPG-first-person-001-debug.apk`
Size: `58,023,057` bytes.
SHA-256: `d0ea93980e2e617d056a696183c6eced2d0df34cf3a6240e244f3524ced8e012`.
Drive APK ID: `1NwWuvKS_cXuz5o22r5taeTadnlgUiIYB`.
Drive build folder ID: `1REno22ZSIUQnKxOB6pcZRaYS6W0aXFa1`.

This supersedes the older third-person build as the current presentation/build baseline. It does not establish physical-phone runtime, visual-quality acceptance, sustained performance/heat, or installed-footprint compliance.

## Historical pre-first-person verified baseline

Source:\n`977d4004625631d077856b5a49246fbf08313b64`.

Workflow `35566594002`: SUCCESS.\nJob `106229556552`: SUCCESS.

Artifacts:
- APK `10624343272`;
- evidence `10623919419`.

Passed:
- Godot `4.7.2.stable` import/parse;
- AppShell smoke;
- prototype scene smoke;
- Pack 002 runtime/anatomy-mapping gate `24/24`;
- Pack 003 HUD runtime gate `19/19`;
- Pack 004 enterable-smith runtime gate `19/19`;
- Combat Bridge 001 targeting gate `32/32`;
- selected deterministic combat/anatomy/status regressions;
- Android debug export;
- package-size ceiling;
- artifact uploads.

Latest specialized handoff:
- `docs/70_handoff/PIXEL_RPG_FIRST_PERSON_REALIGNMENT_2026-09-23.md`.

Historical Bridge 001 handoff remains evidence for targeting behavior but its third-person presentation wording is superseded.

Master work register:
- `docs/00_project/PIXEL_RPG_MASTER_WORK_REGISTER_2026-09-21.md`;
- GitHub master tracker: issue #27.

## CI trigger policy

Pixel RPG Android CI runs for `game/**` changes or workflow-file changes. Documentation-only updates should not trigger a full Android export.

## Verification boundary

`PIXEL_RPG_VISUAL_DIRECTION_DESIGNED = YES`
`PIXEL_RPG_REFERENCE_IMAGE_SAVED = YES`
`PIXEL_RPG_THIRD_PERSON_PROTOTYPE_001_IMPLEMENTED = YES`
`PIXEL_RPG_PIXEL_RENDER_PATH_IMPLEMENTED = YES`
`PIXEL_RPG_SPRING_ARM_CAMERA_COLLISION_IMPLEMENTED = YES`
`PIXEL_RPG_SAFE_AREA_HUD_LOGIC_IMPLEMENTED = YES`
`PIXEL_RPG_WORLD_COMPOSITION_PACK_001_VERIFIED = YES`
`PIXEL_RPG_VISUAL_PACK_002_VERIFIED = YES`
`PIXEL_RPG_VISUAL_PACK_003_HUD_VERIFIED = YES`
`PIXEL_RPG_WORLD_PACK_004_ENTERABLE_SMITH_VERIFIED = YES`
`PIXEL_RPG_COMBAT_BRIDGE_001_TARGETING_VERIFIED = YES`
`PIXEL_RPG_STATE_OWNERSHIP_CONTRACT_001_VERIFIED = YES`
`PIXEL_RPG_MUDCREST_ANATOMY_VISUAL_MAPPING_VERIFIED = YES`
`PIXEL_RPG_PROTOTYPE_HEADLESS_SMOKE_VERIFIED = YES`
`PIXEL_RPG_SELECTED_DOMAIN_REGRESSIONS_VERIFIED = YES`
`PIXEL_RPG_ANDROID_BUILD_VERIFIED = YES`
`PIXEL_RPG_PHONE_RUNTIME_VERIFIED = NO`
`PIXEL_RPG_VISUAL_QUALITY_VERIFIED = NO`
`PIXEL_RPG_PERFORMANCE_VERIFIED = NO`
`INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`

## Exact continuation

`PIXEL_RPG_COMBAT_BRIDGE_002_DOMAIN_BOOTSTRAP_NO_ATTACK`.

First-person presentation now has exact-source Android evidence. Bridge 002 must preserve the first-person camera and current-world actor transforms while bootstrapping only the approved combat/anatomy domain authorities.

## Current exact verification checkpoint

Latest Android-build-verified source is `9b84000ca343dff0d4baa86accb024b9ebac4fb8`.  
Workflow/job: `35917375696` / `107372326343` — SUCCESS.  
Godot: `4.7.2.stable.official.ed1daf0bf`.  
APK: `PixelRPG-state-ownership-001-debug.apk`, `58,052,621` bytes, SHA-256 `531498c45c6d2293d5d38d646ca277ca7d0968b43caedb390ed3d3806578c532`.  
State Ownership Contract gate: `70/70` PASS.  
BuildIdentity v1 is present in the evidence artifact.  
Current immutable Drive revision ID: `1PODIl1OXJ5Rpz5CqjmueEfau-HLXasci`.

Latest specialized handoff:
- `docs/70_handoff/PIXEL_RPG_STATE_OWNERSHIP_CONTRACT_001_2026-09-23.md`.

## Continuation

Next bounded slice: `PIXEL_RPG_PROTOTYPE_DECOMPOSITION_001_WORLD_BASE` / issue #6.

Preserve first-person camera authority, current world transforms, State Ownership 001, Packs 001–004, Bridge 001 targeting and Bridge 002 no-attack domain bootstrap. Extract only world-base construction mechanically; do not change coordinates or observable runtime behavior.
