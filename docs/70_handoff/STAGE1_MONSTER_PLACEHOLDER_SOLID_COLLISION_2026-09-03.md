# Stage 1 Monster Placeholder Solid Collision Repair — 2026-09-03

Status: SOURCE PREPARED / BUILD VERIFICATION PENDING / PHONE COLLISION RETEST DEFERRED

## Trigger

Direct Samsung Galaxy A03s evidence from the prior Stage-1 build established that the Hunter could move through the brown Monster placeholder.

Current user instruction on 2026-09-03 explicitly says not to stop development waiting for phone reports. Missing phone checks must be recorded for later while foundation work continues one bounded piece at a time.

## Bounded piece

`MONSTER_PLACEHOLDER_SOLID_COLLISION_REPAIR`

Scope is limited to making the representative brown Monster volume a solid obstacle in the isolated Stage-1 engine probe.

Explicitly out of scope:
- combat;
- Monster AI/behavior;
- damage;
- navigation;
- harvesting;
- production Monster physics;
- production anatomy/hitboxes;
- Region 01 implementation.

## Root cause

Before this repair, `probes/android_stage1/scenes/probe_world.tscn` represented the Monster only as a `MeshInstance3D` with a `BoxMesh`.

A visual mesh is not a physics collision body, so the Hunter `CharacterBody3D` had nothing solid to collide against.

## Selected repair

Add a separate `StaticBody3D` named `MonsterCollider` at the Monster's base position with a `BoxShape3D` matching the representative Monster volume:

- position: `Vector3(0, 1.2, -5.5)`;
- size: `Vector3(2.5, 2.4, 5.8)`.

The existing `Monster` visual node remains a `MeshInstance3D` and retains its small procedural bob/yaw presentation motion.

The collider intentionally stays fixed because the current Stage-1 placeholder does not translate through the world; its motion is cosmetic around a fixed footprint. This keeps the repair smaller than introducing moving-body physics and avoids silently turning probe behavior into production Monster physics.

## Regression guard

Added:
`probes/android_stage1/tests/monster_collision_preflight.py`

It checks that:
- `Shape_monster` exists;
- representative visual/collision dimensions remain aligned;
- `MonsterCollider` remains a `StaticBody3D`;
- the collision shape is parented to that body;
- the Monster visual node remains intact.

The Stage-1 Android workflow now runs this collision preflight immediately after the existing repository static preflight.

## Files in this source commit

- `probes/android_stage1/scenes/probe_world.tscn`;
- `probes/android_stage1/tests/monster_collision_preflight.py`;
- `.github/workflows/stage1-android-probe-apk.yml`;
- this handoff.

## Verification boundary

Required highest available automated gates after commit:
1. existing static preflight;
2. Monster collision static preflight;
3. Godot 4.7.2 import/parse;
4. Boot headless smoke;
5. ProbeWorld headless smoke;
6. Android debug export;
7. APK archive integrity.

Phone collision acceptance remains required later on Galaxy A03s:
1. approach the brown Monster from front, rear and both sides;
2. press continuously into it;
3. verify the Hunter cannot cross through the solid representative volume;
4. slide along an edge/corner and verify no obvious tunneling-through behavior;
5. verify outer world-boundary containment still works;
6. verify joystick/settings/look-speed and aerial ↔ first-person behavior are not regressed.

Until that phone evidence exists:
`MONSTER_PLACEHOLDER_SOLID_COLLISION_PHONE_VERIFIED = NO`.

## Next foundation piece after automated build closure

Per the existing Stage-1 sequence, the next independent bounded source/verification piece is:
`WORLD_BOUNDARY_REGRESSION_GUARD_AND_BUILD_VERIFICATION`.

This does not claim the deferred heading-reset or Monster collision phone tests passed.
