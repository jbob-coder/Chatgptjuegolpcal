# Stage 1 Android Engine Probe

Status: VIEW-CONTINUITY APK BUILD VERIFIED / PHONE REGRESSION BUNDLE DEFERRED / LIFECYCLE REVIEW NEXT
Last reconciled: 2026-09-03

## Purpose

This directory is intentionally isolated from future production game source.

It answers the Stage-1 question:
**Can Godot 4.7 + GDScript + GL Compatibility deliver the required aerial/first-person presentation, touch control, large-monster readability and stable Android behavior on the Samsung Galaxy A03s?**

This probe is disposable evidence-gathering source. It must not silently become production domain/gameplay architecture.

## Mandatory read order for probe changes

1. root `EVOLVE_ALIGNMENT.md`;
2. `PROJECT_HANDOFF.md`;
3. newest relevant Stage-1 handoff;
4. this README;
5. `docs/CONTROL_CAMERA_FOUNDATION_README.md` for control/camera work;
6. `docs/PROBE_TEST_PROTOCOL.md`;
7. exact source/tests being changed.

## Protected camera/control behavior

Authority:
`docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Protected baseline:
- analog movement joystick;
- each new touch captures current Hunter heading as stable movement reference;
- release/re-touch captures latest heading;
- Hunter faces resolved movement;
- aerial camera follows/trails Hunter heading and stays synchronized during first person;
- Settings + Controls → Look Speed;
- default Look Speed `35%`;
- persistence `user://stage1_settings.cfg` / `controls/look_speed`;
- Settings opening resets movement;
- aerial/first-person toggle remains separate from movement.

Do not silently remove or materially retune this behavior.

## Current probe contents

- `project.godot` — Godot 4.7 probe configuration;
- `scenes/boot.tscn` — minimal entry;
- `scenes/probe_world.tscn` — representative 3D scene + touch/settings UI + fixed Monster placeholder collider;
- `scripts/boot.gd` — scene transition;
- `scripts/probe_world.gd` — movement, heading reset, cameras, settings, boundary, visual Monster motion and metrics;
- `tests/static_preflight.py` — repository/protected-control QA;
- `tests/monster_collision_preflight.py` — Monster collision source guard;
- `tests/world_boundary_preflight.py` — outer-boundary source/geometry guard;
- root `ci/stage1/state_continuity_test.gd` — executable Godot view-continuity regression;
- `docs/ANDROID_EXPORT_SETUP.md`;
- `docs/PROBE_TEST_PROTOCOL.md`;
- `docs/CONTROL_CAMERA_FOUNDATION_README.md`.

## Deliberate simplifications

Hunter:
- 1.75 m capsule placeholder;
- no final model/rig/equipment.

Monster:
- large primitive visual volume;
- fixed representative solid collider;
- visual-only small bob/yaw;
- no production skeleton, AI, combat, animation set, anatomy hitboxes or production physics.

Environment:
- one simple 20 m × 20 m lit ground plane;
- one directional shadow test;
- current Hunter-center boundary `±8.5 m` on X/Z;
- no production Region 01 assets.

## Renderer/platform configuration

- Godot family: 4.7;
- CI/build version: 4.7.2 stable;
- renderer: `gl_compatibility` desktop/mobile;
- logical viewport: 1600 × 720 landscape;
- Android frame pacing enabled;
- baseline phone: Samsung Galaxy A03s;
- target: stable 30 FPS minimum representative frame.

## Prior Galaxy A03s evidence

Observed on earlier Stage-1 APKs:
- install/runtime smoke;
- landscape + GL Compatibility/OpenGL3;
- instantaneous `60 FPS / ~16.7 ms`;
- `40.9 MiB` debug static memory;
- basic movement;
- basic first-person entry;
- outer boundary worked well;
- analog joystick and heading-follow camera preferred;
- prior Monster pass-through defect identified.

Current-build phone regression remains deferred by explicit user instruction; missing evidence is not PASS.

## Current exact automated build

Source commit:
`c218b273a49dbdce78ce143698fd87d07bdd2643`

Workflow:
`33807677829`

Results:
- static preflight `154 / 154 PASS`;
- Monster collision `8 / 8 PASS`;
- world boundary `12 / 12 PASS`;
- Godot parse PASS;
- Boot + ProbeWorld smoke PASS;
- aerial↔first-person executable regression `17 / 17 PASS`;
- Android export PASS;
- APK integrity PASS.

APK:
`UnnamedHuntRPG-Stage1Probe-debug.apk`

Size:
`57,570,361 bytes`

SHA-256:
`db046d03d778228e6343b5ada35f2fa9392a8c79c519d1e7cd58d632e701c6da`

## Current gate truth

`IMPLEMENTATION_AUTHORIZED = YES`
`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154`
`MONSTER_COLLISION_STATIC_VERIFIED = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC_VERIFIED = YES / 12_OF_12`
`VIEW_CONTINUITY_HEADLESS_VERIFIED = YES / 17_OF_17`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`JOYSTICK_HEADING_RESET_PHONE_VERIFIED = NO / DEFERRED`
`MONSTER_COLLISION_PHONE_VERIFIED = NO / DEFERRED`
`WORLD_BOUNDARY_CURRENT_APK_PHONE_VERIFIED = NO / DEFERRED`
`VIEW_CONTINUITY_PHONE_VERIFIED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

## Exact next probe action

`ANDROID_LIFECYCLE_BACKGROUND_RESUME_FOUNDATION_REVIEW`

Review `docs/PROBE_TEST_PROTOCOL.md`, current state ownership and Godot lifecycle notifications before making lifecycle source changes.

## Scope stop

Do not add real combat, harvesting, crafting, save architecture, production Hunter/Monster models, full Region 01, settlement source or production lifecycle architecture to this probe.
