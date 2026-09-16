# Shooter RPG — Verification Record

Status: SCAFFOLD 001 + PLAYER-CAMERA GRAYBOX 001
Last reconciled: 2026-09-16

## Executed

### Static scaffold preflight

Command:
`python shooter_game/tests/scaffold_static_preflight.py`

Observed result:
`SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions=10 version=0.0.0-scaffold.001`

This verifies the checked project structure, project identity strings, main-scene ownership, display/render settings expected by the preflight, semantic InputMap actions, boot resource references, version marker, and absence of selected legacy runtime references.

### Player-camera static preflight

Command:
`python shooter_game/tests/player_camera_static_preflight.py`

Observed result:
`SHOOTER_RPG_PLAYER_CAMERA_STATIC_PASS`

This verifies the checked graybox structure and scope markers, including:
- `CharacterBody3D` player ownership;
- camera yaw/pitch hierarchy;
- `SpringArm3D` + `Camera3D` composition;
- camera-relative movement path;
- Godot gravity call and `move_and_slide()` ownership;
- player exclusion from spring-arm collision;
- current desktop debug bindings;
- use of mouse `screen_relative` for look input;
- boot scene connection to the graybox;
- absence of selected out-of-scope combat/enemy/progression/save markers and legacy-project references.

Static verification does NOT prove GDScript parse success, physics behavior, camera feel or runtime camera collision.

## Prepared but not executed

### Godot scaffold smoke

Command:
`godot --headless --path shooter_game --script res://tests/scaffold_smoke.gd`

Expected marker:
`SHOOTER_RPG_SCAFFOLD_SMOKE_PASS actions=10`

### Godot player-camera smoke

Command:
`godot --headless --path shooter_game --script res://tests/player_camera_smoke.gd`

Expected marker:
`SHOOTER_RPG_PLAYER_CAMERA_SMOKE_PASS`

This smoke loads/instantiates the graybox and checks runtime node types plus selected provisional camera properties.

Status for both Godot smoke tests: NOT EXECUTED in this pass because a Godot executable was not available in the local execution environment. Attempts to obtain the official Godot 4.7.2 Linux binary were blocked by that environment's network/download restrictions.

Do not upgrade these states to HEADLESS_VERIFIED until the commands are actually executed and their results observed.

## Player-camera runtime validation still required

Not yet executed:
- Godot project parse/import;
- boot into graybox under Godot;
- `CharacterBody3D` movement behavior;
- gravity/floor behavior;
- spring-arm collision response;
- mouse capture/look behavior;
- camera clipping inspection;
- control feel/tuning.

## Android / phone / performance

- Android export: NOT EXECUTED.
- APK install: NOT EXECUTED.
- Phone runtime: NOT EXECUTED.
- Touch controls: NOT IMPLEMENTED.
- Performance: NOT EXECUTED.
- Visual quality: NOT VERIFIED.
