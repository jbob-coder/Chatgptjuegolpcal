#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
failures: list[str] = []


def require(condition: bool, message: str) -> None:
    if not condition:
        failures.append(message)


def read(relative: str) -> str:
    path = ROOT / relative
    require(path.is_file(), f"missing file: {relative}")
    return path.read_text(encoding="utf-8") if path.is_file() else ""

scene = read("scenes/graybox/player_camera_graybox.tscn")
controller = read("scripts/player/player_controller.gd")
bindings = read("scripts/input/debug_input_bindings.gd")
boot_scene = read("scenes/boot/boot.tscn")
boot_script = read("scripts/boot/boot.gd")

header_match = re.search(r"^\[gd_scene load_steps=(\d+) format=3\]$", scene, flags=re.MULTILINE)
require(header_match is not None, "graybox scene header/load_steps is missing")
if header_match is not None:
    declared_steps = int(header_match.group(1))
    referenced_resources = scene.count("[ext_resource ") + scene.count("[sub_resource ")
    require(
        declared_steps == referenced_resources + 1,
        f"graybox load_steps mismatch: declared={declared_steps} expected={referenced_resources + 1}",
    )

for required_scene_token in (
    '[node name="Player" type="CharacterBody3D"',
    '[node name="CameraYaw" type="Node3D" parent="Player"]',
    '[node name="CameraPitch" type="Node3D" parent="Player/CameraYaw"]',
    '[node name="Camera3D" type="Camera3D" parent="Player/CameraYaw/CameraPitch"]',
    'visible = false',
    '[node name="Ground" type="StaticBody3D"',
    '[node name="Obstacle" type="StaticBody3D"',
):
    require(required_scene_token in scene, f"graybox scene missing: {required_scene_token}")

require("SpringArm3D" not in scene, "first-person graybox must not contain a third-person spring arm")

for required_controller_token in (
    "extends CharacterBody3D",
    "velocity += get_gravity() * delta",
    'Input.get_vector("move_left", "move_right", "move_forward", "move_back")',
    "move_and_slide()",
    "func apply_look_delta(",
    "event.screen_relative",
    '$CameraYaw/CameraPitch/Camera3D',
):
    require(required_controller_token in controller, f"player controller missing: {required_controller_token}")

require("spring_arm" not in controller, "first-person controller still references third-person spring arm")

for required_binding_token in (
    'KEY_W',
    'KEY_A',
    'KEY_S',
    'KEY_D',
    'KEY_ESCAPE',
    '_ensure_mouse_button("aim", MOUSE_BUTTON_RIGHT)',
    '_ensure_mouse_button("fire", MOUSE_BUTTON_LEFT)',
):
    require(required_binding_token in bindings, f"debug binding missing: {required_binding_token}")

require('res://scenes/graybox/player_camera_graybox.tscn' in boot_scene, "boot scene does not instance player-camera graybox")
require('SHOOTER_RPG_BOOT_OK scaffold=001 graybox=player_camera_001' in boot_script, "graybox boot marker missing")

combined = "\n".join((scene, controller, bindings, boot_scene, boot_script))
for forbidden in (
    "raycast_shoot",
    "apply_damage",
    "enemy_ai",
    "level_up",
    "save_game",
    "HUNT01",
    "WorldLife",
    "Unnamed Hunt",
):
    require(forbidden not in combined, f"out-of-scope or legacy dependency found: {forbidden}")

if failures:
    print("SHOOTER_RPG_PLAYER_CAMERA_STATIC_FAIL")
    for failure in failures:
        print(f" - {failure}")
    sys.exit(1)

print("SHOOTER_RPG_PLAYER_CAMERA_STATIC_PASS perspective=first_person")
