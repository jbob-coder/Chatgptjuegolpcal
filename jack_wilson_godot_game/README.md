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

### Piece 004 — Mouse look
Status: COMPLETE_STATIC
- Mouse is captured when the player initializes.
- Horizontal mouse motion yaws the player body.
- Vertical mouse motion pitches the head pivot.
- Pitch is clamped to ±85 degrees.
- Escape toggles mouse capture/visibility.

### Piece 005 — Start-room data contract
Status: COMPLETE_STATIC
- Adds `ROOM_JACK_START_01` as a GitHub-side Godot world-build input.
- Preserves the 4.2 × 3.6 × 2.7 m reversible shell and 15.12 m² floor area.
- Preserves the 0.9 × 2.05 m corridor door contract.
- Preserves the neighboring room as a shared-wall, no-portal, non-enterable boundary.
- Explicitly records that the selected shell size is gameplay reconstruction, not an exact source measurement.

### Piece 006 — Start-room floor
Status: COMPLETE_STATIC
- Adds one visible floor mesh sized from the start-room data contract.
- Adds matching `StaticBody3D` + `BoxShape3D` collision.
- Instances the start-room scene from the project main scene.
- Does not add walls, ceiling, furniture, or lighting yet.

## Not implemented yet
- gravity
- jumping
- sprinting
- start-room walls
- start-room ceiling
- furniture
- HUD
- Steal
- NPCs
- world simulation

Target engine: Godot 4.7.x stable.
