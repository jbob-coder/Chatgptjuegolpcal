#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CONTROLLER = ROOT / "scripts" / "player_controller.gd"


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def main() -> int:
    text = CONTROLLER.read_text(encoding="utf-8")

    require("mouse_sensitivity: float = 0.0022" in text, "mouse sensitivity baseline missing")
    require("Input.mouse_mode = Input.MOUSE_MODE_CAPTURED" in text, "mouse capture missing")
    require("event is InputEventMouseMotion" in text, "mouse motion handling missing")
    require("event.screen_relative.x" in text and "event.screen_relative.y" in text, "resolution-independent mouse delta missing")
    require("rotate_y(" in text, "body yaw missing")
    require("head.rotate_x(" in text, "head pitch missing")
    require("clampf(head.rotation.x" in text, "pitch clamp missing")
    require("deg_to_rad(-85.0)" in text and "deg_to_rad(85.0)" in text, "pitch limits drift")
    require("KEY_ESCAPE" in text and "MOUSE_MODE_VISIBLE" in text, "mouse release toggle missing")

    # Scope guards.
    require("get_gravity" not in text, "gravity leaked into mouse-look piece")
    require('"jump"' not in text, "jump leaked into mouse-look piece")
    require('"sprint"' not in text, "sprint leaked into mouse-look piece")

    print("PASS: captured mouse mode")
    print("PASS: body yaw")
    print("PASS: clamped head pitch")
    print("PASS: Escape mouse release/capture")
    print("PASS: Piece 004 scope isolation")
    print("MOUSE_LOOK_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
