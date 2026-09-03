# Stage 1 Probe Static QA

Status: STATIC PREFLIGHT HARNESS RECORDED / GODOT EXECUTION STILL REQUIRED
Last reconciled: 2026-09-02

## Purpose

Prepare the isolated Stage 1 Android probe for later Godot/editor/APK/Galaxy A03s testing by catching repository-level regressions before runtime tooling is available.

Primary command from the probe root:

```bash
python tests/static_preflight.py
```

The script uses only the Python standard library.

## What a PASS means

`STATIC_PREFLIGHT_VERIFIED` means the checker found no failure in the static invariants it owns, including:
- required probe files exist;
- project main-scene path resolves;
- Godot 4.7 / GL Compatibility request text remains present;
- 1600×720 probe viewport settings remain present;
- Android frame-pacing request remains present;
- scene `ExtResource` paths resolve;
- scene `ExtResource` and `SubResource` uses have declarations;
- root scenes still point to the intended scripts;
- connected signal methods exist in the root scripts;
- `$Node/Path` references used by current `@onready` declarations exist in the owning scene;
- Boot and ProbeWorld keep their intended root/script inheritance pairing;
- the probe contains only the currently authorized GDScript source files.

## What a PASS does NOT mean

The script is not a Godot parser and is not an Android runtime.

A PASS must never be promoted to:
- `GODOT_PARSE_VERIFIED`;
- `EDITOR_RUN_VERIFIED`;
- `ANDROID_PRESET_VERIFIED`;
- `APK_BUILD_VERIFIED`;
- `PHONE_INSTALL_VERIFIED`;
- `PHONE_RUNTIME_VERIFIED`;
- `PERFORMANCE_VERIFIED`;
- `ENGINE_PHONE_PROBE_VERIFIED`.

Those gates still require the actual environments defined by `../docs/PROBE_TEST_PROTOCOL.md`.

## Source-boundary guard

The current probe is intentionally disposable and must not silently become production gameplay source.

The checker therefore currently expects only:
- `scripts/boot.gd`;
- `scripts/probe_world.gd`.

If a later EVOLVE-approved Stage 1 change legitimately adds another GDScript file, update the expected-source set in the same bounded change and explain why the new source belongs to the probe.

Do not disable this guard merely to make a failing check green.

## Expected development workflow

1. Read current `EVOLVE_ALIGNMENT.md`.
2. Make one bounded Stage 1 source/configuration change only when its gate permits it.
3. Run `python tests/static_preflight.py`.
4. Fix static failures before Godot execution.
5. Run the Godot import/parse gate.
6. Run editor smoke.
7. Configure/build Android only after editor smoke passes.
8. Test the resulting APK on the Galaxy A03s using the phone protocol.
9. Record evidence at each gate separately.

## Harness self-test evidence

During creation of this harness, its logic was exercised against the current fetched probe source snapshot:
- positive snapshot: `81 / 81` checks passed;
- negative test: changing Boot's `res://scenes/probe_world.tscn` reference to a missing scene correctly returned a failing exit code;
- negative test: adding an unexpected `scripts/rogue_gameplay.gd` correctly failed the probe-source-boundary guard.

Environment limitation:
the working runtime cannot clone GitHub or execute Godot, so this does not replace a later run from a real repository checkout or Godot/editor environment.

## Current gate

`STATIC_PREFLIGHT_HARNESS = RECORDED`
`HARNESS_LOGIC_SELF_TESTED = YES`
`CURRENT_FETCHED_SOURCE_SNAPSHOT = 81_OF_81_PASS`
`REAL_CHECKOUT_PREFLIGHT_RUN = PENDING`
`GODOT_PARSE_VERIFIED = NO`
`EDITOR_RUN_VERIFIED = NO`
`APK_BUILD_VERIFIED = NO`
`PHONE_RUNTIME_VERIFIED = NO`
