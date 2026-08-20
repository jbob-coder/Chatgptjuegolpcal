#!/usr/bin/env python3
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CONTROL = ROOT / "project_control"

REQUIRED_DIRS = ("project_control", "data", "scenes", "scripts", "tests", "scripts/qa", "project_control/piece_history")
REQUIRED_CONTROL = (
    "MASTER_STATE.md", "CURRENT_PIECE.md", "ROADMAP.md", "QUALITY_BASELINE.md",
    "DECISIONS.md", "QUESTIONS_AND_ANSWERS.md", "SOURCE_REGISTRY.md",
    "KNOWN_UNKNOWNS.md", "ISSUES.md", "REGRESSION_LOG.md", "CHANGELOG.md",
)
FORBIDDEN_NESTED_DIRS = ("temporary_verification", "audit", "governance", "third_party")


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def main() -> int:
    require((ROOT / "project.godot").is_file(), "project.godot is missing")
    require((ROOT / "README.md").is_file(), "README.md is missing")
    for rel in REQUIRED_DIRS:
        require((ROOT / rel).is_dir(), f"required directory missing: {rel}")
    for name in REQUIRED_CONTROL:
        require((CONTROL / name).is_file(), f"required project-control file missing: {name}")
    for name in FORBIDDEN_NESTED_DIRS:
        require(not (ROOT / name).exists(), f"forbidden nested repository area inside game root: {name}")

    project = (ROOT / "project.godot").read_text(encoding="utf-8")
    match = re.search(r'^run/main_scene="res://([^\"]+)"$', project, flags=re.MULTILINE)
    require(match is not None, "project.godot has no res:// main scene")
    main_scene = (ROOT / match.group(1)).resolve()
    require(main_scene.is_relative_to(ROOT.resolve()), "main scene escapes dedicated game root")
    require(main_scene.is_file(), f"configured main scene missing: {match.group(1)}")

    print("PASS: dedicated game root structure")
    print("PASS: required project-control records")
    print("PASS: configured main scene remains inside game root")
    print("STRUCTURE_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
