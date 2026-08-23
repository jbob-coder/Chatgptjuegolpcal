#!/usr/bin/env python3
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CONTROL = ROOT / "project_control"

REQUIRED_DIRS = (
    "project_control", "project_control/piece_history", "project_control/registry",
    "data", "data/world", "data/world/asterline", "scenes", "scripts", "scripts/qa", "scripts/world", "tests",
    "docs", "docs/godot", "docs/user", "docs/world",
)
REQUIRED_CONTROL = (
    "MASTER_STATE.md", "CURRENT_PIECE.md", "ROADMAP.md", "QUALITY_BASELINE.md",
    "DECISIONS.md", "QUESTIONS_AND_ANSWERS.md", "SOURCE_REGISTRY.md",
    "KNOWN_UNKNOWNS.md", "ISSUES.md", "REGRESSION_LOG.md", "CHANGELOG.md",
)
REQUIRED_GODOT_DOCS = ("GODOT_4_7_MASTER_TOOL_AND_FEATURE_GUIDE.md", "GODOT_IMPLEMENTATION_REFERENCE_LOG.md")
REQUIRED_USER_DOCS = ("START_HERE.md", "CURRENT_STATUS.md", "QUESTIONS_FOR_USER.md")
REQUIRED_REGISTRIES = ("ARTIFACT_REGISTRY.json", "PATH_REGISTRY.json")
REQUIRED_WORLD_DOCS = (
    "README.md", "ASTERLINE_CITY_SPATIAL_AUTHORITY.md",
    "START_AREA_AND_NINE_BLOCK_RING.md", "SPATIAL_PLACEMENT_AND_NO_OVERLAP.md",
    "ASTERLINE_TO_GODOT_COORDINATES.md", "ASTERLINE_SPATIAL_LOADER_AND_CHUNKS.md",
)
REQUIRED_WORLD_DATA = (
    "city_spatial_manifest.json", "start_area_manifest.json", "spatial_construction_guard.json",
    "coordinate_transform.json", "chunk_index.json",
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
    decisions = (CONTROL / "DECISIONS.md").read_text(encoding="utf-8")
    sources = (CONTROL / "SOURCE_REGISTRY.md").read_text(encoding="utf-8")
    decision_ids = re.findall(r"^## (D-\d{4})$", decisions, flags=re.MULTILINE)
    source_ids = re.findall(r"^## (SOURCE-\d{3})$", sources, flags=re.MULTILINE)
    require(len(decision_ids) >= 11 and len(decision_ids) == len(set(decision_ids)), "decision ledger was truncated or has duplicate IDs")
    require(len(source_ids) >= 11 and len(source_ids) == len(set(source_ids)), "source ledger was truncated or has duplicate IDs")
    for name in REQUIRED_GODOT_DOCS:
        require((ROOT / "docs" / "godot" / name).is_file(), f"required Godot documentation missing: {name}")
    for name in REQUIRED_USER_DOCS:
        require((ROOT / "docs" / "user" / name).is_file(), f"required user projection missing: {name}")
    for name in REQUIRED_REGISTRIES:
        require((CONTROL / "registry" / name).is_file(), f"required routing registry missing: {name}")
    for name in REQUIRED_WORLD_DOCS:
        require((ROOT / "docs" / "world" / name).is_file(), f"required world documentation missing: {name}")
    for name in REQUIRED_WORLD_DATA:
        require((ROOT / "data" / "world" / "asterline" / name).is_file(), f"required world data bridge missing: {name}")
    require((ROOT / "scripts" / "world" / "asterline_coordinates.gd").is_file(), "Asterline coordinate utility is missing")
    require((ROOT / "scripts" / "world" / "asterline_spatial_loader.gd").is_file(), "Asterline spatial loader is missing")
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
    print("PASS: authority ledgers retain unique recorded history")
    print("PASS: required Godot documentation baseline")
    print("PASS: required user surface and routing registries")
    print("PASS: required Asterline spatial bridge records")
    print("PASS: configured main scene remains inside game root")
    print("STRUCTURE_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
