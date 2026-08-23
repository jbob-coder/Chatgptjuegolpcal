#!/usr/bin/env python3
from __future__ import annotations

import fnmatch
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
REGISTRY_DIR = ROOT / "project_control" / "registry"
ARTIFACT_REGISTRY = REGISTRY_DIR / "ARTIFACT_REGISTRY.json"
PATH_REGISTRY = REGISTRY_DIR / "PATH_REGISTRY.json"
PLANES = {"USER_SURFACE", "CONTROL_PLANE", "GAME_RUNTIME", "VERIFICATION"}
RUNTIME_SUFFIXES = {".gd", ".tscn", ".tres", ".res", ".gdshader"}
IGNORED_PARTS = {".git", ".godot", "__pycache__"}


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def read_json(path: Path) -> dict:
    require(path.is_file(), f"missing registry: {path.relative_to(ROOT)}")
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        raise AssertionError(f"invalid JSON in {path.relative_to(ROOT)}: {exc}") from exc
    require(isinstance(value, dict), f"registry root must be an object: {path.relative_to(ROOT)}")
    return value


def route(path: str, rules: list[dict]) -> str | None:
    for rule in rules:
        if fnmatch.fnmatchcase(path, rule["pattern"]):
            return rule["plane"]
    return None


def main() -> int:
    path_registry = read_json(PATH_REGISTRY)
    artifact_registry = read_json(ARTIFACT_REGISTRY)
    require(path_registry.get("matching") == "FIRST_MATCH_WINS", "path registry must use FIRST_MATCH_WINS")
    require(set(path_registry.get("planes", [])) == PLANES, "path registry plane set drift")

    rules = path_registry.get("rules")
    require(isinstance(rules, list) and rules, "path registry rules must be a non-empty list")
    priorities = [rule.get("priority") for rule in rules]
    require(all(isinstance(value, int) for value in priorities), "routing priorities must be integers")
    require(priorities == sorted(priorities), "routing rules must be sorted by ascending priority")
    require(len(priorities) == len(set(priorities)), "routing priorities must be unique")
    for rule in rules:
        require(rule.get("plane") in PLANES, f"invalid route plane: {rule}")
        require(isinstance(rule.get("pattern"), str) and rule["pattern"], f"invalid route pattern: {rule}")

    qa_index = next(i for i, rule in enumerate(rules) if rule["pattern"] == "scripts/qa/**")
    scripts_index = next(i for i, rule in enumerate(rules) if rule["pattern"] == "scripts/**")
    require(qa_index < scripts_index, "scripts/qa/** must precede scripts/**")
    require(route("scripts/qa/example.py", rules) == "VERIFICATION", "QA route lost precedence")
    require(route("scripts/example.gd", rules) == "GAME_RUNTIME", "runtime script route is wrong")

    artifacts = artifact_registry.get("artifacts")
    require(isinstance(artifacts, list) and artifacts, "artifact registry must contain artifacts")
    artifact_ids = [item.get("artifact_id") for item in artifacts]
    canonical_paths = [item.get("canonical_path") for item in artifacts]
    current_paths = [item.get("current_path") for item in artifacts if item.get("status") == "ACTIVE"]
    require(all(isinstance(value, str) and value for value in artifact_ids), "artifact IDs must be non-empty strings")
    require(len(artifact_ids) == len(set(artifact_ids)), "duplicate artifact ID")
    require(len(canonical_paths) == len(set(canonical_paths)), "duplicate canonical artifact path")
    require(len(current_paths) == len(set(current_paths)), "duplicate active artifact path")

    for artifact in artifacts:
        plane = artifact.get("plane")
        current_path = artifact.get("current_path")
        require(plane in PLANES, f"invalid artifact plane: {artifact.get('artifact_id')}")
        require(isinstance(current_path, str) and current_path, f"missing current_path: {artifact.get('artifact_id')}")
        if artifact.get("status") == "ACTIVE":
            require((ROOT / current_path).is_file(), f"active registered artifact missing: {current_path}")
            require(route(current_path, rules) == plane, f"registered plane disagrees with path route: {current_path}")
        if plane == "USER_SURFACE":
            require(artifact.get("authority_role") == "PROJECTION", f"user artifact is not a projection: {current_path}")

    routed_files = 0
    for path in ROOT.rglob("*"):
        if not path.is_file() or any(part in IGNORED_PARTS for part in path.relative_to(ROOT).parts):
            continue
        relative = path.relative_to(ROOT).as_posix()
        plane = route(relative, rules)
        require(plane is not None, f"unrouted game-root file: {relative}")
        if plane in {"USER_SURFACE", "CONTROL_PLANE"}:
            require(path.suffix.lower() not in RUNTIME_SUFFIXES, f"runtime artifact stored in {plane}: {relative}")
        routed_files += 1

    user_docs = sorted((ROOT / "docs" / "user").glob("*.md"))
    require(user_docs, "no user-surface projections found")
    for path in user_docs:
        text = path.read_text(encoding="utf-8")
        require("ROLE: USER_SURFACE_PROJECTION" in text, f"user projection role missing: {path.name}")
        require("AUTHORITATIVE: NO" in text, f"user projection authority guard missing: {path.name}")

    print("PASS: four-plane routing registry")
    print("PASS: unique active artifact IDs and canonical paths")
    print("PASS: registered active artifacts exist and route correctly")
    print(f"PASS: {routed_files} game-root files have deterministic primary ownership")
    print("PASS: user surfaces remain non-authoritative projections")
    print("ARTIFACT_ROUTING_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
