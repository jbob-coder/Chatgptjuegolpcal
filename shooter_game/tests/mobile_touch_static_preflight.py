#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path
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

adapter = read("scripts/input/mobile_touch_input.gd")
button = read("scripts/input/mobile_action_button.gd")
ui_scene = read("scenes/ui/mobile_controls.tscn")
graybox = read("scenes/graybox/player_camera_graybox.tscn")
controller = read("scripts/player/player_controller.gd")
project = read("project.godot")

for token in (
    "InputEventScreenTouch",
    "InputEventScreenDrag",
    "movement_region_width_ratio",
    "touch_look_multiplier",
    "set_movement_vector",
    "submit_look_delta",
    "DisplayServer.get_display_safe_area()",
    'Input.action_press(action, strength)',
):
    require(token in adapter, f"mobile touch adapter missing: {token}")

for token in (
    "class_name ShooterMobileActionButton",
    "Input.action_press(action_name, 1.0)",
    "Input.action_release(action_name)",
):
    require(token in button, f"mobile action button missing: {token}")

for token in (
    '[node name="TouchSurface" type="Control"',
    '[node name="SafeArea" type="Control"',
    '[node name="JumpButton" type="Button"',
    'action_name = &"jump"',
    'action_name = &"aim"',
    'action_name = &"fire"',
):
    require(token in ui_scene, f"mobile controls scene missing: {token}")

require('res://scenes/ui/mobile_controls.tscn' in graybox, "graybox does not instance mobile controls")
require('func apply_look_delta(' in controller, "player controller lacks shared look-delta contract")
require('jump={' in project, "project InputMap lacks jump")

combined = "\n".join((adapter, button, ui_scene, graybox, controller))
for forbidden in (
    "apply_damage",
    "raycast_shoot",
    "enemy_ai",
    "level_up",
    "save_game",
    "HUNT01",
    "WorldLife",
    "Unnamed Hunt",
):
    require(forbidden not in combined, f"out-of-scope or legacy dependency found: {forbidden}")

if failures:
    print("SHOOTER_RPG_MOBILE_TOUCH_STATIC_FAIL")
    for failure in failures:
        print(f" - {failure}")
    sys.exit(1)

print("SHOOTER_RPG_MOBILE_TOUCH_STATIC_PASS move_look_jump=yes")
