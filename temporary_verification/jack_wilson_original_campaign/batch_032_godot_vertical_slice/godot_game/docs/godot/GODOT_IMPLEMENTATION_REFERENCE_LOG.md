# Godot implementation reference log

## 2026-08-20 — Batch 032 first-person movement
Target: Godot 4.7.x stable API compatibility.

Validated implementation choices:
- Player root: `CharacterBody3D`.
- Movement is performed in `_physics_process()`.
- `velocity` is maintained in meters per second and is not pre-multiplied by `delta` before `move_and_slide()`.
- Gravity uses `get_gravity() * delta`.
- World collision in the first slice uses `StaticBody3D` + `BoxShape3D` primitives.
- No paid asset, plugin, service, hosted runner, or external runtime dependency is required.

Official reference:
- Godot 4.7, Using CharacterBody2D/3D: https://docs.godotengine.org/en/4.7/tutorials/physics/using_character_body_2d.html
- Godot 4.7, Using 3D transforms: https://docs.godotengine.org/en/4.7/tutorials/3d/using_transforms.html

Risk notes:
- Furniture placement is only a reversible prototype layout because campaign authority gives obstacle identities/footprints but not exact local coordinates.
- Steal does not resolve in this batch. Direct physical contact and a living target are mandatory campaign rules; there is no valid living target in the implemented start slice.
- The corridor downstream endpoint is a temporary collision boundary; it does not overwrite the authoritative route graph.
