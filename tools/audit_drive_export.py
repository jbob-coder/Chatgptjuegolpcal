#!/usr/bin/env python3
"""Offline, zero-cost audit for a local export of the Google Drive game folder.

Usage:
    python tools/audit_drive_export.py /path/to/export --out audit

The script never deletes or modifies source files. It computes SHA-256 hashes,
validates JSON, identifies exact duplicates, and writes machine-readable and
Markdown reports. Large reserved-capacity binary files are inventoried and
hashed only when explicitly requested with --hash-reserved.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from collections import defaultdict
from dataclasses import asdict, dataclass
from pathlib import Path
from typing import Iterable

RESERVED_PREFIX = "RESERVED_STORAGE_NOT_LORE_PART_"


@dataclass(frozen=True)
class FileRecord:
    path: str
    size: int
    sha256: str | None
    json_valid: bool | None
    error: str | None


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def iter_files(root: Path) -> Iterable[Path]:
    for path in sorted(root.rglob("*")):
        if path.is_file():
            yield path


def audit(root: Path, hash_reserved: bool) -> list[FileRecord]:
    records: list[FileRecord] = []
    for path in iter_files(root):
        relative = path.relative_to(root).as_posix()
        size = path.stat().st_size
        is_reserved = path.name.startswith(RESERVED_PREFIX)
        digest = None if is_reserved and not hash_reserved else sha256_file(path)
        json_valid = None
        error = None
        if path.suffix.lower() == ".json":
            try:
                json.loads(path.read_text(encoding="utf-8"))
                json_valid = True
            except Exception as exc:  # report; do not abort entire audit
                json_valid = False
                error = f"{type(exc).__name__}: {exc}"
        records.append(FileRecord(relative, size, digest, json_valid, error))
    return records


def write_reports(records: list[FileRecord], out_dir: Path) -> None:
    out_dir.mkdir(parents=True, exist_ok=True)
    (out_dir / "inventory.json").write_text(
        json.dumps([asdict(record) for record in records], indent=2, ensure_ascii=False),
        encoding="utf-8",
    )

    by_hash: dict[str, list[FileRecord]] = defaultdict(list)
    for record in records:
        if record.sha256:
            by_hash[record.sha256].append(record)
    duplicate_groups = [group for group in by_hash.values() if len(group) > 1]

    lines = ["# Audit report", "", f"Files inventoried: {len(records)}", ""]
    invalid_json = [record for record in records if record.json_valid is False]
    lines += [f"Invalid JSON files: {len(invalid_json)}", ""]
    for record in invalid_json:
        lines.append(f"- `{record.path}` — {record.error}")

    lines += ["", f"Exact duplicate groups: {len(duplicate_groups)}", ""]
    for index, group in enumerate(duplicate_groups, 1):
        lines.append(f"## Duplicate group {index}")
        lines.append(f"SHA-256: `{group[0].sha256}`")
        for record in group:
            lines.append(f"- `{record.path}` ({record.size} bytes)")
        lines.append("")

    lines += [
        "## Deletion policy",
        "",
        "This report does not delete files. A file is safe to remove only after:",
        "1. SHA-256 equality is confirmed;",
        "2. the authoritative manifest/reference is identified; and",
        "3. the retained Drive copy is read back successfully.",
        "",
    ]
    (out_dir / "AUDIT_REPORT.md").write_text("\n".join(lines), encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("root", type=Path)
    parser.add_argument("--out", type=Path, default=Path("audit"))
    parser.add_argument("--hash-reserved", action="store_true")
    args = parser.parse_args()

    root = args.root.resolve()
    if not root.is_dir():
        parser.error(f"Not a directory: {root}")

    records = audit(root, args.hash_reserved)
    write_reports(records, args.out)
    print(f"Audited {len(records)} files; reports written to {args.out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
