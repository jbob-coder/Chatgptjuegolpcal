# Stage 1 World-Boundary Regression Guard — 2026-09-03

Status: SOURCE GUARD PREPARED / BUILD VERIFICATION PENDING / CURRENT-APK PHONE REGRESSION DEFERRED

## Bounded piece

`WORLD_BOUNDARY_REGRESSION_GUARD_AND_BUILD_VERIFICATION`

Purpose:
protect the existing Stage-1 outer-boundary containment behavior from accidental regression without retuning the boundary or turning the probe into production world architecture.

## Existing evidence

Earlier Galaxy A03s testing produced positive user evidence that the invisible outer boundary contained the Hunter well.

That is evidence for the earlier tested APK only. It does not automatically verify the current build lineage.

## Owning source

`probes/android_stage1/scripts/probe_world.gd`

Current contract:
- `PROBE_BOUNDS = 8.5` meters;
- movement resolves through `hunter.move_and_slide()` first;
- then Hunter X and Z are clamped to `[-PROBE_BOUNDS, +PROBE_BOUNDS]`;
- Y is not hard-clamped by this boundary path;
- the bounded position is written back before aerial-camera synchronization.

Scene geometry used by the guard:
- floor footprint: `20 m × 20 m`;
- Hunter collision radius: `0.32 m`;
- boundary leaves `1.5 m` from Hunter-center limit to each floor edge, greater than the Hunter collision radius.

## Change decision

No movement/source retune is justified by current evidence.

This piece adds a regression guard only.

Added:
`probes/android_stage1/tests/world_boundary_preflight.py`

It verifies:
1. `PROBE_BOUNDS` still exists and remains the phone-positive prototype value `8.5`;
2. `move_and_slide()` remains before the clamp;
3. both X and Z are clamped with `PROBE_BOUNDS`;
4. the bounded position is assigned back to the Hunter;
5. Y is not silently added to the hard clamp;
6. the boundary remains geometrically inside the floor footprint with at least one Hunter collision radius of margin.

The Stage-1 Android CI workflow now executes this guard after the existing protected-control and Monster-collision static guards.

## Scope exclusions

This piece does not:
- change `PROBE_BOUNDS`;
- change movement speed;
- change joystick behavior;
- change camera behavior;
- change Monster collision;
- add production world barriers;
- add Region 01 streaming/navigation;
- add combat or domain systems.

## Verification boundary

Required automated gates:
1. existing Stage-1 static preflight;
2. Monster collision static preflight;
3. world-boundary static regression guard;
4. Godot 4.7.2 import/parse;
5. Boot headless smoke;
6. ProbeWorld headless smoke;
7. Android debug export;
8. APK archive integrity.

Current-build phone regression remains deferred under the user's instruction not to stop development waiting for phone reports.

Later Galaxy A03s acceptance:
- press continuously toward each X/Z outer direction;
- verify the Hunter remains inside the intended playable square;
- test diagonal pressure into all four corners;
- verify collision with the Monster does not allow escaping the world clamp;
- verify view toggling does not move the Hunter outside the boundary;
- verify no stuck movement/input appears at the edge.

## Testability note discovered during this pass

The current Monster collider center is `z = -5.5` with length `5.8 m`, so its rear extent reaches approximately `z = -8.4`, only `0.1 m` inside the `-8.5` Hunter-center boundary.

Therefore a full Hunter approach from behind the Monster is not physically available in the current probe layout. The prior collision handoff's phone checklist item requiring a rear approach is too strict for this layout and should be interpreted as front + both accessible sides + edge/corner pressure unless a separate bounded test-layout pass later repositions the placeholder.

This does not change collision geometry or boundary size in this pass.

## Intended next piece after automated closure

`AERIAL_FIRST_PERSON_STATE_CONTINUITY_REGRESSION_GUARD_AND_BUILD_VERIFICATION`
