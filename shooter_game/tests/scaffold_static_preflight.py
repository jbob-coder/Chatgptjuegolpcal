#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
REQUIRED_ACTIONS = (
    "move_left",
    "move_right",
    "move_forward",
    "move_back",
    "jump",
    "aim",
    "fire",
    "reload",
    "dodge",
    "interact",
    "pause_game",
)

failures: list[str] = []


def require(condition: bool, message: str) -> None:
    if not condition:
        failures.append(message)


def read(relative: str) -> str:
    path = ROOT / relative
    require(path.is_file(), f"missing file: {relative}")
    return path.read_text(encoding="utf-8") if path.is_file() else ""

project = read("project.godot")
boot_scene = read("scenes/boot/boot.tscn")
boot_script = read("scripts/boot/boot.gd")
contract = read("scripts/core/project_contract.gd")
smoke = read("tests/scaffold_smoke.gd")
read("README.md")
read("docs/ARCHITECTURE.md")
version = read("VERSION").strip()

require('config/name="Shooter RPG"' in project, "project name is not Shooter RPG")
require('run/main_scene="res://scenes/boot/boot.tscn"' in project, "wrong main scene")
require('[display]' in project, "missing [display] section")
require('[display/window]' not in project, "invalid [display/window] section detected")
require('window/size/viewport_width=1280' in project, "missing viewport width")
require('window/size/viewport_height=720' in project, "missing viewport height")
require('window/stretch/mode="canvas_items"' in project, "wrong stretch mode")
require('window/stretch/aspect="expand"' in project, "stretch aspect must expand for phone ratios")
require('renderer/rendering_method="mobile"' in project, "mobile renderer is not selected")

for action in REQUIRED_ACTIONS:
    require(re.search(rf"(?m)^{re.escape(action)}=\{{", project) is not None, f"missing InputMap action: {action}")
    require(f'"{action}"' in contract, f"project contract missing action: {action}")
    require(f'"{action}"' in smoke, f"headless smoke missing action: {action}")

require('res://scripts/boot/boot.gd' in boot_scene, "boot scene does not own boot.gd")
require('[node name="Boot" type="Node"]' in boot_scene, "boot root must be Node")
require('res://scenes/graybox/player_camera_graybox.tscn' in boot_scene, "boot scene must instance the active graybox")
require('SHOOTER_RPG_BOOT_OK scaffold=001' in boot_script, "boot marker missing")
require('const PROJECT_ID := "shooter_rpg"' in contract, "project identity contract missing")
require(version == "0.0.0-scaffold.001", f"unexpected VERSION: {version!r}")

combined = "\n".join((project, boot_scene, boot_script, contract, smoke))
for forbidden in ("res://../game", "res://game/", "HUNT01", "WorldLife", "Unnamed Hunt"):
    require(forbidden not in combined, f"legacy dependency/reference found in runtime scaffold: {forbidden}")

if failures:
    print("SHOOTER_RPG_SCAFFOLD_STATIC_FAIL")
    for failure in failures:
        print(f" - {failure}")
    sys.exit(1)

print(f"SHOOTER_RPG_SCAFFOLD_STATIC_PASS actions={len(REQUIRED_ACTIONS)} version={version}")
