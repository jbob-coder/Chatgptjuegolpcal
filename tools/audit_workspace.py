#!/usr/bin/env python3
"""Audit a local export of the Google Drive workspace without paid services.

The script is read-only by default. It inventories files, calculates SHA-256,
validates JSON, identifies exact duplicates, and checks package manifests.
It never deletes files.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from collections import defaultdict
from pathlib import Path
from typing import Any

EXCLUDED_NAMES = {".DS_Store", "Thumbs.db"}


def sha256_file(path: Path, chunk_size: int = 1024 * 1024) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        while chunk := handle.read(chunk_size):
            digest.update(chunk)
    return digest.hexdigest()


def load_json(path: Path) -> tuple[bool, Any | str]:
    try:
        return True, json.loads(path.read_text(encoding="utf-8"))
    except (OSError, UnicodeDecodeError, json.JSONDecodeError) as exc:
        return False, str(exc)


def audit(root: Path) -> dict[str, Any]:
    records: list[dict[str, Any]] = []
    by_hash: dict[str, list[str]] = defaultdict(list)
    invalid_json: list[dict[str, str]] = []
    manifest_findings: list[dict[str, Any]] = []

    for path in sorted(p for p in root.rglob("*") if p.is_file()):
        if path.name in EXCLUDED_NAMES:
            continue
        relative = path.relative_to(root).as_posix()
        digest = sha256_file(path)
        size = path.stat().st_size
        record = {
            "path": relative,
            "bytes": size,
            "sha256": digest,
            "suffix": path.suffix.lower(),
        }
        records.append(record)
        by_hash[digest].append(relative)

        if path.suffix.lower() == ".json":
            valid, value = load_json(path)
            if not valid:
                invalid_json.append({"path": relative, "error": str(value)})
            elif path.name.lower().startswith("manifest"):
                manifest_findings.append(check_manifest(root, path, value))

    duplicate_groups = [
        {"sha256": digest, "paths": paths}
        for digest, paths in sorted(by_hash.items())
        if len(paths) > 1
    ]

    return {
        "root": str(root.resolve()),
        "file_count": len(records),
        "total_bytes": sum(item["bytes"] for item in records),
        "files": records,
        "exact_duplicate_groups": duplicate_groups,
        "invalid_json": invalid_json,
        "manifest_findings": manifest_findings,
    }


def check_manifest(root: Path, manifest_path: Path, data: Any) -> dict[str, Any]:
    finding: dict[str, Any] = {
        "manifest": manifest_path.relative_to(root).as_posix(),
        "missing_references": [],
        "size_mismatches": [],
        "hash_mismatches": [],
        "notes": [],
    }
    if not isinstance(data, dict):
        finding["notes"].append("Manifest root is not an object.")
        return finding

    documents = data.get("documents")
    if not isinstance(documents, list):
        finding["notes"].append("No documents list found; generic manifest only.")
        return finding

    package_root = manifest_path.parent
    for entry in documents:
        if not isinstance(entry, dict):
            finding["notes"].append("Non-object document entry encountered.")
            continue
        packaged_as = entry.get("packaged_as")
        if not isinstance(packaged_as, str):
            finding["notes"].append("Document entry missing packaged_as.")
            continue
        candidate = package_root / packaged_as
        if not candidate.exists():
            # Flattened Drive exports may place the basename beside the manifest.
            flattened = package_root / Path(packaged_as).name
            candidate = flattened if flattened.exists() else candidate
        if not candidate.exists():
            finding["missing_references"].append(packaged_as)
            continue
        expected_size = entry.get("bytes")
        if isinstance(expected_size, int) and candidate.stat().st_size != expected_size:
            finding["size_mismatches"].append({
                "path": candidate.relative_to(root).as_posix(),
                "expected": expected_size,
                "actual": candidate.stat().st_size,
            })
        expected_hash = entry.get("sha256")
        if isinstance(expected_hash, str):
            actual_hash = sha256_file(candidate)
            if actual_hash.lower() != expected_hash.lower():
                finding["hash_mismatches"].append({
                    "path": candidate.relative_to(root).as_posix(),
                    "expected": expected_hash,
                    "actual": actual_hash,
                })
    return finding


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("root", type=Path, help="Local exported workspace folder")
    parser.add_argument("--output", type=Path, default=Path("audit/audit_result.json"))
    args = parser.parse_args()

    if not args.root.is_dir():
        parser.error(f"Not a directory: {args.root}")

    result = audit(args.root)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2, ensure_ascii=False), encoding="utf-8")
    print(f"Audited {result['file_count']} files; report: {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
