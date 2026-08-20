#!/usr/bin/env python3
from __future__ import annotations

import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
TESTS_DIR = ROOT / "tests"


def main() -> int:
    tests = sorted(TESTS_DIR.glob("verify_*.py"))
    if not tests:
        print("FAIL: no static verification scripts found", file=sys.stderr)
        return 1

    failures: list[str] = []
    for test in tests:
        print(f"== {test.relative_to(ROOT)} ==", flush=True)
        result = subprocess.run([sys.executable, str(test)], cwd=ROOT, check=False)
        if result.returncode != 0:
            failures.append(test.name)

    if failures:
        print("FAIL: cumulative static verification failed: " + ", ".join(failures), file=sys.stderr)
        return 1

    print(f"PASS: {len(tests)} cumulative static verifiers")
    print("VERIFY_ALL_STATIC_OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
