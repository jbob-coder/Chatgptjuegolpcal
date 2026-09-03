# Stage 1 Aerial ↔ First-Person State Continuity Regression — 2026-09-03

Status: EXECUTABLE HEADLESS REGRESSION PREPARED / BUILD VERIFICATION PENDING / PHONE VISUAL RETEST DEFERRED

## Bounded piece

`AERIAL_FIRST_PERSON_STATE_CONTINUITY_REGRESSION_GUARD_AND_BUILD_VERIFICATION`

Purpose:
verify that the Stage-1 view toggle changes camera/presentation state without mutating the authoritative Hunter transform, and that the aerial camera continues synchronizing while first person is active so return-to-aerial does not revive stale state.

## Owning source

`probes/android_stage1/scripts/probe_world.gd`

Current source already intends:
- `_on_toggle_view_pressed()` only flips `_first_person` and calls `_update_view_state()`;
- `_update_view_state()` switches current cameras, Hunter body visibility and HUD mode text;
- `_physics_process()` calls `_update_aerial_camera(delta)` regardless of active view;
- Hunter authoritative position is not explicitly changed by the view-toggle handler.

No source behavior retune is justified before testing that existing contract directly.

## Selected regression method

Added repository CI test:
`ci/stage1/state_continuity_test.gd`

Godot's command-line contract supports `--script` for scripts inheriting `SceneTree`, including headless execution. The workflow runs the test against the real `probes/android_stage1/` project using Godot 4.7.2.

The test:
1. loads and instantiates `ProbeWorld`;
2. confirms initial aerial camera ownership and Hunter body visibility;
3. toggles to first person;
4. confirms Hunter transform is unchanged by the toggle;
5. moves/rotates the Hunter to a known authoritative transform while first person is active;
6. waits through ten physics frames;
7. confirms the hidden aerial camera actually moved from its pre-change position, proving it continued synchronizing;
8. toggles back to aerial;
9. confirms Hunter position/rotation remain unchanged;
10. confirms the aerial camera did not jump back to its stale pre-first-person position;
11. performs twenty additional synchronous view toggles;
12. confirms no Hunter transform drift and that the even toggle count returns to aerial mode.

## Scope exclusions

This piece does not:
- modify camera tuning;
- modify Look Speed;
- modify joystick/reference-frame behavior;
- add first-person free-look/right stick;
- add combat aiming;
- modify Monster collision;
- modify world boundary;
- create production camera architecture.

## Verification boundary

Required automated gates:
1. existing protected Stage-1 static preflight;
2. Monster collision guard;
3. world-boundary guard;
4. Godot import/parse;
5. Boot smoke;
6. ProbeWorld smoke;
7. executable headless aerial/first-person continuity regression;
8. Android debug export;
9. APK integrity.

Phone visual/input acceptance remains deferred under the user's instruction not to stop development waiting for device reports.

Later Galaxy A03s acceptance:
- toggle aerial → first person → aerial repeatedly while stationary;
- repeat after moving/turning in each view;
- verify Hunter does not teleport or drift;
- verify returned aerial framing follows current Hunter location/heading rather than an old pose;
- verify first-person framing has no severe clipping;
- verify joystick/settings/Look Speed remain usable.

## Intended next piece after automated closure

`ANDROID_LIFECYCLE_BACKGROUND_RESUME_FOUNDATION_REVIEW`
