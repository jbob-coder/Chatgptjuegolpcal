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


preset = read("export_presets.cfg")
project = read("project.godot")
controller = read("scripts/player/player_controller.gd")

for token in (
    'name="Android Debug"',
    'platform="Android"',
    'export_path="build/android/ShooterRPG-AndroidDevice001-debug.apk"',
    'architectures/armeabi-v7a=true',
    'architectures/arm64-v8a=true',
    'package/unique_name="com.jbobcoder.shooterrpg"',
    'package/name="Shooter RPG"',
    'version/name="0.0.1-device-probe"',
):
    require(token in preset, f"Android export preset missing: {token}")

for token in (
    'window/handheld/orientation=0',
    'window/frame_pacing/android/enable_frame_pacing=true',
    'renderer/rendering_method="mobile"',
    'textures/vram_compression/import_etc2_astc=true',
):
    require(token in project, f"Android project setting missing: {token}")

require('target_horizontal_fov_degrees := 115.0' in controller, "first-person target horizontal FOV is not 115 degrees")
require('wall_jump_vertical_speed_mps' in controller, "wall jump vertical tuning missing")
require('wall_jump_horizontal_speed_mps' in controller, "wall jump horizontal tuning missing")

for forbidden in (
    "keystore/release",
    "release_keystore",
    "release_password",
    "WorldLife",
    "Unnamed Hunt",
):
    require(forbidden not in preset, f"forbidden/legacy Android export token found: {forbidden}")

if failures:
    print("SHOOTER_RPG_ANDROID_EXPORT_STATIC_FAIL")
    for failure in failures:
        print(f" - {failure}")
    sys.exit(1)

print("SHOOTER_RPG_ANDROID_EXPORT_STATIC_PASS package=com.jbobcoder.shooterrpg arches=armv7+arm64")
