#!/usr/bin/env python3
from __future__ import annotations

import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
QA_DIR = ROOT / "scripts" / "qa"
TESTS_DIR = ROOT / "tests"
QA_CHECKS = (
    "preflight.py",
    "verify_structure.py",
    "verify_project_state.py",
    "verify_current_piece.py",
    "regression_guard.py",
)


def run_check(path: Path) -> bool:
    print(f"== {path.relative_to(ROOT)} ==", flush=True)
    result = subprocess.run([sys.executable, str(path)], cwd=ROOT, check=False)
    return result.returncode == 0


def main() -> int:
    checks = [QA_DIR / name for name in QA_CHECKS]
    tests = sorted(TESTS_DIR.glob("verify_*.py"))
    if not tests:
        print("FAIL: no static verification tests found", file=sys.stderr)
        return 1

    failures: list[str] = []
    for path in [*checks, *tests]:
        if not path.is_file():
            failures.append(f"missing:{path.relative_to(ROOT)}")
            continue
        if not run_check(path):
            failures.append(str(path.relative_to(ROOT)))

    if failures:
        print("FAIL: cumulative static verification failed: " + ", ".join(failures), file=sys.stderr)
        return 1

    print(f"PASS: {len(checks)} QA validators")
    print(f"PASS: {len(tests)} static tests")
    print(f"PASS: {len(checks) + len(tests)} total static checks")
    print("VERIFY_ALL_STATIC_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
