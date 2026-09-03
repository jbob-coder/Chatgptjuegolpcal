# Stage 1 Android Engine Probe

Status: APK BUILD CHAIN VERIFIED / GALAXY A03s RUNNING / CAMERA-CONTROL FOUNDATION UNDER PHONE RETEST
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
3. read this README;
4. for camera/control work, read `docs/CONTROL_CAMERA_FOUNDATION_README.md`;
5. inspect the exact source being changed;
6. change one bounded piece;
7. rerun static/Godot/APK regression gates;
8. document target-device evidence separately.

## Protected camera/control behavior

Authority:
`docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Current user-directed interaction baseline:
- lower-left analog movement joystick replaces the old four directional buttons;
- Hunter faces non-zero movement direction;
- aerial camera follows/trails Hunter heading rather than fixed world-forward;
- camera turn response is smoothed;
- top-right `SETTINGS` button opens a tabbed Settings overlay;
- `Controls` tab contains persisted `Look Speed`;
- Look Speed default is `35%` after the previous phone build was reported as too aggressive;
- Look Speed is saved to `user://stage1_settings.cfg` under `controls/look_speed`;
- Settings opening resets movement and does not alter authoritative Hunter position;
- first-person/aerial view toggle remains separate from movement input.

Do not silently remove, replace or materially retune those behaviors. Read the protected-behavior README first and warn/document the reason for a change.

## Current contents

- `project.godot` — Godot 4.7 probe configuration;
- `scenes/boot.tscn` — minimal title/probe entry;
- `scenes/probe_world.tscn` — primitive representative 3D scene and current touch/settings UI;
- `scripts/boot.gd` — scene transition only;
- `scripts/probe_world.gd` — movement joystick, Hunter facing, camera/view logic, persisted Look Speed, Monster placeholder motion and metrics overlay;
- `tests/static_preflight.py` — repository-level static QA guard;
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
- analog movement joystick is now the selected Stage-1 phone control baseline;
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

Verified through the CI/build chain on prior/current Stage-1 revisions:
- real-checkout static preflight PASS;
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- Android debug export PASS;
- APK archive integrity PASS;
- Galaxy A03s install PASS;
- ProbeWorld renders on Galaxy A03s in landscape with GL Compatibility/OpenGL3;
- prior device screenshot observed an instantaneous 60 FPS / ~16.7 ms sample and 40.9 MiB debug static memory.

Direct phone feedback also established:
- basic four-direction movement on the earlier arrow build worked;
- basic first-person entry worked;
- outer invisible boundary containment worked well;
- first camera-follow repair was conceptually correct but too aggressive;
- Hunter could pass through the brown Monster placeholder.

The current joystick + persisted Look Speed refinement must still be phone-tested before being called phone-verified.

## Static preflight

Run from this directory:

```bash
python tests/static_preflight.py
```

A static PASS does not replace Godot parse, APK build, or phone evidence.

## Current verification sequence

For the current camera/control refinement:
1. static preflight;
2. Godot 4.7.2 import/parse;
3. Boot headless smoke;
4. ProbeWorld headless smoke;
5. Android debug export + APK integrity;
6. Galaxy A03s installation;
7. verify analog joystick movement, release, diagonals and partial travel;
8. verify Settings opens/closes without movement/position corruption;
9. change Look Speed and confirm camera/Hunter turn response changes;
10. restart the app and confirm Look Speed persisted;
11. test repeated aerial ↔ first-person toggles;
12. report snapping, stuck input, clipping, drift, or control confusion.

## Current gate truth

`IMPLEMENTATION_AUTHORIZED = YES`
`STATIC_PREFLIGHT_VERIFIED_ON_PRIOR_CAMERA_BUILD = YES`
`GODOT_PARSE_VERIFIED_ON_PRIOR_CAMERA_BUILD = YES`
`APK_BUILD_VERIFIED_ON_PRIOR_CAMERA_BUILD = YES`
`GALAXY_A03S_INSTALL_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL`
`ANALOG_JOYSTICK_SOURCE_IMPLEMENTED = YES`
`LOOK_SPEED_SETTING_SOURCE_IMPLEMENTED = YES`
`LOOK_SPEED_PERSISTENCE_IMPLEMENTED = YES`
`CURRENT_CONTROL_REFINEMENT_PHONE_VERIFIED = NO / RETEST_PENDING`
`MONSTER_PLACEHOLDER_SOLID_COLLISION = FAIL_EVIDENCE / SEPARATE_NEXT_REPAIR`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

## Scope stop

Do not add real combat, harvesting, crafting, save architecture, production Hunter/Monster models, full Region 01, or settlement source to this probe.

Do not turn the Settings overlay into a full production settings framework yet. It exists to prove the user-requested tabbed structure, Look Speed behavior and persistence.

After the current camera/control refinement is phone-verified, return to the next foundation defect: trustworthy solid collision for the brown Monster placeholder.
