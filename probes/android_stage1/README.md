# Stage 1 Android Engine Probe

Status: HEADING-RESET JOYSTICK APK BUILD VERIFIED / GALAXY A03s RETEST PENDING
Last reconciled: 2026-09-03

## Purpose

This directory is intentionally isolated from future production game source.

It exists to answer the Stage 1 question:

**Can Godot 4.7 + GDScript + GL Compatibility deliver the required aerial/first-person presentation, touch control, large-monster readability and stable Android behavior on the Samsung Galaxy A03s?**

This probe is disposable evidence-gathering source. It must not silently become the production domain/gameplay architecture.

## Mandatory read order for probe changes

Before changing probe source:
1. read repository root `EVOLVE_ALIGNMENT.md`;
2. read `PROJECT_HANDOFF.md`;
3. read the newest Stage-1 handoff;
4. read this README;
5. for camera/control work, read `docs/CONTROL_CAMERA_FOUNDATION_README.md`;
6. inspect the exact source being changed;
7. change one bounded piece;
8. rerun static/Godot/APK regression gates;
9. document target-device evidence separately.

## Protected camera/control behavior

Authority:
`docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Current user-directed interaction baseline:
- lower-left analog movement joystick replaces the old four directional buttons;
- each new joystick touch captures the Hunter's current heading as a stable movement reference;
- the reference remains fixed while that touch is active;
- release/re-touch resets joystick-forward to the Hunter's latest facing;
- Hunter faces resolved movement direction;
- aerial camera follows/trails Hunter heading rather than fixed world-forward;
- camera turn response is smoothed;
- top-right `SETTINGS` button opens a tabbed Settings overlay;
- `Controls` tab contains persisted `Look Speed`;
- Look Speed default is `35%`;
- Look Speed is saved to `user://stage1_settings.cfg` under `controls/look_speed`;
- Settings opening resets movement and does not alter authoritative Hunter position;
- first-person/aerial view toggle remains separate from movement input.

Example heading-reset behavior:
`face north → push joystick right → turn/move east → release → next touch + joystick up → continue east/forward`.

Do not silently remove, replace or materially retune those behaviors. Read the protected-behavior README first and warn/document the reason for a change.

## Current contents

- `project.godot` — Godot 4.7 probe configuration;
- `scenes/boot.tscn` — minimal title/probe entry;
- `scenes/probe_world.tscn` — primitive representative 3D scene and current touch/settings UI;
- `scripts/boot.gd` — scene transition only;
- `scripts/probe_world.gd` — heading-reset movement joystick, Hunter facing, camera/view logic, persisted Look Speed, Monster placeholder motion and metrics overlay;
- `tests/static_preflight.py` — repository-level static QA + protected-control guard;
- `tests/README.md` — static-preflight scope and evidence boundary;
- `docs/ANDROID_EXPORT_SETUP.md` — Android export/setup checklist;
- `docs/PROBE_TEST_PROTOCOL.md` — staged editor/APK/phone/performance test contract;
- `docs/CONTROL_CAMERA_FOUNDATION_README.md` — protected camera/control continuity contract.

## Deliberate simplifications

Hunter:
- 1.75 m capsule placeholder;
- no final model/rig/equipment.

Monster:
- large primitive volume;
- procedural bob/turn motion only;
- no production skeleton, AI, combat or animation set;
- **known defect: currently not a trustworthy solid obstacle; collision repair remains a separate bounded piece.**

Controls:
- analog movement joystick is the selected Stage-1 phone control baseline;
- movement reference resets to current Hunter heading on each new touch gesture;
- desktop WASD remains a development fallback;
- view-toggle button switches AERIAL/FIRST PERSON;
- Settings has tabbed structure with Look Speed under Controls;
- final art, accessibility ranges and future first-person free-look/right-stick design are not locked yet.

Environment:
- one simple lit ground plane;
- one directional shadow test;
- outer positional clamp/boundary already produced positive phone feedback;
- no production Region 01 assets.

## Renderer/platform configuration

- Godot family: 4.7;
- current CI/build version: 4.7.2 stable;
- renderer: `gl_compatibility`;
- mobile renderer override: `gl_compatibility`;
- logical landscape viewport: 1600 × 720;
- Android frame pacing enabled;
- target baseline phone: Samsung Galaxy A03s;
- representative performance goal: stable 30 FPS minimum target.

## Verified build/device truth

Verified through build chain:
- real-checkout static preflight PASS;
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- Android debug export PASS;
- APK archive integrity PASS.

Verified on Galaxy A03s using earlier Stage-1 APKs:
- install PASS;
- ProbeWorld renders in landscape with GL Compatibility/OpenGL3;
- prior instantaneous sample `60 FPS / ~16.7 ms` and `40.9 MiB` debug static memory;
- basic movement;
- basic first-person entry;
- outer boundary containment.

Direct phone feedback also established:
- heading-follow camera is preferred but required calmer response;
- analog joystick is preferred to arrow keys;
- joystick world-axis behavior was inconvenient after turning;
- Hunter could pass through the brown Monster placeholder.

## Current exact heading-reset build

Source commit:
`9d9e83898616e16c902d0d3caf8e9c82253bf8a7`

Exact build revision:
`2e112210c60b62335f94adfd1a1573afb81426f6`

Workflow run:
`33783404093`

Results:
- static preflight `151 / 151 PASS`;
- Godot 4.7.2 parse PASS;
- Boot smoke PASS;
- ProbeWorld smoke PASS;
- Android export PASS;
- APK integrity PASS.

APK:
`UnnamedHuntRPG-Stage1Probe-heading-reset.apk`

Size:
`57,570,361 bytes`

SHA-256:
`1727750c3fc1f8385ed8c9bf1e4ccc3c559cede156e750380a1ff462c2bcfa8c`

## Static preflight

Run from this directory:

```bash
python tests/static_preflight.py
```

The current guard also rejects silent removal of:
- analog joystick;
- Settings / Look Speed;
- persistence key/path;
- per-touch heading capture;
- heading-relative joystick world mapping;
- protected control README.

A static PASS does not replace Godot parse, APK build, or phone evidence.

## Current verification sequence

For the heading-reset joystick build:
1. static preflight;
2. Godot 4.7.2 import/parse;
3. Boot headless smoke;
4. ProbeWorld headless smoke;
5. Android debug export + APK integrity;
6. Galaxy A03s installation;
7. turn east with joystick-right;
8. release;
9. touch again and push joystick-up;
10. verify Hunter continues east/forward;
11. repeat across headings;
12. verify active held input does not spiral/circle;
13. verify partial/diagonal input;
14. verify Settings + persisted Look Speed;
15. verify aerial ↔ first-person physical-position continuity.

## Current gate truth

`IMPLEMENTATION_AUTHORIZED = YES`
`STATIC_PREFLIGHT_VERIFIED = YES / 151_OF_151_CURRENT_BUILD`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES_ON_PRIOR_STAGE1_APKS`
`PHONE_RUNTIME_VERIFIED = PARTIAL`
`ANALOG_JOYSTICK_SOURCE_IMPLEMENTED = YES`
`JOYSTICK_HEADING_RESET_SOURCE_IMPLEMENTED = YES`
`JOYSTICK_HEADING_RESET_APK_BUILD_VERIFIED = YES`
`JOYSTICK_HEADING_RESET_PHONE_VERIFIED = NO / RETEST_PENDING`
`LOOK_SPEED_SETTING_SOURCE_IMPLEMENTED = YES`
`LOOK_SPEED_PERSISTENCE_IMPLEMENTED = YES`
`MONSTER_PLACEHOLDER_SOLID_COLLISION = FAIL_EVIDENCE / SEPARATE_NEXT_REPAIR`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

## Scope stop

Do not add real combat, harvesting, crafting, save architecture, production Hunter/Monster models, full Region 01, or settlement source to this probe.

After the current heading-reset control behavior is phone-verified, return to the next foundation defect: trustworthy solid collision for the brown Monster placeholder.
