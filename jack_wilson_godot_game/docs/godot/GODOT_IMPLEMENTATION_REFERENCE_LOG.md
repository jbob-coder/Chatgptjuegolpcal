# Godot Implementation Reference Log

This log records documentation evidence actually read for implementation decisions. It is not a general Godot encyclopedia.

## REF-0001 — Godot 4.7 version authority

DATE: 2026-08-20
PIECE: PIECE-010
VERSION: Godot 4.7
TOPIC: Version/release authority
SOURCE: https://docs.godotengine.org/en/4.7/
SUPPLEMENTAL_SOURCE: https://docs.godotengine.org/en/latest/about/release_policy.html
FACTS_VERIFIED: Official versioned 4.7 docs exist; release policy lists Godot 4.7 as a June 2026 supported release; `latest` is the unstable documentation branch.
IMPLEMENTATION_DECISION: Use `/en/4.7/` pages as primary technical authority for this project. Use `stable` only when it resolves to compatible current material, and avoid `latest` unless explicitly researching unreleased behavior.
RUNTIME_VALIDATION: NOT_EXECUTED

## REF-0002 — CharacterBody3D movement

DATE: 2026-08-20
PIECE: PIECE-010
VERSION: Godot 4.7
TOPIC: Script-driven 3D character motion
SOURCE: https://docs.godotengine.org/en/4.7/classes/class_characterbody3d.html
CLASS: CharacterBody3D
INHERITANCE: PhysicsBody3D < CollisionObject3D < Node3D < Node < Object
METHODS: move_and_slide(); is_on_floor(); get_floor_normal(); get_real_velocity()
PROPERTIES: velocity; motion_mode; up_direction; floor_snap_length; floor_max_angle
ENUMS: MotionMode including MOTION_MODE_GROUNDED and MOTION_MODE_FLOATING
RESTRICTIONS/NOTES: move_and_slide() should execute from _physics_process() or a method it calls; velocity is typically meters/second and should not be multiplied by delta before move_and_slide().
REPOSITORY_DECISION: Existing horizontal walking architecture remains documentation-compatible. Gravity will be added as a separate piece rather than folded into this documentation piece.
RUNTIME_VALIDATION: NOT_EXECUTED

## REF-0003 — Input.get_vector

DATE: 2026-08-20
PIECE: PIECE-010
VERSION: Godot 4.7
TOPIC: Four-direction movement input
SOURCE: https://docs.godotengine.org/en/4.7/classes/class_input.html
CLASS: Input singleton
METHOD: get_vector(negative_x, positive_x, negative_y, positive_y, deadzone=-1.0) -> Vector2
NOTES: Intended for directional vector input; vector length is limited to 1 and uses a circular deadzone.
REPOSITORY_DECISION: Retain Input.get_vector for W/A/S/D walking.
RUNTIME_VALIDATION: NOT_EXECUTED

## REF-0004 — InputMap runtime actions

DATE: 2026-08-20
PIECE: PIECE-010
VERSION: Godot 4.7
TOPIC: Runtime input-action registration
SOURCE: https://docs.godotengine.org/en/4.7/classes/class_inputmap.html
CLASS: InputMap singleton
METHODS: has_action(); add_action(); action_add_event(); action_get_events()
RESTRICTIONS/NOTES: InputMap manages InputEventAction mappings; editor tooling has a documented distinction for action_get_events() versus project `input/*` settings.
REPOSITORY_DECISION: Existing runtime fallback registration of missing movement actions remains allowed.
RUNTIME_VALIDATION: NOT_EXECUTED

## REF-0005 — Captured mouse motion

DATE: 2026-08-20
PIECE: PIECE-010; corrected by PIECE-011
VERSION: Godot 4.7
TOPIC: First-person mouse look
SOURCE: https://docs.godotengine.org/en/4.7/classes/class_inputeventmousemotion.html
SUPPLEMENTAL_SOURCE: https://docs.godotengine.org/en/4.7/tutorials/inputs/mouse_and_input_coordinates.html
CLASS: InputEventMouseMotion
PROPERTIES: relative; screen_relative; velocity; screen_velocity
RESTRICTIONS/NOTES: `relative` is content-scale adjusted. `screen_relative` is unscaled and is recommended for mouse aiming with Input.MOUSE_MODE_CAPTURED.
REPOSITORY_OBSERVATION: scripts/player_controller.gd reads event.screen_relative.x and event.screen_relative.y; tests/verify_mouse_look.py requires those expressions.
IMPLEMENTATION_DECISION: Retain the already-correct screen_relative mouse-look implementation. Piece 011 repairs only the stale Piece 010 repository observation; it does not change gameplay.
CORRECTION_EVIDENCE: The same player-controller blob `b7677eccaaae0c522375edca78e251a5b4a8407b` is present at the sealed Piece 006 commit `7eb700fc031a32da53aa2ef656a99e6d5488a80e` and at Piece 011 starting HEAD `e2c217b98b54ba985a5599bb151f2afacab25426`.
RUNTIME_VALIDATION: NOT_EXECUTED

## REF-0006 — 3D project gravity

DATE: 2026-08-20
PIECE: PIECE-010
VERSION: Godot 4.7
TOPIC: Gravity source for planned CharacterBody3D gravity
SOURCE: https://docs.godotengine.org/en/4.7/classes/class_projectsettings.html
CLASS: ProjectSettings
METHODS: get_setting(); get_setting_with_override()
SETTINGS: physics/3d/default_gravity = 9.8; physics/3d/default_gravity_vector = Vector3(0, -1, 0)
UNITS: default gravity strength is meters per second squared.
RESTRICTIONS/NOTES: Project settings are addressed by full path. `Input.get_gravity()` is a device-sensor API and must not be confused with world gravity.
IMPLEMENTATION_DECISION: The future gravity piece will derive player gravity from documented 3D project gravity settings rather than inventing a magic constant or using Input.get_gravity().
RUNTIME_VALIDATION: NOT_EXECUTED

## REF-0007 — Repository-observation correction

DATE: 2026-08-20
PIECE: PIECE-011
TOPIC: Anti-hallucination repair
SOURCE: live GitHub reads of scripts/player_controller.gd and tests/verify_mouse_look.py at the Piece 011 starting HEAD, plus historical readback at Piece 006.
FACTS_VERIFIED: The controller uses event.screen_relative for both mouse axes; the mouse-look test requires screen_relative; the behavior was already present by Piece 006.
IMPLEMENTATION_DECISION: Repository-observation claims in technical documentation must be checked against the live referenced file, and the documentation verifier cross-checks the mouse observation against the controller.
RUNTIME_VALIDATION: NOT_EXECUTED
