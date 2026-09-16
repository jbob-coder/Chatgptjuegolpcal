# Shooter RPG — Perspective Decision 002

Status: CURRENT / SUPERSEDES THIRD-PERSON FOUNDATION PERSPECTIVE
Last reconciled: 2026-09-16
Branch: `shooter-rpg`

## Decision

Shooter RPG is **FIRST-PERSON**.

This explicit current decision supersedes every earlier Shooter RPG statement that selected a third-person or over-the-shoulder gameplay camera.

The rest of Foundation Design 001 remains valid unless separately superseded.

## First-person camera contract

Foundation camera structure:
`CharacterBody3D Player → CameraYaw → CameraPitch → Camera3D`.

Rules:
- camera is positioned at a tunable eye height inside the player collision body;
- yaw and pitch are driven by the same shared look-delta contract for mouse and mobile drag;
- pitch remains clamped;
- locomotion remains camera-relative;
- no third-person spring arm or shoulder offset is part of the active foundation;
- the graybox player body mesh is hidden from the first-person camera to prevent self-occlusion;
- a dedicated first-person arms/weapon view model may be added only in a later weapon-presentation slice;
- camera bob, recoil, weapon sway and screen shake are later presentation systems and must remain tunable/accessibility-aware.

## Mobile control consequence

The active mobile control target remains:
- left thumb = movement joystick;
- right-side drag = first-person camera look;
- right-side action buttons = aim/fire/reload/dodge/interact as their gameplay slices are implemented.

Simultaneous move + look must remain possible.

## Scope consequence

The current mobile-touch slice must adapt to first-person now rather than preserve third-person camera code for compatibility.

## Authority

For camera perspective, this document outranks `SHOOTER_RPG_FOUNDATION_DESIGN_001.md`, older handoffs, earlier graybox documentation, and any earlier third-person wording.
