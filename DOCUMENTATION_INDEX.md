# Pixel RPG — Documentation Index

Status: ACTIVE GLOBAL MAP / PACKS 001–004 VERIFIED / THIRD-PERSON TARGETING BRIDGE NEXT
Last reconciled: 2026-09-21
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
- third-person behind-character camera;
- pixel-styled 3D presentation;
- Android left-stick + independent right-look control layout without turning the game into a firearm shooter;
- physical exploration through compact connected spaces;
- same-world third-person monster combat;
- safe-area responsive HUD target;
- bounded, expandable world scope.

Conflicting older aerial/isometric-primary, mandatory first-person-combat, smooth illustrated-realism, and standalone Shooter RPG passages are subordinate for current presentation decisions.

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
- SpringArm third-person camera collision;
- responsive safe-area HUD positioning;
- settlement gate/street/trail prototype;
- Gate Warden interaction;
- distant monster observation proxy;
- Diamond Watch prototype panel.

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

## Current Pixel RPG verified baseline

Source:\n`47ade9413fe24f15453ee6fb0135b270b2d3ce8d`.

Workflow `35566025131`: SUCCESS.\nJob `106227900327`: SUCCESS.

Artifacts:
- `10624410805` — `PixelRPG-prototype-001-debug`;
- `10624027197` — `PixelRPG-prototype-001-build-evidence`.

Passed:
- Godot `4.7.2.stable` import/parse;
- AppShell smoke;
- prototype scene smoke;
- Pack 002 runtime/anatomy-mapping gate `24/24`;
- Pack 003 HUD runtime gate `19/19`;
- selected deterministic combat/anatomy/status regressions;
- Android debug export;
- package-size ceiling;
- artifact uploads.

Latest specialized handoff:\n- `docs/70_handoff/PIXEL_RPG_WORLD_PACK_004_ENTERABLE_SMITH_VERTICAL_SLICE_2026-09-21.md`.

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
`PIXEL_RPG_VISUAL_PACK_003_HUD_VERIFIED = YES`\n`PIXEL_RPG_WORLD_PACK_004_ENTERABLE_SMITH_VERIFIED = YES`
`PIXEL_RPG_MUDCREST_ANATOMY_VISUAL_MAPPING_VERIFIED = YES`
`PIXEL_RPG_PROTOTYPE_HEADLESS_SMOKE_VERIFIED = YES`
`PIXEL_RPG_SELECTED_DOMAIN_REGRESSIONS_VERIFIED = YES`
`PIXEL_RPG_ANDROID_BUILD_VERIFIED = YES`
`PIXEL_RPG_PHONE_RUNTIME_VERIFIED = NO`
`PIXEL_RPG_VISUAL_QUALITY_VERIFIED = NO`
`PIXEL_RPG_PERFORMANCE_VERIFIED = NO`
`INSTALLED_FOOTPRINT_2GB_CAP_VERIFIED = NO`

## Exact continuation

`PIXEL_RPG_COMBAT_BRIDGE_001_THIRD_PERSON_TARGETING_PREVIEW`.

Preserve Packs 001–004. Establish the current third-person target-acquisition contract against the live Mudcrest visual without invoking obsolete first-person/legacy-coordinate encounter presentation and without applying combat damage/resources yet.
