#!/usr/bin/env python3
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CURRENT = ROOT / "project_control" / "CURRENT_PIECE.md"
SHA_RE = re.compile(r"^[0-9a-f]{40}$")
VALID_STATUSES = {"PLANNED", "IN_PROGRESS", "BLOCKED", "FAILED", "REPAIRING", "STATIC_VERIFIED", "RUNTIME_VERIFIED", "COMPLETE"}
REQUIRED_FIELDS = (
    "PIECE_ID", "TITLE", "STATUS", "PURPOSE", "IN_SCOPE", "OUT_OF_SCOPE",
    "FILES_ALLOWED_TO_CHANGE", "FILES_EXPECTED_TO_CREATE", "SOURCE_FACTS_USED",
    "ASSUMPTIONS", "KNOWN_UNKNOWNS", "ACCEPTANCE_CRITERIA", "TESTS_REQUIRED",
    "REGRESSION_GATES", "STARTING_COMMIT", "ENDING_COMMIT", "RESULT",
    "FAILURES_FOUND", "FIXES_APPLIED", "FINAL_STATUS",
)


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def field_value(text: str, field: str) -> str:
    prefix = f"{field}:"
    for line in text.splitlines():
        if line.startswith(prefix):
            return line[len(prefix):].strip()
    raise AssertionError(f"missing field: {field}:")


def section_items(text: str, heading: str) -> list[str]:
    marker = f"{heading}:"
    lines = text.splitlines()
    start = next((i for i, line in enumerate(lines) if line == marker), None)
    require(start is not None, f"missing section: {heading}")
    items: list[str] = []
    for line in lines[start + 1:]:
        if line and not line.startswith("-") and line.endswith(":"):
            break
        if line.startswith("- "):
            items.append(line[2:].strip())
    return items


def main() -> int:
    text = CURRENT.read_text(encoding="utf-8")
    for field in REQUIRED_FIELDS:
        require(f"{field}:" in text, f"CURRENT_PIECE missing field/section: {field}")
    piece_id = field_value(text, "PIECE_ID")
    status = field_value(text, "STATUS")
    final_status = field_value(text, "FINAL_STATUS")
    require(re.fullmatch(r"PIECE-\d{3}", piece_id) is not None, "invalid PIECE_ID")
    require(status in VALID_STATUSES, "invalid STATUS")
    require(final_status in VALID_STATUSES, "invalid FINAL_STATUS")
    require(section_items(text, "IN_SCOPE"), "IN_SCOPE must not be empty")
    require(section_items(text, "OUT_OF_SCOPE"), "OUT_OF_SCOPE must not be empty")
    require(section_items(text, "FILES_ALLOWED_TO_CHANGE"), "FILES_ALLOWED_TO_CHANGE must not be empty")
    require(section_items(text, "ACCEPTANCE_CRITERIA"), "ACCEPTANCE_CRITERIA must not be empty")
    require(section_items(text, "TESTS_REQUIRED"), "TESTS_REQUIRED must not be empty")
    starting = field_value(text, "STARTING_COMMIT")
    ending = field_value(text, "ENDING_COMMIT")
    require(SHA_RE.fullmatch(starting) is not None, "STARTING_COMMIT must be a full commit SHA")
    if status == "COMPLETE":
        require(SHA_RE.fullmatch(ending) is not None, "COMPLETE piece requires a full ENDING_COMMIT SHA")
        require(final_status == "COMPLETE", "COMPLETE STATUS requires FINAL_STATUS COMPLETE")
    else:
        require(ending == "PENDING_COMMIT_READBACK" or SHA_RE.fullmatch(ending) is not None, "active piece ENDING_COMMIT must be pending or a full SHA")
    print("PASS: CURRENT_PIECE mandatory fields")
    print("PASS: scope/test lists are non-empty")
    print("PASS: piece status and commit-pointer rules")
    print("CURRENT_PIECE_VERIFY_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
