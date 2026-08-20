#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
GUIDE = ROOT / "docs" / "godot" / "GODOT_4_7_MASTER_TOOL_AND_FEATURE_GUIDE.md"
LOG = ROOT / "docs" / "godot" / "GODOT_IMPLEMENTATION_REFERENCE_LOG.md"


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def main() -> int:
    require(GUIDE.is_file(), "Godot 4.7 master guide is missing")
    require(LOG.is_file(), "Godot implementation reference log is missing")
    guide = GUIDE.read_text(encoding="utf-8")
    log = LOG.read_text(encoding="utf-8")

    require("TARGET_ENGINE: Godot 4.7.x stable" in guide, "Godot target version missing or drifted")
    require("RUNTIME_VALIDATION: RUNTIME_GATE_NOT_EXECUTED" in guide, "docs baseline must not claim runtime verification")
    require("https://docs.godotengine.org/en/4.7/classes/class_characterbody3d.html" in guide, "CharacterBody3D 4.7 source missing")
    require("https://docs.godotengine.org/en/4.7/classes/class_inputeventmousemotion.html" in guide, "mouse-motion 4.7 source missing")
    require("https://docs.godotengine.org/en/4.7/classes/class_projectsettings.html" in guide, "ProjectSettings 4.7 source missing")
    require("screen_relative" in guide and "event.relative" in guide, "mouse-look documentation/repository distinction missing")
    require("Input.get_gravity()" in guide and "device accelerometer" in guide, "world/device gravity anti-hallucination rule missing")
    require("REF-0006" in log and "physics/3d/default_gravity = 9.8" in log, "gravity reference entry missing")
    require("RUNTIME_VALIDATION: NOT_EXECUTED" in log, "reference log lacks runtime limitation")
    require("latest` is the unstable" in guide, "version-discipline warning missing")

    print("PASS: Godot 4.7 guide and reference log exist")
    print("PASS: version-specific official sources recorded")
    print("PASS: current mouse/gravity distinctions preserved")
    print("PASS: runtime verification not fabricated")
    print("GODOT_DOCS_BASELINE_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
