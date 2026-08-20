#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MAIN_SCENE = ROOT / "scenes" / "main.tscn"
PLAYER_SCENE = ROOT / "scenes" / "player.tscn"


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def main() -> int:
    require(PLAYER_SCENE.is_file(), "player scene is missing")
    player = PLAYER_SCENE.read_text(encoding="utf-8")
    main_scene = MAIN_SCENE.read_text(encoding="utf-8")

    require('[node name="Player" type="CharacterBody3D"]' in player, "Player root must be CharacterBody3D")
    require('type="CapsuleShape3D"' in player, "capsule collision resource is missing")
    require('[node name="CollisionShape3D" type="CollisionShape3D" parent="."]' in player, "collision node is missing")
    require('[node name="Head" type="Node3D" parent="."]' in player, "head pivot is missing")
    require('[node name="Camera3D" type="Camera3D" parent="Head"]' in player, "camera is missing")
    require('current = true' in player, "camera must be active")
    require('path="res://scenes/player.tscn"' in main_scene, "main scene does not reference player scene")
    require('instance=ExtResource("1_player")' in main_scene, "main scene does not instance player")

    print("PASS: CharacterBody3D player shell")
    print("PASS: capsule collision")
    print("PASS: head pivot")
    print("PASS: active first-person camera")
    print("PASS: player instanced by main scene")
    print("PLAYER_SHELL_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
