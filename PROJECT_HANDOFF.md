# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 LIFECYCLE TRANSIENT-INPUT BUILD VERIFIED / PHONE EVIDENCE DEFERRED / PERFORMANCE EVIDENCE PREPARATION NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Finish the Stage-1 Android foundation before broad game construction.

Current explicit user instruction allows development to continue without waiting for Galaxy A03s reports. Missing phone tests must be recorded as deferred, never treated as PASS.

Current exact implementation-lane action:
**STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION**.

Implementation is authorized inside the isolated Stage-1 probe, but Stage 2/domain/combat source remains behind the engine-phone readiness gate.

Probe root:
`probes/android_stage1/`

Operating contract:
`EVOLVE_ALIGNMENT.md`

Protected control-camera authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`

Newest specialized implementation handoff:
`docs/70_handoff/STAGE1_ANDROID_LIFECYCLE_TRANSIENT_INPUT_RESET_2026-09-03.md`

## READ ORDER

1. `EVOLVE_ALIGNMENT.md`
2. `PROJECT_HANDOFF.md`
3. `START_HERE_NEW_CHAT.md`
4. `DOCUMENTATION_INDEX.md`
5. `README.md`
6. `docs/README.md`
7. `docs/00_project/BUILD_READINESS_GATE_MATRIX.md`
8. newest relevant `docs/70_handoff/` file
9. `probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`
10. `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`
11. `probes/android_stage1/README.md`
12. owning package/source/tests for the exact bounded task.

Use current source/build/device evidence rather than old WorldLife material or stale chat summaries.

## ENGINE / DEVICE

Stage-1 candidate:
- Godot 4.7 family;
- current build verification: Godot 4.7.2 stable;
- GDScript;
- GL Compatibility / OpenGL3;
- Android;
- Samsung Galaxy A03s baseline;
- stable 30 FPS representative-scene minimum target.

Godot remains `PROBE_PENDING`, not final production-engine truth.

## VERIFIED STAGE-1 AUTOMATED LINEAGE

Lifecycle implementation source:
`9bcde8404d787180e399b9e44e89cc6760d31c3c`

Workflow:
`33809412041`

Conclusion:
`SUCCESS`.

Results:
- protected static preflight PASS (`154 / 154` existing suite);
- Monster collision guard PASS (`8 / 8`);
- world-boundary guard PASS (`12 / 12`);
- Godot 4.7.2 import/parse PASS;
- Boot headless smoke PASS;
- ProbeWorld headless smoke PASS;
- aerial↔first-person executable regression PASS (`17 / 17`);
- lifecycle transient-input executable regression PASS (`47 / 47` by deterministic test definition);
- Android export PASS;
- APK archive integrity PASS;
- artifact upload PASS.

Uploaded workflow artifact:
- name `UnnamedHuntRPG-Stage1Probe-debug`;
- artifact ID `9914228633`;
- archive size `57,122,507 bytes`;
- archive digest `sha256:7ccf8396616f85d582ec325e3c3b92829153864b1777eb2d170f0e222ef75687`.

The artifact archive digest/size are not the inner APK digest/size and must not be mislabeled.

Prior direct Galaxy A03s evidence established:
- install/runtime smoke;
- landscape + GL Compatibility/OpenGL3;
- instantaneous `60 FPS / ~16.7 ms/frame` and `40.9 MiB` debug static memory;
- basic movement;
- basic first-person entry;
- outer invisible boundary containment;
- preference for heading-follow aerial camera and analog joystick;
- prior Monster pass-through defect.

The instantaneous sample is not sustained-performance verification.

## PROTECTED CONTROL/CAMERA BASELINE

Authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`.

Protected behavior includes:
- analog joystick;
- per-touch Hunter-heading reference capture;
- stable reference during active touch;
- release/re-touch re-centers forward to latest Hunter heading;
- Hunter faces resolved movement;
- aerial camera follows/trails heading;
- aerial camera remains synchronized during first person;
- Settings overlay;
- Controls → Look Speed;
- default `35%`;
- persistence `user://stage1_settings.cfg` / `controls/look_speed`;
- Settings opening resets movement;
- separate aerial/first-person toggle.

Do not silently remove or materially retune protected behavior.

## COMPLETED CURRENT FOUNDATION PIECES

### Monster placeholder collision
Root cause was a visual-only Monster placeholder. Current source has a fixed representative `StaticBody3D` + matching `BoxShape3D`.

Automated source/build: PASS.
Phone solidity: deferred/unverified.

### World boundary
Existing phone-positive `PROBE_BOUNDS = 8.5` behavior remains unchanged. Semantic guard verifies X/Z clamp ordering and floor margin.

Automated source/build: PASS.
Current-build phone containment: deferred/unverified.

### Aerial ↔ first-person continuity
`ci/stage1/state_continuity_test.gd` instantiates the real scene and verifies camera ownership, Hunter transform continuity, hidden aerial synchronization, no stale-camera revival and repeated-toggle no-drift.

Automated runtime/build: `17 / 17 PASS`.
Phone visual/input/clipping regression: deferred/unverified.

### Android lifecycle transient-input reset
Root cause: an active joystick touch can be interrupted by Android pause/defocus before the matching release reaches ProbeWorld.

Owner:
`probes/android_stage1/scripts/probe_world.gd`.

Implemented:
`_notification()` routes application pause/resume and focus-out/focus-in to existing `_reset_joystick()` only.

Executable owner:
`ci/stage1/lifecycle_transient_input_test.gd`.

Automated runtime/build: PASS (`47 / 47` deterministic checks).
Phone background/resume + lock/unlock: deferred/unverified.

No production lifecycle manager or save architecture was added.

## DEFERRED TARGET-PHONE BUNDLE

When the user can test on Galaxy A03s, deferred evidence includes:
- heading-reset joystick after turning/re-touching;
- partial/diagonal input + Settings/Look-Speed persistence;
- Monster front/sides/edge collision pressure;
- current-build world-boundary edge/corner containment;
- repeated aerial↔first-person visual/input continuity and clipping;
- background/resume + lock/unlock and no stale joystick state;
- sustained frame pacing/thermal behavior.

Do not mark any deferred item PASS without direct evidence.

## EXACT NEXT IMPLEMENTATION PIECE

**STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION**

This is preparation, not phone execution.

Read:
- `PERFORMANCE_BUDGETS_AND_CAPS.md`;
- `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md` Test 6;
- current Stage-1 instrumentation/source only as needed.

Produce one bounded reproducible Galaxy A03s sustained-run evidence packet that defines:
- exact run sequence/durations;
- FPS/frame-time observation method;
- input-response and transition-hitch observations;
- thermal signal recording;
- memory fields available in the current probe;
- pass/fail/stop conditions;
- exact evidence the user can return later.

Do not retune shadows, render scale, camera, controls, Monster detail or gameplay before measured evidence identifies a failure.

## FOUNDATION-FIRST SEQUENCE

1. sustained-performance evidence preparation;
2. sustained target-phone performance/thermal execution when device access exists;
3. deferred phone regression bundle;
4. evidence-driven repairs only;
5. only then consider Stage 1 closed.

## COMBAT DESIGN FOUNDATION

Recorded authorities under `docs/20_gameplay/combat/`:
1. `ACTION_ECONOMY_CONTRACT.md` — 4 AP / 1 RP / persistent Stamina;
2. `COMBAT_RESOLUTION_HIT_QUALITY_DEFENSE_CONTRACT.md`;
3. `FIRST_WEAPON_FAMILY_CONTRACT.md` — `WEAPON_FAMILY_FIELD_POLEBLADE`;
4. `STAMINA_PROTOTYPE_SCALE_AND_RECOVERY_CONTRACT.md` — first-slice Max Stamina `100`.

Next independent design packet:
**INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT**.

Combat implementation remains blocked by readiness gates.

## CURRENT CONTENT REFERENCES

World scale:
`1 world unit = 1 meter`.

Settlement 01:
compact defensible frontier settlement with Hunter Service Loop.

Region 01:
seven planned sectors S00–S06 with physical tracking and persistent monster escape/reacquisition.

Hunter Base 01:
1.75 m reusable humanoid base.

Monster 01 — Mudcrest Raker:
~6.6 m long / ~3.0 m shoulder-body height; horn crest; dorsal plates; mud-adapted feet; legal distal tail sever; internal life crystal; deterministic behavior contract.

## CURRENT GATE TRUTH

`IMPLEMENTATION_AUTHORIZED = YES`
`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154`
`MONSTER_COLLISION_STATIC_PREFLIGHT = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC_PREFLIGHT = YES / 12_OF_12`
`AERIAL_FIRST_PERSON_STATE_CONTINUITY_HEADLESS = YES / 17_OF_17`
`LIFECYCLE_TRANSIENT_INPUT_HEADLESS = YES / 47_OF_47`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`LIFECYCLE_PHONE_VERIFIED = NO / DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`

## AUTHORITY

Current explicit user instruction > current verified source/tests > current owning repository authorities > direct target-device evidence for runtime claims > build evidence > older documents > chat memory/summaries.
