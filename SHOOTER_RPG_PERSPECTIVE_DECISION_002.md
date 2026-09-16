# Shooter RPG — Perspective Decision 002

Status: CURRENT / SUPERSEDES THIRD-PERSON FOUNDATION PERSPECTIVE
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Decision

Shooter RPG is **FIRST-PERSON**.

This explicit current decision supersedes every earlier Shooter RPG statement that selected a third-person or over-the-shoulder gameplay camera.

The rest of Foundation Design 001 remains valid unless separately superseded.

## Field of view

Player-facing target: **115 degrees horizontal FOV**.

Godot `Camera3D.fov` is not treated as a literal 115-degree value here. With `Camera3D.KEEP_HEIGHT`, Godot's camera FOV is vertical, so the controller converts the 115-degree horizontal target to the correct vertical FOV for the current viewport aspect ratio. At 16:9 the equivalent is approximately `82.8857` vertical degrees.

This keeps the intended shooter-style horizontal view across different landscape phone ratios without accidentally creating an extreme 115-degree vertical lens.

## First-person camera contract

Foundation camera structure:
`CharacterBody3D Player → CameraYaw → CameraPitch → Camera3D`.

Rules:
- camera is positioned at a tunable eye height inside the player collision body;
- yaw and pitch use the same shared look-delta contract for mouse and mobile drag;
- pitch remains clamped;
- locomotion remains camera-relative;
- no third-person spring arm or shoulder offset belongs to the active foundation;
- the graybox body mesh is hidden from the first-person camera to prevent self-occlusion;
- a dedicated arms/weapon view model belongs to a later weapon-presentation slice;
- camera bob, recoil, weapon sway and screen shake remain later tunable/accessibility-aware presentation systems.

## Movement consequence

First-person traversal is technique-driven. Current movement foundation includes:
- ground movement;
- ground jump;
- air control;
- wall jump;
- shared mouse/touch look.

Movement-technique authority: `SHOOTER_RPG_MOVEMENT_TECHNIQUES_001.md`.

## Mobile control consequence

Current target:
- left thumb = movement joystick;
- right-side drag = first-person camera look;
- dedicated JUMP button supports ground jump and wall jump;
- right-side action buttons reserve aim/fire/dodge as their gameplay systems arrive.

Simultaneous move + look + jump must remain structurally possible.

## Authority

For camera perspective/FOV, this document outranks `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`, older handoffs, earlier graybox documentation and any earlier third-person wording.
