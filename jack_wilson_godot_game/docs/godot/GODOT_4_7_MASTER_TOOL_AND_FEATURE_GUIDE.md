# Godot 4.7 Master Tool and Feature Guide

TARGET_ENGINE: Godot 4.7.x stable
RESEARCH_DATE: 2026-08-20
STATUS: BASELINE_ESTABLISHED_INCREMENTAL
PRIMARY_AUTHORITY: Official Godot 4.7 documentation
RUNTIME_VALIDATION: RUNTIME_GATE_NOT_EXECUTED

## Purpose

This is the repository-side technical authority index for Godot implementation work. It is intentionally incremental: a system becomes VERIFIED_GODOT_DOCUMENTATION only after the relevant Godot 4.7 documentation has been read and recorded. Unresearched systems remain PLANNED rather than being filled from model memory.

## Version discipline

Godot 4.7 has an official versioned documentation set at `https://docs.godotengine.org/en/4.7/`. The official release policy lists Godot 4.7 as released in June 2026 and supported. Do not use the `latest` documentation as implementation authority when a 4.7 page exists because `latest` is the unstable master branch.

Official sources:
- https://docs.godotengine.org/en/4.7/
- https://docs.godotengine.org/en/latest/about/release_policy.html
- https://docs.godotengine.org/en/4.7/tutorials/migrating/upgrading_to_godot_4.7.html

## Validation labels

- VERIFIED_4_7_DOCS: Read from an official `/en/4.7/` page and recorded in the implementation reference log.
- VERIFIED_REPOSITORY: Confirmed in the current game root.
- STATIC_ONLY: Python/repository verification only; Godot engine did not execute it in this environment.
- PLANNED: Research intentionally deferred until a bounded implementation piece requires it.
- UNKNOWN: Evidence is insufficient; do not invent an answer.

## Current validated systems

### CharacterBody3D movement

Status: VERIFIED_4_7_DOCS + VERIFIED_REPOSITORY + STATIC_ONLY

Official class: `CharacterBody3D`
Inheritance: `PhysicsBody3D < CollisionObject3D < Node3D < Node < Object`
Relevant API:
- `velocity: Vector3` is the character's velocity, typically meters per second.
- `move_and_slide() -> bool` moves using `velocity`, performs slide collision response, and should be called from `_physics_process()` or a method called by it.
- Default `motion_mode` is `MOTION_MODE_GROUNDED`, where floor/wall/ceiling classification applies.

Repository rule:
- Do not multiply `CharacterBody3D.velocity` by `delta` before `move_and_slide()`; the 4.7 docs explicitly warn that this turns velocity into a motion vector.
- Existing walking uses `_physics_process()` and `move_and_slide()` and remains statically verified.

Source:
- https://docs.godotengine.org/en/4.7/classes/class_characterbody3d.html

### Input vector and runtime InputMap actions

Status: VERIFIED_4_7_DOCS + VERIFIED_REPOSITORY + STATIC_ONLY

Official classes: `Input`, `InputMap`
Relevant API:
- `Input.get_vector(negative_x, positive_x, negative_y, positive_y, deadzone=-1.0) -> Vector2` is intended for directional vector input and caps length at 1 with a circular deadzone.
- `InputMap.has_action()` checks whether an action exists.
- `InputMap.add_action()` creates an action.
- `InputMap.action_add_event()` associates an `InputEvent` with an action.

Repository rule:
- Existing movement may continue to register missing W/A/S/D actions at runtime through InputMap and read them with Input.get_vector().

Sources:
- https://docs.godotengine.org/en/4.7/classes/class_input.html
- https://docs.godotengine.org/en/4.7/classes/class_inputmap.html

### Captured mouse-look input

Status: VERIFIED_4_7_DOCS + VERIFIED_REPOSITORY + STATIC_ONLY

Official class: `InputEventMouseMotion`
Relevant properties:
- `relative: Vector2` is scaled by content scale factor.
- `screen_relative: Vector2` is unscaled screen-coordinate motion.
- Godot 4.7 documentation recommends `screen_relative` over `relative` for mouse aiming while using `Input.MOUSE_MODE_CAPTURED`, so sensitivity remains consistent across stretch/content-scale configurations.

Repository observation:
- `scripts/player_controller.gd` currently uses `event.relative` for mouse look.
- This is not promoted to a runtime failure because no runtime test was executed. It is recorded as a non-blocking quality issue for a dedicated future piece.

Sources:
- https://docs.godotengine.org/en/4.7/classes/class_inputeventmousemotion.html
- https://docs.godotengine.org/en/4.7/tutorials/inputs/mouse_and_input_coordinates.html

### 3D gravity project settings

Status: VERIFIED_4_7_DOCS + STATIC_ONLY; gameplay implementation PLANNED

Official class: `ProjectSettings`
Relevant settings:
- `physics/3d/default_gravity`: default `9.8`, documented in meters per second squared.
- `physics/3d/default_gravity_vector`: default `Vector3(0, -1, 0)`.
- `ProjectSettings.get_setting()` reads project settings by full path.

Anti-hallucination rule:
- `Input.get_gravity()` is device accelerometer gravity and is not the game world's 3D gravity source. Do not use it for the player gravity implementation.
- Piece 011 must use the documented project 3D gravity settings or another separately researched 4.7 world-gravity source; it may not guess an API from memory.

Source:
- https://docs.godotengine.org/en/4.7/classes/class_projectsettings.html

## Required future research matrix

These subjects are mandatory when their implementation piece becomes active. Their presence here does not mean they have been researched yet.

| Subject | Status | Trigger |
| --- | --- | --- |
| PackedScene loading/unloading and world-cell streaming | PLANNED | First streaming piece |
| Resource caching and threaded loading | PLANNED | First streaming/loading piece |
| Visibility ranges, LOD/HLOD, occlusion, MultiMesh | PLANNED | First world-performance piece |
| NavigationServer3D / NavigationAgent3D | PLANNED | First NPC navigation piece |
| Physics activation/process modes/servers | PLANNED | First simulation-scaling piece |
| WorkerThreadPool/thread restrictions | PLANNED | First threaded-work piece |
| MeshInstance3D, ArrayMesh, SurfaceTool, GridMap, Decal | PLANNED | First procedural/world-geometry piece |
| WorldEnvironment, GI, fog volumes, terrain strategy | PLANNED | First environment-rendering piece |
| Skeleton3D, AnimationPlayer, AnimationTree, IK, ragdolls | PLANNED | First animated character/creature piece |
| Hitboxes/hurtboxes/body-part damage | PLANNED | First combat-body piece |
| Resources, signals, groups, Autoloads, Timers, state machines | PLANNED | First system requiring each facility |
| Save formats, ConfigFile/JSON/binary, migration | PLANNED | First persistence piece |
| Audio buses, 3D audio, Area3D | PLANNED | First audio/spatial-zone piece |
| @tool, EditorPlugin, import pipeline | PLANNED | First editor-tooling piece |
| Headless/runtime testing, remote inspection, profiler/debugger | PLANNED | First executable Godot QA environment |

## Maintenance rule

For every important new Godot system:
1. Read the exact 4.7 documentation first.
2. Record class/method/property/signal/enum/resource/inheritance and restrictions in `GODOT_IMPLEMENTATION_REFERENCE_LOG.md`.
3. Separate documentation verification from repository verification and runtime verification.
4. Add the implementation only in its bounded piece.
5. Keep unresolved or version-ambiguous APIs as UNKNOWN rather than substituting an older/newer API.
