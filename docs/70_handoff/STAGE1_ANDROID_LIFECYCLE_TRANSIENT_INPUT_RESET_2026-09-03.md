# Stage 1 Android Lifecycle Transient-Input Reset — 2026-09-03

Status: SOURCE + TEST CONTRACT PREPARED / CI VERIFICATION PENDING

## Bounded piece

`ANDROID_LIFECYCLE_TRANSIENT_INPUT_RESET_IMPLEMENTATION_AND_HEADLESS_REGRESSION`

## Root cause

The Stage-1 analog joystick owns transient active-touch state in `_joystick_touch_id` and `_joystick_vector`.

A normal matching release calls `_reset_joystick()`, but Android pause/defocus can interrupt the active touch before that release reaches ProbeWorld. Without a lifecycle boundary, stale touch ownership/vector state can survive and cause stuck movement or prevent a new touch from acquiring the joystick.

## Implemented source behavior

Owner:
`probes/android_stage1/scripts/probe_world.gd`.

Added `_notification(what)` and route these boundaries to the existing `_reset_joystick()`:
- `NOTIFICATION_APPLICATION_PAUSED`;
- `NOTIFICATION_APPLICATION_RESUMED`;
- `NOTIFICATION_APPLICATION_FOCUS_OUT`;
- `NOTIFICATION_APPLICATION_FOCUS_IN`.

No second reset implementation was introduced.

The lifecycle reset intentionally does not mutate:
- Hunter transform;
- `_first_person`;
- camera tuning/ownership beyond existing state;
- `_settings_open` / Settings visibility;
- `_look_speed` or persisted Look Speed;
- Monster collision;
- world-boundary behavior;
- production save/load state.

## Executable regression

New test:
`ci/stage1/lifecycle_transient_input_test.gd`.

The real ProbeWorld is instantiated, then deliberately placed in non-default first-person + Settings-open state. For each lifecycle/focus notification the test:
1. seeds an active touch ID and nonzero joystick vector;
2. injects the notification through `Object.notification()`;
3. verifies touch ID clears to `-1`;
4. verifies joystick vector clears to zero;
5. verifies Hunter position/rotation are unchanged;
6. verifies first-person/camera ownership remains unchanged;
7. verifies Settings state remains unchanged;
8. verifies Look Speed remains unchanged;
9. verifies only one ProbeWorld exists;
10. repeats the notification to verify idempotence.

Expected gate:
`ANDROID_LIFECYCLE_TRANSIENT_INPUT_RUNTIME_VERIFIED`.

## CI integration

Updated:
`.github/workflows/stage1-android-probe-apk.yml`.

The lifecycle regression runs after the existing aerial↔first-person continuity regression and before Android export. Any parse/runtime failure or missing lifecycle gate marker fails the job.

## Owning protocol/package updates

Updated:
- `probes/android_stage1/docs/PROBE_TEST_PROTOCOL.md`;
- `probes/android_stage1/README.md`.

The protocol now uses analog-control language, records the current `154/154`, `8/8`, `12/12`, `17/17` pre-lifecycle lineage, and separates automated lifecycle response verification from Galaxy A03s OS-delivery verification.

## Verification boundary

Current source/test preparation is not yet enough to claim:
- Godot 4.7.2 parse PASS for this new source;
- lifecycle headless PASS;
- Android export/APK PASS for this new source;
- Galaxy A03s background/resume or lock/unlock PASS.

Those statuses must be updated only from actual CI/device evidence.

## Next action after CI

If the workflow is green, reconcile EVOLVE/current-state docs with the exact commit, workflow, lifecycle check count, APK size/hash and deferred phone status. Then move the implementation lane to:
`STAGE1_SUSTAINED_PERFORMANCE_EVIDENCE_PREPARATION`.
