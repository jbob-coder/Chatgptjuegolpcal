#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
PROJECT = ROOT / "project.godot"
MAIN_SCENE = ROOT / "scenes" / "main.tscn"


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def main() -> int:
    require(PROJECT.is_file(), "project.godot is missing")
    require(MAIN_SCENE.is_file(), "main scene is missing")

    project_text = PROJECT.read_text(encoding="utf-8")
    scene_text = MAIN_SCENE.read_text(encoding="utf-8")

    require('config/name="Jack Wilson Godot Game"' in project_text, "project name drift")
    require('run/main_scene="res://scenes/main.tscn"' in project_text, "main scene path drift")
    require('[node name="Main" type="Node3D"]' in scene_text, "Main must be a Node3D")

    print("PASS: project descriptor exists")
    print("PASS: main scene exists")
    print("PASS: project points to the main scene")
    print("PASS: main scene root is Node3D")
    print("FOUNDATION_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
