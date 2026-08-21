#!/usr/bin/env python3
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CONTROL = ROOT / "project_control"

REQUIRED_FILES = (
    "MASTER_STATE.md",
    "CURRENT_PIECE.md",
    "ROADMAP.md",
    "QUALITY_BASELINE.md",
    "DECISIONS.md",
    "QUESTIONS_AND_ANSWERS.md",
    "SOURCE_REGISTRY.md",
    "KNOWN_UNKNOWNS.md",
    "ISSUES.md",
    "REGRESSION_LOG.md",
    "CHANGELOG.md",
)

MASTER_FIELDS = (
    "PROJECT:", "REPOSITORY:", "GAME_ROOT:", "TARGET_ENGINE:", "CURRENT_BRANCH:",
    "LAST_OBSERVED_HEAD:", "LAST_VERIFIED_COMMIT:", "LAST_COMPLETED_PIECE:",
    "CURRENT_PIECE:", "NEXT_PLANNED_PIECE:", "CURRENT_GAMEPLAY_BOUNDARY:",
    "CURRENT_IMPLEMENTED_SYSTEMS:", "SYSTEMS_NOT_IMPLEMENTED:", "OPEN_BLOCKERS:",
    "OPEN_QUESTIONS:", "KNOWN_UNKNOWNS:", "AUTHORITATIVE_SOURCE_POINTERS:",
    "QUALITY_GATE_STATUS:", "RUNTIME_GATE_STATUS:", "LAST_UPDATED:",
)

VALID_STATUSES = {"PLANNED", "IN_PROGRESS", "BLOCKED", "FAILED", "REPAIRING", "STATIC_VERIFIED", "RUNTIME_VERIFIED", "COMPLETE"}


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def field_value(text: str, field: str) -> str:
    prefix = f"{field}:"
    for line in text.splitlines():
        if line.startswith(prefix):
            return line[len(prefix):].strip()
    raise AssertionError(f"missing field: {field}:")


def main() -> int:
    for name in REQUIRED_FILES:
        require((CONTROL / name).is_file(), f"missing project-control file: {name}")
    master = (CONTROL / "MASTER_STATE.md").read_text(encoding="utf-8")
    current = (CONTROL / "CURRENT_PIECE.md").read_text(encoding="utf-8")
    roadmap = (CONTROL / "ROADMAP.md").read_text(encoding="utf-8")
    sources = (CONTROL / "SOURCE_REGISTRY.md").read_text(encoding="utf-8")
    unknowns = (CONTROL / "KNOWN_UNKNOWNS.md").read_text(encoding="utf-8")
    baseline = (CONTROL / "QUALITY_BASELINE.md").read_text(encoding="utf-8")
    for field in MASTER_FIELDS:
        require(field in master, f"MASTER_STATE missing field: {field}")
    require(field_value(master, "REPOSITORY") == "jbob-coder/Chatgptjuegolpcal", "repository pointer drift")
    require(field_value(master, "GAME_ROOT") == "jack_wilson_godot_game/", "game root pointer drift")
    require(field_value(master, "CURRENT_BRANCH") == "main", "branch pointer drift")
    current_id = field_value(current, "PIECE_ID")
    current_status = field_value(current, "STATUS")
    require(re.fullmatch(r"PIECE-\d{3}", current_id) is not None, "invalid current piece ID")
    require(current_status in VALID_STATUSES, "invalid current piece status")
    require(current_id in field_value(master, "CURRENT_PIECE"), "MASTER_STATE current-piece pointer mismatch")
    current_number = current_id.removeprefix("PIECE-")
    require(f"Piece {current_number}" in roadmap, "roadmap missing current piece")
    next_value = field_value(master, "NEXT_PLANNED_PIECE")
    next_match = re.search(r"PIECE-(\d{3})", next_value)
    require(next_match is not None, "MASTER_STATE next planned piece has no valid ID")
    require(f"Piece {next_match.group(1)}" in roadmap, "roadmap missing next planned piece")
    if current_status == "COMPLETE":
        require(current_id in field_value(master, "LAST_COMPLETED_PIECE"), "completed current piece not reflected as last completed")
    require("RAW_SOURCE_READ: NO" in sources, "pointer-only source classification missing")

    # Any free-text `current user ... directive` pointer in MASTER_STATE must map to
    # identifiable text in SOURCE_REGISTRY. This prevents unregistered user authority
    # from being invented during roadmap/control updates.
    source_text = sources.lower().replace("-", " ")
    for pointer in (item.strip() for item in field_value(master, "AUTHORITATIVE_SOURCE_POINTERS").split(";")):
        lowered = pointer.lower()
        if lowered.startswith("current user ") and lowered.endswith(" directive"):
            label = lowered[len("current user "):-len(" directive")].replace("-", " ")
            tokens = [token for token in re.findall(r"[a-z0-9]+", label) if len(token) >= 4]
            require(tokens and all(token in source_text for token in tokens), f"unregistered current-user directive pointer: {pointer}")

    require("exact_source_dimensions_known=false" in unknowns, "room geometry unknown not preserved")
    require(field_value(master, "RUNTIME_GATE_STATUS") == field_value(baseline, "RUNTIME_VERIFICATION_STATUS"), "runtime gate disagrees with quality baseline")
    print("PASS: continuation-core files exist")
    print("PASS: MASTER_STATE mandatory fields")
    print("PASS: current/next piece pointers are state-relative")
    print("PASS: source-read classification")
    print("PASS: current-user directive pointers map to SOURCE_REGISTRY")
    print("PASS: known unknowns/runtime gate consistency")
    print("PROJECT_CONTROL_CORE_VERIFY_OK")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
