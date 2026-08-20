# Jack Wilson Godot Game

Dedicated Godot game root. This directory is intentionally separate from audit, reconstruction, temporary-verification, and story-storage material elsewhere in the repository.

## Development rule
Build one small piece at a time. A piece must be finished and verified before the next piece begins.

## Completed pieces

### Piece 001 — Project foundation
Status: COMPLETE_STATIC
- Godot project descriptor.
- Empty 3D main scene.
- Foundation verifier.

### Piece 002 — Static first-person player shell
Status: COMPLETE_STATIC
- `CharacterBody3D` player root.
- Capsule collision shape.
- Head pivot.
- Active `Camera3D`.
- Player scene instanced by the main scene.

### Piece 003 — Four-direction walking
Status: COMPLETE_STATIC
- W/A/S/D actions are registered at runtime if absent.
- Horizontal walking uses `Input.get_vector()`.
- Player velocity is expressed in meters per second.
- Motion is applied with `CharacterBody3D.move_and_slide()` from `_physics_process()`.

## Not implemented yet
- mouse look
- gravity
- jumping
- sprinting
- start room
- HUD
- Steal
- NPCs
- world simulation
- imported campaign data

Target engine: Godot 4.7.x stable.
