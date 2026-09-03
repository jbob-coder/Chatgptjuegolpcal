# Stage 1 Android Engine Probe

Status: SOURCE SKELETON CREATED / STATIC PREFLIGHT HARNESS READY / NOT YET GODOT-PARSED OR PHONE VERIFIED
Last reconciled: 2026-09-02

## Purpose

This directory is intentionally isolated from future production game source.

It exists only to answer the Stage 1 question:

**Can Godot 4.7 + GDScript + GL Compatibility deliver the required aerial/first-person presentation, touch input, large-monster readability and stable Android behavior on the Samsung Galaxy A03s?**

This probe is disposable evidence-gathering source. It must not silently become the domain/gameplay architecture.

## Current contents

- `project.godot` — Godot 4.7 probe configuration;
- `scenes/boot.tscn` — minimal title/probe entry;
- `scenes/probe_world.tscn` — primitive representative 3D scene;
- `scripts/boot.gd` — scene transition only;
- `scripts/probe_world.gd` — placeholder movement, camera switch, monster motion and metrics overlay;
- `tests/static_preflight.py` — repository-level static QA guard;
- `tests/README.md` — static-preflight scope, usage and evidence boundary;
- `docs/ANDROID_EXPORT_SETUP.md` — Android export/setup checklist;
- `docs/PROBE_TEST_PROTOCOL.md` — staged editor/APK/phone/performance test contract.

## Deliberate simplifications

The probe uses primitive meshes only.

Hunter:
- 1.75 m capsule placeholder;
- no final model/rig/equipment.

Monster:
- large primitive volume approximating a close monster-scale stress case;
- procedural bob/turn motion only;
- no production skeleton or animation set.

Touch input:
- large directional buttons plus aerial/first-person toggle;
- this is an instrumentation/control proof, not final shooter-style joystick UI.

Environment:
- one simple lit ground plane;
- one directional shadow test;
- no production Region 01 assets.

## Current renderer/platform configuration

- Godot: 4.7 target;
- renderer: `gl_compatibility`;
- mobile renderer override: `gl_compatibility`;
- logical landscape viewport: 1600 × 720;
- Android frame pacing setting enabled;
- target baseline phone: Samsung Galaxy A03s;
- representative performance goal: stable 30 FPS minimum target.

The Compatibility choice is intentional for the low-end baseline. Final engine acceptance still requires device evidence.

## Static preflight

Before opening the probe in Godot, run from this directory:

```bash
python tests/static_preflight.py
```

The static checker validates repository-level invariants such as:
- required file presence;
- `res://` file references;
- scene resource declarations/uses;
- signal method existence;
- current `@onready` node paths;
- expected root-script pairing;
- current probe-only GDScript source boundary;
- key Stage 1 project settings.

Important:
**a static preflight PASS is not a Godot parse/build/runtime PASS.**

The harness was self-tested during creation against the current fetched source snapshot:
- positive snapshot: `81 / 81` checks passed;
- missing-scene negative test: correctly failed;
- unexpected-GDScript negative test: correctly failed.

Because this environment cannot clone the repository or execute Godot, a real-checkout preflight run and all Godot/Android gates remain pending.

## Required first verification sequence

1. Read current repository `EVOLVE_ALIGNMENT.md`.
2. Run `python tests/static_preflight.py` from the probe root in a real checkout.
3. Open `probes/android_stage1/project.godot` in Godot 4.7-family tooling.
4. Confirm the editor reports Compatibility rendering.
5. Confirm Boot and ProbeWorld import and both GDScript files parse.
6. Run the project on desktop/editor.
7. Confirm Boot scene loads.
8. Enter the 3D probe.
9. Confirm WASD placeholder movement.
10. Confirm aerial camera follows authoritative hunter position.
11. Toggle first-person and return to aerial.
12. Confirm renderer/FPS/debug-memory readout appears.
13. Inspect editor output for parse errors, scene-load errors and node-path errors.
14. Configure Android export from `docs/ANDROID_EXPORT_SETUP.md`.
15. Install a debug build on Galaxy A03s.
16. Run the device protocol before declaring any runtime gate passed.

## Current verification truth

`SOURCE_CREATED = YES`
`SOURCE_READBACK_VERIFIED = YES`
`STATIC_PREFLIGHT_HARNESS = RECORDED`
`HARNESS_LOGIC_SELF_TESTED = YES`
`CURRENT_FETCHED_SOURCE_SNAPSHOT_PREFLIGHT = 81_OF_81_PASS`
`REAL_CHECKOUT_PREFLIGHT_RUN = PENDING`
`GODOT_PARSE_VERIFIED = NO`
`EDITOR_RUN_VERIFIED = NO`
`ANDROID_EXPORT_CONFIGURED = NO`
`APK_BUILD_VERIFIED = NO`
`GALAXY_A03S_INSTALL_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`
`PERFORMANCE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

Do not upgrade these states without evidence.

## Scope stop

Do not add real combat, harvesting, crafting, save architecture, production Hunter/Monster models, full Region 01, or settlement source to this probe.

Do not add additional Stage 1 visual/gameplay complexity before the existing project passes static preflight in a real checkout and then Godot parse/editor smoke.

If the probe passes, Stage 2 starts in a separate production-oriented source root after the engine decision is formally accepted.
