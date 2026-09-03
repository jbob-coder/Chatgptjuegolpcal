# Unnamed Hunt RPG — Project Handoff

Status: STAGE 1 VIEW-CONTINUITY APK BUILD VERIFIED / PHONE EVIDENCE DEFERRED / LIFECYCLE REVIEW NEXT
Last reconciled: 2026-09-03

## CURRENT_OBJECTIVE

Finish the Stage-1 Android foundation before broad game construction.

Current explicit user instruction allows development to continue without waiting for Galaxy A03s reports. Missing phone tests must be recorded as deferred, never treated as PASS.

Current exact implementation-lane action:
**ANDROID_LIFECYCLE_BACKGROUND_RESUME_FOUNDATION_REVIEW**.

Implementation is authorized inside the isolated Stage-1 probe, but Stage 2/domain/combat source remains behind the engine-phone readiness gate.

Probe root:
`probes/android_stage1/`

Operating contract:
`EVOLVE_ALIGNMENT.md`

Protected control-camera authority:
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`

Newest specialized handoff:
`docs/70_handoff/STAGE1_AERIAL_FIRST_PERSON_STATE_CONTINUITY_2026-09-03.md`

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

## VERIFIED STAGE-1 BUILD CHAIN

Current source build:
`c218b273a49dbdce78ce143698fd87d07bdd2643`

Workflow:
`33807677829`

Current automated results:
- static preflight `154 / 154 PASS`;
- Monster collision guard `8 / 8 PASS`;
- world-boundary guard `12 / 12 PASS`;
- Godot 4.7.2 import/parse PASS;
- Boot smoke PASS;
- ProbeWorld smoke PASS;
- executable aerial↔first-person continuity test `17 / 17 PASS`;
- Android export PASS;
- APK integrity PASS.

APK:
`UnnamedHuntRPG-Stage1Probe-debug.apk`

Size:
`57,570,361 bytes`

SHA-256:
`db046d03d778228e6343b5ada35f2fa9392a8c79c519d1e7cd58d632e701c6da`

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
`probes/android_stage1/docs/CONTROL_CAMERA_FOUNDATION_README.md`

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
Root cause: Monster had visual mesh only.

Current source adds fixed `StaticBody3D` + matching `BoxShape3D` representative collider.

Automated source/build: PASS.
Phone solidity: deferred/unverified.

### World boundary
Existing phone-positive `PROBE_BOUNDS = 8.5` behavior was not retuned.

New semantic guard verifies X/Z clamp ordering and geometric floor margin.

Automated source/build: PASS.
Current-build phone regression: deferred/unverified.

### Aerial ↔ first-person continuity
New executable Godot headless regression instantiates the real scene and verifies camera ownership, Hunter transform continuity, hidden aerial synchronization, no stale camera revival and repeated-toggle no-drift.

Automated runtime/build: `17 / 17 PASS`.
Phone visual/input/clipping regression: deferred/unverified.

## DEFERRED TARGET-PHONE BUNDLE

When the user can test on Galaxy A03s, current deferred evidence includes:
- heading-reset joystick after turning/re-touching;
- partial/diagonal input + Settings/Look-Speed persistence;
- Monster front/sides/edge collision pressure;
- current-build world-boundary edge/corner containment;
- repeated aerial↔first-person visual/input continuity and clipping;
- background/resume + lock/unlock;
- sustained frame pacing/thermal behavior.

Do not mark any deferred item PASS without direct evidence.

## EXACT NEXT IMPLEMENTATION PIECE

**ANDROID_LIFECYCLE_BACKGROUND_RESUME_FOUNDATION_REVIEW**

Review first; do not code lifecycle behavior until the review identifies the actual current source risk and the smallest correct owner.

Inspect:
- `PROBE_TEST_PROTOCOL.md` lifecycle contract;
- joystick touch-ID/vector ownership;
- Settings state;
- view/camera state;
- Godot Android pause/resume notifications;
- what can be automated versus target-phone-only.

Then record one exact lifecycle implementation/verification piece in EVOLVE.

## FOUNDATION-FIRST SEQUENCE

1. lifecycle review;
2. bounded lifecycle source/verification piece;
3. sustained target-phone performance/thermal evidence;
4. deferred phone regression bundle;
5. evidence-driven repairs only;
6. only then consider Stage 1 closed.

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
`STATIC_PREFLIGHT_VERIFIED = YES / 154_OF_154_CURRENT_BUILD`
`MONSTER_COLLISION_STATIC_PREFLIGHT = YES / 8_OF_8`
`WORLD_BOUNDARY_STATIC_PREFLIGHT = YES / 12_OF_12`
`AERIAL_FIRST_PERSON_STATE_CONTINUITY_HEADLESS = YES / 17_OF_17`
`GODOT_PARSE_VERIFIED = YES`
`HEADLESS_BOOT_SMOKE_VERIFIED = YES`
`HEADLESS_PROBEWORLD_SMOKE_VERIFIED = YES`
`APK_BUILD_VERIFIED = YES`
`PHONE_RUNTIME_VERIFIED = PARTIAL / CURRENT_BUILD_REGRESSION_DEFERRED`
`PERFORMANCE_VERIFIED = NO`
`ENGINE_PHONE_PROBE_VERIFIED = NO`
`FINAL_ENGINE_SELECTED = NO`

`NEXT_IMPLEMENTATION_ACTION = ANDROID_LIFECYCLE_BACKGROUND_RESUME_FOUNDATION_REVIEW`
`NEXT_INDEPENDENT_DESIGN_ACTION = INITIATIVE_AND_TURN_ORDER_PROTOTYPE_CONTRACT`

## AUTHORITY

Current explicit user instruction > current verified source/tests > current owning repository authorities > direct target-device evidence for runtime claims > build evidence > older documents > chat memory/summaries.
