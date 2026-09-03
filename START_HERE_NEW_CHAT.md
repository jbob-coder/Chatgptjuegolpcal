# START HERE — Unnamed Hunt RPG

Last reconciled: 2026-09-03

## Active project identity

This is the Android-targeted monster-hunting RPG using the repository area that previously contained WorldLife RPG.

WorldLife is abandoned and must not be resumed unless a current repository authority explicitly preserves a specific item.

`Unnamed Hunt RPG` remains a temporary working name.

## Mandatory first read

**Read `EVOLVE_ALIGNMENT.md` before every bounded pass.**

Then read:
1. `PROJECT_HANDOFF.md`;
2. this file;
3. `DOCUMENTATION_INDEX.md`;
4. root `README.md`;
5. `docs/README.md`;
6. the newest relevant `docs/70_handoff/` record;
7. the owning package/README/source/tests for the exact task.

Do not reconstruct the project from old chat summaries when current repository authorities exist.

## Current phase

**STAGE 1 ENGINE/ANDROID FOUNDATION — PERFORMANCE MEASUREMENT PREPARED / DIRECT GALAXY A03s FOUNDATION EVIDENCE STILL REQUIRED.**

Implementation is authorized inside the isolated Stage-1 probe. Production domain/combat implementation remains behind readiness gates.

The user explicitly instructed development not to stop waiting for phone reports. Therefore the phone implementation gate stays deferred/unverified while independent non-phone work continues.

## Current engine/device truth

Candidate:
- Godot 4.7 family;
- current CI/build tooling Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Android;
- Samsung Galaxy A03s baseline;
- stable `30 FPS` representative-scene minimum target.

Godot remains `PROBE_PENDING`, not final production-engine truth.

Current protocol/documentation revision built by CI:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Performance telemetry source revision:
`89394067971120df43b184a8509934f5458185f2`.

Workflow:
`33811355891` — `SUCCESS`.

Verified automated gates:
- protected static preflight `154 / 154 PASS`;
- Monster collision `8 / 8 PASS`;
- world boundary `12 / 12 PASS`;
- Godot import/parse PASS;
- Boot + ProbeWorld smoke PASS;
- aerial↔first-person continuity `17 / 17 PASS`;
- lifecycle transient input `47 / 47 PASS`;
- performance telemetry `20 / 20 PASS`;
- Android export + APK archive integrity PASS;
- artifact upload PASS.

Exact inner APK:
- `UnnamedHuntRPG-Stage1Probe-debug.apk`;
- `57,570,361 bytes`;
- SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Workflow artifact ZIP:
- artifact ID `9914945271`;
- size `57,124,301 bytes`;
- digest `sha256:a02d8a1b79f3d0b87f4694c72f897beaf925016f86495a264bd72303563a6188`.

The ZIP digest/size are not the inner APK digest/size.

## Protected control-camera baseline

Authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Protected direction includes:
- analog movement joystick;
- each new touch captures current Hunter heading;
- movement basis stays stable during that touch;
- release/re-touch captures the latest heading;
- Hunter faces resolved movement;
- aerial camera follows/trails Hunter heading;
- aerial camera stays synchronized while first person is active;
- Settings + Controls → Look Speed;
- default Look Speed `35%`;
- persistence `user://stage1_settings.cfg` / `controls/look_speed`;
- opening Settings resets movement.

Do not silently remove, replace or materially retune this contract.

## Completed Stage-1 source/build pieces

- heading-reset controls: source/build verified; phone deferred;
- Monster representative solidity: static/build verified; phone deferred;
- world boundary: static/build verified; current phone regression deferred;
- aerial↔first-person state continuity: `17/17` headless/build verified; phone visual/input/clipping deferred;
- lifecycle transient-input reset: `47/47` headless/build verified; Android background/resume/lock behavior deferred;
- performance telemetry: `20/20` headless/build verified; direct sustained phone performance deferred.

## Sustained-performance evidence package

Primary authority:
`probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

Probe-local mapping:
`probes/android_stage1/README.md` and `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`.

Specialized pass record:
`docs/70_handoff/STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION_2026-09-03.md`.

The current probe exposes FPS, rolling one-second process-frame average/max, cumulative >34 ms and >=50 ms counters, worst frame, debug static memory, renderer and view mode.

The prepared Galaxy A03s run is a fixed `24` minute procedure with checkpoints at `T+02`, `T+07`, `T+09`, `T+14`, `T+19`, `T+24`. It includes a controlled 20-transition aerial↔first-person segment and a final ten-minute thermal/frame-pacing soak.

No current sustained phone result exists. `PERFORMANCE_VERIFIED = NO`.

## Documentation map rule

The repository must answer at all times:
**WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT.**

Use:
- root `README.md` — human project front door;
- `docs/README.md` — documentation/package placement rules;
- local package README files — package front doors/file maps;
- `DOCUMENTATION_INDEX.md` — global where-is-what/read-order map;
- `docs/70_handoff/` — bounded-pass continuity evidence;
- `PROJECT_HANDOFF.md` — current project snapshot;
- this file — new-chat reconstruction;
- `EVOLVE_ALIGNMENT.md` — operating contract and exact next-action state.

## Build-readiness classes

Authority:
`docs/00_project/BUILD_READINESS_GATE_MATRIX.md`.

1. `MUST_EXIST_BEFORE_ENGINE_PROBE`;
2. `MUST_EXIST_BEFORE_DOMAIN_IMPLEMENTATION`;
3. `MUST_EXIST_BEFORE_COMBAT`;
4. `MUST_EXIST_BEFORE_VERTICAL_SLICE`;
5. `CAN_WAIT_UNTIL_EXPANSION`.

Current state:
- engine probe — automated preparation advanced; direct current-phone regression + sustained performance remain;
- domain implementation — blocked by engine-phone foundation gate;
- combat design — partial/advanced;
- vertical slice — partial;
- expansion — intentionally open.

## Current gameplay authorities

Combat package:
`docs/20_gameplay/combat/`.

Recorded contracts:
- 4 AP / 1 RP / persistent Stamina;
- deterministic hit-quality/defense pipeline;
- `WEAPON_FAMILY_FIELD_POLEBLADE`;
- first-slice Max Stamina `100`.

Next active non-phone design packet:
`INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`.

Do not combine it with statuses, terrain-number finalization, Monster 01 attack authoring, berserk, party design or defeat/retreat behavior.

## Locked direction summary

- walkable settlement/hub;
- elevated angled aerial wilderness exploration;
- first-person turn-based tactical combat from the same physical encounter;
- world atlas → settlement → hunter gate → continuous hunting region → local encounter;
- `1 world unit = 1 meter`;
- deterministic authored NPC/creature behavior;
- Might / Finesse / Agility / Endurance / Perception / Resolve;
- equipment + mastery + knowledge weighted progression;
- anatomy, terrain and preparation matter;
- crystal Energy is life force and berserk spends the same reserve.

## Exact continuation state

Implementation blocker:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Implementation action when the phone is available:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Active action that can proceed now without phone evidence:
`INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`.

Current explicit user instruction > verified source/tests > current owning repository authorities > direct target-device evidence for runtime claims > build evidence > old notes/chat memory.
