#!/usr/bin/env python3
from __future__ import annotations

import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CONTROL = ROOT / "project_control"
SHA_RE = re.compile(r"^[0-9a-f]{40}$")
PIECE_RE = re.compile(r"PIECE-(\d{3})")


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def field_value(text: str, field: str) -> str:
    prefix = f"{field}:"
    for line in text.splitlines():
        if line.startswith(prefix):
            return line[len(prefix):].strip()
    raise AssertionError(f"missing field: {field}:")


def git_commit_exists(sha: str) -> bool | None:
    try:
        probe = subprocess.run(["git", "-C", str(ROOT), "rev-parse", "--show-toplevel"], capture_output=True, text=True, check=False)
    except FileNotFoundError:
        return None
    if probe.returncode != 0:
        return None
    check = subprocess.run(["git", "-C", str(ROOT), "cat-file", "-e", f"{sha}^{{commit}}"], capture_output=True, check=False)
    return check.returncode == 0


def main() -> int:
    master = (CONTROL / "MASTER_STATE.md").read_text(encoding="utf-8")
    current = (CONTROL / "CURRENT_PIECE.md").read_text(encoding="utf-8")
    roadmap = (CONTROL / "ROADMAP.md").read_text(encoding="utf-8")
    baseline = (CONTROL / "QUALITY_BASELINE.md").read_text(encoding="utf-8")

    current_id = field_value(current, "PIECE_ID")
    require(PIECE_RE.fullmatch(current_id) is not None, "CURRENT_PIECE has invalid PIECE_ID")
    require(current_id in field_value(master, "CURRENT_PIECE"), "MASTER_STATE current piece mismatch")
    require(f"Piece {current_id.removeprefix('PIECE-')}" in roadmap, "current piece absent from ROADMAP")

    require(PIECE_RE.search(field_value(master, "LAST_COMPLETED_PIECE")) is not None, "LAST_COMPLETED_PIECE has no valid piece ID")
    next_match = PIECE_RE.search(field_value(master, "NEXT_PLANNED_PIECE"))
    require(next_match is not None, "NEXT_PLANNED_PIECE has no valid piece ID")
    require(f"Piece {next_match.group(1)}" in roadmap, "next planned piece absent from ROADMAP")

    for field in ("LAST_OBSERVED_HEAD", "LAST_VERIFIED_COMMIT"):
        sha = field_value(master, field)
        require(SHA_RE.fullmatch(sha) is not None, f"{field} is not a full commit SHA")
        exists = git_commit_exists(sha)
        if exists is False:
            raise AssertionError(f"{field} commit does not exist in local git object database: {sha}")
        if exists is None:
            print(f"LIMITATION: local git object existence unavailable for {field}={sha}")

    require(field_value(master, "LAST_VERIFIED_COMMIT") == field_value(baseline, "LAST_VERIFIED_COMMIT"), "verified commit disagrees between MASTER_STATE and QUALITY_BASELINE")
    require(field_value(master, "RUNTIME_GATE_STATUS") == field_value(baseline, "RUNTIME_VERIFICATION_STATUS"), "runtime gate disagrees with quality baseline")
    print("PASS: MASTER/CURRENT/ROADMAP relational continuity")
    print("PASS: commit pointers are full SHA-1 values")
    print("PASS: verified commit agrees with quality baseline")
    print("PASS: runtime gate agrees with quality baseline")
    print("PROJECT_STATE_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
