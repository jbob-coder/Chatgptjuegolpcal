#!/usr/bin/env python3
from __future__ import annotations

import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def main() -> int:
    require(sys.version_info >= (3, 10), "Python 3.10+ is required for project QA")
    require((ROOT / "project.godot").is_file(), "project.godot is missing")
    require((ROOT / "README.md").is_file(), "README.md is missing")
    require((ROOT / "project_control" / "CURRENT_PIECE.md").is_file(), "CURRENT_PIECE.md is missing")
    require((ROOT / "scripts" / "qa" / "verify_all.py").is_file(), "verify_all.py is missing")
    require((ROOT / "tests").is_dir(), "tests directory is missing")
    print(f"PASS: Python {sys.version_info.major}.{sys.version_info.minor}.{sys.version_info.micro}")
    print("PASS: core QA prerequisites")
    print("PREFLIGHT_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
