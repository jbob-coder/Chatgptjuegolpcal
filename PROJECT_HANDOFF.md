# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 PERFORMANCE MEASUREMENT PREPARED / PHONE FOUNDATION EVIDENCE DEFERRED / NON-PHONE COMBAT DESIGN NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Finish the Stage-1 Android engine/device foundation without blocking independent design work on unavailable phone evidence.

Current implementation-lane gate:
`DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`.

Current blocker for that gate:
`GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`.

Current active non-phone action:
`INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`.

Probe root:
`probes/android_stage1/`.

Operating contract:
`EVOLVE_ALIGNMENT.md`.

## Mandatory read order

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. root `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/` record
9. local package README/owners/source/tests for the bounded task.

For Stage-1 Android work additionally read:
- `probes/android_stage1/README.md`;
- `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md` before control/camera changes;
- `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`;
- `probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md` for the phone performance gate.

Use current repository/source/build/device evidence rather than old WorldLife material or chat memory.

## Project identity

This is the new Android-targeted monster-hunting tactical RPG. WorldLife RPG is abandoned and is not the implementation base.

Working name:
`Unnamed Hunt RPG`.

Playable direction:
- walkable settlement/hub;
- elevated angled aerial wilderness exploration;
- first-person turn-based tactical combat derived from the same physical encounter;
- anatomy, positioning, terrain, preparation, break/sever and harvest matter;
- deterministic authored creature/NPC behavior rather than generative runtime AI.

## Engine/device candidate

Current Stage-1 candidate:
- Godot 4.7 family;
- CI/build tooling: Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Android;
- Samsung Galaxy A03s baseline;
- stable `30 FPS` representative-scene minimum target.

Godot remains `PROBE_PENDING`, not final production-engine truth.

## Current exact verified build lineage

Current protocol/documentation revision built by CI:
`c02971996e35770bbaaaf9bf6c460af208db4f83`.

Performance telemetry source revision:
`89394067971120df43b184a8509934f5458185f2`.

Workflow:
`33811355891`.

Conclusion:
`SUCCESS`.

Verified gates on the current protocol revision:
- protected static preflight `154 / 154 PASS`;
- Monster collision guard `8 / 8 PASS`;
- world-boundary guard `12 / 12 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- aerial↔first-person runtime regression `17 / 17 PASS`;
- lifecycle transient-input runtime regression `47 / 47 PASS`;
- performance telemetry runtime regression `20 / 20 PASS`;
- Android debug export PASS;
- APK archive integrity PASS;
- artifact upload PASS.

Exact inner APK from workflow `33811355891`:
- `UnnamedHuntRPG-Stage1Probe-debug.apk`;
- `57,570,361 bytes`;
- SHA-256 `f9cc00019f31fc7942c309b7178db3967cc1ecc726e6cc2a07d6b3d5ec32af59`.

Uploaded workflow artifact ZIP:
- name `UnnamedHuntRPG-Stage1Probe-debug`;
- artifact ID `9914945271`;
- archive size `57,124,301 bytes`;
- archive digest `sha256:a02d8a1b79f3d0b87f4694c72f897beaf925016f86495a264bd72303563a6188`.

The APK and artifact ZIP are different files. Never exchange their size/hash labels.

## Completed Stage-1 source/build foundation

### Protected controls/camera
Authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Protected behavior includes analog joystick, per-touch Hunter-heading capture, stable movement basis during a touch, heading-follow aerial camera, synchronized aerial camera during first person, Settings, Controls → Look Speed, default `35%`, persisted Look Speed, and movement reset when Settings opens.

Heading-reset source/build verification exists. Current-build phone verification remains deferred.

### Monster placeholder collision
Current source has a fixed representative `StaticBody3D` + matching `BoxShape3D` without introducing production Monster physics.

Automated guard: `8 / 8 PASS`.
Phone solidity: deferred/unverified.

### World boundary
Existing `PROBE_BOUNDS = 8.5` behavior remains unchanged.

Automated guard: `12 / 12 PASS`.
Current-build phone containment: deferred/unverified.

### Aerial ↔ first-person continuity
Executable owner:
`ci/stage1/state_continuity_test.gd`.

Automated runtime: `17 / 17 PASS`.
Phone visual/input/clipping verification: deferred/unverified.

### Android lifecycle transient input
Owner:
`probes/android_stage1/scripts/probe_world.gd`.

Application pause/resume and focus-out/focus-in reuse `_reset_joystick()` so stale transient touch ownership cannot survive an interruption.

Executable owner:
`ci/stage1/lifecycle_transient_input_test.gd`.

Automated runtime: `47 / 47 PASS`.
Phone background/resume + lock/unlock: deferred/unverified.

### Sustained-performance evidence preparation
Telemetry owner:
`probes/android_stage1/scripts/probe_world.gd`.

Executable owner:
`ci/stage1/performance_telemetry_test.gd`.

Phone procedure authority:
`probes/android_stage1/docs/SUSTAINED_PERFORMANCE_EVIDENCE_PROTOCOL.md`.

Specialized handoff:
`docs/70_handoff/STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION_2026-09-03.md`.

The probe now displays:
- engine FPS;
- rolling approximately one-second real process-frame average/max;
- cumulative frames above `34 ms`;
- cumulative frames at/above `50 ms`;
- cumulative worst process-frame delta;
- debug static memory;
- renderer and view mode.

Telemetry regression: `20 / 20 PASS`.

No render quality, camera tuning, controls, Monster detail, boundary, or gameplay cost was retuned during this piece.

## Prepared Galaxy A03s sustained run

The phone protocol defines one uninterrupted `24` minute representative run:
1. `T+00–02` launch/baseline stabilization;
2. `T+02–07` sustained aerial analog movement;
3. `T+07–09` exactly `20` controlled aerial↔first-person transitions;
4. `T+09–14` mixed interaction;
5. `T+14–24` sustained thermal/frame-pacing soak;
6. checkpoints at `T+02`, `T+07`, `T+09`, `T+14`, `T+19`, `T+24`.

Evidence fields include FPS, rolling frame-time values, hitch counters, worst frame, static memory, battery, qualitative thermal signal, input responsiveness, transition hitches and evidence IDs.

The protocol defines explicit PASS / FAIL / REVIEW / STOP conditions.

Prior one-frame Galaxy A03s evidence (`60 FPS / ~16.7 ms / 40.9 MiB`) is useful historical evidence but is not sustained-performance verification.

## Deferred target-phone bundle

Direct Galaxy A03s evidence still required for:
- heading-reset joystick behavior;
- current controls/Look-Speed regression;
- Monster solidity;
- current-build world-boundary containment;
- aerial↔first-person visual/input continuity and clipping;
- background/resume + lock/unlock lifecycle behavior;
- sustained frame pacing/thermal/input/transition behavior;
- crash/ANR observation.

Never mark these PASS from CI/headless evidence.

## Documentation/navigation discipline

The project documentation must always answer:
`WHAT EXISTS → WHERE IT IS → WHAT OWNS IT → WHAT IS VERIFIED → WHAT REMAINS UNVERIFIED → WHAT HAPPENS NEXT`.

Navigation ownership:
- `README.md` — human project front door;
- `docs/README.md` — documentation/package placement rules;
- local package `README.md` — local front door/file map;
- `DOCUMENTATION_INDEX.md` — cross-project authority/read-order map;
- `docs/70_handoff/` — bounded-pass continuity records;
- `PROJECT_HANDOFF.md` + `START_HERE_NEW_CHAT.md` — current reconstruction;
- `EVOLVE_ALIGNMENT.md` — operating contract + exact next-action state.

## Current design foundation

Combat authorities already recorded under `docs/20_gameplay/combat/`:
- `ACTION_ECONOMY_CONTRACT.md` — 4 AP / 1 RP / persistent Stamina;
- `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
- `FIRST_WEAPON_FAMILY_CONTRACT.md` — `WEAPON_FAMILY_FIELD_POLEBLADE`;
- `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md` — first-slice Max Stamina `100`.

Next active non-phone design piece:
`INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`.

Do not combine that piece with statuses, terrain-number finalization, Monster 01 attacks, berserk, party design or defeat/retreat behavior.

## Current gate truth

`IMPLEMENTATION_AUTHORIZED = YES`
`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154`
`MONSTER_COLLISION_STATIC = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC = YES / 12_OF_12`
`VIEW_CONTINUITY_HEADLESS = YES / 17_OF_17`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS = YES / 47_OF_47`
`PERFORMANCE_TELEMETRY_HEADLESS = YES / 20_OF_20`
`SUSTAINED_PERFORMANCE_PROTOCOL_PREPARED = YES`
`GODOT_PARSE_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`SUSTAINED_PERFORMANCE_PHONE_EXECUTED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`IMPLEMENTATION_BLOCKER = GALAXY_A03S_DEVICE_EVIDENCE_REQUIRED_FOR_STAGE1_PHONE_GATE`
`NEXT_IMPLEMENTATION_ACTION = DEFERRED_GALAXY_A03S_PERFORMANCE_AND_REGRESSION_EXECUTION_WHEN_DEVICE_AVAILABLE`
`NEXT_ACTIVE_NON_PHONE_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`
