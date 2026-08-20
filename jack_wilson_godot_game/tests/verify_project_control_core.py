#!/usr/bin/env python3
from __future__ import annotations

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
    "PROJECT:",
    "REPOSITORY:",
    "GAME_ROOT:",
    "TARGET_ENGINE:",
    "CURRENT_BRANCH:",
    "LAST_OBSERVED_HEAD:",
    "LAST_VERIFIED_COMMIT:",
    "LAST_COMPLETED_PIECE:",
    "CURRENT_PIECE:",
    "NEXT_PLANNED_PIECE:",
    "CURRENT_GAMEPLAY_BOUNDARY:",
    "CURRENT_IMPLEMENTED_SYSTEMS:",
    "SYSTEMS_NOT_IMPLEMENTED:",
    "OPEN_BLOCKERS:",
    "OPEN_QUESTIONS:",
    "KNOWN_UNKNOWNS:",
    "AUTHORITATIVE_SOURCE_POINTERS:",
    "QUALITY_GATE_STATUS:",
    "RUNTIME_GATE_STATUS:",
    "LAST_UPDATED:",
)


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def main() -> int:
    for name in REQUIRED_FILES:
        require((CONTROL / name).is_file(), f"missing project-control file: {name}")

    master = (CONTROL / "MASTER_STATE.md").read_text(encoding="utf-8")
    current = (CONTROL / "CURRENT_PIECE.md").read_text(encoding="utf-8")
    roadmap = (CONTROL / "ROADMAP.md").read_text(encoding="utf-8")
    sources = (CONTROL / "SOURCE_REGISTRY.md").read_text(encoding="utf-8")
    unknowns = (CONTROL / "KNOWN_UNKNOWNS.md").read_text(encoding="utf-8")

    for field in MASTER_FIELDS:
        require(field in master, f"MASTER_STATE missing field: {field}")

    require("REPOSITORY: jbob-coder/Chatgptjuegolpcal" in master, "repository pointer drift")
    require("GAME_ROOT: jack_wilson_godot_game/" in master, "game root pointer drift")
    require("CURRENT_BRANCH: main" in master, "branch pointer drift")
    require("LAST_COMPLETED_PIECE: PIECE-007" in master, "last completed piece drift")
    require("CURRENT_PIECE: PIECE-008" in master, "current piece drift")
    require("NEXT_PLANNED_PIECE: PIECE-009" in master, "next piece drift")
    require("PIECE_ID: PIECE-008" in current and "STATUS: STATIC_VERIFIED" in current, "current-piece status mismatch")

    for piece in range(1, 10):
        require(f"Piece {piece:03d}" in roadmap, f"roadmap missing Piece {piece:03d}")

    require("RAW_SOURCE_READ: NO" in sources, "pointer-only source classification missing")
    require("exact_source_dimensions_known=false" in unknowns, "room geometry unknown not preserved")
    require("RUNTIME_GATE_NOT_EXECUTED" in master, "runtime uncertainty was promoted incorrectly")

    print("PASS: continuation-core files exist")
    print("PASS: MASTER_STATE mandatory fields")
    print("PASS: roadmap continuity through PIECE-009")
    print("PASS: source-read classification")
    print("PASS: known unknowns/runtime gate preserved")
    print("PROJECT_CONTROL_CORE_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
