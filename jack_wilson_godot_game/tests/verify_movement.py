#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
PLAYER_SCENE = ROOT / "scenes" / "player.tscn"
CONTROLLER = ROOT / "scripts" / "player_controller.gd"


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def main() -> int:
    require(CONTROLLER.is_file(), "player controller is missing")
    scene = PLAYER_SCENE.read_text(encoding="utf-8")
    controller = CONTROLLER.read_text(encoding="utf-8")

    require('path="res://scripts/player_controller.gd"' in scene, "player scene does not reference controller")
    require('script = ExtResource("1_player_controller")' in scene, "controller is not attached to player")
    require("extends CharacterBody3D" in controller, "controller must extend CharacterBody3D")
    require('Input.get_vector("move_left", "move_right", "move_forward", "move_back")' in controller, "four-direction input vector missing")
    require("velocity.x = direction.x * walk_speed" in controller, "x walking velocity missing")
    require("velocity.z = direction.z * walk_speed" in controller, "z walking velocity missing")
    require("move_and_slide()" in controller, "movement must use move_and_slide")
    require("walk_speed: float = 4.2" in controller, "walk speed baseline drift")

    # Cumulative scope guards: completed later pieces may share this controller.
    # Only movement features that are still intentionally unimplemented are forbidden here.
    require("get_gravity" not in controller, "gravity leaked into walking piece")
    require('"jump"' not in controller, "jump leaked into walking piece")
    require('"sprint"' not in controller, "sprint leaked into walking piece")

    print("PASS: W/A/S/D walking input")
    print("PASS: horizontal velocity")
    print("PASS: move_and_slide physics movement")
    print("PASS: Piece 003 cumulative movement invariants")
    print("MOVEMENT_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
