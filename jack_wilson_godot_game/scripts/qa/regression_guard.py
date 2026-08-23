#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CONTROL = ROOT / "project_control"
BASELINE = CONTROL / "QUALITY_BASELINE.md"
QA_DIR = ROOT / "scripts" / "qa"
TESTS_DIR = ROOT / "tests"
QA_VALIDATORS = (
    "preflight.py",
    "verify_structure.py",
    "verify_artifact_routing.py",
    "verify_project_state.py",
    "verify_current_piece.py",
    "regression_guard.py",
)


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def field_value(text: str, field: str) -> str:
    prefix = f"{field}:"
    for line in text.splitlines():
        if line.startswith(prefix):
            return line[len(prefix):].strip()
    raise AssertionError(f"QUALITY_BASELINE missing field: {field}:")


def int_field(text: str, field: str) -> int:
    value = field_value(text, field)
    require(value.isdigit(), f"{field} must be a non-negative integer")
    return int(value)


def main() -> int:
    text = BASELINE.read_text(encoding="utf-8")
    master = (CONTROL / "MASTER_STATE.md").read_text(encoding="utf-8")
    tests = sorted(TESTS_DIR.glob("verify_*.py"))
    validators = [QA_DIR / name for name in QA_VALIDATORS]
    for validator in validators:
        require(validator.is_file(), f"required QA validator missing: {validator.name}")

    recorded_tests = int_field(text, "STATIC_TEST_COUNT")
    recorded_test_passes = int_field(text, "STATIC_TEST_PASS_COUNT")
    recorded_validators = int_field(text, "QA_VALIDATOR_COUNT")
    recorded_total = int_field(text, "TOTAL_STATIC_CHECK_COUNT")
    recorded_total_passes = int_field(text, "TOTAL_STATIC_PASS_COUNT")

    require(len(tests) >= recorded_tests, "static test inventory dropped below quality baseline")
    require(len(validators) >= recorded_validators, "QA validator inventory dropped below quality baseline")
    require(len(tests) + len(validators) >= recorded_total, "total static check inventory dropped below quality baseline")
    require(recorded_test_passes == recorded_tests, "baseline static test pass count is internally inconsistent")
    require(recorded_total_passes == recorded_total, "baseline total static pass count is internally inconsistent")
    require(int_field(text, "OPEN_REGRESSIONS") == 0, "quality baseline has open regressions")
    require(field_value(text, "RUNTIME_VERIFICATION_STATUS") == field_value(master, "RUNTIME_GATE_STATUS"), "runtime state disagrees between quality baseline and MASTER_STATE")

    print("PASS: static test inventory has not decreased")
    print("PASS: QA validator inventory has not decreased")
    print("PASS: baseline records zero open regressions")
    print("PASS: runtime state is consistent across control records")
    print("REGRESSION_GUARD_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
